﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cap11WF
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Page.MasterPageFile = "Site.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
