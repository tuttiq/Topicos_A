﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Cap05.Models
{
    public class Clientes
    {
        [Required(ErrorMessage="Digite o codigo")]
        public int Codigo { get; set; }

        public string Nome { get; set; }

        public string MalaDireta { get; set; }

    }
}





