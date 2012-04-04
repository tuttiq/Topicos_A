using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cap07
{
    public partial class Valida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = this.ValidaCpf(args.Value);
        }

        public bool ValidaCpf(string Cpf)
        {
            return (Cpf == "123");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (WebControl Obj in Page.Validators)
                Obj.Enabled = true;

            Page.Validate();

            if (Page.IsValid)
            { }

            //
        }
    }
}