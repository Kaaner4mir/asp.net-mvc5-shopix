using Shopix.Models.Classes;
using System.Linq;
using System.Web.Mvc;

namespace Shopix.Controllers
{
    public class CategoryController : Controller
    {
        Context _context = new Context();
        // GET: Category
        public ActionResult Index()
        {
            var values = _context.Categories.ToList();
            return View(values);
        }

        [HttpGet]
        public ActionResult AddCategory()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddCategory(Category category)
        {
            _context.Categories.Add(category);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteCategory(int id)
        {
            var category = _context.Categories.Find(id);
            _context.Categories.Remove(category);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult GetCategory(int id)
        {
            var categories = _context.Categories.Find(id);
            return View("GetCategory", categories);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpdateCategory(Category category)
        {
            var selectedCategory = _context.Categories.Find(category.CategoryId);
            selectedCategory.CategoryName = category.CategoryName;
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}