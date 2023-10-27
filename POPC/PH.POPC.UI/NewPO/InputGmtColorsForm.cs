using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;

using PH.POPC.BO;
using PH.Platform.UI.CS.DataQuery;

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.Data;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraEditors.Controls;
using PH.Platform.ExtendLibrary;
using PH.MIDc.BO;

namespace PH.POPC.UI.NewPO
{
    public partial class InputGmtColorsForm : DevExpress.XtraEditors.XtraForm
    {
        public InputGmtColorsForm(List<PH.POPC.BO.POHeader> pos)
        {
            InitializeComponent();
            this._pos = pos;
            AssignDataToLookupEdit();
            //InitImageComb(this.imag_ClassCode, BO.Common.ClassCodeDictionary);
            InitDataSource();
        }
        List<PH.POPC.BO.POHeader> _pos;
        PH.MIDc.BO.MIDcDataContext _MIDcContext;
        private void AssignDataToLookupEdit()
        {
            _MIDcContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

            var aa = from a in _MIDcContext.Colors
                     orderby a.Color1
                     select a;
            this.ricbColor.Items.Clear();
            foreach (var a in aa)
            {
                this.ricbColor.Items.Add(a.Color1);
            }

        }
        List<POItemColor> _itemColors;
        private void InitDataSource()
        {
            _itemColors = new List<POItemColor>();
            foreach (var h in this._pos)
            {
                foreach (var d in h.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        c.CurrentDataContext = h.CurrentDataContext;
                        POItemColor ic = _itemColors.Find(delegate(POItemColor ic1)
                        {
                            return c.PONO == ic1.PONO && ic1.ItemCode == c.ItemCode && ic1.ColorCode == c.ColorCode;
                        });
                        if (ic == null)
                        {
                            _itemColors.Add(new POItemColor()
                            {
                                Company = c.Company,
                                Supplier = c.Supplier,
                                SuppRef = c.SupplierReference,
                                PONO = c.PONO,
                                ItemCode = c.ItemCode,
                                ColorCode = c.ColorCode,
                                ColorName = c.ColorDesc,
                                Match = c.GmtColorMatch ?? false,
                                GmtColorCode = c.GarmentColor,
                                GmtColorName = c.GmtColorName,

                                //由David增加 2022-06-09
                                CurPODetail = d,
                                Cust = string.IsNullOrEmpty(d.ProjectNo) ? "" : (d.ProjectNo.StartsWith("EX-") ? d.ProjectNo.Substring(3, 4) : d.ProjectNo.Substring(0, 4))
                                //Cust = d.ProjectNo.StartsWith("EX-") ? d.ProjectNo.Substring(3, 4) : d.ProjectNo.Substring(0, 4)
                            });
                        }
                    }
                }
            }
            this.bindingSource1.DataSource = _itemColors;
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            //string classCode = Convert.ToString(imag_ClassCode.EditValue);
            //if (string.IsNullOrEmpty(classCode))
            //{
            //    MessageBox.Show("Must select a Class Code!", "Warning", MessageBoxButtons.OK);
            //    imag_ClassCode.Focus();
            //    return;
            //}
            //_po.ClassCode = classCode;
            if (this.gridView1.PostEditor())
            {
                this.gridView1.UpdateCurrentRow();
            }

            foreach (var item in this._itemColors)
            {
                //item.CurrentDataContext = this._po.CurrentDataContext;
                if (string.IsNullOrEmpty(item.GmtColorCode))
                {
                    MessageBox.Show(string.Format("Match gmt clr for Item Code - {0}/{1}/{2} or not?", item.PONO, item.ItemCode, item.ColorCode), "Warning", MessageBoxButtons.OK);
                    return;
                }
            }
            //set value:
            PH.POPC.BO.POPCDataContext _context = null;
            foreach (var item in this._itemColors)
            {
                foreach (var h in this._pos)
                {
                    _context = h.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                    if (h.PONO == item.PONO)
                    {
                        var bb = from a in h.PODetails
                                 from b in a.POColorSizeDetails
                                 where b.ItemCode == item.ItemCode && b.ColorCode == item.ColorCode
                                 select b;
                        foreach (var b in bb)
                        {
                            if (b.GarmentColor != item.GmtColorCode)
                                b.GarmentColor = item.GmtColorCode;
                            if (b.GmtColorName != item.GmtColorName)
                                b.GmtColorName = item.GmtColorName;
                        }
                    }

                }


            }

            //PH.POPC.BO.POPCDataContext _context = this._po.CurrentDataContext as PH.POPC.BO.POPCDataContext;
            if (_context != null)
                _context.SubmitChanges();
            //_po.Save();
            this.DialogResult = DialogResult.OK;
        }

