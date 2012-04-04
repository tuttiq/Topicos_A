using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cap11WF
{
    public partial class PagEstilo : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Page.Theme = "Tema02";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}