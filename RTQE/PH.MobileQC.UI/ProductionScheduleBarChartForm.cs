using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class ProductionScheduleBarChartForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public  DataSet ds = new DataSet();
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1 =new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();


        public ProductionScheduleBarChartForm()
        {
            InitializeComponent();
            if (this.DataContext == null)
            {
                DataContext = db;
            }
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            objListGridView.Columns.Clear();

            ProductionScheduleBarChartQueryForm frm = new ProductionScheduleBarChartQueryForm(this);
            frm.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = frm.ShowDialog();
            if (dlg == DialogResult.OK)
            {

                int a = this.ds.Tables[0].Rows.Count;

                this.objListGridView.Columns.Clear();

                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {

                    DevExpress.XtraGrid.Columns.GridColumn cl = new DevExpress.XtraGrid.Columns.GridColumn();
                    cl.Name = cl.FieldName = ds.Tables[0].Columns[i].ColumnName;
                    cl.Caption = GetCaptionText(ds.Tables[0].Columns[i].ColumnName);
                    //cl.Caption = ds.Tables[0].Columns[i].ColumnName;
                    //cl.FieldName = ds.Tables[0].Columns[i].ColumnName;
                    //cl.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
                    cl.ColumnEdit = repositoryItemMemoEdit1;
                    cl.AppearanceHeader.Options.UseTextOptions = true;
                    cl.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                    //cl.AppearanceCell.Options.UseTextOptions = true;
                    //cl.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                    //cl.Width = 60;
                    cl.VisibleIndex = i;

                    cl.Visible = true;

                    objListGridView.Columns.Add(cl);
                }
                this.objListGridView.BestFitColumns();

                this.BindingSource.DataSource = ds.Tables[0];
            }

        }

        public string GetCaptionText(string ColumnName)
        {
            switch (ColumnName)
            {
                case "FTY": return "Factory";
                case "WS": return "WS";
                case "LINE": return "AL#";
                case "PROJ": return "Proj#";
                case "CUST_STYLE": return "Cust";
                case "PROD_CODE": return "F";
                case "LWO_NO": return "WO#";
                case "COLOR": return "PH Clr\r\nCode\r\nÉ«´a";
                case "QN_QTY": return "QN Qty\r\n(hvp.2)\r\n(b=c+d)";
                case "FLAG": return "Ws\r\nflow\r\nPMC";
                case "M": return "UpDd\r\nMat'l\r\nrdy dd\r\n(M)";
                case "B": return "UpDd B dd\r\n(B)";
                case "F": return "UpDd F dd\r\n(F)";
                case "A": return "UpDd AL\r\n ST dd\r\n(A)";
                case "AF": return "UpDd AL \r\nFSH dd\r\n(AF)";
                case "E": return "UpDd E dd\r\n(E)";
                case "T3": return "UpDd T3 dd\r\n(T3)";
                case "X": return "UpDd ExFty\r\nLCL/PDN\r\n(X)";
                default: return ColumnName;

            }
        }


    }
}
