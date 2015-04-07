using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;


namespace MvcApplication1.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

    
        public ViewResult Index()
        {
            DateTime now = DateTime.Now;
            ViewData.Add("Greetings", now.Hour < 12 ? "Good morning" : " Good afternuun");

            return View();
        }
        [HttpGet]
        public ViewResult RsvpForm()
        {
            return View();
        }

        [HttpPost]
        public ViewResult RsvpForm(GuestRequests guestResponse)
        {
            if (ModelState.IsValid)
            {
                //TODO: Email response
                return View("Thanks", guestResponse);
            }
            else
            {
                return View();
            }
        }



    }
}
