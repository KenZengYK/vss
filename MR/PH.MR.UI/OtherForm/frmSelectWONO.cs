using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Reflection;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using PH.MR.BO;

namespace PH.MR.UI
{
    public partial class frmSelectWONO : Form
    {
        public frmSelectWONO(MRHelper mrHelper, DataTable tb)
        {
            InitializeComponent();
            _mrHelper = mrHelper;
            _tb = tb;
            InitValue();
        }

        private MRHelper _mrHelper;
        private DataTable _tb;
        private bool _selectAll;
        public bool SelectAll
        {
            get { return _selectAll; }
            set { _selectAll = value; }
        }

        private Hashtable _WorkOrders;
        public Hashtable WorkOrders
        {
            get { return _WorkOrders; }
        }

        private void InitValue()
        {
            _selectAll = true;
            _mrHelper.SelectRWOQN = true;
            //string sSQL = string.Format("select distinct cast(1 as bit) as IsCheck,a.WORD as WorkOrder,b.SWONO,b.SWOID from erp_mrsum3_1 a"
            //     + " left join opc_swom b ON (b.company=a.cono and b.salesOrderNo=a.ordn and b.WorOrderNo=a.word)"
            //     + " where jobn={0}", this._mrHelper.JOBNNew);
            //_tb = this._mrHelper.SQL2000DB.GetTable(sSQL);
            this.gridControl1.DataSource = _tb;
            //this._mrHelper.PrintAgain = true;
            this._WorkOrders = new Hashtable();
        }

        private void frmSelectRWONO_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (UpdateSelectRWO2DB() == 0)
            {
                MessageBox.Show("select one WorkOrder NO# at least!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                e.Cancel = true;
            }
        }
        private void frmSelectRWONO_FormClosed(object sender, FormClosedEventArgs e)
        {
            _mrHelper.SelectRWOQN = false;

        }
        private int UpdateSelectRWO2DB()
        {
            this._WorkOrders.Clear();
            _selectAll = editSelectAll.Checked;
            if (_selectAll) return 100;

            int i = 0;
            bool isCheck;
            string wo, sSQL;
            foreach (DataRow row in this._tb.Rows)
            {
                isCheck = Convert.IsDBNull(row["IsCheck"]) ? false : Convert.ToBoolean(row["IsCheck"]);
                if (isCheck) i++;
            }

            if (i == 0) return i;
            //_selectAll = (i == _tb.Rows.Count);
            //-------first:delete the same jobn other rwo---------
            sSQL = string.Format("delete from SelectRWO_RMR where JOBN={0}", this._mrHelper.JOBNNew);
            PH.MR.BO.DB.SQL2000DB.Execute(sSQL);
            
            //-------then:insert rwo---------
            foreach (DataRow row in this._tb.Rows)
            {
                isCheck = Convert.IsDBNull(row["IsCheck"]) ? false : Convert.ToBoolean(row["IsCheck"]);
                wo = Convert.IsDBNull(row["WorkOrder"]) ? "" : Convert.ToString(row["WorkOrder"]);
                //rwo = Convert.IsDBNull(row["SWONO"]) ? "" : Convert.ToString(row["SWONO"]);
                if (isCheck)
                {
                    sSQL = string.Format("insert into SelectRWO_RMR (JOBN,WorkOrder) values({0},'{1}')", this._mrHelper.JOBNNew, wo);
                    PH.MR.BO.DB.SQL2000DB.Execute(sSQL);

                    this._WorkOrders[wo] = wo;
                }
            }
            return i;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (UpdateSelectRWO2DB() == 0)
            {
                MessageBox.Show("select one WorkOrder NO# at least!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            this._mrHelper.PrintAgain = PrintAgainOption.Yes;
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void CheckIt(bool check)
        {
            foreach (DataRow row in this._tb.Rows)
            {
                row["IsCheck"] = check;
            }
        }
        private void btnSelect_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            CheckIt(Convert.ToBoolean(e.Button.Tag));
        }

        private void gridView1_GroupRowExpanded(object sender, DevExpress.XtraGrid.Views.Base.RowEventArgs e)
        {
            GridView view = sender as GridView;
            CollapseExpandRow(view, e.RowHandle);
            view.TopRowIndex = view.GetVisibleIndex(e.RowHandle);
        }
        private void CollapseExpandRow(GridView view, int groupRow)
        {
            GridViewInfo viewInfo = GetGridViewInfo(view);
            //int groupRowCount = 0;
            if (viewInfo == null) return;
            try
            {
                for (int i = 0; i < viewInfo.RowsInfo.Count; i++)
                {
                    int iGroupRowHandle = -i - 1;
                    if (iGroupRowHandle != groupRow)
                    //if (viewInfo.RowsInfo[i].IsGroupRow && viewInfo.RowsInfo[i].RowHandle != groupRow && (viewInfo.RowsInfo[i] as GridGroupRowInfo).GroupExpanded)
                    {
                        view.CollapseGroupRow(iGroupRowHandle, true);
                        // groupRowCount++;
                    }
                }
            }
            catch (Exception)
            {
                //throw;
            }
        }
        private GridViewInfo GetGridViewInfo(GridView gridView)
        {
            if (gridView == null) return null;
            PropertyInfo propertyInfo = gridView.GetType().GetProperty("ViewInfo", BindingFlags.Instance | BindingFlags.GetProperty | BindingFlags.NonPublic, null, typeof(GridViewInfo), new Type[0], null);
            if (propertyInfo != null)
                return propertyInfo.GetValue(gridView, null) as GridViewInfo;
            else return null;
        }

        private void editSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            this.panelControl1.Enabled = !editSelectAll.Checked;
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this._mrHelper.PrintAgain = PrintAgainOption.No;
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }
    }
}