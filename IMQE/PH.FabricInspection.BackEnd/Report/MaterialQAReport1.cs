using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.FabricInspection.BO;


namespace PH.FabricInspection.BackEnd
{
    public partial class MaterialQAReport1 : DevExpress.XtraReports.UI.XtraReport
    {
        List<object> MList = new List<object>();
        public MaterialQAReport1(List<object> mqas)
        {
            InitializeComponent();
            MList = mqas;
            bindRptDataSource();
            //xrLabel2.Text = this.Pages.Last.Index.ToString();
        }
        /// <summary>
        /// 绑定表格数据
        /// </summary>
        private void bindRptDataSource()
        {
            this.DataSource = MList;
            //Material QA 
            this.MaterialNo.DataBindings.Add("Text", this.DataSource, "MaterialNo");
            // remark by joseph
           // this.ERPItemNo.DataBindings.Add("Text", this.DataSource, "SupplierFullName");
            this.ERPItemNo.DataBindings.Add("Text", this.DataSource, "SupplierItemNo");


            this.c2.DataBindings.Add("Text", this.DataSource, "TotalQty");
            this.c3.DataBindings.Add("Text", this.DataSource, "RefuseQty");
            this.c4.DataBindings.Add("Text", this.DataSource, "RefusePercent");
            //床搏翴

            this.SPName1.DataBindings.Add("Text", this.DataSource, "SpreadName1");
            this.c5.DataBindings.Add("Text", this.DataSource, "SpreadQty1");

            this.SPName2.DataBindings.Add("Text", this.DataSource, "SpreadName2");
            this.c6.DataBindings.Add("Text", this.DataSource, "SpreadQty2");

            this.SPName3.DataBindings.Add("Text", this.DataSource, "SpreadName3");
            this.c7.DataBindings.Add("Text", this.DataSource, "SpreadQty3");

            this.SPName4.DataBindings.Add("Text", this.DataSource, "SpreadName4");
            this.c8.DataBindings.Add("Text", this.DataSource, "SpreadQty4");

            this.SPName5.DataBindings.Add("Text", this.DataSource, "SpreadName5");
            this.c9.DataBindings.Add("Text", this.DataSource, "SpreadQty5");

            this.c10.DataBindings.Add("Text", this.DataSource, "OtherSpreadQty");


            //Ы场搏翴點
            this.T1.DataBindings.Add("Text", this.DataSource, "PartName1");
            this.C11.DataBindings.Add("Text", this.DataSource, "PartQty1");

            this.T2.DataBindings.Add("Text", this.DataSource, "PartName2");
            this.C12.DataBindings.Add("Text", this.DataSource, "PartQty2");

            this.T3.DataBindings.Add("Text", this.DataSource, "PartName3");
            this.C13.DataBindings.Add("Text", this.DataSource, "PartQty3");

            this.T4.DataBindings.Add("Text", this.DataSource, "PartName4");
            this.C14.DataBindings.Add("Text", this.DataSource, "PartQty4");

            this.T5.DataBindings.Add("Text", this.DataSource, "PartName5");
            this.C15.DataBindings.Add("Text", this.DataSource, "PartQty5");

            this.T6.DataBindings.Add("Text", this.DataSource, "PartName6");
            this.C16.DataBindings.Add("Text", this.DataSource, "PartQty6");

            this.T7.DataBindings.Add("Text", this.DataSource, "PartName7");
            this.C17.DataBindings.Add("Text", this.DataSource, "PartQty7");

            this.T8.DataBindings.Add("Text", this.DataSource, "PartName8");
            this.C18.DataBindings.Add("Text", this.DataSource, "PartQty8");

            this.T9.DataBindings.Add("Text", this.DataSource, "PartName9");
            this.C19.DataBindings.Add("Text", this.DataSource, "PartQty9");

            this.T10.DataBindings.Add("Text", this.DataSource, "PartName10");
            this.C20.DataBindings.Add("Text", this.DataSource, "PartQty10");

            this.C21.DataBindings.Add("Text", this.DataSource, "OtherPartQty");
            //短碼數量
            this.C22.DataBindings.Add("Text", this.DataSource, "ActualQty");
            this.C23.DataBindings.Add("Text", this.DataSource, "MouldTrail");
            this.C24.DataBindings.Add("Text", this.DataSource, "FabricColor");

            DevExpress.XtraReports.UI.GroupField groupFields = new GroupField("MaterialNo");
            this.GroupHeader1.GroupFields.Add(groupFields); 
        }
    }
}
