#pragma checksum "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "f1431d4778bc46fa2d29e5af7a0944e6ee31295d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(QEFullInspetion.Models.Home.Views_Home_Login), @"mvc.1.0.view", @"/Views/Home/Login.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/Login.cshtml", typeof(QEFullInspetion.Models.Home.Views_Home_Login))]
namespace QEFullInspetion.Models.Home
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using QEFullInspetion;

#line default
#line hidden
#line 4 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using DevExtreme.AspNet.Mvc;

#line default
#line hidden
#line 5 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using QEFullInspetion.Controllers;

#line default
#line hidden
#line 6 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using System.Security.Claims;

#line default
#line hidden
#line 7 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc;

#line default
#line hidden
#line 9 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc.Localization;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f1431d4778bc46fa2d29e5af7a0944e6ee31295d", @"/Views/Home/Login.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"251332470f42861d90f80ee159614452477d5f26", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Login : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 1 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
  
    ViewData["Title"] = "View";

#line default
#line hidden
            BeginContext(40, 32, true);
            WriteLiteral("\r\n<h2 style=\"text-align:center\">");
            EndContext();
            BeginContext(73, 23, false);
#line 5 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                         Write(Localizer["User Login"]);

#line default
#line hidden
            EndContext();
            BeginContext(96, 132, true);
            WriteLiteral("</h2>\r\n\r\n<div class=\"form\">\r\n    <div class=\"dx-fieldset\">\r\n        <div class=\"dx-field\">\r\n            <div class=\"dx-field-label\">");
            EndContext();
            BeginContext(229, 22, false);
#line 10 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                                   Write(Localizer["User Name"]);

#line default
#line hidden
            EndContext();
            BeginContext(251, 66, true);
            WriteLiteral("</div>\r\n            <div class=\"dx-field-value\">\r\n                ");
            EndContext();
            BeginContext(319, 280, false);
#line 12 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
            Write(Html.DevExtreme().TextBox()
                    .ID("UserName")
                    .Value(Context.Request.Cookies["UserName"] == null ? "" : Context.Request.Cookies["UserName"].ToString())
                    .Placeholder(Localizer["Enter user name"].Value)
                 );

#line default
#line hidden
            EndContext();
            BeginContext(600, 112, true);
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"dx-field\">\r\n            <div class=\"dx-field-label\">");
            EndContext();
            BeginContext(713, 21, false);
#line 21 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                                   Write(Localizer["Password"]);

#line default
#line hidden
            EndContext();
            BeginContext(734, 66, true);
            WriteLiteral("</div>\r\n            <div class=\"dx-field-value\">\r\n                ");
            EndContext();
            BeginContext(802, 276, false);
#line 23 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
            Write(Html.DevExtreme().TextBox()
                    .ID("Password")
                    .Value("")
                    .Mode(TextBoxMode.Password)
                    .Placeholder(Localizer["Enter password"].Value)
                    .ShowClearButton(true)
                );

#line default
#line hidden
            EndContext();
            BeginContext(1079, 112, true);
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"dx-field\">\r\n            <div class=\"dx-field-label\">");
            EndContext();
            BeginContext(1192, 21, false);
#line 34 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                                   Write(Localizer["Language"]);

#line default
#line hidden
            EndContext();
            BeginContext(1213, 66, true);
            WriteLiteral("</div>\r\n            <div class=\"dx-field-value\">\r\n                ");
            EndContext();
            BeginContext(1281, 507, false);
#line 36 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
            Write(Html.DevExtreme().SelectBox()
                    .ID("Language")
                    .Value(Context.Request.Cookies["Language"] == null ? "EN": Context.Request.Cookies["Language"].ToString())
                    .DataSource(d => d.Mvc()
                        .Controller("DataHelper")
                        .LoadAction("GetLanguage")
                        .LoadMode(DataSourceLoadMode.Raw)
                    )
                    .OnValueChanged("OnValueChangedLanguage")
                 );

#line default
#line hidden
            EndContext();
            BeginContext(1789, 90, true);
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"dx-field-value\">\r\n            ");
            EndContext();
            BeginContext(1881, 262, false);
#line 50 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
        Write(Html.DevExtreme().Button()
                 .Text(Localizer["Login"].Value)
                 .Type(ButtonType.Success)
                 .StylingMode(ButtonStylingMode.Contained)
                 .Width(120)
                 .OnClick("login")
              );

#line default
#line hidden
            EndContext();
            BeginContext(2144, 215, true);
            WriteLiteral("\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    function login(e) {\r\n        var username = $(\"#UserName\").dxTextBox(\"option\", \"value\");\r\n        if (username.length == 0) {\r\n            DevExpress.ui.notify(\'");
            EndContext();
            BeginContext(2360, 35, false);
#line 65 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                             Write(Localizer["Please enter user name"]);

#line default
#line hidden
            EndContext();
            BeginContext(2395, 178, true);
            WriteLiteral("\')\r\n            return;\r\n        }\r\n\r\n        var password = $(\"#Password\").dxTextBox(\"option\", \"value\");\r\n        if (password.length == 0) {\r\n            DevExpress.ui.notify(\'");
            EndContext();
            BeginContext(2574, 34, false);
#line 71 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                             Write(Localizer["Please enter password"]);

#line default
#line hidden
            EndContext();
            BeginContext(2608, 180, true);
            WriteLiteral("\')\r\n            return;\r\n        }\r\n\r\n        var language = $(\"#Language\").dxSelectBox(\"option\", \"value\");\r\n        if (language.length == 0) {\r\n            DevExpress.ui.notify(\'");
            EndContext();
            BeginContext(2789, 37, false);
#line 77 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                             Write(Localizer["Please select a language"]);

#line default
#line hidden
            EndContext();
            BeginContext(2826, 361, true);
            WriteLiteral(@"')
            return;
        }

        $.ajax({
            url: ""/api/Right/Login"",
            data: { UserName: username, Password: password, Language: language },
            type: ""get"",
            dataType: ""json"",
            success: function (result) {
                if (result.msg == ""OK"") {
                    DevExpress.ui.notify('");
            EndContext();
            BeginContext(3188, 32, false);
#line 88 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                                     Write(Localizer["Login has succeeded"]);

#line default
#line hidden
            EndContext();
            BeginContext(3220, 214, true);
            WriteLiteral("\');\r\n                    location.href = \"/Home/FullInspectionHeader\";\r\n                }\r\n                else {\r\n                    //DevExpress.ui.notify(result.msg);\r\n                    DevExpress.ui.notify(\'");
            EndContext();
            BeginContext(3435, 47, false);
#line 93 "F:\VS2019Project\QEFullInspetion\QEFullInspetion\Views\Home\Login.cshtml"
                                     Write(Localizer["User name or password is incorrect"]);

#line default
#line hidden
            EndContext();
            BeginContext(3482, 564, true);
            WriteLiteral(@"', 'error');
                }
            }
        });
    }

    function OnValueChangedLanguage(e) {
        $.ajax({
            url: ""/api/Right/SetLanguage"",
            data: { Language: e.value },
            type: ""get"",
            async: false,
            dataType: ""json"",
            success: function (result) {
                if (result.msg == ""OK"") {
                    //DevExpress.ui.notify(""选择语言："" + e.value);
                    location.href = ""/Home/Login"";
                }
            }
        });
    }
</script>");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public IViewLocalizer Localizer { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
