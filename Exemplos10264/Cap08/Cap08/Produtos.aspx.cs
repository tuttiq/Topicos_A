using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cap08
{
    public partial class Produtos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AdventureWorksLT2008R2Entities BD = new AdventureWorksLT2008R2Entities();

            var Alt = BD.Products.First();
            Alt.Name = "Mudar";

            //BD.Products.AddObject();
            //BD.Products.DeleteObject();

            //BD.SaveChanges();

           var Dados = from Item in BD.Products
                       // where Item.Name.Substring(0, 1) == "A"
                        orderby Item.Name                        
                        select Item.Name;

            foreach (string Ver in Dados)
                Response.Write(Ver + "<br/>");
        }
    }
}