using System;
using System.Data;
using System.Reflection;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Text;
using PH.SPC.BO;
using DevExpress.XtraBars;
using DevExpress.Utils;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.SPC.UI
{
    public partial class StyleSizeListForm : PH.UI.UI2.ChildListForm
    {
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;

        #region Fields
        private StyleSort _styleSort;
        private BaseList2<StyleSize> _styleSizes;
        private PH.Common.UI.Modules.RepositoryItemPHSpinEdit _riseRWM;
        private VirtualSimpleList _vslColorSize;
        private List<SPC_Size> _sizes;
        private List<SPC_ColorCup> _colorCups;
        //private AppearanceDefault _appStyle1, _appStyle2, _appHeader;
        AppearanceObject _appCell, _appCell_Row0, _appCell_Row1, _appCell_Qty, _appCell_SizeTemp;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;

        private bool _isEdit;
        public bool IsEdit
        {
            get
            {
                return _isEdit;
            }
            set
            {
                _isEdit = value;

                this.gridView1.OptionsBehavior.Editable = _isEdit;
                ToolbarManager.EnableButton("btnEdit", !_isEdit);
                ToolbarManager.EnableButton("btnSave", _isEdit);
            }
        }

        #endregion

        #region Init
        public StyleSizeListForm(StyleSort styleSort)
        {
            InitializeComponent();
            this._styleSort = styleSort;
            InitValue();
            //this.EditorTypeName = typeof(frmStyleSizeEdit).FullName;
            this.gridView1.OptionsView.ShowColumnHeaders = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }
        private void InitStyleSize()
        {
            this._styleSizes = new BaseList2<StyleSize>();
            StyleSize siz;
            foreach (StyleSize s in this._styleSort.StyleSize)
            {
                siz = new StyleSize();
                s.CloneTo(siz);

                this._styleSizes.Add(siz);
            }
        }
        private void InitValue()
        {
            IsEdit = false;
            InitStyleSize();
            CreateSpinEdit();
            CreateUserAppearances();
            InitColorSizeData();
            //this.DataSource = style.StyleSize;
        }
        private void InitializeComponent()
        {
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 8);
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            this.gridControl1.Size = new System.Drawing.Size(511, 310);
            // 
            // gridView1
            // 
            this.gridView1.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.gridView1.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
            this.gridView1.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.gridView1.Appearance.EvenRow.Options.UseBackColor = true;
            this.gridView1.AppearancePrint.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.gridView1.AppearancePrint.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
            this.gridView1.AppearancePrint.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.gridView1.AppearancePrint.EvenRow.Options.UseBackColor = true;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn5,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4});
            this.gridView1.OptionsCustomization.AllowColumnMoving = false;
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsMenu.EnableColumnMenu = false;
            this.gridView1.OptionsMenu.EnableFooterMenu = false;
            this.gridView1.OptionsMenu.EnableGroupPanelMenu = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsPrint.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsPrint.UsePrintStyles = true;
            this.gridView1.OptionsView.AllowCellMerge = true;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
            this.gridView1.FocusedColumnChanged += new DevExpress.XtraGrid.Views.Base.FocusedColumnChangedEventHandler(this.gridView1_FocusedColumnChanged);
            this.gridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.gridView1_CellMerge);
            this.gridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.bgv_CustomDrawCell);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "顔色";
            this.gridColumn1.FieldName = "ColorID";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceCell.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.gridColumn2.AppearanceCell.Options.UseBackColor = true;
            this.gridColumn2.Caption = "尺碼";
            this.gridColumn2.FieldName = "SizeTemp";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 2;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "國際碼";
            this.gridColumn3.FieldName = "SizeWorld";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 3;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "分配數量";
            this.gridColumn4.FieldName = "Qty";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 4;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "杯";
            this.gridColumn5.FieldName = "Cup";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 1;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // StyleSizeListForm
            // 
            this.Name = "StyleSizeListForm";
            this.Padding = new System.Windows.Forms.Padding(0, 8, 0, 0);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion

        #region Event
        private void gridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            if (e.Column.FieldName == "ColorID" || e.Column.FieldName == "Cup")
            {
                GridView view = sender as GridView;
                if (e.RowHandle1 == 0 && e.RowHandle2 == 1)
                {
                    e.Merge = true;
                    e.Handled = true;
                }
                else
                {
                    e.Merge = false;
                    e.Handled = true;
                }
            }
            else
            {
                e.Merge = false;
                e.Handled = true;
            }

        }
        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            GridView view = sender as GridView;
            if (view.FocusedColumn == null) return;

            if (e.FocusedRowHandle == 0 || e.FocusedRowHandle == 1 || !view.FocusedColumn.FieldName.StartsWith("Size_"))
            {
                view.FocusedColumn.ColumnEdit = repositoryItemTextEdit1;
            }
            else
            {
                view.FocusedColumn.ColumnEdit = this._riseRWM;
            }
        }
        private void gridView1_FocusedColumnChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedColumnChangedEventArgs e)
        {
            GridView view = sender as GridView;
            if (e.FocusedColumn == null) return;
            if (view.FocusedRowHandle == 0 || view.FocusedRowHandle == 1 || !e.FocusedColumn.FieldName.StartsWith("Size_"))
            {
                e.FocusedColumn.ColumnEdit = repositoryItemTextEdit1;
            }
            else
            {
                e.FocusedColumn.ColumnEdit = this._riseRWM;
            }
        }

        #endregion

        #region Dynamic Data
        private void CreateSpinEdit()
        {
            _riseRWM = new PH.Common.UI.Modules.RepositoryItemPHSpinEdit();
            _riseRWM.AutoHeight = false;
            _riseRWM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            _riseRWM.Increment = new decimal(new int[] {
              0,
              0,
              0,
              0});
            _riseRWM.Buttons.Clear();
            _riseRWM.IsFloatValue = false;
            //this.repositoryItemMySpinEdit.EditFormat.FormatType = FormatType.Custom;
            //riseRWM.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.Numeric;
            //riseRWM.Mask.EditMask = "#,##0;#,##0";
        }
        private void InitColorSizeData()
        {
            GetDistinctColorCup();
            GetDistinctSize();
            this._vslColorSize = LoadDynamicData(this.gridView1);
        }
        private VirtualSimpleList LoadDynamicData(GridView view)
        {
            view.GridControl.DataSource = null;
            VirtualSimpleList list = CreateSimpleList();

            list.BeginUpdateData();
            try
            {
                CreateGridColumns(view);

                int iRowIndex = 0;

                list.AddNew();
                list.SetRowSpecifyValue(iRowIndex, "ColorID", "顔色");
                list.SetRowSpecifyValue(iRowIndex, "Cup", " 杯");
                list.SetRowSpecifyValue(iRowIndex, "SizeTemp", " 國際碼");
                iRowIndex++;

                list.AddNew();
                list.SetRowSpecifyValue(iRowIndex, "ColorID", "顔色");
                list.SetRowSpecifyValue(iRowIndex, "Cup", " 杯");
                list.SetRowSpecifyValue(iRowIndex, "SizeTemp", " 客方碼");
                iRowIndex++;

                foreach (SPC_Size siz in this._sizes)
                {
                    string fieldname = GetSizeFullFieldName(siz.GUID);
                    list.SetRowSpecifyValue(0, fieldname, siz.SizeIntel);
                    list.SetRowSpecifyValue(1, fieldname, siz.Size);
                }

                foreach (SPC_ColorCup colcup in this._colorCups)
                {
                    list.AddNew();
                    list.SetRowSpecifyValue(iRowIndex, "ColorID", colcup.Color);
                    list.SetRowSpecifyValue(iRowIndex, "Cup", colcup.Cup);
                    iRowIndex++;
                }

                string sSize, sColor, sCup, fieldName;
                foreach (StyleSize ss in this._styleSort.StyleSize)
                {
                    sSize = ss.SizeID;
                    sColor = ss.ColorID;
                    sCup = ss.Cup;
                    iRowIndex = LocateRowIndexOfColorCup(sColor, sCup);

                    //iColumnIndex = LocateColumnIndexOfColor(sColor);
                    fieldName = GetSizeFullFieldName(GetGuidBySize(sSize));
                    object val = ss.Qty == 0 ? null : (object)ss.Qty;
                    list.SetRowSpecifyValue(iRowIndex, fieldName, val);
                }
            }
            finally
            { list.EndUpdateData(); }
            list.ColumnCount = list.ColumnList.Count;

            this.DataSource = null;
            this.DataSource = list;
            return list;
        }
        private VirtualSimpleList CreateSimpleList()
        {
            VirtualSimpleList list = new VirtualSimpleList(this._styleSort);
            list.ZeroIsNull = true;
            list.ColumnList.Add("ColorID;System.String;False");
            list.ColumnList.Add("Cup;System.String;False");
            list.ColumnList.Add("SizeTemp;System.String;True");
            foreach (SPC_Size siz in this._sizes)
            {
                //string fieldName = col.Color;
                string s = GetSizeFullFieldName(siz.GUID) + ";System.String;False";
                list.ColumnList.Add(s);
            }

            //list.ColumnCount = list.ColumnList.Count;

            return list;
        }
        private void GetDistinctColorCup()
        {
            this._colorCups = new List<SPC_ColorCup>();
            SPC_ColorCup colcup;
            foreach (StyleSize ss in this._styleSort.StyleSize)
            {
                colcup = this._colorCups.Find(delegate(SPC_ColorCup stemp)
                {
                    return stemp.Color == ss.ColorID && stemp.Cup == ss.Cup;
                });
                if (colcup != null) continue;

                colcup = new SPC_ColorCup();
                colcup.Color = ss.ColorID;
                colcup.Cup = ss.Cup;
                this._colorCups.Add(colcup);
            }
        }
        private void GetDistinctSize()
        {
            this._sizes = new List<SPC_Size>();
            SPC_Size siz;
            foreach (StyleSize ss in this._styleSort.StyleSize)
            {
                siz = this._sizes.Find(delegate(SPC_Size stemp)
                {
                    return stemp.Size == ss.SizeID;
                });
                if (siz != null) continue;

                siz = new SPC_Size();
                siz.Size = ss.SizeID;
                siz.SizeIntel = ss.SizeWorld;
                this._sizes.Add(siz);
            }
            for (int i = this._sizes.Count; i < 30; i++)
            {
                siz = new SPC_Size();
                siz.Size = "";
                siz.SizeIntel = "";
                this._sizes.Add(siz);
            }
        }
        private string GetSizeFullFieldName(Guid guid)
        {
            return string.Format("Size_{0}", guid);
        }
        private Guid GetGuidBySize(string size)
        {
            SPC_Size siz = this._sizes.Find(delegate(SPC_Size stemp)
            {
                return size == stemp.Size;
            });
            if (siz != null) return siz.GUID;
            return Guid.Empty;
        }
        private int LocateRowIndexOfColorCup(string color, string cup)
        {
            int index = 2;
            foreach (SPC_ColorCup colcup in this._colorCups)
            {
                if (colcup.Color == color && colcup.Cup == cup) return index;
                index++;
            }
            return -1;
        }

        #endregion

        #region Columns
        private void CreateGridColumns(GridView view)
        {
            view.Columns.Clear();
            GridColumn gc;
            gc = CreateGridColumn(view, "ColorID", null);
            gc.Width = 70;
            gc.Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;

            gc = CreateGridColumn(view, "Cup", null);
            gc.Width = 70;
            gc.Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;

            //gc.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
            //gc.OptionsColumn.AllowEdit = false;
            gc = CreateGridColumn(view, "SizeTemp", null);
            gc.OptionsColumn.AllowEdit = false;
            gc.Width = 70;
            gc.Fixed = DevExpress.XtraGrid.Columns.FixedStyle.Left;
            //gc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            //gc.AppearanceCell.BackColor = System.Drawing.Color.LightSkyBlue;
            //gc.AppearanceCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
            //gc.AppearanceCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;

            foreach (SPC_Size siz in this._sizes)
            {
                gc = CreateGridColumn(view, GetSizeFullFieldName(siz.GUID), siz.GUID);
                gc.Width = 70;
                //gc.ColumnEdit = this._riseRWM;
            }

            //view.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
        }
        private GridColumn CreateGridColumn(GridView view, string sFieldName, object guid)
        {
            GridColumn gc = new GridColumn();
            view.Columns.Add(gc);
            //bgc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            gc.FieldName = sFieldName;
            //if (sCaption == null || sCaption == "") gc.Caption = "";
            //else gc.Caption = sCaption;
            gc.Tag = guid;
            //gb.Columns.Add(gc);
            //bgc.AppearanceCell.TextOptions.VAlignment = VertAlignment.Center;
            gc.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 8F, System.Drawing.FontStyle.Regular);
            //bgc.OwnerBand = gb;
            gc.Visible = true;
            return gc;
        }
        #endregion

        #region Appearance
        private bool IsXPStyle
        {
            get
            {
                return "Office2003WindowsXP".IndexOf(this.gridControl1.LookAndFeel.ActiveStyle.ToString()) != -1 && this.gridView1.PaintStyleName == "Default";
            }
        }
        private void CreateUserAppearances()
        {
            //_appStyle1 = new AppearanceDefault(SystemColors.ActiveCaptionText, SystemColors.ActiveCaption, DevExpress.Utils.HorzAlignment.Center, DevExpress.Utils.VertAlignment.Default, AppearanceObject.DefaultFont);
            //_appStyle2 = new AppearanceDefault(Color.Red, /*SystemColors.Highlight,*/ SystemColors.Control, DevExpress.Utils.HorzAlignment.Center, DevExpress.Utils.VertAlignment.Default, new Font(AppearanceObject.DefaultFont, FontStyle.Bold));
            //_appHeader = new AppearanceDefault(SystemColors.WindowText, SystemColors.Control, DevExpress.Utils.HorzAlignment.Center, DevExpress.Utils.VertAlignment.Default, AppearanceObject.DefaultFont);
            //_appStyle1.BorderColor = _appStyle1.BackColor;
            //_appStyle2.BorderColor = _appStyle2.BackColor;
            //_appHeader.BorderColor = _appHeader.BackColor;

            _appCell = new AppearanceObject();
            _appCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            _appCell.BackColor = System.Drawing.Color.LightSkyBlue;
            _appCell.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
            _appCell.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            _appCell.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);

            _appCell_Row0 = new AppearanceObject();
            _appCell_Row0.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            _appCell_Row0.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);

            _appCell_Row1 = new AppearanceObject();
            _appCell_Row1.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            _appCell_Row1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(224)), ((System.Byte)(192)));
            _appCell_Row1.BackColor2 = System.Drawing.Color.FloralWhite;
            _appCell_Row1.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            _appCell_Row1.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);

            _appCell_Qty = new AppearanceObject();
            _appCell_Qty.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;

            _appCell_SizeTemp = new AppearanceObject();
            _appCell_SizeTemp.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
        }

        //private void bgv_CustomDrawRowIndicator(object sender, DevExpress.XtraGrid.Views.Grid.RowIndicatorCustomDrawEventArgs e)
        //{
        //    DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view = sender as DevExpress.XtraGrid.Views.BandedGrid.BandedGridView;
        //    int rowIndex = e.RowHandle;
        //    if (rowIndex >= 0)
        //    {
        //        if (this._Sizes != null && rowIndex < this._Sizes.Count)
        //            e.Info.DisplayText = this._Sizes[rowIndex].Size;
        //    }
        //    if (e.RowHandle == view.FocusedRowHandle)
        //    {
        //        AppearanceHelper.Apply(e.Appearance, IsXPStyle ? _appStyle1 : _appStyle2);
        //    }
        //    e.Info.ImageIndex = -1;

        //}
        //private void bgv_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        //{
        //    BandedGridView view = sender as BandedGridView;
        //    if (e.Column == view.FocusedColumn)
        //    {
        //        AppearanceHelper.Apply(e.Appearance, IsXPStyle ? _appStyle1 : _appStyle2);
        //    }
        //    else AppearanceHelper.Apply(e.Appearance, _appHeader);
        //}
        private void bgv_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            GridView view = sender as GridView;
            if (e.Column.FieldName == "ColorID" || e.Column.FieldName == "Cup" || e.Column.FieldName == "SizeTemp")
            {
                if (e.RowHandle == 0 || e.RowHandle == 1)
                    AppearanceHelper.Apply(e.Appearance, _appCell);
                else if (e.Column.FieldName == "SizeTemp")
                    AppearanceHelper.Apply(e.Appearance, _appCell_SizeTemp);
            }
            else if (e.RowHandle == 0)
            {
                AppearanceHelper.Apply(e.Appearance, _appCell_Row0);
            }
            else if (e.RowHandle == 1)
            {
                AppearanceHelper.Apply(e.Appearance, _appCell_Row1);
            }
            else if (e.Column.FieldName.StartsWith("Size_"))
            {
                AppearanceHelper.Apply(e.Appearance, _appCell_Qty);
            }
        }

        #endregion

        #region toolbar
        public override void FillToolbar()
        {
            base.FillToolbar();
            Image img;

            ToolbarManager.RemoveButton("Open");
            img = DevExpress.Utils.Controls.ImageHelper.CreateBitmapFromResources("PH.SPC.UI.Images.edit.png",
               typeof(StyleSizeListForm).Assembly);
            ToolbarManager.AddButton("btnEdit", "Edit", img, "Edit", new DevExpress.XtraBars.ItemClickEventHandler(EditColorSizeEvent), true);
            img = DevExpress.Utils.Controls.ImageHelper.CreateBitmapFromResources("PH.SPC.UI.Images.ok.png",
               typeof(StyleSizeListForm).Assembly);
            ToolbarManager.AddButton("btnSave", "OK", img, "OK", new DevExpress.XtraBars.ItemClickEventHandler(SaveColorSizeEvent));
            IsEdit = this._isEdit;
        }
        public override void ClearToolbar()
        {
            base.ClearToolbar();
            ToolbarManager.RemoveButton("btnEdit");
            ToolbarManager.RemoveButton("btnSave");
        }
        protected override void AddNew()
        {
            //this.gridView1.OptionsBehavior.Editable = true;
            base.AddNew();
            //ToolbarManager.EnableButton("btnEdit", false);
            //ToolbarManager.EnableButton("btnSave", true);
            IsEdit = true;
        }
        private void SaveColorSizeEvent(object sender, ItemClickEventArgs e)
        {
            PH.Common.UI.Grid.PostGridValue(this.gridView1);
            IsEdit = false;

            this._styleSort.StyleSize.Clear();
            StyleSize styleSize;

            //this._sizes
            List<StyleSize> colorSizes = new List<StyleSize>();
            string fieldname, color, cup, custsize, intelsize;
            object val;
            Guid guid;
            for (int iRow = 2; iRow < this._vslColorSize.RecordCount; iRow++)
            {
                color = Convert.ToString(this._vslColorSize.GetRowValue(iRow, "ColorID")).Trim();
                if (string.IsNullOrEmpty(color)) continue;
                cup = Convert.ToString(this._vslColorSize.GetRowValue(iRow, "Cup")).Trim();

                for (int i = 0; i < this._vslColorSize.ColumnCount; i++)
                {
                    VirtualPropertyDescriptorSimple vpd = (VirtualPropertyDescriptorSimple)this._vslColorSize.ColumnCollection[i];
                    fieldname = vpd.Name;
                    if (fieldname == "ColorID" || fieldname == "Cup" || fieldname == "SizeTemp") continue;

                    intelsize = Convert.ToString(this._vslColorSize.GetRowValue(0, fieldname)).Trim();
                    custsize = Convert.ToString(this._vslColorSize.GetRowValue(1, fieldname)).Trim();
                    if (string.IsNullOrEmpty(custsize)) continue;

                    val = this._vslColorSize.GetRowValue(iRow, fieldname);
                    if (val == null) continue;

                    int qty = Convert.ToInt32(val);
                    if (qty == 0) continue;

                    string s = fieldname.Substring(5);//"Size_"
                    guid = new Guid(s);

                    styleSize = new StyleSize();
                    //styleSize.Style = this._style;
                    styleSize.GUID = guid;
                    styleSize.ColorID = color;
                    styleSize.Cup = cup;
                    styleSize.SizeID = custsize;
                    styleSize.SizeWorld = intelsize;
                    styleSize.Qty = qty;

                    this._styleSort.StyleSize.Add(styleSize);
                }
            }

        }
        private void EditColorSizeEvent(object sender, ItemClickEventArgs e)
        {
            IsEdit = true;
        }
        #endregion
    }
}
