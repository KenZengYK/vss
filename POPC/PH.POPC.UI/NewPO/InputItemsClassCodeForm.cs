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

namespace PH.POPC.UI.NewPO
{
    public partial class InputItemsClassCodeForm : DevExpress.XtraEditors.XtraForm
    {
        public InputItemsClassCodeForm(List<PH.POPC.BO.POHeader> pos)
        {
            InitializeComponent();
            this._pos = pos;
            AssignDataToLookupEdit();
            //InitImageComb(this.imag_ClassCode, BO.Common.ClassCodeDictionary);
            _pods = new List<PODetail>();
            foreach (var item in this._pos)
            {
                _pods.AddRange(item.PODetails);
            }
            this.bindingSource1.DataSource = _pods;
        }
        List<PH.POPC.BO.POHeader> _pos;
        List<PH.POPC.BO.PODetail> _pods;

        private void AssignDataToLookupEdit()
        {
            DicList list = new DicList();

            #region Class Code

            LookUpColumnInfoCollection cols;
            var cc = list.GetDataDictionary(BO.Common.ClassCodeDictionary);
            this.ricbClassCode.DataSource = cc;
            this.ricbClassCode.DisplayMember = "DataCode";
            this.ricbClassCode.ValueMember = "DataCode";
            cols = this.ricbClassCode.Columns;
            LookUpColumnInfo lci = new LookUpColumnInfo("DataCode", "Code", 30);
            lci.Alignment = HorzAlignment.Center;
            cols.Add(lci);
            cols.Add(new LookUpColumnInfo("Description", "Description", 120));
            ricbClassCode.PopupFormWidth = 500;
            #endregion

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
            PH.POPC.BO.POPCDataContext _context = null;
            foreach (var item in this._pods)
            {
                _context = item.POHeader.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                item.CurrentDataContext = _context;
                if (string.IsNullOrEmpty(item.ClassCode))
                {
                    MessageBox.Show(string.Format("Must select a Class Code for Item Code - {0}/{1}!", item.PONO, item.ItemCode), "Warning", MessageBoxButtons.OK);
                    return;
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


        #region Class Code

        private void gridView1_MouseDown(object sender, MouseEventArgs e)
        {
            //if (e.Button == MouseButtons.Right)
            //{
            //    DoShowMenu(this.gridView1.CalcHitInfo(new Point(e.X, e.Y)));
            //}
        }

        private void DoShowMenu(DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi)
        {
            //DevExpress.XtraGrid.Menu.GridViewMenu menu = null;
            popupMenu1.ShowPopup(Control.MousePosition);

            //if (hi.HitTest == DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitTest.RowCell)
            //{
            //     popupMenu1.ShowPopup(Control.MousePosition);
            //}
        }

        private void btnCopyClassCode_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CopySingleColumnData();
        }

        private void CopySingleColumnData()
        {
            int currHandle = gridView1.FocusedRowHandle;

            PH.POPC.BO.PODetail currLot = this.bindingSource1.Current as PH.POPC.BO.PODetail;
            if (currLot == null) return;

            // PH.POPC.BO.PODetail currLot1 = currLot;

            string caption = "Copy Data";
            if (gridView1.SelectedRowsCount <= 1)
                caption = "Modify Data";

            string hint = this.gridView1.FocusedColumn.Caption;
            object defalutValue = "";

            DevExpress.XtraGrid.Columns.GridColumn focusCol = this.gridView1.FocusedColumn;

            bool isColorShade = false;
            TypeCode tc = TypeCode.String;


            #region 判斷當前選中的字段

            #region normal

            //if (focusCol == colClassCode)
            defalutValue = currLot.ClassCode;
            //else if (focusCol == colRoundNo)
            //    defalutValue = currLot.RoundNo;



            #endregion


            #endregion

            #region InputBox

            if (InputBox.Show("ClassCode", caption, hint, null, isColorShade, tc, ref defalutValue))
            {
                DateTime? dt = null;
                string svalue = "";
                double? d = null;
                bool? b = false;

                if (tc == TypeCode.DateTime)
                {
                    if (defalutValue != null)
                        dt = Convert.ToDateTime(defalutValue);
                }
                else if (tc == TypeCode.Double)
                    d = Convert.ToDouble(defalutValue);
                else if (tc == TypeCode.Boolean)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(defalutValue)))
                        b = Convert.ToString(defalutValue) == "Y" || Convert.ToString(defalutValue) == "Cust";
                }
                else
                    svalue = Convert.ToString(defalutValue);

                //this.CreateWaitDialog(caption + "...", "Please waiting");
                this.gridView1.BeginUpdate();
                try
                {
                    for (int i = 0; i < gridView1.SelectedRowsCount; i++)
                    {
                        int j = gridView1.GetSelectedRows()[i];//selected handle
                        if (j >= 0)
                        {
                            #region 判斷選中的格子是否在列

                            //DevExpress.XtraGrid.Columns.GridColumn[] cells = gridView1.GetSelectedCells(j);
                            //bool isIn = false;
                            //foreach (DevExpress.XtraGrid.Columns.GridColumn cell in cells)
                            //{
                            //    if (cell == focusCol)
                            //    {
                            //        isIn = true;
                            //        break;
                            //    }
                            //}
                            //if (!isIn) continue;

                            #endregion

                            currLot = gridView1.GetRow(j) as PH.POPC.BO.PODetail;
                            if (currLot == null) continue;

                            #region Normal text


                            //if (focusCol == colClassCode)
                            //{
                            currLot.ClassCode = svalue;
                            //}

                            #endregion


                            this.gridView1.FocusedRowHandle = j;

                        }
                    }
                }
                finally
                {
                    //ReleaseWaitDialog();
                    this.gridView1.FocusedRowHandle = currHandle;
                    this.gridView1.EndUpdate();
                }

                //this.SaveData();
            }

            #endregion
        }

        #endregion



        //Xsj:add at 20160121 by chandler to auto input class code from current row
        private void sBtn_MatchALL_Click(object sender, EventArgs e)
        {
            if (this.gridView1.PostEditor())
            {
                this.gridView1.UpdateCurrentRow();
            }

            PH.POPC.BO.PODetail currPODetail = this.bindingSource1.Current as PH.POPC.BO.PODetail;
            if (currPODetail == null)
            {
                MessageBox.Show("請選擇數據來源行，其他行的[ClassCode]將自動填充為選擇行的[ClassCode]值！", "請選擇行", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            foreach (PH.POPC.BO.PODetail item in this.bindingSource1.List)
            {
                if (item != currPODetail)
                {
                    item.ClassCode = currPODetail.ClassCode;
                }
            }

            if (this.gridView1.PostEditor())
            {
                this.gridView1.UpdateCurrentRow();
            }

            this.gridView1.RefreshData();
        }
 

    }
}