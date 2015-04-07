using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace MvcApplication1.Models
{
    public class GuestRequests
    {
        [Required(ErrorMessage = "Plese enter your Name")]
        public string Name { get; set; }

        [RegularExpression(@".+\@.+\..+", ErrorMessage = "Please enter correct email adress")]
        [Required(ErrorMessage = "Please enter your email adress")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Please enter your Phone")]
        public string Phone { get; set; }

        [Required(ErrorMessage = "Please specify whether you'll attend")]
        public bool? WillAttend { get; set; }

    }
}