using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.BackEnd
{
    public partial class SupplierAnalyseReport : DevExpress.XtraReports.UI.XtraReport
    {
        List<SupplierQA> SList = new List<SupplierQA>();
        public SupplierAnalyseReport(List<SupplierQA> sqas,string period)
        {
            InitializeComponent();
            SList = sqas;
            bindRptDataSource();
           // xrLabel2.Text=this.PageHeader.Index.ToString();
            xrLabel3.Text = xrLabel3.Text + DateTime.Now.ToShortDateString();
            xrLabel8.Text = period;
        }
     
        /// <summary>
        /// 绑定表格数据
        /// </summary>
        public void bindRptDataSource()
        {
            this.DataSource = SList;

            this.xrLabel6.DataBindings.Add("Text", this.DataSource, "MCount");
            this.c1.DataBindings.Add("Text", this.DataSource, "SupplierName");
            this.c2.DataBindings.Add("Text", this.DataSource, "TotalQty");
            this.c3.DataBindings.Add("Text", this.DataSource, "RefuseQty");
            this.c4.DataBindings.Add("Text", this.DataSource, "RefusePercent");
            //床搏翴

            this.SPName1.DataBindings.Add("Text", this.DataSource, "SpreadDefectName1");
            this.c5.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty1");
 
            this.SPName2.DataBindings.Add("Text", this.DataSource, "SpreadDefectName2");
            this.c6.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty2");

            this.SPName3.DataBindings.Add("Text", this.DataSource, "SpreadDefectName3");
            this.c7.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty3");

            this.SPName4.DataBindings.Add("Text", this.DataSource, "SpreadDefectName4");
            this.c8.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty4");

            this.SPName5.DataBindings.Add("Text", this.DataSource, "SpreadDefectName5");
            this.c9.DataBindings.Add("Text", this.DataSource, "SpreadDefectQty5");


            this.c10.DataBindings.Add("Text", this.DataSource, "SpreadDefectQtyOther");


            //Ы场搏翴點

            this.T1.DataBindings.Add("Text", this.DataSource, "PartDefectName1");
            this.C11.DataBindings.Add("Text", this.DataSource, "PartDefectQty1");

            this.T2.DataBindings.Add("Text", this.DataSource, "PartDefectName2");
            this.C12.DataBindings.Add("Text", this.DataSource, "PartDefectQty2");

            this.T3.DataBindings.Add("Text", this.DataSource, "PartDefectName3");
            this.C13.DataBindings.Add("Text", this.DataSource, "PartDefectQty3");

            this.T4.DataBindings.Add("Text", this.DataSource, "PartDefectName4");
            this.C14.DataBindings.Add("Text", this.DataSource, "PartDefectQty4");

            this.T5.DataBindings.Add("Text", this.DataSource, "PartDefectName5");
            this.C15.DataBindings.Add("Text", this.DataSource, "PartDefectQty5");

            this.T6.DataBindings.Add("Text", this.DataSource, "PartDefectName6");
            this.C16.DataBindings.Add("Text", this.DataSource, "PartDefectQty6");

            this.T7.DataBindings.Add("Text", this.DataSource, "PartDefectName7");
            this.C17.DataBindings.Add("Text", this.DataSource, "PartDefectQty7");

            this.T8.DataBindings.Add("Text", this.DataSource, "PartDefectName8");
            this.C18.DataBindings.Add("Text", this.DataSource, "PartDefectQty8");

            this.T9.DataBindings.Add("Text", this.DataSource, "PartDefectName9");
            this.C19.DataBindings.Add("Text", this.DataSource, "PartDefectQty9");

            this.T10.DataBindings.Add("Text", this.DataSource, "PartDefectName10");
            this.C20.DataBindings.Add("Text", this.DataSource, "PartDefectQty10");

            this.C21.DataBindings.Add("Text", this.DataSource, "PartDefectQtyOther");
            //短碼數量
            this.C22.DataBindings.Add("Text", this.DataSource, "ActualQty");
            this.C23.DataBindings.Add("Text", this.DataSource, "MouldTrail");
            this.C24.DataBindings.Add("Text", this.DataSource, "FabricColor");

            DevExpress.XtraReports.UI.GroupField groupFields = new GroupField("SupplierName");
            this.GroupHeader1.GroupFields.Add(groupFields); 

        }
    }
}
