using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using DevExpress.Xpo;
using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Localization;
using QEFullInspetion.Models.PH_MobileQC;

namespace QEFullInspetion.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class RightController : Controller
    {
        private UnitOfWork _uow;
        private readonly IStringLocalizer<RightController> _localizer;

        public RightController(IStringLocalizer<RightController> localizer, UnitOfWork unitOfWork)
        {
            this._uow = unitOfWork;
            _localizer = localizer;
        }

        public object SetLanguage(string Language)
        {
            if (Language == "EN")
            {
                HttpContext.Response.Cookies.Append(".AspNetCore.Culture", "c=en-US|uic=en-US");
            }
            else if (Language == "CN")
            {
                HttpContext.Response.Cookies.Append(".AspNetCore.Culture", "c=zh-CN|uic=zh-CN");
            }

            //HttpContext.Response.Cookies.Append(".AspNetCore.Culture", "c=en-US|uic=en-US");
            HttpContext.Response.Cookies.Append("Language", Language);
            return Json(new { msg = "OK" });
        }

        [HttpGet]
        public string TestA()
        {
            //HttpContext.Response.Cookies.Append(".AspNetCore.Culture", "c=zh-CN|uic=zh-CN");
            return _localizer["Test"].Value;
        }

        [HttpGet]
        //public async Task<IActionResult> Login([FromForm] string UserName, [FromForm] string Password)
        public async Task<IActionResult> Login(string UserName, string Password, string Language)
        {
            var SavePassword = Password;
            Password = GetMd5Hash(Password);
            string SqlStr = @"select UserID
                             from [PH.Platform.AuthMgr]..Auth_User
                             where UserID = '{0}' and Password = '{1}'";
            SqlStr = string.Format(SqlStr, UserName, Password);

            var HasRight = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows.Count() > 0;
            if (HasRight)
            {
                UserName = _uow.ExecuteQuery(SqlStr).ResultSet[0].Rows[0].Values[0].ToString();
                var claims = new List<Claim>()
                {
                    new Claim(ClaimTypes.NameIdentifier, UserName),
                    new Claim("Password", Password)
                    //new Claim(ClaimTypes.Role, "admin")
                 };

                var userPrincipal = new ClaimsPrincipal(new ClaimsIdentity(claims, UserName));
                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, userPrincipal, new AuthenticationProperties
                {
                    ExpiresUtc = DateTime.UtcNow.AddMinutes(20),
                    IsPersistent = false,
                    AllowRefresh = false
                });

                HttpContext.Response.Cookies.Append("UserName", UserName);
                //HttpContext.Response.Cookies.Append("Password", SavePassword);
                HttpContext.Response.Cookies.Append("Language", Language);
                //HttpContext.Response.Cookies.Append(".AspNetCore.Culture", "c=zh-CN|uic=zh-CN");

                SetLanguage(Language);
                return Json(new { msg = "OK" });

                //HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
                //HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;

                //return Ok();
                //return Redirect("/Home/FullInspectionHeader");
                //var claimIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
                //HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimIdentity));
            }


            return Json(new { msg = _localizer["User name or password is incorrect"].Value });
        }
        public IActionResult Logout()
        {
            HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return Ok();
        }

        public string GetMd5Hash(string input)
        {
            // Create a new instance of the MD5CryptoServiceProvider object.
            MD5 md5Hasher = MD5.Create();

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

        [HttpGet]
        public object GetUserRight(string UserName, string RightObject, DataSourceLoadOptions loadOptions)
        {
            var lists = _uow.Query<FullInspectionRight>().Where(p => p.UserID == UserName && p.RightObject == RightObject).Select(p => p.RightType);
            //ViewData["DeleteRight"] = lists.FirstOrDefault(p => p.Contains("Delete")) != null;
            return DataSourceLoader.Load(lists, loadOptions);
        }
    }
}
