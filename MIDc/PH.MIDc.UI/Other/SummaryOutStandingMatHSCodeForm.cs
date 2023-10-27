using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public class SummaryOutStandingMatHSCodeForm: PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        private DevExpress.XtraGrid.Columns.GridColumn CL_MaterialName;
        private DevExpress.XtraGrid.Columns.GridColumn CL_HaveProjectQty;
        private DevExpress.XtraGrid.Columns.GridColumn CL_NoneProjectQty;
        private DevExpress.XtraGrid.Columns.GridColumn CL_TotalWeight;
        private DevExpress.XtraGrid.Columns.GridColumn CL_ETA;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn CL_hscode;

        #endregion

        public SummaryOutStandingMatHSCodeForm()
        {
            InitializeComponent();          
        }

        public override void DataBind()
        {
            base.DataBind();
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();           
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.GetSummaryOutStandingMatHSCode("")
                                            select c;

        }

        private void InitializeComponent()
        {
            this.CL_hscode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CL_MaterialName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CL_HaveProjectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CL_NoneProjectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CL_TotalWeight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CL_ETA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 16;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.CL_hscode,
            this.CL_MaterialName,
            this.CL_ETA,
            this.CL_HaveProjectQty,
            this.CL_NoneProjectQty,
            this.CL_TotalWeight});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // CL_hscode
            // 
            this.CL_hscode.Caption = "H.S.CODE";
            this.CL_hscode.FieldName = "hscode";
            this.CL_hscode.Name = "CL_hscode";
            this.CL_hscode.Tag = "hscode";
            this.CL_hscode.Visible = true;
            this.CL_hscode.VisibleIndex = 0;
            this.CL_hscode.Width = 97;
            // 
            // CL_MaterialName
            // 
            this.CL_MaterialName.Caption = "MaterialName";
            this.CL_MaterialName.FieldName = "materialName";
            this.CL_MaterialName.Name = "CL_MaterialName";
            this.CL_MaterialName.Tag = "materialName";
            this.CL_MaterialName.Visible = true;
            this.CL_MaterialName.VisibleIndex = 1;
            this.CL_MaterialName.Width = 113;
            // 
            // CL_HaveProjectQty
            // 
            this.CL_HaveProjectQty.Caption = "HaveProjectQty";
            this.CL_HaveProjectQty.FieldName = "HaveProjectQty";
            this.CL_HaveProjectQty.Name = "CL_HaveProjectQty";
            this.CL_HaveProjectQty.Tag = "HaveProjectQty";
            this.CL_HaveProjectQty.Visible = true;
            this.CL_HaveProjectQty.VisibleIndex = 3;
            this.CL_HaveProjectQty.Width = 131;
            // 
            // CL_NoneProjectQty
            // 
            this.CL_NoneProjectQty.Caption = "NoneProjectQty";
            this.CL_NoneProjectQty.FieldName = "NoneProjectQty";
            this.CL_NoneProjectQty.Name = "CL_NoneProjectQty";
            this.CL_NoneProjectQty.Tag = "NoneProjectQty";
            this.CL_NoneProjectQty.Visible = true;
            this.CL_NoneProjectQty.VisibleIndex = 4;
            this.CL_NoneProjectQty.Width = 115;
            // 
            // CL_TotalWeight
            // 
            this.CL_TotalWeight.Caption = "TotalWeight";
            this.CL_TotalWeight.FieldName = "TotalWeight";
            this.CL_TotalWeight.Name = "CL_TotalWeight";
            this.CL_TotalWeight.Tag = "TotalWeight";
            this.CL_TotalWeight.Visible = true;
            this.CL_TotalWeight.VisibleIndex = 5;
            this.CL_TotalWeight.Width = 99;
            // 
            // CL_ETA
            // 
            this.CL_ETA.Caption = "ETA";
            this.CL_ETA.FieldName = "ETA";
            this.CL_ETA.Name = "CL_ETA";
            this.CL_ETA.Tag = "ETA";
            this.CL_ETA.Visible = true;
            this.CL_ETA.VisibleIndex = 2;
            this.CL_ETA.Width = 115;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Print";
            this.barButtonItem1.Id = 15;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // SummaryOutStandingMatHSCodeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "SummaryOutStandingMatHSCodeForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {           
            string timefrom="", timeto="";

            try
            {
                ArrayList list = new ArrayList();

                list = ((DevExpress.Data.Filtering.GroupOperator)(this.objListGridView.ActiveFilterCriteria)).Operands;

                for (int i = 0; i < list.Count; i++)
                {
                    string filename = ((DevExpress.Data.Filtering.OperandProperty)((DevExpress.Data.Filtering.BinaryOperator)(list[i])).LeftOperand).PropertyName;
                    if (filename == "ETA")
                    {
                        if (timefrom == "")
                            timefrom = list[i].ToString().Substring(list[i].ToString().IndexOf("#") + 1, list[i].ToString().Length - list[i].ToString().IndexOf("#") - 2);
                        else if (timeto == "")
                            timeto = list[i].ToString().Substring(list[i].ToString().IndexOf("#") + 1, list[i].ToString().Length - list[i].ToString().IndexOf("#") - 2);
                    }
                }
            }
            catch { }


            List<PH.MIDc.BO.GetSummaryOutStandingMatHSCodeResult> details = new List<PH.MIDc.BO.GetSummaryOutStandingMatHSCodeResult>();
            for (int i = 0; i < this.objListGridView.DataRowCount; i++)
            {
                PH.MIDc.BO.GetSummaryOutStandingMatHSCodeResult d = this.objListGridView.GetRow(i) as PH.MIDc.BO.GetSummaryOutStandingMatHSCodeResult;
                details.Add(d);
            }



            SummaryOutStandingMatHSCodeRPT rpt = new SummaryOutStandingMatHSCodeRPT(details, timefrom,timeto);
            rpt.ShowPreview();
        }

    }
}
