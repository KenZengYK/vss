using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;

namespace PH.LineBalanceII.BO
{
    /// <summary>
    /// 設置優化值
    /// </summary>
    public partial class frmSetBestLine : Form
    {
        private BindingSource bsList = new BindingSource();

        private DataTable dt = new DataTable();

        //public frmSetBestLine(List<StyleProcedure> AStyleProcedure, bool AAutoGenerateCanChoiceValue)
        //{
        //    if (AAutoGenerateCanChoiceValue)
        //    {
        //        LineBalanceIIDataContext context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
        //        var lists = from a in AStyleProcedure
        //                    where a.BNCX != "BN1"
        //                    select a;

        //        lists.Distinct(
        //    }
        //}

        private class JWorkSNComparer : IEqualityComparer<StyleProcedure>
        {
            #region IEqualityComparer<StyleProcedure> Members

            public bool Equals(StyleProcedure x, StyleProcedure y)
            {
                return (x.JWorkSN == y.JWorkSN);
            }

            public int GetHashCode(StyleProcedure obj)
            {
                return obj.ToString().ToLower().GetHashCode();
            }
            #endregion
        }

        private class JWorkSNComparerE : IEqualityComparer<StyleProcedure_E>
        {
            #region IEqualityComparer<StyleProcedure> Members

            public bool Equals(StyleProcedure_E x, StyleProcedure_E y)
            {
                return (x.JWorkSN == y.JWorkSN);
            }

            public int GetHashCode(StyleProcedure_E obj)
            {
                return obj.ToString().ToLower().GetHashCode();
            }
            #endregion
        }

        private class JWorkSNComparerF : IEqualityComparer<StyleProcedure_F>
        {
            #region IEqualityComparer<StyleProcedure> Members

            public bool Equals(StyleProcedure_F x, StyleProcedure_F y)
            {
                return (x.JWorkSN == y.JWorkSN);
            }

            public int GetHashCode(StyleProcedure_F obj)
            {
                return obj.ToString().ToLower().GetHashCode();
            }
            #endregion
        }


        /// <summary>
        /// 設置優化值
        /// </summary>
        /// <param name="AStyleProcedure">StyleProcedure</param>
        public frmSetBestLine(List<StyleProcedure> AStyleProcedure)
        {
            InitializeComponent();

            //dt.Columns.Add("Select", typeof(bool));
            //dt.Columns.Add("YHSAHSN", typeof(decimal));
            //dt.Columns.Add("BNCX", typeof(string));

            ////提取出沒有優化後,並且優化MTM不等於120,並且BN次序不等於N.A.(即最小的)的優化後的SAH集合,
            ////?用戶選擇其中一?SAH值作為優化值
            //string SaveBNCX = "-19";
            //foreach (StyleProcedure obj in AStyleProcedure)
            //{
            //    if (obj.TeamGSD.ToUpper() == "O") continue;

            //    if ((obj.JWorkSN ?? 0) == (obj.YHSAHSN ?? 0) && obj.YHMTM != 120 && obj.BNCX != "N.A." && obj.BNCX != SaveBNCX)
            //    {
            //        DataRow dr = dt.NewRow();
            //        dr["Select"] = false;
            //        dr["YHSAHSN"] = (obj.YHSAHSN ?? 0);
            //        dr["BNCX"] = obj.BNCX;
            //        dt.Rows.Add(dr);
            //    }
            //    SaveBNCX = obj.BNCX;
            //}

            //bsList.DataSource = dt;
            //DataGrid.DataSource = bsList;
            //CheckEdit.CheckedChanged += new EventHandler(CheckEdit_CheckedChanged);

            dt.Columns.Add("Select", typeof(bool));
            dt.Columns.Add("JWorkSN", typeof(decimal));
            dt.Columns.Add("BNCX", typeof(string));

            //提取出沒有優化後,並且優化MTM不等於120,並且BN次序不等於N.A.(即最小的)的優化後的SAH集合,
            //?用戶選擇其中一?SAH值作為優化值
            //var lists = (from a in AStyleProcedure
            //            where a.BNCX != "BN1" && a.BNCX != "N.A."  //小於BN1的值都拿出來給用戶選擇(BN1是取大的,所以用不等於也可以)
            //            orderby a.JWorkSN descending
            //            select a).Distinct(new JWorkSNComparer());

            var lists = (from a in AStyleProcedure
                         where  a.BNCX != "N.A."  //小於BN1的值都拿出來給用戶選擇(BN1是取大的,所以用不等於也可以)
                         orderby a.JWorkSN descending
                         select a).Distinct(new JWorkSNComparer());

            foreach (StyleProcedure obj in lists)
            {
                DataRow dr = dt.NewRow();
                dr["Select"] = false;
                dr["JWorkSN"] = (obj.JWorkSN ?? 0);
                dr["BNCX"] = obj.BNCX;
                dt.Rows.Add(dr);
            }

            bsList.DataSource = dt;
            DataGrid.DataSource = bsList;
            CheckEdit.CheckedChanged += new EventHandler(CheckEdit_CheckedChanged);
        }



