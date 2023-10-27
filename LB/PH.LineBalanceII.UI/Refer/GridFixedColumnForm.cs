using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraGrid.Views.Grid;
using PH.Platform.Misc.BO.ErrorMessages;

namespace PH.LineBalanceII.UI
{
    public partial class GridFixedColumnForm : Form
    {
        #region 私用變量
        private DevExpress.XtraGrid.Views.Grid.GridView _GridView;
        private DataTable _dt = new DataTable();
        #endregion


        public string SideProgramid;
        public string FileID;
        public string FormName;
        public string Langid;


        #region 構造方法
        public GridFixedColumnForm()
        {
            InitializeComponent();
        }

        public GridFixedColumnForm(GridView AGridView)
            : this()
        {
            this._GridView = AGridView;
            _dt.Columns.Add("ColName");
            _dt.Columns.Add("ColFixed");
            _dt.Columns.Add("Band", typeof(object));

            //BandedGridView 或者 AdvBandedGridView 時只能對Bands鎖定
            if (AGridView is BandedGridView ||
                AGridView is AdvBandedGridView)
            {
                BandedGridView ActualGridView = (BandedGridView)AGridView;
                for (int i = 0; i < ActualGridView.Bands.Count; i++)
                {
                    DataRow dr = _dt.NewRow();
                    dr["ColName"] = ActualGridView.Bands[i].Caption;
                    dr["ColFixed"] = ActualGridView.Bands[i].Fixed.ToString();
                    dr["Band"] = ActualGridView.Bands[i];
                    _dt.Rows.Add(dr);
                }
            }
            else //普通的GridView對Column鎖定
            {
                for (int i = 0; i < AGridView.Columns.Count; i++)
                {
                    DataRow dr = _dt.NewRow();
                    dr["ColName"] = AGridView.Columns[i].Caption;
                    dr["ColFixed"] = AGridView.Columns[i].Fixed.ToString();
                    dr["Band"] = AGridView.Columns[i];
                    _dt.Rows.Add(dr);
                }
            }

            gridControl.DataSource = _dt;
        }
        #endregion

        #region 確定
        private void btnOK_Click(object sender, EventArgs e)
        {
           //zrtag PH.Common.UI.Grid.PostGridValue(this.gridViewSetColumn);
            this.gridViewSetColumn.BeginUpdate();

            for (int i = 0; i <= gridViewSetColumn.RowCount - 1; i++)
            {
                DataRow dr = gridViewSetColumn.GetDataRow(i);

                if (dr["ColFixed"].ToString() == "None")
                {
                    if (this._GridView is BandedGridView || this._GridView is AdvBandedGridView)
                    {
                        ((DevExpress.XtraGrid.Views.BandedGrid.GridBand)dr["Band"]).Fixed = DevExpress.XtraGrid.Columns.FixedStyle.None;
                    }
                    else
                    {
                        _GridView.Columns[i].Fixed = DevExpress.XtraGrid.Columns.FixedStyle.None;
                    }
                }
                else if (dr["ColFixed"].ToString() == "Left")
                {
                    if (this._GridView is BandedGridView || this._GridView is AdvBandedGridView)
                    {
                        ((DevExpress.XtraGrid.Views.BandedGrid.GridBand)dr["Band"]).Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;
                    }
                    else
                    {
                        _GridView.Columns[i].Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;
                    }
                }
                else if (dr["ColFixed"].ToString() == "Right")
                {
                    if (this._GridView is BandedGridView || this._GridView is AdvBandedGridView)
                    {
                        ((DevExpress.XtraGrid.Views.BandedGrid.GridBand)dr["Band"]).Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Right;
                    }
                    else
                    {
                        _GridView.Columns[i].Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Right;
                    }
                }
            }
            this.gridViewSetColumn.EndUpdate();
        }
        #endregion

        #region 取消
        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion

        #region 取消所有列的鎖定
        private void btnCancelAll_Click(object sender, EventArgs e)
        {
           // if (MessageBox.Show("您是否確認取消所有列鎖定?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            if (ErrorMessageManager.ShowMessage(this.SideProgramid, this.FileID, this.FormName, "msgCancelLockColumn", this.Langid) == DialogResult.Yes)
            {
                for (int i = 0; i < gridViewSetColumn.RowCount; i++)
                {
                    DataRow dr = gridViewSetColumn.GetDataRow(i);
                    if (this._GridView is BandedGridView || this._GridView is AdvBandedGridView)
                    {
                        ((DevExpress.XtraGrid.Views.BandedGrid.GridBand)dr["Band"]).Fixed = DevExpress.XtraGrid.Columns.FixedStyle.None;
                    }
                    else
                    {
                        _GridView.Columns[i].Fixed = DevExpress.XtraGrid.Columns.FixedStyle.None;
                    }
                }
                this.Close();
            }
        }
        #endregion
    }
}