using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Globalization;
using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc.Razor;
using QEFullInspection.Controllers;
using DevExtreme.AspNet.Data.Aggregation;
using QEFullInspetion.Controllers;
//using QEFullInspetion.Models.PH_MobileQC;

namespace QEFullInspetion
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Add framework services.
            services
                .AddControllersWithViews()
                .AddJsonOptions(options => options.JsonSerializerOptions.PropertyNamingPolicy = null);

            //必须要加上以下代码，XPO才能正常工作
            services
                .AddXpoDefaultUnitOfWork(false, options => options.UseConnectionString(Configuration.GetConnectionString("PHMobileQCConnection"))
                .UseThreadSafeDataLayer(false)
                .UseAutoCreationOption(AutoCreateOption.DatabaseAndSchema)
                .UseConnectionPool(false));
            //ConnectionHelper.Connect(Configuration, AutoCreateOption.DatabaseAndSchema, true);

            //注册Cookie认证服务
            services
                .AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
                .AddCookie(p => p.LoginPath = "/Home/Login");

            //注册多语言服务
            services.AddLocalization(o => o.ResourcesPath = "Resources");
            services.AddMvc()
                .SetCompatibilityVersion(CompatibilityVersion.Version_3_0)
                .AddViewLocalization(LanguageViewLocationExpanderFormat.Suffix)
                .AddDataAnnotationsLocalization();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseStaticFiles();
            app.UseRouting();
            //app.UseSession();

            //实现多语言
            var supportedCultures = new[] { "en-US", "zh-CN" };
            var localizationOptions = new RequestLocalizationOptions().SetDefaultCulture(supportedCultures[0])
                .AddSupportedCultures(supportedCultures)
                .AddSupportedUICultures(supportedCultures);

            app.UseRequestLocalization(localizationOptions);

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=FullInspectionHeader}/{id?}");
            });

            //註冊自定義Total計算
            //CustomAggregators.RegisterAggregator("totalWIPSummary", typeof(TotalWIPSummaryAggregator<>));



        }
    }
}
