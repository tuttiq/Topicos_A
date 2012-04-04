using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Cap03.Models
{
    public class Clientes
    {
        [Required(ErrorMessage="Digite o codigo do cliente")]
        [Display(Description="Codigo do Cliente")]
        public int Codigo { get; set; }

        [Display(Description = "Nome do Cliente")]
        [StringLength(50)]
        public string Nome { get; set; }

        [Display(Description = "CEP")]
        [RegularExpression(@"\d{5}(-\d{3})?")]
        public string CEP { get; set; }
    }
}






