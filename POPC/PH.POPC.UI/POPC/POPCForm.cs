using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Utils;
using DevExpress.Utils.Drawing;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraReports.Native;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Base.ViewInfo;
using DevExpress.XtraGrid.Views.Grid.Customization;
using DevExpress.XtraGrid.Views.Grid.Drawing;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using PH.Platform.UI.CS.DataQuery;
using System.Reflection;


namespace PH.POPC.UI
{
    public partial class POPCForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POPCForm()
        {
            InitializeComponent();
        }
        private string _showStatus = string.Empty;
        private string _param1 = string.Empty;
        public POPCForm(string param1, string showStatus)
            : this()
        {
            this._param1 = param1;
            this._showStatus = showStatus;
        }

        private PH.POPC.BO.POPCDataContext m_Context;
        //private List<PH.POPC.BO.View_POPC_PUR> m_lists;
        public override void DataBind()
        {
            // this.BindingSource.DataSourceChanged += new EventHandler(BindingSource_DataSourceChanged);
            m_Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            this.DataContext = m_Context;
            this.DataContext.CommandTimeout = 3000;
            DataQueryParameter result = new DataQueryParameter();
            result.BeforeQuerySQL = "SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED";
            result.BoType = typeof(PH.POPC.BO.View_POPC_PUR);
            result.View = this.objListGridView1;
            result.FixedWherePart = GetCondition();
            result.WarnRecord = -1;
            this.StartEnquiry(result);
        }

        //void BindingSource_DataSourceChanged(object sender, EventArgs e)
        //{
        //    this.m_lists = this.BindingSource.List.Cast<PH.POPC.BO.View_POPC_PUR>().ToList();
        //    this.m_Update = new PH.POPC.BO.Update();
        //}

        //public void NewSave(PH.POPC.BO.POPCDataContext context)
        //{
        //    (this.objListGridView1.GetRow(1) as PH.POPC.BO.View_POPC_PUR).ColorShade = "1";
        //    (this.objListGridView1.GetRow(2) as PH.POPC.BO.View_POPC_PUR).ColorShade = "2";

        //    this.BindingSource.get
        //    foreach (PH.POPC.BO.View_POPC_PUR item in this.m_Context.GetChangeSet().Updates.OfType<PH.POPC.BO.View_POPC_PUR>().ToList())
        //    {
        //        MessageBox.Show(item.ColorShade);
        //    }
        //}

        #region 方法

        private object GetViewData()
        {
            List<PH.POPC.BO.View_POPC_PUR> purs = new List<PH.POPC.BO.View_POPC_PUR>();
            for (int i = 0; i < this.objListGridView1.DataRowCount; i++)
            {
                purs.Add(this.objListGridView1.GetRow(i) as PH.POPC.BO.View_POPC_PUR);
            }
            return purs;
        }



        private DataTable GetShipmentDetail(PH.POPC.BO.View_POPC_PUR pur)
        {
            string SqlStr = "select RECD59,case recd59 when 0 then 0 else recd59+19000000 end AS FDate," +
                " advn59,grno59,trnq59,suom59,rect59,scrc59,DSCR12,ordn59,Line59,cono59,item59,trin59, 1 as Roll " +
                " from ault4f1.pmp59 LEFT JOIN ault4F1.PMP12 ON (CONO12=CONO59 AND PRMT12='SCRC' AND PSRG12=SCRC59) " +
                " where  trnq59<>0 " +  //'expd59=9999999 and'
                " AND cono59 = '{0}' and ordn59 = '{1}' " +
                " and Line59 = {2} and item59= '{3}' " +
                " Order by RECD59,GRNO59,RECT59";
            SqlStr = string.Format(SqlStr, pur.Company, pur.PONO, pur.OrderLine, pur.SKU);
            return PH.POPC.BO.DB.AS400DB.GetTable(SqlStr);
        }

        private string ShowSaveFileDialog(string title, string filter)
        {
            SaveFileDialog sdlg = new SaveFileDialog();
            string name = "POPC";
            sdlg.Title = "Save as " + title;
            sdlg.FileName = name;
            sdlg.Filter = filter;
            if (sdlg.ShowDialog() == DialogResult.OK) return sdlg.FileName;
            return "";
        }

        private void EditPOPC(string FieldName)
        {
            PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)this.objListGridView1.GetRow(this.objListGridView1.FocusedRowHandle);
            PH.POPC.UI.POInfo poinfo = new POInfo();
            poinfo.POPCPage = this.TabControls.SelectedTabPage;
            poinfo.POPCView = this.BindingSource;
            poinfo.Pur = p;
            poinfo.Grid = this.objListGridControl;
                         

