using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Globalization;
using System.Threading;

namespace Cap07Mvc.Controllers
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
            ViewData["Titulo"] = LerRecurso("Titulo");

            return View();
        }

        public ActionResult Pedidos()
        {
            ViewData["Titulo"] = LerRecurso("Titulo");

            return View();
        }

        private string LerRecurso(string Campo)
        {
            CultureInfo Ver = new CultureInfo("pt-BR");
            return (string)ControllerContext.HttpContext.GetGlobalResourceObject("SiteConfig", Campo, Ver);

            //return (string)ControllerContext.HttpContext.GetGlobalResourceObject("SiteConfig", Campo, Thread.CurrentThread.CurrentCulture);
        }
    }
}
