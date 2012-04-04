using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cap09
{
    public partial class Pagina : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            Novo();
        }


        private int Valor;

        public int iValor
        {
            get { return Valor; }
            set { Valor = value; }
        }

        private static void Novo()
        {
            int A = 0;
            A++;
            A++;
        }

        private void Nada(int A, int B)
        { }
    }
}