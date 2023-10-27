using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.MobileQC.BO;
using System.Linq;
using System.Data;


namespace PH.MobileQC.UI.QCMasterEdit
{
    public partial class QCInspectionSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {

        DataSet ds = new DataSet();
        public QCInspectionSummaryReport(string ACustomer, string ADateStart, string ADateDue)
        {
            InitializeComponent();

            GetDataSource(ACustomer, ADateStart, ADateDue);
            txtDate.Text = ADateStart + " To " + ADateDue;
        }


        void GetDataSource(string Customer, string DateStart, string DateDue) 
        {
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = "exec Sp_QCInspectionSummary '{0}','{1}','{2}'";
            SqlStr = string.Format(SqlStr, Customer, DateStart,DateDue);
             ds= db.ExecuteDataSet(SqlStr,new DataSet(), "opts");

            this.bindingSource1.DataSource = ds.Tables[1].AsEnumerable().Select(dr => new Sp_QCAduditSummaryReport { 
                Customer = dr["Customer"].ToString(),
                CustStyle = dr["CustStyle"].ToString(),
                //LotSizeQty = Convert.ToInt32(dr["LotSizeQty"].ToString()),
                SampleSize = Convert.ToInt32(dr["SampleSize"].ToString()),
                MarjorDefectQty1 = ds.Tables[0].Rows.Count < 1 ? "" :  dr["MarjorDefectQty1"].ToString(),
                MarjorDefectQty2 = ds.Tables[0].Rows.Count < 2 ? "" : dr["MarjorDefectQty2"].ToString(),
                MarjorDefectQty3 = ds.Tables[0].Rows.Count < 3 ? "" : dr["MarjorDefectQty3"].ToString(),
                MarjorDefectQty4 = ds.Tables[0].Rows.Count < 4 ? "" : dr["MarjorDefectQty4"].ToString(),
                MarjorDefectQty5 = ds.Tables[0].Rows.Count < 5 ? "" : dr["MarjorDefectQty5"].ToString(),
                MarjorDefectQty6 = ds.Tables[0].Rows.Count < 6 ? "" : dr["MarjorDefectQty6"].ToString(),
                MarjorDefectQty7 = ds.Tables[0].Rows.Count < 7 ? "" : dr["MarjorDefectQty7"].ToString(),
                MarjorDefectQty8 = ds.Tables[0].Rows.Count < 8 ? "" : dr["MarjorDefectQty8"].ToString(),
                MarjorDefectQty9 = ds.Tables[0].Rows.Count < 9 ? "" : dr["MarjorDefectQty9"].ToString(),
                MarjorDefectQty10 = ds.Tables[0].Rows.Count < 10 ? "" : dr["MarjorDefectQty10"].ToString(),
                MarjorDefectQtyOther = ds.Tables[0].Rows.Count < 10 ? "" : dr["otherDefectQty"].ToString(),
                DefecttiveGatTotal = string.IsNullOrEmpty(dr["DefecttiveTotal"].ToString()) ? 0 : Convert.ToInt32(dr["DefecttiveTotal"].ToString()),
                DefecttiveGatPer = string.IsNullOrEmpty(dr["DefecttivePer"].ToString()) ? 0 : Convert.ToDecimal(dr["DefecttivePer"].ToString()),
            }).ToList();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++) 
            {
                this.FindControl("xrD" + (i + 1).ToString(), true).Text = ds.Tables[0].Rows[i]["DefectNameCN"].ToString();
            }
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                this.FindControl("xrMarjorDefectQty" + (i + 1).ToString() + "tTtl", true).Text = ds.Tables[2].Rows[0]["MarjorDefectQty" + (i + 1).ToString() + "tTtl"].ToString();
                this.FindControl("MarjorDefectQty" + (i + 1).ToString() + "Per", true).Text = Convert.ToDecimal(ds.Tables[2].Rows[0]["MarjorDefectQty" + (i + 1).ToString() + "Per"].ToString()).ToString("N2") + "%";
            }
           
            //xrLotSizeQtytTtl.Text = ds.Tables[2].Rows[0]["LotSizeQtytTtl"].ToString();
            xrSampleSizeTtl.Text = ds.Tables[2].Rows[0]["SampleSizeTtl"].ToString();
            xrotherDefectQtytTtl.Text =ds.Tables[0].Rows.Count < 10 ?"": ds.Tables[2].Rows[0]["otherDefectQtytTtl"].ToString();
            xrotherDefectQtyPer.Text = ds.Tables[0].Rows.Count < 10 ? "" :  Convert.ToDecimal(ds.Tables[2].Rows[0]["otherDefectQtyPer"].ToString()).ToString("N2")+"%";

            xrDefecttiveTotaltTtl.Text = ds.Tables[2].Rows[0]["DefecttiveTotaltTtl"].ToString();
            xrDefecttiveTotalPer.Text = Convert.ToDecimal(ds.Tables[2].Rows[0]["DefecttiveTotalPer"].ToString()).ToString("N2") + "%";


            xrDOther.Text = ds.Tables[0].Rows.Count == 10 ? "Others Defect" : "";





        }




    }
}
