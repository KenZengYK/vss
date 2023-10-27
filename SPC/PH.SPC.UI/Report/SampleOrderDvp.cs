using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.SPC.BO;
using System.Linq;
using System.Collections.Generic;
using PH.Platform.BO;
using System.Data;

namespace PH.SPC.UI.Report
{
    public partial class SampleOrderDvp : DevExpress.XtraReports.UI.XtraReport
    {

        List<Style> Alist = new List<Style>();
        string TitleStr = "";
        string ConfirmedByEN = "";
        string ConfirmedByCN = "";
        //Dvp/Pre-Prdn/Prdn/Other
        public SampleOrderDvp(SampleOrder Aobj)
        {
            InitializeComponent();

            xrRemark.Text = "Remarks 備註:" + Aobj.Remark;


            //if (Aobj.StageCode == "1st")
            //{
            //    TitleType = "Dvp";
            //}
            //else if (Aobj.StageCode == "2nd")
            //{
            //    TitleType = "Pre-Prdn";
            //}
            //else if (Aobj.StageCode == "3rd")
            //{
            //    TitleType = "Prdn";
            //}
            //else if (Aobj.StageCode == "Others")
            //{
            //    TitleType = "Other";
            //}
            //xrTitle.Text = string.Format("Sample Order - {0} 辦單", TitleType);

            xrTitle.Text = "Sample Order - Prdn 辦單";
            Style StyleObj = Aobj.Styles.Where(dr => dr.ProductWs != null).OrderBy(dr => dr.ProductWs).FirstOrDefault();
            if (StyleObj == null)
            {
                ConfirmedByEN = "";
                ConfirmedByCN = "";
            }
            else if (StyleObj.ProductWs.StartsWith("DWs"))
            {
                ConfirmedByEN = "DWs";
                ConfirmedByCN = "開拓";
                xrTitle.Text = "Sample Order - Dvp 辦單";
            }
            else if (StyleObj.ProductWs.StartsWith("PPWs"))
            {
                ConfirmedByEN = "PPWs";
                ConfirmedByCN = "預產";
                xrTitle.Text = "Sample Order - Pre-Prdn 辦單";
            }

            xrTableCell1.Text = xrTitle.Text;
            xrConfirmedBy.Text = Aobj.SamplePurpose == "Qtn Only" ?
                                             "Confirmed by Pattern Team 紙樣組確認:" : string.Format("Confirmed by {0} {1}工場確認:", ConfirmedByEN, ConfirmedByCN);

            xrLabel3.Text = string.Format("{0}WorkShop:\r\n{1}工場:", ConfirmedByEN + " ", ConfirmedByCN);


            Alist = Aobj.Styles.ToList();
            AStyleSortObj = null;
            AStyleSortEditionobj = null;
            //string WoNo = "";


            //WoNo = string.Join(",", Alist.Select(dr => dr.WorkOrderID).Distinct().ToArray());
            //foreach (Style StyleWO in Alist.) 
            //{
            //    WoNo = WoNo + StyleWO.WorkOrderID + ",";
            //}

            //xrWONo.Text = WoNo.TrimEnd(',');

            xrSmpQty.Text = Aobj.TotalSampleOrderQty.ToString();
            xrttlStyleNo.Text = Aobj.TotalStyle.ToString();

            Style AStyle = Aobj.Styles.FirstOrDefault();

            string MarkSourceCode = AStyle.StyleSorts.Where(dr => !string.IsNullOrEmpty(dr.MarkSource)).Select(dr => dr.MarkSource).FirstOrDefault();
            xrMarkSourceStr.Text = GetMasterDBEn(MarkSourceCode, "PatternSource") + " " +GetMasterDB(MarkSourceCode, "PatternSource");

            string MaterialStatusCode = AStyle.StyleSorts.Where(dr => !string.IsNullOrEmpty(dr.MaterialStatus)).Select(dr => dr.MaterialStatus).FirstOrDefault();
            xrMaterialStatusStr.Text = GetMasterDBEn(MaterialStatusCode, "MaterialStatus") + " " + GetMasterDB(MaterialStatusCode, "MaterialStatus");

            xrMaterialReady.Text = GetMasterDBEn(Aobj.MaterialReady, "MaterialReady") + " " + GetMasterDB(Aobj.MaterialReady, "MaterialReady");
            //xrSampleTypePurpose.Text = GetMasterDBEn(Aobj.SamplePurpose, "SampleTypePurpose") +" "+ Aobj.QtnMethodCN;

            this.bindingSource1.DataSource = Alist;
            this.bindingSource2.DataSource = Aobj;
        }

