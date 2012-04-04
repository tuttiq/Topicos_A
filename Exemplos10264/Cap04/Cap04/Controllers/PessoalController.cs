using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Cap04.Models;

namespace Cap04.Controllers
{    
    public class PessoalController : Controller
    {        
        [HandleError(View="ErroAlunos")]
        public ActionResult Alunos(string id)
        {            
            if (id != null)
            {
                TempData["Valor"] = id;
                return Redirect("/Pessoal/EditaAlunos");
            }
            else
            {
                /*int A;
                A = Convert.ToInt32("1");*/
                return View();
            }
        }

        [NonAction]
        public int Somar(int A, int B)
        {
            return A + B;
        }

        public ActionResult AlunosArq()
        {
            return File(@"c:\arqs\arq.txt", "text/plain");
            //return File(@"c:\arqs\imagem.bmp", "image/bmp");
        }

        public ActionResult AlunosRed()
        {
            return Redirect("Alunos");
        }

        public ActionResult EditaAlunos()
        {
            return View();
        }

        public ActionResult Pedidos(FormCollection Valores)
        {
            if (Valores["Nome"] == null)
            {
                return View();
            }
            else
            {
                TempData["Valor"] = Valores["Codigo"] + " - " +
                                    Valores["Nome"] + " - " +
                                    Valores["Endereco"];
                return View();
            }
        }

        public ActionResult EditaClientes(Clientes Cliente)
        {
            if (Cliente.Nome == null)
            {
                return View();
            }
            else
            {
                return Redirect("/Pessoal/SalvaCliente?Codigo=" + Cliente.Codigo.ToString() + "&Nome=" + Cliente.Nome);
            }
        }

        public ActionResult SalvaCliente()
        {
            return View();
        }
    }
}




