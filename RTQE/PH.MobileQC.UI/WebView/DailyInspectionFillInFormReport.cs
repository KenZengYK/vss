using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.WebView
{
    public partial class DailyInspectionFillInFormReport : DevExpress.XtraReports.UI.XtraReport
    {
        public DailyInspectionFillInFormReport(FullInspectionHeader Obj, string LanguageType)
        {
            InitializeComponent();

            xrLabel15.Text = LanguageType == "CN" ? "CN format v.2.2" : "EN format v.2.2";

            List<FullInspectionDetail> AddDetailList = new List<FullInspectionDetail>();

            //int SeqNo = 1;
            foreach (FullInspectionDetail DetailObj in Obj.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date) )
            {
                DetailObj.InspectionDateSort = Convert.ToDateTime((DetailObj.InspectionDate ?? DateTime.MaxValue).ToString("yyyy-MM-dd"));
                DetailObj.SortNO = 1;
                DetailObj.SizeSort = DetailObj.Size;
                DetailObj.PODCodeShow = DetailObj.PODCode1;
                DetailObj.InspectionDateSort = Convert.ToDateTime((DetailObj.InspectionDate ?? DateTime.MaxValue).ToString("yyyy-MM-dd"));
                DetailObj.PODNameShow = LanguageType == "CN" ? DetailObj.PODNameCN1 : DetailObj.PODNameEN1;
                DetailObj.DefectCodeShow = DetailObj.DefectCode1;
                DetailObj.DefectNameShow = LanguageType == "CN" ? DetailObj.DefectNameCN1 : DetailObj.DefectNameEN1;
                DetailObj.RejectQty = DetailObj.RejectQty;

                //DetailObj.DataSeqNoShow = SeqNo;

                if (!string.IsNullOrEmpty(DetailObj.DefectCode2))
                {

                    FullInspectionDetail DefectDetailObj2 = new FullInspectionDetail();
                    DefectDetailObj2.SortNO = 2;
                    DefectDetailObj2.SizeSort = DetailObj.Size;
                    DefectDetailObj2.InspectionDateSort = Convert.ToDateTime((DetailObj.InspectionDate ?? DateTime.MaxValue).ToString("yyyy-MM-dd"));

                    DefectDetailObj2.InspectionDate = DetailObj.InspectionDate;
                    DefectDetailObj2.FullInspectionHeader = DetailObj.FullInspectionHeader;

                    DefectDetailObj2.PODCodeShow = DetailObj.PODCode2;
                    DefectDetailObj2.PODNameShow = LanguageType == "CN" ? DetailObj.PODNameCN2 : DetailObj.PODNameEN2;

                    DefectDetailObj2.DefectCodeShow = DetailObj.DefectCode2;
                    DefectDetailObj2.DefectNameShow = LanguageType == "CN" ? DetailObj.DefectNameCN2 : DetailObj.DefectNameEN2;
                    AddDetailList.Add(DefectDetailObj2);

                }

                if (!string.IsNullOrEmpty(DetailObj.DefectCode3))
                {

                    FullInspectionDetail DefectDetailObj3 = new FullInspectionDetail();
                    DefectDetailObj3.SortNO = 2;
                    DefectDetailObj3.SizeSort = DetailObj.Size;
                    DefectDetailObj3.InspectionDateSort = Convert.ToDateTime((DetailObj.InspectionDate ?? DateTime.MaxValue).ToString("yyyy-MM-dd"));

                    DefectDetailObj3.InspectionDate = DetailObj.InspectionDate;
                    DefectDetailObj3.FullInspectionHeader = DetailObj.FullInspectionHeader;

                    DefectDetailObj3.PODCodeShow = DetailObj.PODCode3;
                    DefectDetailObj3.PODNameShow = LanguageType == "CN" ? DetailObj.PODNameCN3 : DetailObj.PODNameEN3;

                    DefectDetailObj3.DefectCodeShow = DetailObj.DefectCode3;
                    DefectDetailObj3.DefectNameShow = LanguageType == "CN" ? DetailObj.DefectNameCN3 : DetailObj.DefectNameEN3;
                    AddDetailList.Add(DefectDetailObj3);

                }
                //SeqNo++;

            }
            Obj.FullInspectionDetails.AddRange(AddDetailList);


            //foreach (FullInspectionDetail DetailObj in Obj.FullInspectionDetails) 
            //{
            //    string.IsNullOrEmpty(DetailObj.DefectCode1)
            //    DetailObj.PODNameShow = LanguageType == "CN" ? DetailObj.PODNameCN : DetailObj.PODNameEN;
            //    DetailObj.DefectNameShow = LanguageType == "CN" ? DetailObj.DefectNameCN : DetailObj.DefectNameEN;
            //}


            List<DateTime?> ADateList = Obj.FullInspectionDetails.Where(dr =>dr.InspectionDate <DateTime.Now.Date).Select(dr => dr.InspectionDateSort).Distinct().OrderBy(dr => dr).ToList();
          //  int? SeqNo = 1;
            for (int ii = 0; ii < ADateList.Count(); ii++)
            {
                int? SeqNo = 1;
              
                var aa = Obj.FullInspectionDetails.Where(dr =>dr.InspectionDate <DateTime.Now.Date && dr.InspectionDateSort == ADateList[ii]).OrderBy(dr => dr.InspectionDateSort).ThenBy(dr => dr.SizeSort).ThenBy(dr => dr.InspectionDate).ThenBy(dr => dr.SortNO);

                foreach (FullInspectionDetail ObjDetail in Obj.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date && dr.InspectionDateSort == ADateList[ii]).OrderBy(dr => dr.InspectionDateSort).ThenBy(dr => dr.SizeSort).ThenBy(dr => dr.InspectionDate).ThenBy(dr => dr.SortNO))
                {
                    if (ObjDetail.SortNO == 1)
                    {
                        ObjDetail.DataSeqNoShow = SeqNo;
                        if (ObjDetail.DataSeqNoShow == 1)
                        {
                            ObjDetail.InspectionDateShow = ObjDetail.InspectionDate;
                        }
                        SeqNo++;
                    }
                }

            }

            this.xrPrintdd.Text = DateTime.Now.ToString("MM/dd");
            this.bindingSource1.DataSource = Obj.FullInspectionDetails.Where(dr => dr.InspectionDate < DateTime.Now.Date).OrderBy(dr => dr.InspectionDateSort).ThenBy(dr => dr.SizeSort).ThenBy(dr => dr.InspectionDate).ThenBy(dr => dr.SortNO); 
            this.bindingSource2.DataSource = Obj;

            
        }

        string First = "";
        string Second = "";
        System.Drawing.Color C1 = System.Drawing.Color.Transparent;
        System.Drawing.Color C2 = System.Drawing.Color.FromArgb(225,225,225);//System.Drawing.Color.FromArgb(((int)(((byte)(225)))), ((int)(((byte)(225)))), ((int)(((byte)(225)))));
        System.Drawing.Color CTemp = new Color();
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //xrTableRow9
            //this.xrTableRow9.BackColor = System.Drawing.Color.WhiteSmoke;
            if (this.GetCurrentColumnValue("InspectionDateSort") == null) return;
            if (First == "" && Second =="")
            {
                First = this.GetCurrentColumnValue("InspectionDateSort").ToString();
                this.xrTableRow9.BackColor = C1;
                Second = First;
            }
            else 
            {
                First = this.GetCurrentColumnValue("InspectionDateSort").ToString();
                if (First == Second)
                {
                    this.xrTableRow9.BackColor = C1;
                    Second = First;
                }
                else 
                {
                    this.xrTableRow9.BackColor = C2;
                    CTemp = C1;
                    C1 = C2;
                    C2 = CTemp;

                    Second = First;
                }
            }

        }



    }
}
