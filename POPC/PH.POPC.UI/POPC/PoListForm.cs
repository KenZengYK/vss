using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class PoListForm : DevExpress.XtraEditors.XtraForm
    {
        public PoListForm()
        {
            InitializeComponent();
            // RefreshPOLog();
        }
        private void RefreshPOLog()
        {
            this.grdPOLog.DataSource = null;
            string sql = @"select trim(CONO96A) as COMPANY,trim(ORDN96A) as PONO ,(Case when Flag='0' or Flag is null then 0 else 1 end ) as FLAG ,UPDATETIME,PCDATETIME from ault4f1.php96a  ";
            if (this.cbAllDays.Checked && this.chkUpdated.Checked)
            { }
            else if (this.cbAllDays.Checked && !this.chkUpdated.Checked)
            {
                sql += "where Flag='0'";
            }
            else if (!this.cbAllDays.Checked && this.chkUpdated.Checked)
            {
                sql += "where  date(PCDateTime)=date(now()) Or Flag='0'";
            }
            else if (!this.cbAllDays.Checked && !this.chkUpdated.Checked)
            {
                sql += "where  Flag='0'";
            }


            this.Cursor = Cursors.WaitCursor;
            DataTable dt= PH.POPC.BO.DB.AS400DB.GetTable(sql);
            this.Cursor = Cursors.Default;
            this.grdPOLog.DataSource = dt;
           // ExpandGroup();
        }

        private void ExpandGroup()
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = this.grvPOLog;
            int iGroupCount = view.GroupCount;

            for (int i = -1; view.IsGroupRow(i); i--)
            {
                int rowHandle = view.GetDataRowHandleByGroupRowHandle(i);
                int iLevel = view.GetRowLevel(i);
                if (iLevel != (iGroupCount - 1)) continue;
                DataRow dr = view.GetDataRow(rowHandle) as DataRow;
                if (dr== null) return;
                if (dr["Flag"].ToString() == "Waiting for update")
                {
                    ExpandParentGroup(i, view);
                    view.SetRowExpanded(i, true);
                    break;
                }
            }

        }

        private void ExpandParentGroup(int rowHandle, DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            int parentHandle = view.GetParentRowHandle(rowHandle);
            if (parentHandle == DevExpress.XtraGrid.GridControl.InvalidRowHandle) return;

            view.SetRowExpanded(parentHandle, true);
            ExpandParentGroup(parentHandle, view);
        }



        private void butRefresh_Click(object sender, EventArgs e)
        {
            this.RefreshPOLog();
        }

        private void butClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void grvPOLog_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName == "UPDATETIME" || e.Column.FieldName == "PCDATETIME")
            { 
              DateTime dt =Convert.ToDateTime(e.Value);
              if (dt == null || dt == DateTime.MinValue)
                  e.DisplayText = "";
              else e.DisplayText = dt.ToString("yyyy-MM-dd hh:mm:ss");
            }
        }



    }
}