        StyleSort AStyleSortObj = new StyleSort();
        StyleSortEdition AStyleSortEditionobj = new StyleSortEdition();

        public SampleOrderDvp(SampleOrder Aobj, Style StyleObj, StyleSort StyleSortObj, StyleSortEdition StyleSortEditionobj)
        {
            InitializeComponent();

            xrRemark.Text = "Remarks 備註:" + Aobj.Remark;
            AStyleSortObj = StyleSortObj;
            AStyleSortEditionobj = StyleSortEditionobj;
            Alist = Aobj.Styles.ToList();

            //if (Aobj.StageCode == "1st")
            //{
            //    TitleType = "Dvp";
            //}
            //else if (Aobj.StageCode == "2nd")
            //{
            //    TitleType = "Pre-Prdn";
            //}
            //else if (Aobj.StageCode == "3rd")
            //{
            //    TitleType = "Prdn";
            //}
            //else if (Aobj.StageCode == "Others")
            //{
            //    TitleType = "Other";
            //}
            //xrTitle.Text = string.Format("Sample Order - {0} 辦單", TitleType);

            xrTitle.Text = "Sample Order - Prdn 辦單";
            Style BStyleObj = Aobj.Styles.Where(dr => dr.ProductWs != null).OrderBy(dr => dr.ProductWs).FirstOrDefault();
            if (BStyleObj == null)
            {
                ConfirmedByEN = "";
                ConfirmedByCN = "";
            }
            else if (BStyleObj.ProductWs.StartsWith("DWs"))
            {
                ConfirmedByEN = "DWs";
                ConfirmedByCN = "開拓";
                xrTitle.Text = "Sample Order - Dvp 辦單";
            }
            else if (BStyleObj.ProductWs.StartsWith("PPWs"))
            {
                ConfirmedByEN = "PPWs";
                ConfirmedByCN = "預產";
                xrTitle.Text = "Sample Order - Pre-Prdn 辦單";
            }
            xrTableCell1.Text = xrTitle.Text;

            xrConfirmedBy.Text = Aobj.SamplePurpose == "Qtn Only" ?
                                              "Confirmed by Pattern Team 紙樣組確認:" : string.Format("Confirmed by {0} {1}工場確認:", ConfirmedByEN, ConfirmedByCN);

            xrLabel3.Text = string.Format("{0}WorkShop:\r\n{1}工場:", ConfirmedByEN + " ", ConfirmedByCN);

            //xrWONo.Text = StyleObj.WorkOrderID;
            xrSmpQty.Text = StyleSortEditionobj.StyleSizes.Select(dr => dr.QtyShow).Sum().ToString();
            xrttlStyleNo.Text = "1";

            Style AStyle = Aobj.Styles.FirstOrDefault();
            //string MarkSourceCode = AStyle.StyleSorts.Where(dr => !string.IsNullOrEmpty(dr.MarkSource)).Select(dr => dr.MarkSource).FirstOrDefault();
            string MarkSourceCode = StyleSortObj.MarkSource;
            xrMarkSourceStr.Text = GetMasterDBEn(MarkSourceCode, "PatternSource") + " " + GetMasterDB(MarkSourceCode, "PatternSource");

            //string MaterialStatusCode = AStyle.StyleSorts.Where(dr => !string.IsNullOrEmpty(dr.MaterialStatus)).Select(dr => dr.MaterialStatus).FirstOrDefault();
            string MaterialStatusCode = StyleSortObj.MaterialStatus;
            xrMaterialStatusStr.Text = GetMasterDBEn(MaterialStatusCode, "MaterialStatus") + " "+ GetMasterDB(MaterialStatusCode, "MaterialStatus");

            xrMaterialReady.Text = GetMasterDBEn(Aobj.MaterialReady, "MaterialReady") + " " + GetMasterDB(Aobj.MaterialReady, "MaterialReady"); 

            //xrSampleTypePurpose.Text = GetMasterDBEn(Aobj.SamplePurpose, "SampleTypePurpose") +" "+  Aobj.QtnMethodCN;

            this.bindingSource1.DataSource = StyleObj;
            this.bindingSource2.DataSource = Aobj;
        }


