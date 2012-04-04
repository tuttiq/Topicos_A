﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cap12
{
    public partial class Codigo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Attributes.Add("OnClick", 
                                   "return confirm('deseja mesmo gravar ?');");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Servidor...");
        }
    }
}