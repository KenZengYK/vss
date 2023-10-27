using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI
{
    public partial class frmSelectProject : DevExpress.XtraEditors.XtraForm
    {
        public frmSelectProject(string cono, bool isHistory)
        {
            InitializeComponent();
            this._ds = PH.MR.BO.DB.AS400DB;
            this._cono = cono;
            this._project = "";
            this._dept = "";
            this._isHistory = isHistory;
            GetProjects();
        }
        private AS400Interface.IDataAccess _ds;
        private string _cono;

        private string _project;
        public string Project
        {
            get { return _project; }
        }

        private string _dept;
        public string Dept
        {
            get { return _dept; }
        }

        private bool _isHistory = false;

        private void GetProjects()
        {
            string sSQL;
            DataTable tb;
            if (this._isHistory)
            {
                this.Text = "Select Project (from History)"; 
                sSQL = string.Format("SELECT DISTINCT PROJECT as CUSO40,ORDN as ORDN40 FROM MR_VERSION WHERE COMPANY='{0}' order by PROJECT", this._cono);
                tb = PH.MR.BO.DB.GetDataByPage_SQL2000(sSQL);
            }
            else
            {
                this.Text = "Select Project (from ERP)";
                sSQL = string.Format("SELECT DISTINCT ORDN40,CUSO40,'' as DEPT FROM AULT4F1.OEP40 WHERE CONO40='{0}' AND DTLC40=0 AND STAT40<>'X'", this._cono);
                tb = PH.MR.BO.DB.GetDataByPage_AS400(sSQL);
                gridColumn3.Visible = false;
                gridColumn4.Visible = false;
            }
            this.gridControl1.DataSource = tb;

        }
        private void SelectProject()
        {
            this._project = Convert.ToString(this.gridView1.GetRowCellValue(this.gridView1.FocusedRowHandle, "CUSO40")).Trim();
            this._dept = Convert.ToString(this.gridView1.GetRowCellValue(this.gridView1.FocusedRowHandle, "DEPT")).Trim();
            this.DialogResult = DialogResult.OK;
        }

        private void gridControl1_DoubleClick(object sender, EventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi =
                this.gridView1.CalcHitInfo((sender as Control).PointToClient(Control.MousePosition));

            if (hi.RowHandle >= 0)
                SelectProject();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            SelectProject();
        }

    }
}