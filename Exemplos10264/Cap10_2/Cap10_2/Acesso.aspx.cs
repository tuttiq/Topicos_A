using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Cap10_2
{
    public partial class Acesso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Autenticar(TextBox1.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);

                //Session.Abandon();
            }
        }

        private bool Autenticar(string Usuario)        
        {
            return (Usuario == "Joao");
        }
    }
}