            //this.objListGridControl.ge
            if (p == null) return;
            switch (FieldName)
            {
                case "LocationOfSuppFactory":
                case "ClassCode":
                case "EndCustCode":
                    CreateProgramForm(typeof(PH.POPC.UI.NewPO.POHeaderListForm), p.PONO + "Header", true, new object[] { poinfo }, null);
                    break;

                case "OpenToProject":
                case "WorkOrderNo":
                    CreateProgramForm(typeof(PH.POPC.UI.NewPO.PODetailListForm), p.PONO + "Detail", true, new object[] { poinfo }, null);
                    break;
                case "LC":
                case "CustStyleNo":
                case "CustOrderNo":
                case "ColorShade":
                case "Remark":
                case "GarmentColor":
                    CreateProgramForm(typeof(PH.POPC.UI.NewPO.POColorSizeDetailListForm), p.PONO, true, new object[] { poinfo }, null);
                    break;

                case "Con_Recount":
                case "Con_ConfirmDate":
                    CreateProgramForm(typeof(PH.POPC.UI.POConfirmListForm), p.PONO + "-POConfirmListForm", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                    break;

                case "Bul_Recount":
                case "Bul_OpDate":
                case "Bul_Status":
                case "Bul_SubmitNo":
                case "Bul_ReceiveBulkSampleDate":
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUBulkSubmissionListForm), p.PONO + "-BulkSubmissionNotepad", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                    break;

                case "Co1_Recount":
                case "Col_OpDate":
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUColorStdListForm), p.PONO + "-ColorStdNotepad", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                    break;

