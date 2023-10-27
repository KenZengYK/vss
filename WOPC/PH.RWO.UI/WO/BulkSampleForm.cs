using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Data.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using PH.Platform.BO;
using DevExpress.Utils;

namespace PH.RWO.UI.WO
{
    public partial class BulkSampleForm : DevExpress.XtraEditors.XtraForm
    {
        public BulkSampleForm(string AWorkOrderNo)
        {
            InitializeComponent();
            RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            DataSet ds = db.ExecuteDataSet(string.Format("exec sp_GetBulkSampleBreakDown '{0}'", AWorkOrderNo), new DataSet(), "BulkSample");
            gridControl1.DataSource = ds.Tables[0];

            //colSize1Qty.Caption = colSize2Qty.Caption = colSize3Qty.Caption = colSize4Qty.Caption = colSize5Qty.Caption =
            //colSize6Qty.Caption = colSize7Qty.Caption = colSize8Qty.Caption = colSize9Qty.Caption = colSize10Qty.Caption = "";

            var SizeList = ds.Tables[1].AsEnumerable().Select(dr => new { ID = Convert.ToInt32(dr["ID"]), Size = dr["Size"].ToString() });
            var obj = SizeList.FirstOrDefault(p => p.ID == 1); colSize1Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 2); colSize2Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 3); colSize3Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 4); colSize4Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 5); colSize5Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 6); colSize6Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 7); colSize7Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 8); colSize8Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 9); colSize9Qty.Caption = obj == null ? "" : obj.Size;
            obj = SizeList.FirstOrDefault(p => p.ID == 10); colSize10Qty.Caption = obj == null ? "" : obj.Size;


        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            DataRow dr1 = bandedGridView1.GetDataRow(e.RowHandle1);
            DataRow dr2 = bandedGridView1.GetDataRow(e.RowHandle2);

            bool SameColor = dr1["ColorCode"].ToString() == dr2["ColorCode"].ToString();

            switch (e.Column.FieldName)
            {
                case "ColorCode":
                    e.Merge = SameColor;
                    e.Handled = true;
                    break;

                default:
                    e.Merge = false;
                    e.Handled = true;
                    break;

            }

        }

        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "SampleDespatchDate")
            {
                object Level = bandedGridView1.GetRowCellValue(e.RowHandle, "Level");
                if (Level != null && Level.ToString().ToUpper() == "APPV")
                {
                    e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                    //e.Appearance.ForeColor = System.Drawing.Color.Red;

                }
            }
        }


    }
}