        private void label1_DoubleClick(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void GmtColorEditValueChanged(string colorCode)
        {
            string s;
            if (string.IsNullOrEmpty(colorCode) || (colorCode.Length != 3))
            {
                s = "";
            }
            else
            {
                //POItemColor obj = this.bindingSource1.Current as POItemColor;
                //if (obj == null) return;

                PH.MIDc.BO.Color c = GetMIDcColorObject(colorCode);
                //s = (c == null) ? "" : c.Description;

                //MIDc中Color中按Cust设置颜色名称时，取设置的颜色名称，否则直接取Color中的颜色名称, 由David修改 2022-06-09
                if (c == null) //MIDc中找不到这个Color Code
                {
                    this.gridView1.SetFocusedRowCellValue(this.colGmtColorName, "");
                    return;
                }

                s = "";
                POItemColor obj = this.bindingSource1.Current as POItemColor;
                ColorSuppCustName CustColorObj = c.ColorSuppCustNames.FirstOrDefault(p => p.Flag == "Cust" && p.Code == obj.Cust);
                if (CustColorObj != null && !string.IsNullOrEmpty(CustColorObj.ColorName))
                {
                    s = CustColorObj.ColorName;
                }
                else
                {
                    s = c.Description;
                }

            }
            this.gridView1.SetFocusedRowCellValue(this.colGmtColorName, s);

            //if (this.gridView1.PostEditor())
            //{
            //    this.gridView1.UpdateCurrentRow();
            //}
        }
        private PH.MIDc.BO.Color GetMIDcColorObject(string colorCode)
        {
            var aa = (from a in _MIDcContext.Colors
                      where a.Color1 == colorCode
                      select a).FirstOrDefault();

            return aa;
        }


        private void ricbColor_EditValueChanging(object sender, ChangingEventArgs e)
        {
            string s = (string)e.NewValue;

            GmtColorEditValueChanged(s);
        }

        private void checkMatch_EditValueChanging(object sender, ChangingEventArgs e)
        {
            POItemColor obj = this.bindingSource1.Current as POItemColor;
            if (obj == null) return;

            bool b = (bool)e.NewValue;
            if (b)
            {
                this.gridView1.SetFocusedRowCellValue(this.colGmtColorCode, obj.ColorCode);
                GmtColorEditValueChanged(obj.ColorCode);
            }
            else
            {
                if (obj.ColorCode == obj.GmtColorCode)
                {
                    this.gridView1.SetFocusedRowCellValue(this.colGmtColorCode, null);
                    GmtColorEditValueChanged(null);
                }

            }

        }

        private void gridView1_CellMerge(object sender, CellMergeEventArgs e)
        {
            if (e.Column.FieldName == "Supplier")
            {
                GridView view = sender as GridView;
                string supp1 = (string)view.GetRowCellValue(e.RowHandle1, e.Column);
                string supp2 = (string)view.GetRowCellValue(e.RowHandle2, e.Column);

                string po1 = (string)view.GetRowCellValue(e.RowHandle1, "PONO");
                string po2 = (string)view.GetRowCellValue(e.RowHandle2, "PONO");

                e.Merge = supp1 == supp2 && po1 == po2;
                e.Handled = true;
            }
        }

        private void btnMatchAll_Click(object sender, EventArgs e)
        {
            MatchAll();
        }
        private void MatchAll()
        {
            this.gridView1.BeginDataUpdate();
            try
            {
                int dataRowCount = this.gridView1.DataRowCount;
                for (int currentRowHandle = 0; currentRowHandle < dataRowCount; currentRowHandle++)
                {
                    PH.POPC.BO.POItemColor currLot = gridView1.GetRow(currentRowHandle) as PH.POPC.BO.POItemColor;
                    if (currLot == null) continue;


                    currLot.GmtColorCode = currLot.ColorCode;
                    currLot.Match = true;

                    PH.MIDc.BO.Color c = GetMIDcColorObject(currLot.ColorCode);

                    //string s = (c == null) ? "" : c.Description;

                    //MIDc中Color中按Cust设置颜色名称时，取设置的颜色名称，否则直接取Color中的颜色名称, 由David修改 2022-06-09
                    if (c == null) //MIDc中找不到这个Color Code
                    {
                        this.gridView1.SetFocusedRowCellValue(this.colGmtColorName, "");
                        continue;
                    }

                    string s;
                    ColorSuppCustName CustColorObj = c.ColorSuppCustNames.FirstOrDefault(p => p.Flag == "Cust" && p.Code == currLot.Cust);
                    if (CustColorObj != null && !string.IsNullOrEmpty(CustColorObj.ColorName))
                    {
                        s = CustColorObj.ColorName;
                    }
                    else
                    {
                        s = c.Description;
                    }

                    this.gridView1.SetRowCellValue(currentRowHandle, this.colGmtColorName, s);
                }
            }
            finally
            {
                this.gridView1.EndDataUpdate();
            }
        }


    }
}