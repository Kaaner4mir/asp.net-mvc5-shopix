using Shopix.Models.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace Shopix.Controllers
{
    public class ProductController : Controller
    {
        Context _context = new Context();
        // GET: Product
        public ActionResult Index()
        {
            var values = _context.Products.Where(x => x.Status == true).ToList();
            return View(values);
        }

        [HttpGet]
        public ActionResult AddProduct()
        {
            List<SelectListItem> values = (from x in _context.Categories.ToList()
                                           select new SelectListItem
                                           {
                                               Text = x.CategoryName,
                                               Value = x.CategoryId.ToString(),
                                           }).ToList();
            ViewBag.value = values;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddProduct(Product product)
        {
            _context.Products.Add(product);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult DeleteProduct(int id)
        {
            var value = _context.Products.Find(id);
            value.Status = false;
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult UpdateProduct(int id)
        {
            List<SelectListItem> values = (from x in _context.Categories.ToList()
                                           select new SelectListItem
                                           {
                                               Text = x.CategoryName,
                                               Value = x.CategoryId.ToString(),
                                           }).ToList();
            ViewBag.value = values;

            var values2 = _context.Products.Find(id);
            return View("UpdateProduct", values2);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpdateProduct(Product product)
        {
            var value = _context.Products.Find(product.ProductId);
            value.BuyingPrice = product.BuyingPrice;
            value.SellingPrice = product.SellingPrice;
            value.CategoryId = product.CategoryId;
            value.Brand = product.Brand;
            value.Status = product.Status;
            value.Stock = product.Stock;
            value.ProductName = product.ProductName;
            value.ProductImage = product.ProductImage;

            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}