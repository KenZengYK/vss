#pragma checksum "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "b4ee117e7a55051a7984cd4f3096c37e0585063d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(QEFullInspetion.Models.Home.Views_Home_Remark), @"mvc.1.0.view", @"/Views/Home/Remark.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/Remark.cshtml", typeof(QEFullInspetion.Models.Home.Views_Home_Remark))]
namespace QEFullInspetion.Models.Home
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "D:\Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using QEFullInspetion;

#line default
#line hidden
#line 4 "D:\Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using DevExtreme.AspNet.Mvc;

#line default
#line hidden
#line 5 "D:\Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using QEFullInspetion.Controllers;

#line default
#line hidden
#line 6 "D:\Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using System.Security.Claims;

#line default
#line hidden
#line 7 "D:\Project\QEFullInspetion\QEFullInspetion\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc;

#line default
#line hidden
#line 1 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
using Microsoft.AspNetCore.Mvc.Localization;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b4ee117e7a55051a7984cd4f3096c37e0585063d", @"/Views/Home/Remark.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"251332470f42861d90f80ee159614452477d5f26", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Remark : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(80, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 4 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
  
    ViewData["FullInspectionHeader"] = Context.Request.Query["FullInspectionHeader"].ToString();
    ViewData["Language"] = Context.Request.Cookies["Language"].ToString();
    ViewData["UserName"] = Context.User.FindFirstValue(ClaimTypes.NameIdentifier);
    ViewData["OnlyShowTodayData"] = Context.Request.Query["OnlyShowTodayData"].ToString();
    ViewData["ShowStr"] = "Fty: " + Context.Request.Query["Fty"].ToString() + ", " +
                          "Ws: " + Context.Request.Query["Ws"].ToString() + ", " +
                          "Line#: " + Context.Request.Query["Line"].ToString() + ", " +
                          "Proj#: " + Context.Request.Query["ProjectNo"].ToString() + ", " +
                          "QN#: " + Context.Request.Query["QNNo"].ToString();

#line default
#line hidden
            BeginContext(871, 6, true);
            WriteLiteral("\r\n<h2>");
            EndContext();
            BeginContext(878, 19, false);
#line 16 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
Write(Localizer["Remark"]);

#line default
#line hidden
            EndContext();
            BeginContext(897, 9, true);
            WriteLiteral("</h2>\r\n\r\n");
            EndContext();
            BeginContext(908, 3075, false);
#line 18 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
Write(Html.DevExtreme().DataGrid<QEFullInspetion.Controllers.FullInspectionHeadersViewModel>()
    .ID("gridRemark")
    .FocusedRowEnabled(true)
    .ColumnAutoWidth(true)
    .DataSource(d => d.WebApi()
        .Controller("FullInspectionHeaders")
        .LoadAction("GetByOID")
        //.LoadParams(new { OID = ViewData["FullInspectionHeader"] })
        .LoadParams(new { OID = ViewData["FullInspectionHeader"], OnlyShowTodayData = ViewData["OnlyShowTodayData"] })

        .InsertAction("Post")
        .UpdateAction("Put")
        .DeleteAction("Delete")
        .Key("Oid")
    )
    .ShowBorders(true)
    .Columns(columns =>
    {
        columns.AddFor(m => m.Inspector).Visible(false);
        columns.AddFor(m => m.TotalDefectiveGarmentQtyShow).AllowEditing(false).Caption(Localizer["Def. Gmts Ttl"].Value).Alignment(HorizontalAlignment.Left).Width(100);
        columns.AddFor(m => m.TotalRepairedShow).AllowEditing(false).Caption(Localizer["Repaired Ttl"].Value).Alignment(HorizontalAlignment.Left).Width(90);
        columns.AddFor(m => m.Remark).Caption(Localizer["Remark, if any"].Value).Alignment(HorizontalAlignment.Left);

        columns.Add().Name("CommandButton")
            .Caption("Function")
            .Type(GridCommandColumnType.Buttons)
            .Width(150)
            .Buttons(b =>
            {
                b.Add().Name(GridColumnButtonName.Edit).Text(Localizer["Edit"].Value);
            });
    })
    .Editing(e => e
        .AllowUpdating(Convert.ToBoolean(ViewData["EditRight"]))
        .Mode(GridEditMode.Popup)
        .Popup(p => p
            .Title("Remark")
            .ShowTitle(true)
            .Width(700)
            .Height(525)
            .ToolbarItems(items => {
                items.Add()
                    .Location(ToolbarItemLocation.After)
                    .Toolbar(Toolbar.Bottom)
                    .Widget(w => w.Button()
                        .OnClick(item => new global::Microsoft.AspNetCore.Mvc.Razor.HelperResult(async(__razor_template_writer) => {
    PushWriter(__razor_template_writer);
    BeginContext(2891, 71, true);
    WriteLiteral("function (e){ $(\"#gridRemark\").dxDataGrid(\"instance\").saveEditData();} ");
    EndContext();
    PopWriter();
}
))
                        .Text(Localizer["Save"].Value));

                items.Add()
                    .Location(ToolbarItemLocation.After)
                    .Toolbar(Toolbar.Bottom)
                    .Widget(w => w.Button()
                        .OnClick(item => new global::Microsoft.AspNetCore.Mvc.Razor.HelperResult(async(__razor_template_writer) => {
    PushWriter(__razor_template_writer);
    BeginContext(3250, 73, true);
    WriteLiteral("function (e){ $(\"#gridRemark\").dxDataGrid(\"instance\").cancelEditData();} ");
    EndContext();
    PopWriter();
}
))
                        .Text(Localizer["Cancel"].Value));
            })

        )
        .Form(f=>f.Items(items=> {
            items.AddGroup()
                .ColCount(2)
                .ColSpan(2)
                .Items(groupItem =>
                {
                    groupItem.AddSimpleFor(m => m.TotalDefectiveGarmentQtyShow);
                    groupItem.AddSimpleFor(m => m.TotalRepairedShow);
                    groupItem.AddSimpleFor(m => m.Remark).ColSpan(2).Editor(editor => editor.TextArea().Height(100));
                });
        })
        )
    )
    .OnToolbarPreparing("toolbar_preparing")
    .OnCellPrepared("OnCellPrepared")
);

#line default
#line hidden
            EndContext();
            BeginContext(4012, 244, true);
            WriteLiteral("\r\n\r\n<script>\r\n    function toolbar_preparing(e) {\r\n        var dataGrid = e.component;\r\n\r\n        e.toolbarOptions.items.unshift({\r\n            location: \"after\",\r\n            widget: \"dxButton\",\r\n            options: {\r\n                text: \'");
            EndContext();
            BeginContext(4257, 19, false);
#line 100 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                  Write(Localizer["Return"]);

#line default
#line hidden
            EndContext();
            BeginContext(4276, 165, true);
            WriteLiteral("\',\r\n                width: 80,\r\n                onClick: function (e) {\r\n                    window.location.href = \'/Home/FullInspectionDetail?FullInspectionHeader=");
            EndContext();
            BeginContext(4442, 32, false);
#line 103 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                                                                                       Write(ViewData["FullInspectionHeader"]);

#line default
#line hidden
            EndContext();
            BeginContext(4474, 19, true);
            WriteLiteral("&OnlyShowTodayData=");
            EndContext();
            BeginContext(4494, 29, false);
#line 103 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                                                                                                                                           Write(ViewData["OnlyShowTodayData"]);

#line default
#line hidden
            EndContext();
            BeginContext(4523, 33, true);
            WriteLiteral("\' +\r\n                      \"&Fty=");
            EndContext();
            BeginContext(4557, 28, false);
#line 104 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                       Write(Context.Request.Query["Fty"]);

#line default
#line hidden
            EndContext();
            BeginContext(4585, 4, true);
            WriteLiteral("&Ws=");
            EndContext();
            BeginContext(4590, 27, false);
#line 104 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                                                        Write(Context.Request.Query["Ws"]);

#line default
#line hidden
            EndContext();
            BeginContext(4617, 6, true);
            WriteLiteral("&Line=");
            EndContext();
            BeginContext(4624, 29, false);
#line 104 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                                                                                          Write(Context.Request.Query["Line"]);

#line default
#line hidden
            EndContext();
            BeginContext(4653, 11, true);
            WriteLiteral("&ProjectNo=");
            EndContext();
            BeginContext(4665, 34, false);
#line 104 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                                                                                                                                   Write(Context.Request.Query["ProjectNo"]);

#line default
#line hidden
            EndContext();
            BeginContext(4699, 6, true);
            WriteLiteral("&QNNo=");
            EndContext();
            BeginContext(4706, 29, false);
#line 104 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                                                                                                                                                                            Write(Context.Request.Query["QNNo"]);

#line default
#line hidden
            EndContext();
            BeginContext(4735, 164, true);
            WriteLiteral("\";\r\n                }\r\n            }\r\n        },{\r\n            location: \"before\",\r\n            widget: \"dxButton\",\r\n            options: {\r\n                text: \'");
            EndContext();
            BeginContext(4900, 19, false);
#line 111 "D:\Project\QEFullInspetion\QEFullInspetion\Views\Home\Remark.cshtml"
                  Write(ViewData["ShowStr"]);

#line default
#line hidden
            EndContext();
            BeginContext(4919, 750, true);
            WriteLiteral(@"',
                readonly: true
           }
         },{
            location: ""after"",
            widget: ""dxButton"",
            options: {
                icon: ""refresh"",
                onClick: function () {
                    dataGrid.refresh();
                }
            }
        });
    }

    function OnCellPrepared(e) {
        if (e.rowType == ""header"") {
            if (e.column.name == ""TotalDefectiveGarmentQtyShow"" || e.column.name == ""TotalRepairedShow"") {
                e.cellElement.css(""backgroundColor"", ""rgb(197, 217, 241)"");
            }
            else if (e.column.name == ""Remark"") {
                e.cellElement.css(""backgroundColor"", ""rgb(235, 241, 222)"");
            }
        }
");
            EndContext();
            BeginContext(5932, 22, true);
            WriteLiteral("\r\n    }\r\n\r\n</script>\r\n");
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