# Shopix Projesi Genel Analiz ve İyileştirme Raporu

Proje genelinde yapılan incelemeler sonucunda güvenlik zafiyetleri, yapısal eksiklikler, geliştirilmesi gereken noktalar ve ileride potansiyel hatalara yol açabilecek mimari kararlar tespit edilmiştir. Aşağıda bu bulgular detaylı bir şekilde kategorilerine ayrılmıştır.

## 1. Kritik Güvenlik Zafiyetleri (Hemen Düzeltilmesi Gerekenler)

> [!CAUTION]
> Bu başlık altındaki sorunlar, sistemin ele geçirilmesine veya veri kaybına neden olabilecek yüksek öncelikli güvenlik açıklarını temsil eder.

- **Parolaların Düz Metin (Plaintext) Olarak Tutulması:**
  `Admin.cs` modelinde `Password` alanı `Varchar(30)` olarak tanımlanmış, yani parolaların veritabanında şifrelenmeden (hashlenmeden) tutulduğu görülmektedir. Parolaların açık tutulması çok ciddi bir güvenlik zafiyetidir. Tüm parolalar `BCrypt` veya `Argon2` gibi güçlü algoritmalarla hashlenerek saklanmalıdır.
- **CSRF (Cross-Site Request Forgery) Zafiyeti:**
  Şu anda form gönderimlerinde (`[HttpPost]` metodları) dışarıdan gelen sahte istekleri engelleyecek Anti-Forgery koruması *bulunmamaktadır* (Önceki planımızda bu eksikliğin giderilmesi hedeflenmişti). Hem View tarafında formlara `@Html.AntiForgeryToken()` hem de Controller tarafında `[ValidateAntiForgeryToken]` eklenmelidir.
- **GET İstekleriyle Veri Silme ve Değiştirme (State-Changing GET):**
  Örneğin `CategoryController.cs` içerisindeki `DeleteCategory` metodu herhangi bir HTTP attribute (`[HttpPost]`) içermemektedir. Bir saldırgan GET isteği atarak, veya bir kullanıcıya yanlışlıkla `<img src="/Category/DeleteCategory/5" />` linkini tıklatarak o kategoriyi veya veriyi sildirtebilir. Veri değiştiren veya silen tüm işlemler `[HttpPost]` veya `[HttpDelete]` olmalı ve link yerine POST eden butonlarla/formlarla yapılmalıdır.
- **Over-Posting (Mass Assignment) Zafiyeti ve ViewModel Eksikliği:**
  Controller tarafında `UpdateCategory(Category category)` gibi doğrudan Entity modelleri parametre olarak alınmaktadır. Kötü niyetli bir kullanıcı, HTTP isteğini manipüle ederek formda olmayan (ancak modelde bulunan) alanları (örneğin Admin yetkisi vs., eğer ilgili modelde ise) değiştirebilir. Entity modelleri yerine sadece güncellenmesi gereken veriyi taşıyan **ViewModel (DTO - Data Transfer Object)** sınıfları kullanılmalıdır.
- **Authentication ve Authorization (Yetkilendirme) Eksikliği:**
  Admin paneli veya kategori yönetim kısımlarında Controller seviyesinde hiçbir `[Authorize]` kısıtlaması görünmemektedir. URL'i bilen herhangi bir kullanıcı sisteme giriş yapmadan, direkt `/Category/AddCategory` sekmesine giderek veri ekleyip silebilir.


## 2. Yapısal Eksiklikler ve Mimari Sorunlar

> [!WARNING]
> Bu sorunlar uygulamanın bakımını zorlaştırır ve projenin ölçeklendirilmesinde sorunlara neden olacaktır.

- **ModelState Doğrulaması Yok:**
  `[Required]`, `[StringLength]` gibi Data Annotations kullanılmış (`Product.cs` gibi) ama Controller içerisinde kayıt oluştururken `if (ModelState.IsValid)` kontrolü yapılmıyor. İstemci tarafındaki (Client-Side) JavaScript kapatılırsa, veritabanına geçerli olmayan veriler de rahatlıkla kaydedilir, bu da ileride DB hatalarına ve tutarsızlıklara yol açar.