        public frmSetBestLine(List<StyleProcedure_E> AStyleProcedure)
        {
            InitializeComponent();
            dt.Columns.Add("Select", typeof(bool));
            dt.Columns.Add("JWorkSN", typeof(decimal));
            dt.Columns.Add("BNCX", typeof(string));

            //提取出沒有優化後,並且優化MTM不等於120,並且BN次序不等於N.A.(即最小的)的優化後的SAH集合,
            //?用戶選擇其中一?SAH值作為優化值
            var lists = (from a in AStyleProcedure
                         where a.BNCX != "BN1" && a.BNCX != "N.A."  //小於BN1的值都拿出來給用戶選擇(BN1是取大的,所以用不等於也可以)
                         orderby a.JWorkSN descending
                         select a).Distinct(new JWorkSNComparerE());

            foreach (StyleProcedure_E obj in lists)
            {
                DataRow dr = dt.NewRow();
                dr["Select"] = false;
                dr["JWorkSN"] = (obj.JWorkSN ?? 0);
                dr["BNCX"] = obj.BNCX;
                dt.Rows.Add(dr);
            }

            bsList.DataSource = dt;
            DataGrid.DataSource = bsList;
            CheckEdit.CheckedChanged += new EventHandler(CheckEdit_CheckedChanged);
        }

        public frmSetBestLine(List<StyleProcedure_F> AStyleProcedure)
        {
            InitializeComponent();
            dt.Columns.Add("Select", typeof(bool));
            dt.Columns.Add("JWorkSN", typeof(decimal));
            dt.Columns.Add("BNCX", typeof(string));

            //提取出沒有優化後,並且優化MTM不等於120,並且BN次序不等於N.A.(即最小的)的優化後的SAH集合,
            //?用戶選擇其中一?SAH值作為優化值
            var lists = (from a in AStyleProcedure
                         where a.BNCX != "BN1" && a.BNCX != "N.A."  //小於BN1的值都拿出來給用戶選擇(BN1是取大的,所以用不等於也可以)
                         orderby a.JWorkSN descending
                         select a).Distinct(new JWorkSNComparerF());

            foreach (StyleProcedure_F obj in lists)
            {
                DataRow dr = dt.NewRow();
                dr["Select"] = false;
                dr["JWorkSN"] = (obj.JWorkSN ?? 0);
                dr["BNCX"] = obj.BNCX;
                dt.Rows.Add(dr);
            }

            bsList.DataSource = dt;
            DataGrid.DataSource = bsList;
            CheckEdit.CheckedChanged += new EventHandler(CheckEdit_CheckedChanged);
        }









        private void CheckEdit_CheckedChanged(object sender, EventArgs e)
        {
            this.gridView.PostEditor();
            gridView.UpdateCurrentRow();

            this._SelectedValue = -19;
            int temp = this.bsList.IndexOf(this.bsList.Current);
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                if (i == temp)
                {
                    if ((bool)((DataRowView)this.bsList.Current)["Select"])
                    {
                        this._SelectedValue = Convert.ToDecimal(((DataRowView)this.bsList.Current)["JWorkSN"]);
                    }
                    continue;
                }
                dt.Rows[i][0] = false;
            }
        }

        private decimal _SelectedValue = -19M;
        /// <summary>
        /// 設置的值
        /// </summary>
        public decimal SelectedValue
        {
            get
            {
                return this._SelectedValue;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.SelectedValue == -19M)
            {
                MessageBox.Show("您必須選擇一條優化值", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.DialogResult = DialogResult.None;
            }

        }
    }



}