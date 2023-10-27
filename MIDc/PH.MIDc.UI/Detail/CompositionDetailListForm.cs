using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using DevExpress.XtraEditors.Controls;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using DevExpress.XtraGrid;

namespace PH.MIDc.UI
{
    public partial class CompositionDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private RepositoryItemPHSpinEdit _riseRWM;


        public CompositionDetailListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            //this.Load += new EventHandler(CompositionDetailListForm_Load);

            //CreateSpinEdit();

            //Controller.SetColumnPHSpinEdit(objListGridView, "Per", _riseRWM);
            //Controller.DisableSpinEditScrollings(this);
        }

        protected override void AddNewObject()
        {
            base.AddNewObject();
            PH.MIDc.BO.Detail d = (this.ParentForm as DetailDetailForm).BindingSource.Current as PH.MIDc.BO.Detail;
            if (d == null) return;
            PH.MIDc.BO.CompositionDetail cd = this.BindingSource.Current as PH.MIDc.BO.CompositionDetail;
            if (cd != null)
                cd.Detail = d;

        }

        public override void DataBind()
        {
            base.DataBind();

            this.Load += new EventHandler(CompositionDetailListForm_Load);

            CreateSpinEdit();

            Controller.SetColumnPHSpinEdit(objListGridView, "Per", _riseRWM);
            Controller.DisableSpinEditScrollings(this);

            this.AllowGridEdit = true;
            ////this.AllowKeyPress = true;

            PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();

            //Composition
            this.repositoryItemLookUpEdit1.DataSource = from dictionaryData in context.Misc_DataDictionaries
                                                        where dictionaryData.DataType == "PH.MIDc.Composition"
                                                        select dictionaryData;

            this.repositoryItemLookUpEdit1.Properties.DisplayMember = "DataCode";
            this.repositoryItemLookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.repositoryItemLookUpEdit1.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Composition", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

        }

        public void BandData(Detail _midcDetail, MIDcDataContext context)
        {
            this.DataContext = context;
            this.BindingSource.DataSource = from c in context.CompositionDetails
                                            where c.SuppRef == _midcDetail.SuppRef
                                            select c;
        }

        private void CreateSpinEdit()
        {
            _riseRWM = new RepositoryItemPHSpinEdit();
            //this.gcCMYS.RepositoryItems.Add(riseRWM);
            _riseRWM.AutoHeight = false;
            _riseRWM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            _riseRWM.Increment = new decimal(new int[] {
              0,
              0,
              0,
              0});
            _riseRWM.Buttons.Clear();
            _riseRWM.IsFloatValue = true;
            //this.repositoryItemMySpinEdit.EditFormat.FormatType = FormatType.Custom;
            _riseRWM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            _riseRWM.DisplayFormat.FormatString = "#,##0.####";

        }

        private void SelectSpecialLabelOfComposition()
        {
            PH.MIDc.BO.CompositionDetail cd = this.BindingSource.Current as PH.MIDc.BO.CompositionDetail;
            if (cd == null) return;

            MIDcDataContext context = this.DataContext as MIDcDataContext;
            var aa = from a in context.SpecialLabels
                     where a.Group == cd.Composition
                     select a;

            List<PH.MIDc.BO.SpecialLabel> objs = aa.ToList<PH.MIDc.BO.SpecialLabel>();
            if (objs == null || objs.Count == 0) return;

            BindingSource bs = new BindingSource();
            bs.DataSource = objs;

            List<ColumnSetting> columnSettings = new List<ColumnSetting>();
            ColumnSetting colset = new ColumnSetting();
            colset.FieldName = "SpecialLabel1";
            colset.Caption = "Special Label";
            colset.Width = 200;
            colset.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
            columnSettings.Add(colset);

            colset = new ColumnSetting();
            colset.FieldName = "Description";
            colset.Caption = "Description";
            colset.Width = 120;
            columnSettings.Add(colset);

            frmSelectData frm = new frmSelectData(bs, "Select Special Terms", columnSettings);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                if (frm.bingdingSource == null) return;
                PH.MIDc.BO.SpecialLabel obj = bs.Current as PH.MIDc.BO.SpecialLabel;
                if (obj == null)
                    return;

                int rowhandle = this.objListGridView.FocusedRowHandle;
                cd.SpecialTerms = obj.SpecialLabel1;
                //this._bindingSourceList["Compositions"].ResetCurrentItem();
                this.objListGridControl.RefreshDataSource();
                this.objListGridView.FocusedRowHandle = rowhandle;
            }

        }

        private void CompositionDetailListForm_Load(object sender, EventArgs e)
        {




        }


        private void repositoryItemButtonEdit1_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            SelectSpecialLabelOfComposition();
        }

        private void barBtnUpdate_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //MessageBox.Show("Update");
            Detail d = (this.ParentForm as DetailDetailForm).BindingSource.Current as Detail;

            if (d == null || string.IsNullOrEmpty(d.SuppRef) || string.IsNullOrEmpty(d.HsCode))
            {
                return;
            }

            MIDcDataContext db = this.DataContext as MIDcDataContext;


            string[] ElementNos = new string[] { "000001", "000037", "000022" }; //000037纖維成份、000022(聚酯等)的取法與成份含量的取法一樣


            var lists = db.CustomMaterialDeclares.Where(p =>
                p.SuppRef == d.SuppRef && p.MidcHSCode == d.HsCode && ElementNos.Contains(p.ElementNo));

            if (lists.Count() == 0)
            {
                MessageBox.Show("No composition update", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Are you update custom declare element?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.SaveData();

                foreach (var obj in lists)
                {
                    //obj.Remark = GetCompositionRemark(d);
                    obj.Remark = d.GetCustomDeclareCompositionRemark();
                    obj.Save();
                }
                db.SubmitChanges();
                MessageBox.Show("Update Successed", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {

            //GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;

            //if (item.FieldName == "Per" && e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            //{
            //   // e.TotalValue = this.GetAVGWeight();

            //    string aa = e.TotalValue.ToString();
            //}

        }

        private void objListGridView_CustomDrawFooterCell(object sender, DevExpress.XtraGrid.Views.Grid.FooterCellCustomDrawEventArgs e)
        {
            switch (e.Column.Name)
            {
                case "gridColumn_Per":
                    if (e.Info != null && e.Info.Value != null && (e.Info.Value.ToString() == "100.0000" || e.Info.Value.ToString() == "0.0000"))
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Black;
                    }
                    else
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;
                default:
                    break;
            }
        }

        private void btnClearPercentZeroValue_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Delete all composition with percentage equal to 0?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                var CompositionList = (this.BindingSource.DataSource as IEnumerable<CompositionDetail>).Where((p => (p.Per ?? 0) == 0)).ToList();
                foreach (var obj in CompositionList)
                {
                    this.BindingSource.Remove(obj);
                }
                DataContext.SubmitChanges();
            }
        }

        //string GetCompositionRemark(Detail ADetail)
        //{
        //    string Str = "";
        //    var lists = ADetail.CompositionDetails.Where(p => p.Per > 0);
        //    foreach (var c in lists)
        //    {
        //        Str += c.ChineseName + "/" + Math.Round(c.Per ?? 0, 2).ToString() + "% ";
        //    }

        //    return Str.Trim();
        //}

    }
}
