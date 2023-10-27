/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.ProblemMasterListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 下午 03:39:15 $   
* $Revision: 0 $   
*/
using System.Globalization;


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using DevExpress.XtraGrid.Columns;
using System.IO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI
{
    public partial class ProblemMasterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        // private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraBars.BarButtonItem barBtnReport;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintByRN;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintByShortLength;


        private DevExpress.XtraBars.BarButtonItem barBtnPrintRyRNBackEnd;
        private GridColumn Columns_Company;
        private GridColumn Columns_RN_NO;
        private GridColumn Columns_Item_No;
        private GridColumn Columns_StockIn_Date;
        private GridColumn Columns_Supplier_Length;
        private GridColumn Columns_Insp_Length;
        private GridColumn Columns_IQC_Reference;
        private GridColumn Columns_RN_Confirm;
        private GridColumn Columns_Receive_Qty;
        private GridColumn Columns_Insp_Qty;
        private GridColumn Columns_QC_Summary;
        private GridColumn Columns_Defect_Problem;
        private GridColumn Columns_Shading_Problem;
        private GridColumn Columns_Short_Length_Problem;
        private GridColumn Columns_Narrow_Width_Problem;
        private GridColumn Columns_Finishing_Problem;
        private GridColumn Columns_Color_Problem;
        private GridColumn Columns_Others_Problem;
        private DevExpress.XtraBars.BarButtonItem barBtnRN_Basic;
        private DevExpress.XtraBars.BarButtonItem barBtnRN_SpreadDefect;
        private DevExpress.XtraBars.BarButtonItem barBtnRN_Physical;
        private DevExpress.XtraBars.BarButtonItem barBtnRN_WeftYarn;


        #endregion

        #region//my properties

        private string timeFormat = "yyyy/MM/dd HH:mm:ss";
        private List<RN_Header> allRnHeaders = new List<RN_Header>();
        private Guid key;

        DateTime time = DateTime.Now;
        private GridColumn colAuditNo;


        private string strVersionNo = "1";

        #endregion

        public ProblemMasterListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(ProblemMasterDetailForm).FullName;
        }

        public override void DataBind()
        {

            //new
            RN_HeaderList rn_HeaderList = new RN_HeaderList();

            this.BindingSource.DataSource = rn_HeaderList.GetRN_HeaderList();
            this.DataContext = rn_HeaderList.CurrentDataContext;
            this.EditorTypeName = typeof(ProblemMasterDetailForm).FullName;


        }

        private void ProblemMasterListForm_Load(object sender, EventArgs e)
        {
            //if (!DesignMode)
            //{
            //    PH.FabricInspection.BO.FabricInspectionDataContext context =  PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
            //    this.DataContext = context;
            //    this.CurBindingSource.DataSource = from c in context.RN_Headers select c;
            //}
        }

        private void InitializeComponent()
        {
            this.barBtnReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPrintByRN = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrintRyRNBackEnd = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnRN_Basic = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnRN_SpreadDefect = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnRN_Physical = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnRN_WeftYarn = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrintByShortLength = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_RN_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Item_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_StockIn_Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Supplier_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Insp_Length = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_IQC_Reference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_RN_Confirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Receive_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Insp_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_QC_Summary = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Defect_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Shading_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Short_Length_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Narrow_Width_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Finishing_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Color_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Others_Problem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditNo = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnReport,
            this.barSubItem1,
            this.barBtnPrintByRN,
            this.barBtnPrintByShortLength,
            this.barBtnPrintRyRNBackEnd,
            this.barBtnRN_Basic,
            this.barBtnRN_SpreadDefect,
            this.barBtnRN_Physical,
            this.barBtnRN_WeftYarn});
            this.objbarManager.MaxItemId = 19;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem1)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(845, 421);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Company,
            this.Columns_RN_NO,
            this.colAuditNo,
            this.Columns_Item_No,
            this.Columns_StockIn_Date,
            this.Columns_Supplier_Length,
            this.Columns_Insp_Length,
            this.Columns_IQC_Reference,
            this.Columns_RN_Confirm,
            this.Columns_Receive_Qty,
            this.Columns_Insp_Qty,
            this.Columns_QC_Summary,
            this.Columns_Defect_Problem,
            this.Columns_Shading_Problem,
            this.Columns_Short_Length_Problem,
            this.Columns_Narrow_Width_Problem,
            this.Columns_Finishing_Problem,
            this.Columns_Color_Problem,
            this.Columns_Others_Problem});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.RN_Header);
            // 
            // barBtnReport
            // 
            this.barBtnReport.Caption = "Report";
            this.barBtnReport.Id = 10;
            this.barBtnReport.Name = "barBtnReport";
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Report";
            this.barSubItem1.Id = 11;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrintByRN),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrintRyRNBackEnd),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRN_Basic),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRN_SpreadDefect),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRN_Physical),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRN_WeftYarn)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnPrintByRN
            // 
            this.barBtnPrintByRN.Caption = "Print by RN";
            this.barBtnPrintByRN.Id = 12;
            this.barBtnPrintByRN.Name = "barBtnPrintByRN";
            this.barBtnPrintByRN.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintByRN_ItemClick);
            // 
            // barBtnPrintRyRNBackEnd
            // 
            this.barBtnPrintRyRNBackEnd.Caption = "Print by RN BackEnd";
            this.barBtnPrintRyRNBackEnd.Id = 14;
            this.barBtnPrintRyRNBackEnd.Name = "barBtnPrintRyRNBackEnd";
            this.barBtnPrintRyRNBackEnd.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintRyRNBackEnd_ItemClick);
            // 
            // barBtnRN_Basic
            // 
            this.barBtnRN_Basic.Caption = "Print RN_Basic";
            this.barBtnRN_Basic.Id = 15;
            this.barBtnRN_Basic.Name = "barBtnRN_Basic";
            this.barBtnRN_Basic.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRN_Basic_ItemClick);
            // 
            // barBtnRN_SpreadDefect
            // 
            this.barBtnRN_SpreadDefect.Caption = "Print RN_SpreadDefect";
            this.barBtnRN_SpreadDefect.Id = 16;
            this.barBtnRN_SpreadDefect.Name = "barBtnRN_SpreadDefect";
            this.barBtnRN_SpreadDefect.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRN_SpreadDefect_ItemClick);
            // 
            // barBtnRN_Physical
            // 
            this.barBtnRN_Physical.Caption = "Print RN_Physical";
            this.barBtnRN_Physical.Id = 17;
            this.barBtnRN_Physical.Name = "barBtnRN_Physical";
            this.barBtnRN_Physical.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRN_Physical_ItemClick);
            // 
            // barBtnRN_WeftYarn
            // 
            this.barBtnRN_WeftYarn.Caption = "Print RN_WeftYarn";
            this.barBtnRN_WeftYarn.Id = 17;
            this.barBtnRN_WeftYarn.Name = "barBtnRN_WeftYarn";
            this.barBtnRN_WeftYarn.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRN_WeftYarn_ItemClick);
            // 
            // barBtnPrintByShortLength
            // 
            this.barBtnPrintByShortLength.Id = 18;
            this.barBtnPrintByShortLength.Name = "barBtnPrintByShortLength";
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.Visible = true;
            this.Columns_Company.VisibleIndex = 2;
            this.Columns_Company.Width = 72;
            // 
            // Columns_RN_NO
            // 
            this.Columns_RN_NO.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_RN_NO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_RN_NO.Caption = "RN#";
            this.Columns_RN_NO.FieldName = "RN_number";
            this.Columns_RN_NO.Name = "Columns_RN_NO";
            this.Columns_RN_NO.Visible = true;
            this.Columns_RN_NO.VisibleIndex = 0;
            this.Columns_RN_NO.Width = 77;
            // 
            // Columns_Item_No
            // 
            this.Columns_Item_No.Caption = "Item No";
            this.Columns_Item_No.FieldName = "Item_No";
            this.Columns_Item_No.Name = "Columns_Item_No";
            this.Columns_Item_No.Visible = true;
            this.Columns_Item_No.VisibleIndex = 3;
            this.Columns_Item_No.Width = 113;
            // 
            // Columns_StockIn_Date
            // 
            this.Columns_StockIn_Date.Caption = "Stock In Date";
            this.Columns_StockIn_Date.FieldName = "Stock_In_Date";
            this.Columns_StockIn_Date.Name = "Columns_StockIn_Date";
            this.Columns_StockIn_Date.Width = 88;
            // 
            // Columns_Supplier_Length
            // 
            this.Columns_Supplier_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Supplier_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Supplier_Length.Caption = "Supplier Length";
            this.Columns_Supplier_Length.FieldName = "Supplier_Length";
            this.Columns_Supplier_Length.Name = "Columns_Supplier_Length";
            this.Columns_Supplier_Length.Width = 98;
            // 
            // Columns_Insp_Length
            // 
            this.Columns_Insp_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Insp_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Insp_Length.Caption = "Insp Length";
            this.Columns_Insp_Length.FieldName = "Insp_Length";
            this.Columns_Insp_Length.Name = "Columns_Insp_Length";
            this.Columns_Insp_Length.Width = 78;
            // 
            // Columns_IQC_Reference
            // 
            this.Columns_IQC_Reference.Caption = "IQC Reference";
            this.Columns_IQC_Reference.FieldName = "IQC_Reference";
            this.Columns_IQC_Reference.Name = "Columns_IQC_Reference";
            this.Columns_IQC_Reference.Visible = true;
            this.Columns_IQC_Reference.VisibleIndex = 4;
            this.Columns_IQC_Reference.Width = 102;
            // 
            // Columns_RN_Confirm
            // 
            this.Columns_RN_Confirm.Caption = "RN Confirm";
            this.Columns_RN_Confirm.FieldName = "RN_confirm";
            this.Columns_RN_Confirm.Name = "Columns_RN_Confirm";
            this.Columns_RN_Confirm.Visible = true;
            this.Columns_RN_Confirm.VisibleIndex = 5;
            this.Columns_RN_Confirm.Width = 82;
            // 
            // Columns_Receive_Qty
            // 
            this.Columns_Receive_Qty.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Receive_Qty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Receive_Qty.Caption = "Receive Qty";
            this.Columns_Receive_Qty.FieldName = "Receive_Qty";
            this.Columns_Receive_Qty.Name = "Columns_Receive_Qty";
            this.Columns_Receive_Qty.Visible = true;
            this.Columns_Receive_Qty.VisibleIndex = 6;
            this.Columns_Receive_Qty.Width = 88;
            // 
            // Columns_Insp_Qty
            // 
            this.Columns_Insp_Qty.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Insp_Qty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Insp_Qty.Caption = "Insp Qty";
            this.Columns_Insp_Qty.FieldName = "Insp_Qty";
            this.Columns_Insp_Qty.Name = "Columns_Insp_Qty";
            this.Columns_Insp_Qty.Visible = true;
            this.Columns_Insp_Qty.VisibleIndex = 7;
            this.Columns_Insp_Qty.Width = 69;
            // 
            // Columns_QC_Summary
            // 
            this.Columns_QC_Summary.Caption = "QC Summary";
            this.Columns_QC_Summary.FieldName = "QC_Summary";
            this.Columns_QC_Summary.Name = "Columns_QC_Summary";
            this.Columns_QC_Summary.Visible = true;
            this.Columns_QC_Summary.VisibleIndex = 8;
            this.Columns_QC_Summary.Width = 92;
            // 
            // Columns_Defect_Problem
            // 
            this.Columns_Defect_Problem.Caption = "Defects_Problem";
            this.Columns_Defect_Problem.FieldName = "Major_Problem1_Checked";
            this.Columns_Defect_Problem.Name = "Columns_Defect_Problem";
            this.Columns_Defect_Problem.Visible = true;
            this.Columns_Defect_Problem.VisibleIndex = 9;
            this.Columns_Defect_Problem.Width = 115;
            // 
            // Columns_Shading_Problem
            // 
            this.Columns_Shading_Problem.Caption = "Shading_Problem";
            this.Columns_Shading_Problem.FieldName = "Major_Problem2_Checked";
            this.Columns_Shading_Problem.Name = "Columns_Shading_Problem";
            this.Columns_Shading_Problem.Visible = true;
            this.Columns_Shading_Problem.VisibleIndex = 12;
            this.Columns_Shading_Problem.Width = 116;
            // 
            // Columns_Short_Length_Problem
            // 
            this.Columns_Short_Length_Problem.Caption = "Short Length_Problem";
            this.Columns_Short_Length_Problem.FieldName = "Major_Problem3_Checked";
            this.Columns_Short_Length_Problem.Name = "Columns_Short_Length_Problem";
            this.Columns_Short_Length_Problem.Visible = true;
            this.Columns_Short_Length_Problem.VisibleIndex = 10;
            this.Columns_Short_Length_Problem.Width = 146;
            // 
            // Columns_Narrow_Width_Problem
            // 
            this.Columns_Narrow_Width_Problem.Caption = "Narrow Width_Problem";
            this.Columns_Narrow_Width_Problem.FieldName = "Major_Problem4_Checked";
            this.Columns_Narrow_Width_Problem.Name = "Columns_Narrow_Width_Problem";
            this.Columns_Narrow_Width_Problem.Visible = true;
            this.Columns_Narrow_Width_Problem.VisibleIndex = 11;
            this.Columns_Narrow_Width_Problem.Width = 149;
            // 
            // Columns_Finishing_Problem
            // 
            this.Columns_Finishing_Problem.Caption = "Finishing_Problem";
            this.Columns_Finishing_Problem.FieldName = "Major_Problem5_Checked";
            this.Columns_Finishing_Problem.Name = "Columns_Finishing_Problem";
            this.Columns_Finishing_Problem.Visible = true;
            this.Columns_Finishing_Problem.VisibleIndex = 14;
            this.Columns_Finishing_Problem.Width = 118;
            // 
            // Columns_Color_Problem
            // 
            this.Columns_Color_Problem.Caption = "Off Color_Problem";
            this.Columns_Color_Problem.FieldName = "Major_Problem6_Checked";
            this.Columns_Color_Problem.Name = "Columns_Color_Problem";
            this.Columns_Color_Problem.Visible = true;
            this.Columns_Color_Problem.VisibleIndex = 13;
            this.Columns_Color_Problem.Width = 121;
            // 
            // Columns_Others_Problem
            // 
            this.Columns_Others_Problem.Caption = "Others_Problem";
            this.Columns_Others_Problem.FieldName = "Major_Problem7_Checked";
            this.Columns_Others_Problem.Name = "Columns_Others_Problem";
            this.Columns_Others_Problem.Visible = true;
            this.Columns_Others_Problem.VisibleIndex = 15;
            this.Columns_Others_Problem.Width = 110;
            // 
            // colAuditNo
            // 
            this.colAuditNo.Caption = "Audit#";
            this.colAuditNo.FieldName = "AuditNo";
            this.colAuditNo.Name = "colAuditNo";
            this.colAuditNo.OptionsColumn.AllowEdit = false;
            this.colAuditNo.Visible = true;
            this.colAuditNo.VisibleIndex = 1;
            this.colAuditNo.Width = 85;
            // 
            // ProblemMasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProblemMasterListForm";
            this.Size = new System.Drawing.Size(845, 448);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ProblemMasterListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        private void barBtnPrintByShortLength_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Cursor currCursor = this.Cursor;
            //this.Cursor = Cursors.WaitCursor;

            try
            {
                if (this.objListGridView.RowCount <= 0)
                {
                    MessageBox.Show("no data need to be printed!");
                    return;
                }
                FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
                if (from.ShowDialog() == DialogResult.OK)
                {
                    strVersionNo = from.currentValue;

                    //List<RNHeaderByReport> dataByLot = getDataByRNReport();
                    DictionaryDataSource dataByLot = getDataByRNShortLengthReport(strVersionNo);
                    FrmPreview.PreviewReport("rnByShortLength.repx", dataByLot);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when preview report\n" + ex.Message);
            }
            finally
            {
                //this.Cursor = currCursor;
            }

        }

        private void barBtnPrintByRN_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Cursor currCursor = this.Cursor;
            //this.Cursor = Cursors.WaitCursor;

            //try
            //{
            //    if (this.objListGridView.RowCount <= 0)
            //    {
            //        MessageBox.Show("no data need to be printed!");
            //        return;
            //    }
            //    if (!FrmVersionNoInputter.ShowVersionIDSelect(ref strVersionNo))
            //    {
            //        MessageBox.Show("Please Version No.");
            //        return;
            //    }

            //    //List<RNHeaderByReport> dataByLot = getDataByRNReport();
            //    DictionaryDataSource dataByLot = getDataByRNReport(strVersionNo);
            //    MessageBox.Show("Path=" + Path.GetDirectoryName(Application.ExecutablePath) + "\\");
            //    string strAppPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";

            //    FrmPreview.PreviewReport(strAppPath + "rn.repx", dataByLot);

            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show("Error happened when preview report\n" + ex.Message);
            //}
            //finally
            //{
            //    this.Cursor = currCursor;
            //}



            /*
            FrmVersion frm = new FrmVersion();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                Report.ByRN rpt = new PH.FabricInspection.UI.Report.ByRN();
                if (!string.IsNullOrEmpty(objListGridView.FilterPanelText))
                {
                    string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
                    rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
                }
                rpt.VersionID = frm.TxtVersionID.Text;

                //rpt.ShowPreviewDialog();                
                //Xsj20120911:為添加報表自動上傳WebSite功能而注釋掉以上代碼，添加如下代碼
                if (frm.Tag == null)
                {
                    rpt.ShowPreviewDialog();
                }
                else if (frm.Tag.ToString() == "SendToWeb")
                {
                    if (MessageBox.Show("你確定要上傳當前報表到WebSite?", "上偉確認", MessageBoxButtons.YesNo) != DialogResult.Yes)
                    {
                        return;
                    }
                    WebSiteDireManager WebManager = new WebSiteDireManager();
                    WebManager.FISHeader = new Fabric_Insp_Header();
                    RN_Header RNHeader = this.BindingSource.Current as RN_Header;
                    WebManager.FISHeader.Item_No = RNHeader.Item_No;
                    WebManager.FISHeader.Stock_In_Date = RNHeader.Stock_In_Date;
                    WebManager.FISHeader.Lot_Id = "";
                    WebManager.FISHeader.PO = RNHeader.PO_NO;
                    WebManager.FISHeader.ProjectNo = RNHeader.Project_NO;
                    //RNHeader
                    WebManager.RNHeader = RNHeader;

                    PH.FabricInspection.BO.FabricInspectionDataContext dc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
                    PH.FabricInspection.BO.Fabric_Insp_Header fisHeader = dc.Fabric_Insp_Headers.Where(p => p.Item_No == RNHeader.Item_No && p.Stock_In_Date == RNHeader.Stock_In_Date).FirstOrDefault();
                    if (fisHeader != null)
                    {
                        WebManager.FISHeader.Supplier_Code = fisHeader.Supplier_Code;
                        WebManager.FISHeader.Item_Desc = fisHeader.Item_Desc;
                    }

                    string versionStr = frm.TxtVersionID.Text;
                    string RepTitle = string.Format("ByRN{0}_V{1}.pdf", RNHeader.RN_number, versionStr);
                    try
                    {
                        //Xsj:獲取報表的保存路徑
                        this.Cursor = Cursors.WaitCursor;
                        if (WebManager.CreateReportDirec())
                        {
                            string path = WebManager.CurrReportDirectoryAtWebSite + @"\" + RepTitle;
                            rpt.ExportToPdf(path);
                            WebManager.CreateResponseFlagInfoWeb();
                            if (WebManager.FISHeader.Supplier_Code != null)
                            {
                                string fileName = RepTitle;
                                string extendName = RepTitle.Substring(RepTitle.LastIndexOf('.'));
                                string rejectReason = RNHeader.RejectReasonStr;
                                string remark = string.Format("Reject Reason:{0}", rejectReason);
                                WebManager.CreateFileRemarkWeb(fileName, extendName, remark, false, 1);
                            }
                            MessageBox.Show("報表上傳成功！", "上傳成功");
                        }
                        else
                        {
                            MessageBox.Show("在WebSite主機創建文件夾失敗，報表上傳中止！", "失敗提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString(), "失敗提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    finally
                    {
                        this.Cursor = Cursors.Default;
                        WebManager.CloseNetConnect();
                    }
                }
            }
             * */


            //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加以下代碼同時注釋掉以上代碼
            FrmVersion frm = new FrmVersion();
            if (frm.ShowDialog() == DialogResult.OK)
            {

                Report.ByRN rpt = new PH.FabricInspection.UI.Report.ByRN();
                if (!string.IsNullOrEmpty(objListGridView.FilterPanelText))
                {
                    string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
                    rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
                }
                rpt.VersionID = frm.TxtVersionID.Text;

                string rptTitle = "ByRN";
                string ActionTypeTxt = (frm.Tag == null ? null : frm.Tag.ToString());
                DoWithRptToWebSite(rpt, ActionTypeTxt, rptTitle, rpt.VersionID);
            }
            //---End

        }

        private DictionaryDataSource getDataByRNReport(string tempVersionNo)
        {
            //List<RNHeaderByReport> resultData = new List<RNHeaderByReport>();
            DictionaryDataSource resultData = new DictionaryDataSource();//new List<RNHeaderByReport>();
            RNHeaderByReport tempRnHeaderByReport = null;
            RN_Header temp = null;
            List<PH984Field> allPH984Fields = new List<PH984Field>();
            int j = 0;
            objListGridView.MoveFirst();
            while (j < objListGridView.RowCount)
            {
                j++;
                temp = (RN_Header)objListGridView.GetFocusedRow();
                if (!isItemNoExistInPH984Fields(temp.Item_No, allPH984Fields))
                {
                    List<PH984Field> tempPH984Fields = getAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);
                    allPH984Fields.AddRange(tempPH984Fields);
                }
                PH984Field tempPH984Field = getPH984FieldWithItemNo(temp.Item_No, temp.Stock_In_Date, allPH984Fields);


                List<Fabric_Insp_Header> relatedInspectionHeaders = GetInspectionWithCompanyItemNo(temp.Company, temp.Item_No, temp.RN_number);
                tempRnHeaderByReport = new RNHeaderByReport();
                tempRnHeaderByReport.VersionNo = tempVersionNo;
                tempRnHeaderByReport.RN_number = temp.RN_number;
                //if (temp.RNDetailItems.Count > 0){
                //    tempRnHeaderByReport.SupplierName = temp.RNDetailItems[0].Supplier_Name;
                //}

                if (tempPH984Field != null)
                {
                    tempRnHeaderByReport.NewSupplierName = tempPH984Field.NewSupplierName;
                    tempRnHeaderByReport.SupplierColor = tempPH984Field.NewSupplierColor;

                }

                if ((relatedInspectionHeaders != null) && (relatedInspectionHeaders.Count > 0))
                {
                    tempRnHeaderByReport.SupplierMaterialCode = relatedInspectionHeaders[0].Supplier_Item_No;
                }

                tempRnHeaderByReport.Item_No = temp.Item_No.Substring(0, 9);
                tempRnHeaderByReport.ColorNo = temp.Item_No.Substring(9, 3);
                tempRnHeaderByReport.Stock_In_Date = temp.Stock_In_Date;
                tempRnHeaderByReport.InspectionDate = getMaxInspectionData(relatedInspectionHeaders);
                tempRnHeaderByReport.ReceiveLength = getSumActualLength(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.InspectionLength = getSumInspcetionLength(relatedInspectionHeaders);

                tempRnHeaderByReport.IQC_Reference = temp.IQC_Reference;
                tempRnHeaderByReport.PO = getAllPONo(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.HdoNo = getAllHDONo(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.ProjectNo = getAllProjectNo(temp.Item_No, allPH984Fields);
                tempRnHeaderByReport.InvoiceNo = getAllInvoiceNo(temp.Item_No, allPH984Fields);

                tempRnHeaderByReport.Major_Problem1_Checked = temp.Major_Problem1_Checked;
                tempRnHeaderByReport.Major_Problem2_Checked = temp.Major_Problem2_Checked;
                tempRnHeaderByReport.Major_Problem3_Checked = temp.Major_Problem3_Checked;
                tempRnHeaderByReport.Major_Problem4_Checked = temp.Major_Problem4_Checked;
                tempRnHeaderByReport.Major_Problem5_Checked = temp.Major_Problem5_Checked;
                tempRnHeaderByReport.Major_Problem6_Checked = temp.Major_Problem6_Checked;
                tempRnHeaderByReport.Major_Problem7_Checked = temp.Major_Problem7_Checked;
                tempRnHeaderByReport.QC_Summary = temp.QC_Summary;


                #region #edit by sean on 2009-09-24
                tempRnHeaderByReport.Decision1 = temp.Decision1;
                tempRnHeaderByReport.Decision2 = temp.Decision2;
                tempRnHeaderByReport.Decision3 = temp.Decision3;
                tempRnHeaderByReport.Decision4 = temp.Decision4;
                tempRnHeaderByReport.Decision5 = temp.Decision5;
                #endregion


                tempRnHeaderByReport.RN_confirm = temp.RN_confirm;
                tempRnHeaderByReport.Confirmed_User = temp.Confirmed_User;
                if (temp.Receive_Qty == null)
                {
                    tempRnHeaderByReport.Receive_Qty = 0;
                }
                else
                {
                    tempRnHeaderByReport.Receive_Qty = (decimal)temp.Receive_Qty;
                }
                if (temp.Insp_Qty == null)
                {
                    tempRnHeaderByReport.Insp_Qty = 0;
                }
                else
                {
                    tempRnHeaderByReport.Insp_Qty = (decimal)temp.Insp_Qty;
                }
                tempRnHeaderByReport.TotalPHSample = getTotalPHSample(relatedInspectionHeaders);

                tempRnHeaderByReport.TotalSupplierLength = 0;
                tempRnHeaderByReport.ActualShortLength = 0;
                //tempRnHeaderByReport.RNDetailItems.AddRange(temp.RNDetailItems); 
                foreach (RN_Detail detail in temp.RN_Details)
                {
                    RNDetailByReport tempIQC = new RNDetailByReport();

                    tempIQC.Company = detail.Company;
                    tempIQC.RN_number = detail.RN_number;
                    tempIQC.System_Install_No = detail.System_Install_No;
                    //tempIQC.Item_No = detail.Item_No;

                    tempIQC.Lot_Id = getLotIdFromRelatedInspectHeader(detail.System_Install_No, relatedInspectionHeaders);
                    tempIQC.Insp_Qty = (decimal)detail.Insp_Qty;

                    tempIQC.Reject_Reason = detail.Reject_Reason;
                    tempIQC.Supplier_Name = detail.Supplier_Name;
                    tempIQC.HDO_no = detail.HDO_no;
                    tempIQC.Project_No = detail.Project_No;
                    tempIQC.Po_No = detail.Po_No;
                    tempIQC.Roll_No = detail.Roll_No;
                    tempIQC.Batch_No = detail.Batch_No;

                    tempIQC.Supplier_Length = getLotIdActualLength(temp.Item_No, tempIQC.Lot_Id, allPH984Fields);
                    tempIQC.Inspect_Length = getLotIdInspcetionLength(tempIQC.Lot_Id, relatedInspectionHeaders);
                    if (detail.Insp_Length != null)
                    {
                        tempIQC.New_Inspect_Length = (decimal)detail.Insp_Length;
                    }
                    if (detail.Supplier_Length != null)
                    {
                        tempIQC.New_Supplier_Length = (decimal)detail.Supplier_Length;
                    }
                    if (detail.Usable_Width != null)
                    {
                        tempIQC.New_Usable_Width = (decimal)detail.Usable_Width;
                    }
                    tempRnHeaderByReport.RNDetailItems.Add(tempIQC);
                    tempRnHeaderByReport.TotalSupplierLength = tempRnHeaderByReport.TotalSupplierLength + tempIQC.Supplier_Length;
                    tempRnHeaderByReport.ActualShortLength = tempRnHeaderByReport.ActualShortLength + tempIQC.Short_Length;



                }

                resultData.Add(tempRnHeaderByReport);
                objListGridView.MoveNext();
            }
            return resultData;

        }

        private string getLotIdFromRelatedInspectHeader(int systemInstallNo, List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            string strLotId = "";
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                if (temp.System_Install_No == systemInstallNo)
                {
                    strLotId = temp.Lot_Id;
                    break;
                }

            }
            return strLotId;

        }

        private bool isItemNoExistInPH984Fields(String strItemNo, List<PH984Field> resultData)
        {
            foreach (PH984Field materialByLot in resultData)
            {
                if (materialByLot.Item_No == strItemNo)
                {
                    return true;
                }
            }
            return false;
        }

        private List<PH984Field> getAllDataFromAS400WithItemNo(string company, string strItemNo, string strStockInDate)
        {
            List<PH984Field> resultData = new List<PH984Field>();
            PH984Field temp = null;
            //1: generate data
            StringBuilder sb = new StringBuilder();
            sb.Append("call AULPHGMODS.PH984(").Append(generateQueryString(company, strItemNo, strStockInDate)).Append(")");

            string strSQL = sb.ToString();

            PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);

            //2: select data
            #region  Xsj20111129:如下代碼為了提升速度而被注釋掉
            //strSQL = "SELECT * FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
            //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
            #endregion
            #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
            strSQL = "Select * from OpenQuery([as400],'SELECT * FROM AULPHGMODS.PH984W where WGUID = ''" + key.ToString() + "''') ";
            FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
            DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");
            #endregion
            if (dataTable.Rows.Count > 0)
            {
                for (int i = 0, iSize = dataTable.Rows.Count; i < iSize; i++)
                {
                    temp = new PH984Field();
                    temp.Company = company;
                    temp.Lot_Id = ((string)dataTable.Rows[i]["WLOCN"]).Trim();
                    temp.Item_No = ((string)dataTable.Rows[i]["WITEM"]).Trim();
                    // teHeaderItemDesc
                    temp.Item_Desc = (string)dataTable.Rows[i]["WDESC"];
                    temp.Actual_Length = (decimal)dataTable.Rows[i]["WLENG"];
                    temp.GM_SQM = (decimal)dataTable.Rows[i]["WWGHT"];
                    temp.Create_Date = DateTime.Now;
                    temp.PO = (string)dataTable.Rows[i]["WPO"];
                    temp.HdoNo = (string)dataTable.Rows[i]["WHDO"];
                    temp.ProjectNo = (string)dataTable.Rows[i]["WPROJ"];
                    temp.InvoiceNo = (string)dataTable.Rows[i]["WINVO"];
                    temp.Supplier_Item_No = (string)dataTable.Rows[i]["WREF"];
                    temp.SupplierItemColor = (string)dataTable.Rows[i]["WCOL"];
                    temp.SupplierName = (string)dataTable.Rows[i]["WVNDR"];
                    temp.NewSupplierName = (string)dataTable.Rows[i]["WSNAM"];
                    temp.NewSupplierColor = (string)dataTable.Rows[i]["WCOL"];
                    resultData.Add(temp);

                }
            }
            strSQL = "DELETE FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
            PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);
            return resultData;

        }
        private PH984Field getPH984FieldWithItemNo(string strItemNo, string strStockInDate, List<PH984Field> resultData)
        {
            foreach (PH984Field materialByLot in resultData)
            {
                if ((materialByLot.Item_No == strItemNo)
                    && (materialByLot.Stock_In_Date == strStockInDate))
                {
                    return materialByLot;
                }
            }
            return null;
        }
        private decimal getLotIdActualLength(String strItemNo, string strLotId, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if ((temp.Item_No == strItemNo) && (temp.Lot_Id == strLotId))
                {

                    dSum = dSum + temp.Actual_Length;

                }

            }
            return dSum;
        }

        public string generateQueryString(string company, string strItemNo, string strStockInDate)
        {
            //查询画面字段定义：
            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 為用戶進入此系統時輸入的公司
            sb.Append("'").Append(company).Append("'").Append(", ");

            //4 LOT_ID 為空
            sb.Append("'").Append("").Append("'").Append(", ");


            //5  ITEM_NO
            sb.Append("'").Append(strItemNo).Append("'").Append(", ");

            //6 STOCK_IN_DATE 為零
            //sb.Append("'").Append("000000").Append("'").Append(", ");
            sb.Append("'").Append(strStockInDate).Append("'").Append(", ");

            //7  MESSAGE為空
            sb.Append("''");

            return sb.ToString();

        }
        public List<Fabric_Insp_Header> GetInspectionWithCompanyItemNo(string strCompanyNo, string strItemNo, int iRnNumber)
        {
            PH.FabricInspection.BO.FabricInspectionDataContext context = (FabricInspectionDataContext)this.DataContext;
            var tempData = from p in context.Fabric_Insp_Headers
                           join rnDetail in context.RN_Details on p.System_Install_No equals rnDetail.System_Install_No
                           join rnHeader in context.RN_Headers on rnDetail.RN_number equals rnHeader.RN_number

                           where p.Company.Equals(strCompanyNo) && p.Item_No.Equals(strItemNo) && rnHeader.RN_number.Equals(iRnNumber)
                           select p;
            List<Fabric_Insp_Header> tempIQC01s = tempData.ToList<Fabric_Insp_Header>();

            //InspectionHeaderCompanyItemNOQuery companyQuery = new InspectionHeaderCompanyItemNOQuery(strCompanyNo, strItemNo);
            //List<InspectionHeader> tempIQC01s = db.GetAll<InspectionHeader>(companyQuery);
            //if (tempIQC01s == null)
            //{
            //    tempIQC01s = new List<InspectionHeader>();
            //}
            //for (int i = tempIQC01s.Count - 1; i >= 0; i--)
            //{
            //    if (tempIQC01s[i].RN_number != iRnNumber)
            //    {
            //        tempIQC01s.RemoveAt(i);
            //    }
            //}
            return tempIQC01s;
        }
        private DateTime getMaxInspectionData(List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            DateTime dMax = DateTime.Now;
            bool isFirst = true;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                if (temp.Change_Date != null)
                {
                    if (isFirst)
                    {
                        dMax = (DateTime)temp.Create_Date;
                        isFirst = false;
                    }

                    if (((DateTime)temp.Create_Date).CompareTo(dMax) > 0)
                    {
                        dMax = (DateTime)temp.Create_Date;
                    }
                }

            }
            return dMax;
        }

        private decimal getSumActualLength(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {

                    dSum = dSum + temp.Actual_Length;

                }

            }
            return dSum;
        }

        private decimal getLotIdInspcetionLength(string strLotId, List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                if (temp.Lot_Id == strLotId)
                {
                    dSum = dSum + (decimal)temp.Insp_Length;
                }

            }
            return dSum;
        }

        private decimal getSumInspcetionLength(List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                dSum = dSum + (decimal)temp.Insp_Length;

            }
            return dSum;
        }

        private decimal getTotalPHSample(List<Fabric_Insp_Header> relatedInspectionHeaders)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = relatedInspectionHeaders.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)relatedInspectionHeaders[i];
                dSum = dSum + (decimal)temp.PH_Sample;

            }
            return dSum;
        }

        private string getAllPONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strPO = "";

            List<string> strNos = new List<string>();

            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.PO) < 0)
                    {
                        strNos.Add(temp.PO);
                    }


                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strPO.Length == 0)
                {
                    strPO = strNos[i];
                }
                else
                {
                    strPO = strPO + "," + strNos[i];
                }

            }

            return strPO;
        }

        private string getAllHDONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strHdoNo = "";
            List<string> strNos = new List<string>();

            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.HdoNo) < 0)
                    {
                        strNos.Add(temp.HdoNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strHdoNo.Length == 0)
                {
                    strHdoNo = strNos[i];
                }
                else
                {
                    strHdoNo = strHdoNo + "," + strNos[i];
                }

            }
            return strHdoNo;
        }


        private string getAllProjectNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strProjectNo = "";
            List<string> strNos = new List<string>();
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.ProjectNo) < 0)
                    {
                        strNos.Add(temp.ProjectNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strProjectNo.Length == 0)
                {
                    strProjectNo = strNos[i];
                }
                else
                {
                    strProjectNo = strProjectNo + "," + strNos[i];
                }

            }


            return strProjectNo;
        }

        private string getAllInvoiceNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strInvoiceNo = "";
            List<string> strNos = new List<string>();
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.InvoiceNo) < 0)
                    {
                        strNos.Add(temp.InvoiceNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strInvoiceNo.Length == 0)
                {
                    strInvoiceNo = strNos[i];
                }
                else
                {
                    strInvoiceNo = strInvoiceNo + "," + strNos[i];
                }

            }
            return strInvoiceNo;
        }


        private DictionaryDataSource getDataByRNShortLengthReport(string tempVersionNo)
        {
            NumberFormatInfo provider = new NumberFormatInfo();
            provider.NumberDecimalDigits = 4;
            provider.NumberGroupSeparator = ".";

            DictionaryDataSource resultData = getDataByRNReport(tempVersionNo);
            DictionaryDataSource byShortLengthDatas = new DictionaryDataSource();
            RNHeaderByReport temp = null;
            RNHeaderByShortLengthReport tempRnHeaderByShortLengthReport = null;
            for (int i = 0, iSize = resultData.Count; i < iSize; i++)
            {
                temp = (RNHeaderByReport)resultData[i];

                tempRnHeaderByShortLengthReport = new RNHeaderByShortLengthReport();
                tempRnHeaderByShortLengthReport.VersionNo = tempVersionNo;
                tempRnHeaderByShortLengthReport.RN_number = temp.RN_number;

                tempRnHeaderByShortLengthReport.SupplierName = temp.SupplierName;


                tempRnHeaderByShortLengthReport.Item_No = temp.Item_No;
                tempRnHeaderByShortLengthReport.ColorNo = temp.ColorNo;
                tempRnHeaderByShortLengthReport.Stock_In_Date = temp.Stock_In_Date;
                tempRnHeaderByShortLengthReport.InspectionDate = temp.InspectionDate;
                tempRnHeaderByShortLengthReport.ReceiveLength = temp.ReceiveLength;
                tempRnHeaderByShortLengthReport.InspectionLength = temp.InspectionLength;

                tempRnHeaderByShortLengthReport.IQC_Reference = temp.IQC_Reference;
                tempRnHeaderByShortLengthReport.PO = temp.PO;
                tempRnHeaderByShortLengthReport.HdoNo = temp.HdoNo;
                tempRnHeaderByShortLengthReport.ProjectNo = temp.ProjectNo;
                tempRnHeaderByShortLengthReport.InvoiceNo = temp.InvoiceNo;

                tempRnHeaderByShortLengthReport.Major_Problem1_Checked = temp.Major_Problem1_Checked;
                tempRnHeaderByShortLengthReport.Major_Problem2_Checked = temp.Major_Problem2_Checked;
                tempRnHeaderByShortLengthReport.Major_Problem3_Checked = temp.Major_Problem3_Checked;
                tempRnHeaderByShortLengthReport.Major_Problem4_Checked = temp.Major_Problem4_Checked;
                tempRnHeaderByShortLengthReport.Major_Problem5_Checked = temp.Major_Problem5_Checked;
                tempRnHeaderByShortLengthReport.Major_Problem6_Checked = temp.Major_Problem6_Checked;
                tempRnHeaderByShortLengthReport.Major_Problem7_Checked = temp.Major_Problem7_Checked;
                tempRnHeaderByShortLengthReport.QC_Summary = temp.QC_Summary;

                tempRnHeaderByShortLengthReport.RN_confirm = temp.RN_confirm;
                tempRnHeaderByShortLengthReport.Confirmed_User = temp.Confirmed_User;
                tempRnHeaderByShortLengthReport.Receive_Qty = temp.Receive_Qty;
                tempRnHeaderByShortLengthReport.Insp_Qty = temp.Insp_Qty;
                tempRnHeaderByShortLengthReport.TotalPHSample = temp.TotalPHSample;

                tempRnHeaderByShortLengthReport.TotalSupplierLength = temp.TotalSupplierLength;
                tempRnHeaderByShortLengthReport.ActualShortLength = temp.ActualShortLength;

                //foreach (RNDetailByReport detail in temp.RNDetailItems)
                RNDetailByReport detail = null;
                RNDetailByShortLengthReport tempDetailByShortLengthReport = null;
                for (int j = 0, jSize = temp.RNDetailItems.Count; j < jSize; j++)
                {
                    detail = temp.RNDetailItems[j];
                    if (j % 2 == 0)
                    {
                        tempDetailByShortLengthReport = new RNDetailByShortLengthReport();
                        tempDetailByShortLengthReport.Record_Status = detail.Record_Status;
                        tempDetailByShortLengthReport.Company = detail.Company;
                        tempDetailByShortLengthReport.RN_number = detail.RN_number;
                        tempDetailByShortLengthReport.System_Install_No = detail.System_Install_No;
                        tempDetailByShortLengthReport.Item_No = detail.Item_No;

                        tempDetailByShortLengthReport.Lot_Id = detail.Lot_Id;
                        tempDetailByShortLengthReport.Insp_Qty = detail.Insp_Qty;

                        tempDetailByShortLengthReport.Reject_Reason = detail.Reject_Reason;
                        tempDetailByShortLengthReport.Supplier_Name = detail.Supplier_Name;
                        tempDetailByShortLengthReport.HDO_no = detail.HDO_no;
                        tempDetailByShortLengthReport.Project_No = detail.Project_No;
                        tempDetailByShortLengthReport.Po_No = detail.Po_No;
                        tempDetailByShortLengthReport.Roll_No = detail.Roll_No;
                        tempDetailByShortLengthReport.Batch_No = detail.Batch_No;

                        tempDetailByShortLengthReport.Supplier_Length = detail.Supplier_Length;
                        tempDetailByShortLengthReport.Inspect_Length = detail.Inspect_Length;
                        tempRnHeaderByShortLengthReport.RNDetailItems.Add(tempDetailByShortLengthReport);
                    }
                    else
                    {
                        if (tempDetailByShortLengthReport == null)
                        {
                            continue;
                        }
                        tempDetailByShortLengthReport.Record_Status2 = detail.Record_Status;
                        tempDetailByShortLengthReport.Company2 = detail.Company;
                        tempDetailByShortLengthReport.RN_number2 = detail.RN_number.ToString();
                        tempDetailByShortLengthReport.System_Install_No2 = detail.System_Install_No.ToString();
                        tempDetailByShortLengthReport.Item_No2 = detail.Item_No;

                        tempDetailByShortLengthReport.Lot_Id2 = detail.Lot_Id;
                        tempDetailByShortLengthReport.Insp_Qty2 = Convert.ToString(detail.Insp_Qty, provider);

                        tempDetailByShortLengthReport.Reject_Reason2 = detail.Reject_Reason;
                        tempDetailByShortLengthReport.Supplier_Name2 = detail.Supplier_Name;
                        tempDetailByShortLengthReport.HDO_no2 = detail.HDO_no;
                        tempDetailByShortLengthReport.Project_No2 = detail.Project_No;
                        tempDetailByShortLengthReport.Po_No2 = detail.Po_No;
                        tempDetailByShortLengthReport.Roll_No2 = detail.Roll_No;
                        tempDetailByShortLengthReport.Batch_No2 = detail.Batch_No;

                        tempDetailByShortLengthReport.Supplier_Length2 = Convert.ToString(detail.Supplier_Length, provider);
                        tempDetailByShortLengthReport.Inspect_Length2 = Convert.ToString(detail.Inspect_Length, provider);
                        tempDetailByShortLengthReport.Short_Length2 = Convert.ToString(detail.Short_Length, provider);
                    }

                }

                byShortLengthDatas.Add(tempRnHeaderByShortLengthReport);
            }
            return byShortLengthDatas;

        }

        private void barBtnPrintRyRNBackEnd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Cursor currCursor = this.Cursor;
            //this.Cursor = Cursors.WaitCursor;

            try
            {
                if (this.objListGridView.RowCount <= 0)
                {
                    MessageBox.Show("no data need to be printed!");
                    return;
                }
                FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
                if (from.ShowDialog() == DialogResult.OK)
                {
                    strVersionNo = from.currentValue;

                    string strParameter = "ByRN" + "\n"
                     + strVersionNo + "\n"
                     + this.objListGridView.ActiveFilterString + "\n"
                     + GetSortedColumnNames();

                    //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名
                    PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                    data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                    data.ClassFullName = "PH.FabricInspection.BackEnd.RNBackEndReport";//報表全名
                    data.JobName = "RNBackEndReport";//JOB名稱
                    data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                    data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                    data.Parameter = strParameter;//執行數據源時候需要使用的參數
                    PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when preview report\n" + ex.Message);
            }
            finally
            {
                //this.Cursor = currCursor;
            }

        }

        private string GetSortedColumnNames()
        {
            string sortedColumns = "";

            foreach (GridColumn column in this.objListGridView.SortedColumns)
            {
                if (sortedColumns.Length > 0)
                {
                    sortedColumns += ";";
                }
                sortedColumns += column.FieldName + "," + column.SortOrder;
            }
            return sortedColumns;
        }

        private void barBtnRN_Basic_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Report.RN_Basic rpt = new PH.FabricInspection.UI.Report.RN_Basic();
            ////rpt.WhereCondition = !string.IsNullOrEmpty(objListGridView.FilterPanelText) ? "where " + objListGridView.FilterPanelText : string.Empty;
            //string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
            //rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
            //rpt.DataContext = this.DataContext as FabricInspectionDataContext;
            //rpt.ShowPreviewDialog();

            //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加以下代碼同時注釋掉以上代碼
            FrmVersion frm = new FrmVersion();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string versionVal = frm.TxtVersionID.EditValue.ToString();
                Report.RN_Basic rpt = new PH.FabricInspection.UI.Report.RN_Basic(versionVal);
                string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
                rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
                rpt.DataContext = this.DataContext as FabricInspectionDataContext;

                string rptTitle = "RN_Basic";
                string ActionTypeTxt = (frm.Tag == null ? null : frm.Tag.ToString());
                DoWithRptToWebSite(rpt, ActionTypeTxt, rptTitle, versionVal);
            }
            //---End


        }

        private void barBtnRN_SpreadDefect_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Report.RN_SpreadDefect rpt = new PH.FabricInspection.UI.Report.RN_SpreadDefect();
            //string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
            //rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
            //rpt.DataContext = this.DataContext as FabricInspectionDataContext;
            //rpt.ShowPreviewDialog();

            //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加以下代碼同時注釋掉以上代碼 
            FrmVersion frm = new FrmVersion();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string versionVal = frm.TxtVersionID.EditValue.ToString();
                Report.RN_SpreadDefect rpt = new PH.FabricInspection.UI.Report.RN_SpreadDefect(versionVal);
                string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
                rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
                rpt.DataContext = this.DataContext as FabricInspectionDataContext;

                string rptTitle = "RN_SpreadDefect";
                string ActionTypeTxt = (frm.Tag == null ? null : frm.Tag.ToString());
                DoWithRptToWebSite(rpt, ActionTypeTxt, rptTitle, versionVal);
            }
            //---End
        }


        private void barBtnRN_Physical_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Report.RN_Physical rpt = new PH.FabricInspection.UI.Report.RN_Physical();
            //string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
            //rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
            //rpt.DataContext = this.DataContext as FabricInspectionDataContext;
            //rpt.ShowPreviewDialog();

            //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加以下代碼同時注釋掉以上代碼
            FrmVersion frm = new FrmVersion();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string versionVal = frm.TxtVersionID.EditValue.ToString();
                Report.RN_Physical rpt = new PH.FabricInspection.UI.Report.RN_Physical(versionVal);
                string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
                rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
                rpt.DataContext = this.DataContext as FabricInspectionDataContext;

                string rptTitle = "RN_Physical";
                string ActionTypeTxt = (frm.Tag == null ? null : frm.Tag.ToString());
                DoWithRptToWebSite(rpt, ActionTypeTxt, rptTitle, versionVal);
            }
            //---End
        }
        private void barBtnRN_WeftYarn_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Report.RN_WeftYarn rpt = new PH.FabricInspection.UI.Report.RN_WeftYarn();
            //string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
            //rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
            //rpt.DataContext = this.DataContext as FabricInspectionDataContext;
            //rpt.ShowPreviewDialog();

            //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加以下代碼同時注釋掉以上代碼
            FrmVersion frm = new FrmVersion();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string versionVal = frm.TxtVersionID.EditValue.ToString();
                Report.RN_WeftYarn rpt = new PH.FabricInspection.UI.Report.RN_WeftYarn(versionVal);
                string Sql = FunQA.GetGridViewFilterCondition(objListGridView);
                rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where " + Sql : string.Empty;
                rpt.DataContext = this.DataContext as FabricInspectionDataContext;

                string rptTitle = "RN_WeftYarn";
                string ActionTypeTxt = (frm.Tag == null ? null : frm.Tag.ToString());
                DoWithRptToWebSite(rpt, ActionTypeTxt, rptTitle, versionVal);
            }
            //---End
        }


        //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加以下代碼
        private void DoWithRptToWebSite(DevExpress.XtraReports.UI.XtraReport rpt, string ActionTypeStr, string rptTitle, string versionVal)
        {
            ReportUpDateToWebSiteHelper rptUpDateToWebSiteHelper = new ReportUpDateToWebSiteHelper();
            if (ActionTypeStr == null)
            {
                rpt.ShowPreviewDialog();
            }
            else if (ActionTypeStr.ToString() == "SendToWeb")
            {

                if (MessageBox.Show("你確定要上傳當前報表到WebSite?", "上偉確認", MessageBoxButtons.YesNo) != DialogResult.Yes)
                {
                    return;
                }
                try
                {
                    this.Cursor = Cursors.WaitCursor;
                    RN_Header currRNHeader = this.BindingSource.Current as RN_Header;
                    string RepTitle = string.Format("{0}{1}_V{2}.pdf", rptTitle, currRNHeader.RN_number, versionVal);
                    if (rptUpDateToWebSiteHelper.UpDateReportFromRNToWebSite(currRNHeader, rpt, versionVal, RepTitle))
                    {
                        MessageBox.Show("報表上傳成功！", "上傳成功");
                    }
                    else
                    {
                        MessageBox.Show("報表上傳失敗[" + rptUpDateToWebSiteHelper.NoteMessage + "]！", "上傳成功");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("報表上傳失敗[" + rptUpDateToWebSiteHelper.NoteMessage + "]！", "上傳失敗");
                }
                finally
                {
                    this.Cursor = Cursors.Default;
                }
            }
        }
        //---End
    }
}
