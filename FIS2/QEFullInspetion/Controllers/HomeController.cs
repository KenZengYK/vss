using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using QEFullInspetion.Models.PH_MobileQC;
using Microsoft.Extensions.Configuration;


namespace QEFullInspetion.Controllers
{
    public class HomeController : Controller
    {
        [Authorize]
        public IActionResult FullInspectionHeader()
        {
            //ViewData["DeleteRight"] = ViewData["EditRight"] = ViewData["ConfirmCompleteRight"] = true;
            //return View();

            UnitOfWork _uow = HttpContext.RequestServices.GetService(typeof(UnitOfWork)) as UnitOfWork;
            string UserID = HttpContext.Request.Cookies["UserName"];

            var lists = _uow.Query<FullInspectionRight>()
                .Where(p => p.UserID == UserID && (p.RightObject == "FullInspectionHeader" || p.RightObject == "Admin"))
                .Select(p => p.RightType).ToList();

            if (lists.Contains("Admin"))
            {
                ViewData["DeleteRight"] = ViewData["EditRight"] = ViewData["ConfirmCompleteRight"] = true;
            }
            else
            {
                ViewData["DeleteRight"] = lists.Contains("Delete");
                ViewData["EditRight"] = lists.Contains("Edit");
                ViewData["ConfirmCompleteRight"] = lists.Contains("ConfirmComplete");
            }
            return View();
        }

        [Authorize]
        public IActionResult FullInspectionDetail()
        {
            //ViewData["DeleteRight"] = ViewData["EditRight"] = ViewData["ConfirmCheckPointRight"] = true;
            //return View();

            UnitOfWork _uow = HttpContext.RequestServices.GetService(typeof(UnitOfWork)) as UnitOfWork;
            string UserID = HttpContext.Request.Cookies["UserName"];

            var lists = _uow.Query<FullInspectionRight>()
                .Where(p => p.UserID == UserID && (p.RightObject == "FullInspectionDetail" || p.RightObject == "Admin"))
                .Select(p => p.RightType).ToList();

            if (lists.Contains("Admin"))
            {
                ViewData["DeleteRight"] = ViewData["EditRight"] = ViewData["ConfirmCheckPointRight"] = true;
            }
            else
            {
                ViewData["DeleteRight"] = lists.Contains("Delete");
                ViewData["EditRight"] = lists.Contains("Edit");
                ViewData["ConfirmCheckPointRight"] = lists.Contains("ConfirmCheckPoint");
            }

            return View();
        }

        public IActionResult Remark()
        {
            //ViewData["EditRight"] = true;
            //return View();

            UnitOfWork _uow = HttpContext.RequestServices.GetService(typeof(UnitOfWork)) as UnitOfWork;
            string UserID = HttpContext.Request.Cookies["UserName"];

            var lists = _uow.Query<FullInspectionRight>()
                .Where(p => p.UserID == UserID && (p.RightObject == "FullInspectionRemark" || p.RightObject == "Admin"))
                .Select(p => p.RightType).ToList();

            if (lists.Contains("Admin"))
            {
                ViewData["EditRight"] = true;
            }
            else
            {
                ViewData["EditRight"] = lists.Contains("Edit");
            }

            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        public IActionResult IncompleteList()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View();
        }
    }
}
