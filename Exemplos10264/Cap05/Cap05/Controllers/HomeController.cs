using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Cap05.Models;

namespace Cap05.Controllers
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
            ViewData["Opcoes"] = new SelectList(new[] { "", "Sim", "Nao" });

            Clientes Obj = new Clientes { Codigo=1, Nome="Teste", MalaDireta="Sim" };

            return View(Obj);
        }

        public ActionResult Clientes2(Clientes Obj)
        {
            if (Obj.Nome == null)
            {
                return View();
            }
            else 
            {
                return Redirect("ClienteInserido?Codigo=" + Obj.Codigo.ToString());
            }
        }

        public ActionResult ClienteInserido()
        {
            return View();
        }
    }
}
