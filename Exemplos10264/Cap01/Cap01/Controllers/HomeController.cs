using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cap01.Controllers
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

        public ActionResult Nova()
        {
            return View();
        }

        public ActionResult Clientes(Models.Clientes Cliente)
        {
            if (Cliente.Nome == null)
                return View();
            else
            {
                return Redirect("ClienteSalvo/" + Cliente.Codigo.ToString() + Cliente.Nome);
            }
        }

        public ActionResult ClienteSalvo()
        {
            return View();
        }

    }
}
