using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data.SqlClient;
using System.Data;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Linq;
namespace PH.LWPM.UI.MC.Report
{
    public partial class McBrandReport : DevExpress.XtraReports.UI.XtraReport
    {
         

        private string factory;
        private string type1;
        private string location;
        private string shop;
        private string id;
        private RAPLQDataContext Context;
        //string cnn = ContextBuilder.CreateContext<RAPLQDataContext>().Connection.ConnectionString ;
        //public RAPLQDataContext Context;
        public McBrandReport()
        {
            InitializeComponent();
        }
        public McBrandReport(string _factory, string _type1, string _location, string _shop, string _id,RAPLQDataContext _datacontext)
        {
            this.factory = _factory;
            this.type1 = _type1;
            this.shop = _shop;
            this.id = _id;
            this.location = _location;
            this.Context = _datacontext;
            InitializeComponent();
        }
        private void McBrandReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //try
            //{
                string strcondition;
                strcondition = factory != "" ? " Factory='" + factory + "'" : "";
                strcondition += strcondition != "" && location != "" ? " and Location='" + location + "'" : strcondition == "" && location != "" ? " Location='" + location + "'" : "";
                strcondition += strcondition != "" && type1  != "" ? " and type1='" + type1  + "'" : strcondition == "" && type1  != "" ? " type1='" + type1 + "'" : "";
                strcondition += strcondition != "" && shop != "" ? " and shop='" + shop + "'" : strcondition == "" && shop != "" ? " shop='" + shop + "'" : "";
                strcondition += strcondition != "" && id != "" ? " and Id='" + id + "'" : strcondition == "" && id != "" ? " Id='" + id + "'" : "";
                strcondition = strcondition != "" ? "where " + strcondition : "";
                //SqlDataAdapter Mamc = new SqlDataAdapter("select * from VWMaMc " + strcondition, cnn);
                //Mamc.Fill(maMcDataSet1.VWMaMc);
                string Rpm = string.Empty, Rpm0 = string.Empty, Line = string.Empty, Location = string.Empty;
                var MachineLst=Context.ExecuteQuery<mamc>(string.Format("select * from VWMaMc {0}",strcondition)).ToList();
                //foreach (mamc item in MachineLst)
                //{
                //     Rpm = string.Empty; Rpm0 = string.Empty; Line = string.Empty; Location = string.Empty;
                //    Context.GetLB4Machine(item.Id, ref Rpm, ref Rpm0, ref Line, ref Location);
                //    item.LB3Rpm = Rpm;
                //    item.LB4Line = Line;
                //    item.LB4Location = Location;
                //    item.LB4Rpm = Rpm0;
                //    Rpm0 = string.Empty; Line = string.Empty; Location = string.Empty;
                //    Context.GetLB5Machine(item.Id, ref Rpm0, ref Line, ref Location);
                //    item.LB5Rpm = Rpm0;
                //    item.CurLineCode = Line;
                //    item.CurLocation = Location;
                //}
                this.bindingSource1.DataSource = MachineLst;

            //}
            //catch
            //{
            //}           
                       
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string mcid = GetCurrentColumnValue("Id") != null ? GetCurrentColumnValue("Id").ToString() : string.Empty;
            //#region RPMLB3 && RPMLB4
            //    //var NextMcLocation=Context.Matchings.Where(P=>P.MachineId.TrimEnd()==mcid || P.addMachineId1.TrimEnd()==mcid || P.addMachineId2==mcid || P.addMachineId3.TrimEnd()==mcid).OrderBy 

            //    DataTable dt1 =DBAccess.GetTable("select * from MCPoolUnionLB4 where machineid='" + mcid+ "'");
            //    if (dt1.Rows.Count > 0)
            //    {
            //        L_LB3.Text = dt1.Rows[0][0].ToString();
            //        L_LB4.Text = dt1.Rows[0][1].ToString();
            //        LNext_LineCode.Text = "Line:" + dt1.Rows[0][3].ToString();
            //        LNext_Location.Text = "Location:" + dt1.Rows[0][4].ToString();
                   
            //    }                       
            //#endregion
            //#region RPMLB5
            //    DataTable dt2 = DBAccess.GetTable("select * from MCPoolUnionLB5 where machineid='" + mcid + "'");
            //    if (dt2.Rows.Count > 0)
            //    {
            //        L_LB5.Text = dt2.Rows[0][0].ToString();
                    
            //        LNow_LineCode.Text = "Line:" + dt2.Rows[0][2].ToString();
            //        LNow_Location.Text = "Location:" + dt2.Rows[0][3].ToString();
            //    }                       
            //#endregion
        }

     

    }
}