- **Veritabanında "Hard-Delete" (Kalıcı Silme) Kullanılması:**
  `_context.Categories.Remove(category)` şeklinde veri veritabanından kalıcı oarak silinmektedir. Kurumsal projelerde genelde veriler kalıcı olarak silinmez, bunun yerine modelde bir `IsDeleted` veya `Status` boolean (True/False) değeri tutularak veri pasife çekilir (Soft Delete).
- **Hata Yönetimi (Error Handling) ve Loglama:**
  Tüm veritabanı işlemleri (Entity Framework komutları) doğrudan yapılmıştır; hiçbir `try-catch` bloğu mevcut değildir. SQL tarafında bir ihlal olduğunda (örn. Foreign Key kısıtlaması, unique hatası vb.) kullanıcı uygulamanın doğrudan çöktüğüne şahit olur. Global bir hata yönetimi (Exception Handling Middleware/Filter) ve NLog/Serilog gibi loglama araçları eksiktir.
- **Kötü Mimari ve Katmanlı Yapı Eksikliği:**
  `HttpContext` kontrolleri (Controller sınıfı) doğrudan veritabanına bağlanır (`Context _context = new Context();`). Kodun genişlemesi (Ölçeklenmesi) gerektiğinde, Controller çok şişecek ve bakım maliyetleri artacaktır. Repository Design Pattern veya en azından basit bir Service katmanı kullanmak best-practice'dir.


## 3. İleride Oluşabilecek Potansiyel Hatalar (Bugs & Bottlenecks)

> [!NOTE]
> Geliştirilmeye devam edildikçe yakında karşınıza çıkması en muhtemel hatalar:

1. **Foreign Key (İlişkisel Veri) Silme Hataları:**
   Eğer bir Kategori silinmek istenirse ve o Kategoriye bağlı ürünler (Product) varsa, Entity Framework varsayılan olarak `DbUpdateException` throw edip sistemi durduracaktır. Çünkü ürünler boşta kalamaz. Silmeden önce, ilgili ürünleri başka kategoriye taşıma veya soft-delete (pasife çekme) yapılması şarttır.
2. **Entity Framework N+1 Sorgu Sorunu:**
   İlerleyen sayfalarda Ürünler ve onların Kategorilerini aynı ekranda listelemek istediğinizde, `.Include(x => x.Category)` komutunu kullanmazsanız EF, tablodaki her ürün için veritabanına gidip ayrı ayrı sorgu atar; ki bu sayfayı kilitler. Bu yüzden `Include` (Eager Loading) kavramının projede kullanılmasına dikkat edilmesi gerekecektir.
3. **Admin Modeli Eksikleri:**
   `Admin` tablosunda `Authority` sadece 1 karakterlik Char(`Char(1)`). İleride "Süper Admin", "Moderatör", "Editör" gibi yapılar kurgulamak istediğinizde (`[StringLength(1)]` kullandığı için) bu kısıtlama sizi ciddi şekilde engelleyecektir ve veritabanı migration'ı yapmanızı gerektirecektir.


## 💡 Önerilen Sıradaki Adımlar (Action Plan)

Yukarıdaki analize binaen, güvenlik ve stabiliteyi artırmak için izlenmesi gereken yol haritası:

1. **Önce Güvenlik:**
   - Kategoriler gibi önemli yönetim tablolarına `[Authorize]` atribute'u entegre edelim.
   - Önceki planda bahsettiğimiz **CSRF koruması** entegrasyonu tamamlanmalıdır.
   - GET ile çalışan "Delete" eylemleri bir POST formu içinden çağrılacak hale dönüştürülmelidir.
2. **Model Doğrulama (Validation):**
   - Post edilen veriler Controller'lara girdiğinde, kaydetmeden hemen önce `if (ModelState.IsValid)` kontolleri eklenmeli.
3. **Parola Hashleme ve Güvenlik Altyapısı Girişi:**
   - Şifre alanlarını BCrypt kullanacak duruma getirelim ve giriş işlemlerinin altyapısını atalım.
4. **Soft-Delete Mimarisine Geçiş:**
   - Verileri silmek yerine pasif hale getirecek `Status` / `IsDeleted` sütunu üzerinden işlem yapan kod mimarisine geçiş.

Bu eksiklerden hangisini veya hangilerini ilk olarak uygulamaya başlamamı istersin?
