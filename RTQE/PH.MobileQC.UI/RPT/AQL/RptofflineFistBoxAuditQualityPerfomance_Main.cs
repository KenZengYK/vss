using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.UI.CS;
using System.Data.SqlClient;
using System.Data.Sql;
using PH.MobileQC.BO;
using System.IO;


namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class RptofflineFistBoxAuditQualityPerfomance_Main : DevExpress.XtraReports.UI.XtraReport
    {

        public RptofflineFistBoxAuditQualityPerfomance_Main(DataSet ds)
        {
            InitializeComponent();
            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;


            GetDataSet(ds);
        }

        public void GetDataSet(DataSet ds)
        {
            DataTable dtHeader = ds.Tables[0];
            List<FirstBoxAuditListReportClass> HeaderList = dtHeader.AsEnumerable().Select(dr =>
                               new FirstBoxAuditListReportClass()
                               {
                                   MasterID = dr["MasterID"].ToString(),
                                   QCtime = Convert.ToDateTime(dr["QCtime"].ToString()),
                                   Style = dr["Style"].ToString(),
                                   CustomerPO = dr["CustomerPO"].ToString(),
                                   StyleType = dr["StyleType"].ToString(),
                                   POQuantity = dr["POQuantity"].ToString(),
                                   RejQty = dr["RejQty"].ToString(),
                                   QCMan = dr["QCMan"].ToString(),
                                   ColorName = dr["ColorName"].ToString(),
                                   Factory = dr["Factory"].ToString(),
                                   Project = dr["Project"].ToString(),
                                   WO = dr["WO"].ToString(),
                                   Line = dr["Line"].ToString(),
                                   Color = dr["Color"].ToString(),
                                   QNQty = dr["QNQty"].ToString(),
                                   AuditType = dr["AuditType"].ToString(),
                                   Productqty = dr["Productqty"].ToString(),
                                   QCCount = dr["QCCount"].ToString(),
                                   CheckApprovedSample = dr["CheckApprovedSample"].ToString() == "True" ? true : false,
                                   CheckColorSample = dr["CheckColorSample"].ToString() == "True" ? true : false,
                                   CheckWO = dr["CheckWO"].ToString() == "True" ? true : false,
                                   ImproveActionPlan = dr["ImproveActionPlan"].ToString()
                               }).OrderBy(dr => dr.MasterID).ToList();



            List<KeyFirstBoxAuditListDetailSecond> MasterFoot = new List<KeyFirstBoxAuditListDetailSecond>();
            int b = ds.Tables[2].Rows.Count;
            if (b > 0)
            {
                //int a = 0, c = 0,Sub_NO1 = 0,Sub_No2 = 0; string MasterIDName1 = "", MasterIDName2="";
                for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
                {
                    KeyFirstBoxAuditListDetailSecond MasterObj = new KeyFirstBoxAuditListDetailSecond();
                    string SourcePath = @"\\10.2.1.53\MobileQCPics\";
                    string DestPath = @"\\10.2.1.53\MobileQCPics_Small\";
                    string FileName = ds.Tables[2].Rows[i]["ImgUrl"].ToString();

                    if (FileName != "")
                    {
                        if (!string.IsNullOrEmpty(FileName))
                        {
                            if (!File.Exists(DestPath + FileName))
                            {
                                //壓縮圖片后，將源上傳的文件copy到另外一個目錄MobileQCPics_Small中，供報表顯示使用
                                Image img_Big = Image.FromFile(SourcePath + FileName);
                                Image img_Samll = PictureHelper.ResizeImage(img_Big, new Size(54 * 15, 45 * 15));
                                img_Samll.Save(DestPath + FileName);
                            }
                        }
                    }

                    //MasterObj.QCtime = dtFoot.Rows[i]["QCtime"].ToString();
                    MasterObj.QAConfirm = ds.Tables[2].Rows[i]["QAConfirm"].ToString();
                    MasterObj.SIConfirm = ds.Tables[2].Rows[i]["SIConfirm"].ToString();
                    MasterObj.MasterID = ds.Tables[2].Rows[i]["MasterID"].ToString();
                    MasterObj.WsConfirm = ds.Tables[2].Rows[i]["WsConfirm"].ToString();
                    MasterObj.ImgUrl = ds.Tables[2].Rows[i]["ImgUrl"] != DBNull.Value ? DestPath + FileName : "";
                    MasterFoot.Add(MasterObj);
                }
            }

            foreach (var obj in HeaderList)
            {
                DataTable dtDefectList = ds.Tables[1];
                List<KeyFistBoxAuditListDetailFist> DefectList = dtDefectList.AsEnumerable().Where(dr => dr["MasterID"].ToString() == obj.MasterID)
               .Select(dr => new KeyFistBoxAuditListDetailFist()
                                {
                                    MasterID = dr["MasterID"].ToString(),
                                    Position = dr["Position"].ToString(),
                                    DefectDescriptn = dr["DefectDescriptn"].ToString(),
                                    Marjo = dr["Marjo"].ToString(),
                                    Minor = dr["Minor"].ToString(),
                                }).ToList();

                obj.ListDetailDefect.AddRange(DefectList);


                List<KeyFirstBoxAuditListDetailSecond> FootList = MasterFoot.Where(dr => dr.MasterID == obj.MasterID).Select(dr =>
                  new KeyFirstBoxAuditListDetailSecond()
                  {
                      MasterID = dr.MasterID,
                      WsConfirm = dr.WsConfirm,
                      QAConfirm = dr.QAConfirm,
                      SIConfirm = dr.SIConfirm,
                      ImgUrl = dr.ImgUrl

                  }).ToList();
                obj.ListDetailUrl.AddRange(FootList);

                //ListAll.Add(ListObj);
            }

            this.bindingSource1.DataSource = HeaderList;

        }

        private void DetailReport1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //FirstBoxAuditListReportClass CurrentHeader =
            //  (this.DetailReport1.DataSource as BindingSource)[this.CurrentRowIndex] as FirstBoxAuditListReportClass;
           
            //if (CurrentHeader.ListDetailDefect.Count == 0)
            //{
            //    this.DetailReport1.Visible = false;
            //}
            //else
            //{
            //    this.DetailReport1.Visible = true;
            //}
        }

    
    }
}