                case "Dip_Recount":
                case "Dip_Opdate":
                case "Dip_Status":
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUDipSubmitListForm), p.PONO + "-DipSubmitNotepad", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                    break;

                case "Tes_Recount":
                case "Tes_Opdate":
                case "Tes_Status":

                    CreateProgramForm(typeof(PH.POPC.UI.POSKUTestStatusListForm), p.PONO + "-TestStatus", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                    break;


                //case "Qty1":
                //case "Percent1":
                //case "FtyDate1":

                //case "Qty2":
                //case "Percent2":
                //case "FtyDate2":

                //case "Qty3":
                //case "Percent3":
                //case "FtyDate3":

                //case "Qty4":
                //case "Percent4":
                //case "FtyDate4":

                //case "Title1":
                //case "Title2":
                //case "Title3":
                //case "Title4":

                //    CreateProgramForm(typeof(PH.POPC.UI.POSKULotListForm), p.PONO, true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                //    break;
            }

        }

        private string GetCondition()
        {
            string str = string.Empty;

            #region OutStanding

            if (this._showStatus.ToUpper() == "OUTSTANDING")
            {
                str = "IsOutStanding>0";
            }
            else if (this._showStatus.ToUpper() == "OUTSTANDING_B2010")
            {
                str = "IsOutStanding>0 and Year(OrderDate)<2010";
            }
            else if (this._showStatus.ToUpper() == "OUTSTANDING_A2010")
            {
                str = "IsOutStanding>0 and Year(OrderDate)>=2010";
            }
            #endregion

            #region Completed
            else if (this._showStatus.ToUpper() == "COMPLETED")
            {
                str = "IsOutStanding=0";
            }
            else if (this._showStatus.ToUpper() == "COMPLETED_B2010")
            {
                str = "IsOutStanding=0 and Year(OrderDate)<2010";
            }
            else if (this._showStatus.ToUpper() == "COMPLETED_A2010")
            {
                str = "IsOutStanding=0 and Year(OrderDate)>=2010";
            }
            #endregion

            #region All
            else if (this._showStatus.ToUpper() == "ALL_B2010")
            {
                str = "Year(OrderDate)<2010";
            }
            else if (this._showStatus.ToUpper() == "ALL_A2010")
            {
                str = "Year(OrderDate)>=2010";
            }
            else if (this._showStatus.ToUpper() == "ALL")
            {
                str = string.Empty;
            }

            #endregion


            //if (this._showStatus.ToUpper() == "OUTSTANDING")
            //{
            //    str = "IsOutStanding>0";
            //}
            //else if (this._showStatus.ToUpper() == "OUTSTANDING_2008ONWARDS")
            //{
            //    str = "IsOutStanding>0 and Year(OrderDate)>=2008";
            //}
            //else if (this._showStatus.ToUpper() == "COMPLETED")
            //{
            //    str = "IsOutStanding=0";
            //}
            //else if (this._showStatus.ToUpper() == "ALL")
            //{
            //    str = string.Empty;
            //}
            return str;
        }



        //protected override DataQueryParameterClass DataQueryParameter
        //{
        //    get
        //    {
        //        DataQueryParameterClass result = new DataQueryParameterClass();
        //        result.BoType = typeof(PH.POPC.BO.View_POPC_PUR);
        //        result.View = this.objListGridView1;
        //        result.DataContext = this.DataContext;
        //        result.FixedWherePart = GetCondition();
        //        result.WarnRecord = 5000;
        //        return result;
        //    }
        //}

        #endregion

        private void POPCForm_Load(object sender, EventArgs e)
        {
            //this.ShowEnquiryButton = true;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 0;
            context.CommandTimeout = 3000;
            this.DataContext = context;
        }
        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            //GridHitInfo hi = this.objListGridView1.CalcHitInfo((sender as Control).PointToClient(Control.MousePosition));
            //if (hi.InRowCell == false) return;
            EditPOPC(this.objListGridView1.FocusedColumn.FieldName);
        }
        private void btnShipmentDetai_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            PH.POPC.BO.View_POPC_PUR pur = this.objListGridView1.GetRow(this.objListGridView1.FocusedRowHandle) as PH.POPC.BO.View_POPC_PUR;
            if (pur == null) return;
            PH.POPC.BackEnd.ReportHelper reportHelper = new PH.POPC.BackEnd.ReportHelper();
            DataTable dt = GetShipmentDetail(pur);
            DevExpress.XtraReports.UI.XtraReport report = reportHelper.DoShipmentDetailPrint(dt);
            report.ShowPreviewDialog();
        }
        private void barPOList_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PoListForm frm = new PoListForm();
            frm.ShowDialog();
        }
        private void barExportToXls_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string FileName = ShowSaveFileDialog("POPC", ByteFile.ExcelFileFilter);
            if (FileName == string.Empty) return;
            this.objListGridView1.BeginUpdate();
            this.colOutStanding.Visible = this.colPDF.Visible = false;
            try
            {
                this.objListGridView1.ExportToXls(FileName);
            }

            finally
            {
                this.colPDF.Visible = true;
                this.objListGridView1.EndUpdate();

            }
            try
            {
                System.Diagnostics.Process.Start(FileName);
            }
            catch
            { }

        }
        private void bar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string reportType = e.Item.Tag.ToString();
            PH.POPC.BackEnd.ReportHelper reportHelper = new PH.POPC.BackEnd.ReportHelper();
            PH.POPC.BackEnd.PHReportA3A4 rtype = (PH.POPC.BackEnd.PHReportA3A4)Convert.ToInt16(reportType);
            DevExpress.XtraReports.UI.XtraReport report;
            switch (rtype)
            {
                case PH.POPC.BackEnd.PHReportA3A4.ExternalA4:
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCExternalReport();
                    break;
                case PH.POPC.BackEnd.PHReportA3A4.InternalA3:
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCInternalReport();
                    break;
                case PH.POPC.BackEnd.PHReportA3A4.SumA3:
                    report = new PH.POPC.BackEnd.POPCNewformat.POPCSummaryReport();
                    break;
                default:
                    report = new DevExpress.XtraReports.UI.XtraReport();
                    break;
            }
            //DevExpress.XtraReports.UI.XtraReport report = reportHelper.DoReportA3A4Print(GetViewData(), (PH.POPC.BackEnd.PHReportA3A4)Convert.ToInt16(reportType));
            report.DataSource = GetViewData();
            //report.ShowDesignerDialog();
            report.ShowPreviewDialog();
        }

        private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BO.View_POPC_PUR item = this.BindingSource.Current as PH.POPC.BO.View_POPC_PUR;
            //item.GetType().GetProperty("Supplier").SetValue(item, "test11", null);
            ////item.Supplier
            //object dd=this.objListGridControl.DataSource;
            //object cc = this.objListGridView1.DataSource;
            //List<PH.POPC.BO.View_POPC_PUR> ddd = this.BindingSource.List.Cast<PH.POPC.BO.View_POPC_PUR>().ToList();
        }

        // private PH.POPC.BO.Update m_Update = new PH.POPC.BO.Update();
        private void objListGridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            //PH.POPC.BO.View_POPC_PUR item = this.objListGridView1.GetRow(e.RowHandle) as PH.POPC.BO.View_POPC_PUR;
            //PH.POPC.BO.UpdateTable table = PH.POPC.BO.UpdateTable.POHeader;
            //switch (e.Column.FieldName)
            //{
            //    case "LocationOfSuppFactory":
            //    case "EndCustCode":
            //        foreach (PH.POPC.BO.View_POPC_PUR item1 in m_lists.Where(p => p.Company == item.Company && p.PONO == item.PONO && p.Version == item.Version && p.AmendmentNo == item.AmendmentNo))
            //        {
            //            item1.GetType().GetProperty(e.Column.FieldName).SetValue(item1, e.Value, null);
            //        }
            //        table = PH.POPC.BO.UpdateTable.POHeader;
            //        break;
            //    case "OpenToProject":
            //    case "SuppQtyDimension":
            //        foreach (PH.POPC.BO.View_POPC_PUR item2 in m_lists.Where(p => p.Company == item.Company && p.PONO == item.PONO && p.Version == item.Version && p.AmendmentNo == item.AmendmentNo && p.OrderLine == item.OrderLine))
            //        {
            //            item2.GetType().GetProperty(e.Column.FieldName).SetValue(item2, e.Value, null);
            //        }
            //        table = PH.POPC.BO.UpdateTable.PODetail;
            //        break;
            //    case "LC":
            //    case "Remark":
            //    case "ColorShade":
            //    case "CustStyleNo":
            //    case "CustOrderNo":
            //    case "SuppSizeCode":
            //    case "SuppFitCode":
            //    case "GarmentColor":
            //        table = PH.POPC.BO.UpdateTable.POColorSizeDetail;
            //        item.GetType().GetProperty(e.Column.FieldName).SetValue(item, e.Value, null);
            //        break;
            //    default:
            //        break;
            //}
            //this.m_Update.Add(item, table);
            //this.BindingSource.ResetBindings(false); 

        }





    }
}
