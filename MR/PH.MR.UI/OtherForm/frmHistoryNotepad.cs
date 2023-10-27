using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Reflection;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Columns;
using PH.Common.Report;
using PH.Platform.BO;
using PH.Platform.BO.Interface;
using PH.Platform.AuthMgr.BO;
using PH.MR.BO;

namespace PH.MR.UI
{
    public partial class frmHistoryNotepad : DevExpress.XtraEditors.XtraForm
    {
        #region proterties
        private NotepadType _notepadType;
        private List<MRHistoryNotepad> _historyNotepads;
        private EnquiriesBase _enquiriesBase;
        public EnquiriesBase enquiriesBase
        {
            get { SetNotepad(); return _enquiriesBase; }
        }
        private int _lastVersion;
        private bool _rightEditOldVersions;
        private bool _readOnly;
        private string _user;
        private string _dept;

        private bool _isDirty;
        public bool IsDirty
        {
            get { return _isDirty; }
        }
        #endregion

        public frmHistoryNotepad(NotepadType notepadType, EnquiriesBase enquiriesBase)
        {
            InitializeComponent();
            this._notepadType = notepadType;
            this._enquiriesBase = enquiriesBase;
            this._isDirty = false;

            InitValues();
        }

        private void SetNotepad()
        {
            int version = this._enquiriesBase.VERSION;
            foreach (MRHistoryNotepad hn in this._historyNotepads)
            {
                if (hn.VERSION == version)
                {
                    this._enquiriesBase.NOTEPAD = hn.NOTEPAD;
                    return;
                }
            }
        }

        private void InitValues()
        {
            this._user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;



            this._dept = PH.MR.BO.Config.GetUserCodeDept(PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, "Department"); //z..r this._dept = PH.AuthManage.Utils.AuthController.User.Department;
            this._readOnly = this._enquiriesBase.DEPT != this._dept || this._notepadType == NotepadType.CAC;

            this.btnExport.Properties.Items.Clear();
            this.btnExport.Properties.Items.AddRange(PH.Common.Report.PHReport.ExportStrings);
            this.btnExport.SelectedIndex = 0;

            string usr = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;


            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower() == "admin")
                return;


            IList<Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(33);
 

            if (Rightlist.Where(p => p.FunRight == "MR.History.EditOldVersion").FirstOrDefault() != null)
                this._rightEditOldVersions = true;
            else
                this._rightEditOldVersions = false;


            string sSQL;
            sSQL = string.Format("exec SP_MR_HistoryNotepad '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'",
                   _enquiriesBase.CONO, _enquiriesBase.PROJECT, this._dept, _enquiriesBase.CSTL, _enquiriesBase.PCOL, _enquiriesBase.PSIZ,
                   _enquiriesBase.MATD.Trim(), _enquiriesBase.STYLE, this._notepadType
                   );

            DataTable tb = PH.MR.BO.DB.GetDataByPage_SQL2000(sSQL);
            MRHistoryNotepadList(tb);
            this.gridControl1.DataSource = this._historyNotepads;
            if (_notepadType == NotepadType.CAC)
                this.gcCAC1.DataSource = StyleNotepad.GetStyleNotepad(tb);

            SetupGridColumn();

            string reportName = this.Text;
            //PH.MR.UI.Grid.ExportFileName = reportName;
            //PH.MR.UI.Grid.ReportTitle = reportName;

            //PH.MR.UI.Grid.PageKind = System.Drawing.Printing.PaperKind.A4;
            //PH.MR.UI.Grid.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            //PH.MR.UI.Grid.Landscape = true;
        }

