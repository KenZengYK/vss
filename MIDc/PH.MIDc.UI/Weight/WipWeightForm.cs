using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.MIDc.UI
{
    public partial class WipWeightForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public WipWeightForm()
        {
            InitializeComponent();
            InitData();
        }

        private VirtualWeightList _weightDataList;
        private GridBand _styleBand;
        private WeightList _wlist;

        private int _maxMaterialSeq
        {
            get
            {
                int seq = 0;
                for (int i = 0; i < _weightDataList.RecordCount; i++)
                {
                    int seq1 = Convert.ToInt32(_weightDataList.GetRowValue(i, "MaterialSeq"));
                    seq = Math.Max(seq, seq1);
                }
                return seq;
            }
        }
        private int _maxStyleSeq
        {
            get
            {
                int seq = 0;
                foreach (VirtualPropertyDescriptorSimple p in _weightDataList.ColumnCollection)
                {
                    if (!p.Name.StartsWith("Style_")) continue;
                    seq = Math.Max(seq, p.Seq);
                }
                return seq;
            }
        }

        #region Init

        private void InitData()
        {
            string uid = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            this.btnDeleteMaterial.Visibility = this.btnDeleteStyle.Visibility = (uid == "Peter") ? DevExpress.XtraBars.BarItemVisibility.Always : DevExpress.XtraBars.BarItemVisibility.Never;

            _wlist = new WeightList();

            this.gvWeight.BeginDataUpdate();
            try
            {
                this.bindingSource1.DataSource = null;
                _weightDataList = CreateSourceDataList();
                this.bindingSource1.DataSource = _weightDataList;
                CreateGridColumns();

                this.gcWeight.DataSource = this.bindingSource1;
            }
            finally
            {
                this.gvWeight.EndDataUpdate();
            }
        }

        private VirtualWeightList CreateSourceDataList()
        {
            List<WeightMaterial> materials = _wlist.GetWeightMaterials().ToList<WeightMaterial>();
            List<WeightStyle> styles = _wlist.GetWeightStyles().ToList<WeightStyle>();
            List<WipWeight> weights = _wlist.GetWipWeights().ToList<WipWeight>();

            VirtualWeightList list = new VirtualWeightList("WipWeight");
            list.ZeroIsNull = true;

            List<PropertyDescriptor> props = new List<PropertyDescriptor>();
            int index = 0;
            VirtualPropertyDescriptorSimple sp;

            #region Fields

            sp = new VirtualPropertyDescriptorSimple(list, index, "MaterialSeq", typeof(System.Int32), false);
            props.Add(sp);
            index++;

            sp = new VirtualPropertyDescriptorSimple(list, index, "MaterialName", typeof(System.Int32), false);
            props.Add(sp);
            index++;

            sp = new VirtualPropertyDescriptorSimple(list, index, "MaterialHSCode", typeof(System.Int32), false);
            props.Add(sp);
            index++;

            //list.ColumnList.Add(string.Format("{0};{1};False", "MaterialSeq", typeof(System.Int32).FullName));
            //list.ColumnList.Add(string.Format("{0};{1};False", "MaterialName", typeof(System.String).FullName));
            //list.ColumnList.Add(string.Format("{0};{1};False", "MaterialHSCode", typeof(System.String).FullName));

            foreach (var s in styles)
            {
                sp = new VirtualPropertyDescriptorSimple(list, index, string.Format("Style_{0}", s.Seq), typeof(System.Decimal), false, true, s.Seq ?? 0, s.StyleName, s.StyleHSCode);
                props.Add(sp);
                index++;

                // list.ColumnList.Add(string.Format("Style_{0};{1};False", s.Seq, typeof(System.Decimal).FullName));
            }
            //list.ColumnCount = list.ColumnList.Count;-- cannot use this code
            list.ColumnCollection = new PropertyDescriptorCollection(props.ToArray());

            #endregion

            #region Load data

            int iRowIndex = 0;
            foreach (var m in materials)
            {
                list.AddNew();

                list.SetRowSpecifyValue(iRowIndex, "MaterialSeq", m.Seq);
                list.SetRowSpecifyValue(iRowIndex, "MaterialName", m.MaterialName);
                list.SetRowSpecifyValue(iRowIndex, "MaterialHSCode", m.MaterialHSCode);


                foreach (VirtualPropertyDescriptorSimple p in list.ColumnCollection)
                {
                    if (!p.Name.StartsWith("Style_")) continue;
                    WipWeight ww = GetWeightValue(weights, p, m);
                    if (ww != null)
                        list.SetRowSpecifyValue(iRowIndex, p.Name, ww.Weight);
                }
                iRowIndex++;
            }

            //list.ColumnCount = list.ColumnList.Count; -- cannot use this code
            list.Post();
            #endregion

            return list;
        }
        private WipWeight GetWeightValue(List<WipWeight> weights, VirtualPropertyDescriptorSimple p, WeightMaterial m)
        {
            WipWeight ww = weights.Find(delegate(WipWeight w1)
            {
                return w1.StyleName == p.StyleName && w1.MaterialName == m.MaterialName;
            });
            return ww;
        }

        private void CreateGridColumns()
        {
            GridBand gb;
            BandedGridColumn bgc;
            BandedGridView view = this.gvWeight;
            view.ColumnPanelRowHeight = 50;

            this.gvWeight.Columns.Clear();
            this.gvWeight.Bands.Clear();

            //material
            gb = this.CreateBand(view, "Material");
            bgc = CreateBandGridColumn(view, gb, " ", "MaterialSeq", DevExpress.Utils.HorzAlignment.Center, DevExpress.Utils.VertAlignment.Center, true, 30); SetBackgroundcolor(bgc);
            bgc = CreateBandGridColumn(view, gb, "Name", "MaterialName", DevExpress.Utils.HorzAlignment.Near, DevExpress.Utils.VertAlignment.Center, true, 100); SetBackgroundcolor(bgc);
            bgc = CreateBandGridColumn(view, gb, "HS Code", "MaterialHSCode", DevExpress.Utils.HorzAlignment.Near, DevExpress.Utils.VertAlignment.Center, true, 85); SetBackgroundcolor(bgc);
            gb.Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;

            gb = this.CreateBand(view, "Style Weight (KG/PC)");
            this._styleBand = gb;
            foreach (VirtualPropertyDescriptorSimple p in _weightDataList.ColumnCollection)
            {
                if (!p.Name.StartsWith("Style_")) continue;
                string caption = string.Format("{0}.\r\n{1}", p.Seq, p.StyleName);

                bgc = CreateBandGridColumn(view, gb, caption, p.Name, DevExpress.Utils.HorzAlignment.Far, DevExpress.Utils.VertAlignment.Top, false, 80);

            }

            view.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            view.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
        }

        #region band
        private GridBand CreateBand(BandedGridView bgv, string caption)
        {
            GridBand gb = new GridBand();
            bgv.Bands.Add(gb);
            gb.Caption = caption;
            gb.OptionsBand.AllowMove = false;
            gb.OptionsBand.AllowSize = false;
            return gb;
        }
        private BandedGridColumn CreateBandGridColumn(BandedGridView bgv, GridBand gb, string caption, string fieldName, DevExpress.Utils.HorzAlignment ha, DevExpress.Utils.VertAlignment va, bool readOnly, int width)
        {
            //string sReadOnly = readOnly ? "True" : "False";
            //fSCJDList.ColumnList.Add(sFieldName + ";" + sType + ";" + sReadOnly);

            BandedGridColumn bgc = new BandedGridColumn();
            bgv.Columns.Add(bgc);
            //bgc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            //string aCaption = sCaption;
            //if (bWrap)
            //{
            //    aCaption = "";
            //    foreach (char c in sCaption.ToCharArray())
            //    {
            //        aCaption += c + "\n";
            //    }
            //    aCaption.Trim();
            //}
            bgc.Caption = caption;
            bgc.FieldName = fieldName;
            bgc.OptionsColumn.AllowEdit = !readOnly;
            if (width != 0) bgc.Width = width;

            bgc.AppearanceCell.TextOptions.HAlignment = ha;

            bgc.AppearanceHeader.TextOptions.VAlignment = va;
            bgc.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            //bgc.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 8F, System.Drawing.FontStyle.Regular);
            //bgc.OwnerBand = gb;
            gb.Columns.Add(bgc);
            bgc.Visible = true;
            return bgc;
        }
        private void SetBackgroundcolor(BandedGridColumn col)
        {
            col.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
            col.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
            col.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
        }
        #endregion

        #endregion

        #region Action Weight

        private void gvWeight_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {
            DevExpress.XtraGrid.Columns.GridColumn col = this.gvWeight.FocusedColumn;
            if (col == null) return;

            e.Appearance.ForeColor = (col == e.Column) ? System.Drawing.Color.Red : System.Drawing.Color.Black;

        }

        private void btnAddMaterial_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionMaterial(WeightAction.Add);
        }
        private void btnEditMaterial_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionMaterial(WeightAction.Modify);
        }
        private void btnDeleteMaterial_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionMaterial(WeightAction.Remove);
        }


        private void btnAddStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionStyle(WeightAction.Add);
        }
        private void btnEditStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionStyle(WeightAction.Modify);
        }
        private void btnDeleteStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionStyle(WeightAction.Remove);
        }

        private void btnSave_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SaveWeight();
        }
        private void btnRefresh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RefreshData();
        }

        private void ActionMaterial(WeightAction action)
        {
            string tip = action.ToString();
            int seq = 0;
            string mName = "";
            string hscode = "";

            switch (action)
            {
                case WeightAction.Add:
                    seq = this._maxMaterialSeq + 1;
                    mName = "";
                    hscode = "";
                    break;
                case WeightAction.Modify:
                case WeightAction.Remove:
                    seq = Convert.ToInt32(this.gvWeight.GetFocusedRowCellValue("MaterialSeq"));
                    mName = Convert.ToString(this.gvWeight.GetFocusedRowCellValue("MaterialName"));
                    hscode = Convert.ToString(this.gvWeight.GetFocusedRowCellValue("MaterialHSCode"));
                    break;
                default:
                    break;
            }
            ModifyWeightForm frm = new ModifyWeightForm(action, "Material", seq, mName, hscode);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string mNameNew = frm.TName;
                string hscodeNew = frm.HSCode;

                if (!_wlist.ActionWeightColumn(false, action, seq, mNameNew, hscodeNew))
                {
                    MessageBox.Show(tip + " Material fail!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                int iRowIndex;
                switch (action)
                {
                    case WeightAction.Add:
                        iRowIndex = _weightDataList.RecordCount;
                        _weightDataList.AddNew();

                        _weightDataList.SetRowSpecifyValue(iRowIndex, "MaterialSeq", seq);
                        _weightDataList.SetRowSpecifyValue(iRowIndex, "MaterialName", mNameNew);
                        _weightDataList.SetRowSpecifyValue(iRowIndex, "MaterialHSCode", hscodeNew);

                        _weightDataList.Post();

                        this.gvWeight.FocusedRowHandle = iRowIndex;

                        break;
                    case WeightAction.Modify:
                        iRowIndex = _weightDataList.GetRowIndexByValue("MaterialSeq", seq);
                        if (iRowIndex == -1) return;

                        _weightDataList.SetRowSpecifyValue(iRowIndex, "MaterialName", mNameNew);
                        _weightDataList.SetRowSpecifyValue(iRowIndex, "MaterialHSCode", hscodeNew);

                        _weightDataList.Post();
                        break;
                    case WeightAction.Remove:
                        iRowIndex = _weightDataList.GetRowIndexByValue("MaterialSeq", seq);
                        if (iRowIndex == -1) return;
                        _weightDataList.RemoveValuesByRow(iRowIndex);
                        //this.bindingSource1.ResetCurrentItem();
                        this.gvWeight.RefreshData();
                        break;
                    default:
                        break;
                }

            }
        }
        private void ActionStyle(WeightAction action)
        {

            string tip = action.ToString();
            int seq = 0;
            string mName = "";
            string hscode = "";
            VirtualPropertyDescriptorSimple sp;

            switch (action)
            {
                case WeightAction.Add:
                    seq = this._maxStyleSeq + 1;
                    mName = "";
                    hscode = "";
                    break;
                case WeightAction.Modify:
                case WeightAction.Remove:

                    DevExpress.XtraGrid.Columns.GridColumn col = this.gvWeight.FocusedColumn;
                    if (col == null) return;
                    if (!col.FieldName.StartsWith("Style_")) return;

                    sp = this._weightDataList.ColumnCollection[col.FieldName] as VirtualPropertyDescriptorSimple;
                    seq = sp.Seq;
                    mName = sp.StyleName;
                    hscode = sp.StyleHSCode;
                    break;
                default:
                    break;
            }

            ModifyWeightForm frm = new ModifyWeightForm(action, "Style", seq, mName, hscode);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string mNameNew = frm.TName;
                string hscodeNew = frm.HSCode;

                string fieldName = string.Format("Style_{0}", seq);

                if (!_wlist.ActionWeightColumn(true, action, seq, mNameNew, hscodeNew))
                {
                    MessageBox.Show(tip + " Style fail!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                switch (action)
                {
                    case WeightAction.Add:
                        sp = new VirtualPropertyDescriptorSimple(_weightDataList, _weightDataList.ColumnCount, fieldName, typeof(System.Decimal), false, true, seq, mNameNew, hscodeNew);
                        _weightDataList.AddColumn(sp);

                        //add grid column
                        string caption = string.Format("{0}.\r\n{1}", seq, mNameNew);
                        BandedGridColumn bgc = CreateBandGridColumn(this.gvWeight, this._styleBand, caption, fieldName, DevExpress.Utils.HorzAlignment.Far, DevExpress.Utils.VertAlignment.Top, false, 80);

                        _weightDataList.Post();

                        this.gvWeight.FocusedColumn = bgc;

                        break;
                    case WeightAction.Modify:
                        sp = this._weightDataList.ColumnCollection[fieldName] as VirtualPropertyDescriptorSimple;
                        sp.StyleName = mNameNew;
                        sp.StyleHSCode = hscodeNew;

                        DevExpress.XtraGrid.Columns.GridColumn col = this.gvWeight.FocusedColumn;
                        col.Caption = string.Format("{0}.\r\n{1}", seq, mNameNew);

                        break;
                    case WeightAction.Remove:
                        this._weightDataList.RemoveColumn(fieldName);
                        DevExpress.XtraGrid.Columns.GridColumn col1 = this.gvWeight.FocusedColumn;
                        this.gvWeight.Columns.Remove(col1);
                        col1.Dispose();

                        break;
                    default:
                        break;
                }

            }
        }
        private void SaveWeight()
        {
            if (!_weightDataList.IsModify) return;

            this.gvWeight.PostEditor();
            this.gvWeight.UpdateCurrentRow();

            if (_wlist.RemoveAllWipWeights() && _wlist.SaveWipWeights(this._weightDataList))
            {
                MessageBox.Show("Save Weight success!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                _weightDataList.Post();
            }
            else
                MessageBox.Show("Save Weight fail!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

        }
        private void RefreshData()
        {
            InitData();
        }

        #endregion

        #region Report

        private void btnStyleQtyReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StyleQtyReport();
        }
        private void btnMaterialWeightReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MaterialWeightReport();
        }
        private void btnStyleMaterialReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            StyleMaterialWeightReport();
        }

        private void StyleQtyReport()
        {
            PrintPreview(true);
        }
        private void MaterialWeightReport()
        {
            PrintPreview(false);
        }
        private void StyleMaterialWeightReport()
        {
        }
        private void PrintPreview(bool isStyle)
        {
            Weight.WipWeightReportForm frm = new PH.MIDc.UI.Weight.WipWeightReportForm(isStyle);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.MIDc.BackEnd.dll";　//當前dll全名
                data.ClassFullName = typeof(PH.MIDc.BackEnd.JobWipWeightReport).FullName;//報表全名
                data.JobName = string.Format("Wip Weight Report");//JOB名稱 
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.Parameter = frm.Param;
                data.RunServer = "SL";
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            }

        }

        #endregion




    }
}
