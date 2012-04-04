using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Cap03.Models;

namespace Cap03.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Clientes()
        {
            List<Clientes> Lista = new List<Clientes>();

            Lista.Add(new Clientes { Codigo = 1, Nome = "Joao" });
            Lista.Add(new Clientes { Codigo = 2, Nome = "Maria" });
            Lista.Add(new Clientes { Codigo = 3, Nome = "Beatriz" });

            ViewData["Dados"] = Lista;

            return View();
        }

        AdventureWorksLT2008R2Entities BD = new AdventureWorksLT2008R2Entities();

        public ActionResult Produtos()
        {
            IQueryable<Product> Lista = BD.Products;

            IQueryable<Product> Lista2 = from Item in Lista
                                         where Item.Name.Substring(0, 1) == "A"
                                         select Item;

            IQueryable<Product> Lista3 = Lista.Where(Item => Item.Name.Substring(0, 1) == "A")
                                              .Select(Item => Item); 

            ViewData["Produtos"] = Lista2;

            return View();
        }
    }
}



