        private void SetupGridColumn()
        {
            switch (_notepadType)
            {
                case NotepadType.WO:
                    gcolQTY1.Caption = "WO YY Qty";
                    gcolQTY2.Visible = false;
                    this.Text = string.Format("{0} for {1}", "SLCAD  Notepad", _enquiriesBase.PROJECT);
                    break;
                case NotepadType.MR:
                    gcolQTY1.Caption = "MR YY Qty";
                    gcolQTY2.Visible = false;
                    this.Text = string.Format("{0} for {1}", "OA  Notepad", _enquiriesBase.PROJECT);
                    break;
                case NotepadType.PO:
                    gcolQTY1.Caption = "Res. PO";
                    gcolQTY2.Caption = "Open PO";
                    this.Text = string.Format("{0} for {1}", "PUR Notepad", _enquiriesBase.PROJECT);
                    break;
                case NotepadType.MU:
                    gcolQTY1.Caption = "Actual Usage";
                    gcolQTY2.Visible = false;
                    this.Text = string.Format("{0} for {1}", "MU Notepad", _enquiriesBase.PROJECT);
                    break;
                case NotepadType.CAC:
                    gcolQTY1.Caption = "CAC YY Qty";
                    gcolQTY2.Visible = false;
                    gcolDate.Visible = false;
                    this.btnSave.Visible = false;
                    this.Text = string.Format("{0} for {1}", "BOM Text Notepad", _enquiriesBase.PROJECT);
                    break;
                default:
                    break;
            }
        }

        private void MRHistoryNotepadList(DataTable tb)
        {
            this._lastVersion = -1;
            int tempVersion = -1;

            this._historyNotepads = new List<MRHistoryNotepad>();
            foreach (DataRow row in tb.Rows)
            {
                MRHistoryNotepad mrhn = new MRHistoryNotepad();
                foreach (PropertyInfo pi in typeof(MRHistoryNotepad).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
                {
                    try
                    {
                        if (pi.Name == "IsNew")
                        {
                            pi.SetValue(mrhn, true, null);
                        }
                        else
                        {
                            string fieldName = GetColumnName(tb, pi.Name);
                            if (fieldName == null) continue;
                            if (fieldName == "VERSION")
                            {
                                tempVersion = Convert.IsDBNull(row[fieldName]) ? -1 : Convert.ToInt32(row[fieldName]);
                                this._lastVersion = Math.Max(this._lastVersion, tempVersion);
                            }

                            if (pi.CanWrite)
                            {
                                if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Double")
                                    pi.SetValue(mrhn, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]), null);
                                else if (row[fieldName].GetType().Name == "Double" && pi.PropertyType.Name == "Decimal")
                                    pi.SetValue(mrhn, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
                                else
                                    pi.SetValue(mrhn, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);
                            }
                        }
                    }
                    catch { }
                }
                this._historyNotepads.Add(mrhn);
            }
        }

        private string GetColumnName(DataTable tb, string propertyName)
        {
            if (tb.Columns.Contains(propertyName))
                return tb.Columns[propertyName].ColumnName;
            else
                return null;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            DoSave();
        }

        private void DoSave()
        {
            foreach (MRHistoryNotepad hn in this._historyNotepads)
            {
                if (!hn.IsDirty) continue;

                UpdateData(hn);

                hn.IsDirty = false;
                hn.IsNew = false;
            }
            this._isDirty = true;
            btnSave.Enabled = false;
        }

        private void UpdateData(MRHistoryNotepad hn)
        {
            string sSQL = string.Format("exec SP_MR_HistoryNotepad_Save '{0}','{1}','{2}',{3},'{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}',{12}",
                     _notepadType, hn.CONO, hn.PROJECT, hn.VERSION, hn.MATD.Trim(), hn.CSTL, hn.PCOL, hn.PSIZ, hn.STYLE, this._user, hn.NOTEPAD_NEW, hn.GUID, Convert.ToInt32(hn.IsNew));

            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            hn.NOTEPAD = hn.NOTEPAD_TEMP == "" ? string.Format("{0} ({1}):{2}", this._user, DateTime.Now.ToString("yyyy-MM-dd"), hn.NOTEPAD_NEW) :
                string.Format("{0}\r\n{1} ({2}):{3}", hn.NOTEPAD_TEMP,this._user,DateTime.Now.ToString("yyyy-MM-dd"), hn.NOTEPAD_NEW);

        }

        private GridColumn SetupColumn(string fieldName, int width)
        {
            GridColumn col = Commons.GetGridColumnByFieldName(fieldName, this.gridView1);
            if (col == null) 
                return col;

            col.Width = width;
            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            return col;
        }

