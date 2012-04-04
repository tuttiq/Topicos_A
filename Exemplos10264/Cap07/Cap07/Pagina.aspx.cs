using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;
using System.Threading;

namespace Cap07
{
    public partial class Pagina : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            /*CultureInfo Info = new CultureInfo("pt-BR");

            Thread.CurrentThread.CurrentCulture = Info;*/

           // Session["Nome"] = "Joao";
                        
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}