        string OID = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            OID = this.GetCurrentColumnValue("OID").ToString();

            Style StyleObj = Alist.Where(dr => dr.OID.ToString() == OID).FirstOrDefault();
            if (StyleObj == null) return;
            StyleSort StyleSortObj = StyleObj.StyleSorts.Where(dr => (AStyleSortObj == null && dr.StyleOID == StyleObj.OID) || (AStyleSortObj != null && dr.OID == AStyleSortObj.OID)).OrderBy(dr => dr.OID).FirstOrDefault();
            if (StyleSortObj == null) return;
            StyleSortEdition AAAStyleSortEditionObj = StyleSortObj.StyleSortEditions.Where(dr => (AStyleSortEditionobj == null && dr.StyleSortOID == StyleSortObj.OID) || (AStyleSortEditionobj != null && dr.OID == AStyleSortEditionobj.OID)).OrderBy(dr => dr.OID).FirstOrDefault();
            if (AAAStyleSortEditionObj == null) return;

           // List<StyleSize> StyleSizeList = AAAStyleSortEditionObj.StyleSizes.OrderBy(dr=>dr.OrdersShow).ToList();

            List<StyleSize> StyleSizeList = AAAStyleSortEditionObj.StyleSizes.OrderBy(dr => dr.ColorIDShow).ThenBy(dr => dr.ColorName).ThenBy(dr => dr.Cup).ToList();

           // StyleObj.WorkOrderID;
             //string.Join(",", Alist.Select(dr => dr.WorkOrderID).Distinct().ToArray());

            int txtFirst = 0;
            string ColorCodeFirst = "";
            string ColorCodeSecond = "";
            string ColorNameFirst = "";
            string ColorNameSecond = "";
            string CupFirst = "";
            string CupSecond = "";

            foreach (StyleSize StyleSizeObj in StyleSizeList)
            {

                StyleSizeObj.WoShow = StyleObj.WorkOrderID;

                //if (txtFirst == 0)
                //{
                //    ColorCodeFirst = StyleSizeObj.ColorIDShow;
                //    ColorNameFirst = StyleSizeObj.ColorName;
                //    CupFirst = StyleSizeObj.Cup;
                //    txtFirst++;
                //}
                //else
                //{

                //    ColorCodeFirst = StyleSizeObj.ColorIDShow;
                //    ColorNameFirst = StyleSizeObj.ColorName;
                //    CupFirst = StyleSizeObj.Cup;

                //    if (ColorCodeSecond == ColorCodeFirst && ColorNameSecond == ColorNameFirst && CupSecond == CupFirst && txtFirst == 1)
                //    {

                //        StyleSizeObj.WoShow = StyleObj.WorkOrderID;
                //    }
                //    else
                //    {
                //        StyleSizeObj.WoShow = "";
                //        txtFirst++;
                //    }
                //}

                //ColorCodeSecond = ColorCodeFirst;
                //ColorNameSecond = ColorNameFirst;
                //CupSecond = CupFirst;


            }
            List<StyleSize> StyleSizeListOrder = new List<StyleSize>();
            StyleSizeListOrder = StyleSizeList.OrderBy(dr => dr.CupOrdersShow).ToList();
            this.prPivotGrid1.DataSource = StyleSizeListOrder;
           // this.prPivotGrid1.DataSource = StyleSizeList.OrderBy(dr => dr.OrdersShow);


        }

        SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();

        public string GetMasterDB(string Code, string CodeType)
        {
            string Str = "select top 1 DescCN from [PH.DespatchSample]..DataDictMasterDB where DataType ='{0}' and  Flag='{1}'";
            Str = string.Format(Str, Code, CodeType);
            DataTable tb = db.ExecuteDataTable(Str, "Opts");
            return tb.Rows.Count == 0 ? "" :  tb.Rows[0]["DescCN"].ToString();
        }


        public string GetMasterDBEn(string Code, string CodeType)
        {
            string Str = "select top 1 DescEn from [PH.DespatchSample]..DataDictMasterDB where DataType ='{0}' and  Flag='{1}'";
            Str = string.Format(Str, Code, CodeType);
            DataTable tb = db.ExecuteDataTable(Str, "Opts");
            return tb.Rows.Count == 0 ? Code : tb.Rows[0]["DescEn"].ToString();
        }


    }
}