        private void repositoryItemMemoExEdit1_EditValueChanged(object sender, EventArgs e)
        {
            MRHistoryNotepad hn = this.gridView1.GetRow(this.gridView1.FocusedRowHandle) as MRHistoryNotepad;
            if (hn == null) return;
            hn.IsDirty = true;
            btnSave.Enabled = true;

        }

        private void gridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            MRHistoryNotepad hn = this.gridView1.GetRow(e.RowHandle) as MRHistoryNotepad;
            if (hn == null) return;
            hn.IsDirty = true;
            btnSave.Enabled = true;
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            MRHistoryNotepad hn = this.gridView1.GetRow(this.gridView1.FocusedRowHandle) as MRHistoryNotepad;
            if (hn == null) return;

            gcolNotepad_Temp.OptionsColumn.AllowEdit = (hn.DEPTVERSION != 1 || this._notepadType == NotepadType.CAC);
            repositoryItemMemoExEdit1.ReadOnly = (this._readOnly) || ((!this._rightEditOldVersions && this._lastVersion != hn.VERSION) || (hn.DEPTVERSION == 1) || (_historyNotepads.Count == 1));
            //!((this._rightEditOldVersions || this._lastVersion == hn.VERSION) && (hn.VERSION != 1) && (_historyNotepads.Count != 1));
        }
        

        #region Print and Export

        private void DoExport(int index)
        {
            PrintPreviewAndExportFile(true, index);
        }
        private void PrintPreviewAndExportFile(bool isExport, int index)
        {
            PHReport report = new PHReport();
            report.ReportTitle = this.Text;// PH.MR.UI.Grid.ReportTitle;
            report.Landscape = true;

            GridColumn col=new GridColumn();
            if (_notepadType == NotepadType.CAC)
            {
                report.Landscape = false;
                col = Commons.GetGridColumnByFieldName("NOTEPAD", this.gridView1);
                col.FieldName = "ATTACHMENT";
                col.Width = 130;
            }
            else if (_notepadType == NotepadType.PO)
            {
                col = SetupColumn("NOTEPAD", 295);
                Commons.SetGridColumnMemoEdit(col).LinesCount = 0;
            }
            else
            {
                col = SetupColumn("NOTEPAD", 405);
                Commons.SetGridColumnMemoEdit(col).LinesCount = 0;
            }

            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating);
            if (isExport)
                report.ExportByIndex(index);
            else
                report.ShowPreviewDialog();

            if (_notepadType == NotepadType.CAC)
            {
                col = Commons.GetGridColumnByFieldName("ATTACHMENT", this.gridView1);
                col.FieldName = "NOTEPAD";
                col.Width = 85;
            }
            else
            {
                col = SetupColumn("NOTEPAD", 85);
                col.ColumnEdit = repositoryItemMemoExEdit1;
            }

        }
        private void btnPrint_Click(object sender, EventArgs e)
        {
            PrintPreviewAndExportFile(false, -1);
        }
        private void btnInExport_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.Button == cbe.Properties.Buttons[0])
                DoExport(cbe.SelectedIndex);
        }
        private void btnExport_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.CloseMode != DevExpress.XtraEditors.PopupCloseMode.Normal) return;
            int index = cbe.Properties.Items.IndexOf(e.Value);
            if (index != -1)
                DoExport(index);

        }
        private void btnExport_SelectedIndexChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (cbe.SelectedItem != null)
                cbe.Properties.Buttons[0].Caption = cbe.SelectedItem.ToString();
        }
        private void report_DetailBandCreating(object sender, ReportBandEventArgs e)
        { 
            int iClientWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            PHReport.AddWinControlToReport(this.gridControl1, new Point(0, 0), new Size(iClientWidth, 400), e.ReportBand);
            e.Y = 400;
            if (_notepadType == NotepadType.CAC)
            {
                DevExpress.XtraReports.UI.XRPageBreak pb = new DevExpress.XtraReports.UI.XRPageBreak();
                e.ReportBand.Controls.Add(pb);
                pb.Location = new Point(iClientWidth, 401);
                PHReport.AddWinControlToReport(this.gcCAC1, new Point(0, 410), new Size(iClientWidth, 400), e.ReportBand);
                e.Y = 810;
            }
        }

        #endregion



    }

}