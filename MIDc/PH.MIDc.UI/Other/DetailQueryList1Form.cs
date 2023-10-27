using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.MIDc.BO;
using System.Reflection;
using PH.BasicInfo.BO;
using DevExpress.XtraGrid.Views.Grid;
using PH.Platform.Common;

namespace PH.MIDc.UI
{
    public partial class DetailQueryListForm1 : DetailListForm
    {
        private PH.MIDc.BO.MIDcDataContext _context;
        private List<Detail> Details;
        private bool IsHaveSave = false;//是否需要

        public DetailQueryListForm1()
        {
            InitializeComponent();
            Details = new List<Detail>();
        }

        private void SelectData()
        {
            string suppref = editSuppRef.Text;
            string supprefTemp = suppref.StartsWith("%") ? suppref.Substring(1, suppref.Length - 1) : suppref;
            supprefTemp = supprefTemp.EndsWith("%") ? supprefTemp.Substring(0, supprefTemp.Length - 1) : supprefTemp;

            string materialType = editMaterialType.Text;
            string materialCode = editMaterialCode.Text;
            string sampleOrder = this.editSampleOrder.Text;
            string supp = this.editSupplier.Text;
            string status = this.editStatus.Text;
            int midStatus = this.editMIDStatus.SelectedIndex;
            DateTime bdt = this.editCreateDateFrom.DateTime;
            DateTime edt = this.editCreateDateTo.DateTime;
            if (bdt == DateTime.MinValue) bdt = edt;
            if (edt == DateTime.MinValue) edt = bdt;

            this.DataContext = _context;
            //var objs = from detail in _context.Details
            //                  where (string.IsNullOrEmpty(suppref) || detail.SuppRef.StartsWith(suppref))
            //                  && (string.IsNullOrEmpty(materialType) || detail.MaterialType == materialType)
            //                  && (string.IsNullOrEmpty(materialCode) || detail.MaterialCode.StartsWith(materialCode))
            //                  && (string.IsNullOrEmpty(sampleOrder) || detail.SampleOrder == sampleOrder)
            //                  && (string.IsNullOrEmpty(supp) || detail.Supplier == supp)
            //                  && (string.IsNullOrEmpty(status) || detail.Status == status)
            //                  && (bdt == DateTime.MinValue || (detail.CreateDate >= bdt && detail.CreateDate <= edt))
            //                  select detail;
            var objs = from detail in _context.Details
                       where (string.IsNullOrEmpty(suppref)
                                  || (suppref.StartsWith("%") && suppref.EndsWith("%") && detail.SuppRef.IndexOf(supprefTemp)>-1)
                                  || (suppref.StartsWith("%") && detail.SuppRef.EndsWith(supprefTemp))
                                  || (suppref.EndsWith("%") && detail.SuppRef.StartsWith(supprefTemp))
                                  || (detail.SuppRef == suppref))
                              && (string.IsNullOrEmpty(materialType) || detail.MaterialType == materialType)
                              && (string.IsNullOrEmpty(materialCode) || (IsEndWith(materialCode) ? detail.SuppRef.StartsWith(strOption(materialCode)) : detail.MaterialCode == materialCode))//(string.IsNullOrEmpty(materialCode) || detail.MaterialCode.StartsWith(materialCode))
                              && (string.IsNullOrEmpty(sampleOrder) || detail.SampleOrder == sampleOrder)
                              && (string.IsNullOrEmpty(supp) || detail.Supplier == supp)
                              && (string.IsNullOrEmpty(status) || detail.Status == status)
                              && (bdt == DateTime.MinValue || (detail.CreateDate >= bdt && detail.CreateDate <= edt))
                              && !(detail.MIDStatus == "NonApproved")
                       select detail;
            //var objs = from detail in _context.Details
            //           where (string.IsNullOrEmpty(suppref) || (IsEndWith(suppref) ? detail.SuppRef.StartsWith(strOption(suppref)) : detail.SuppRef == suppref))
            //                  && (string.IsNullOrEmpty(materialType) || detail.MaterialType == materialType)
            //                  && (string.IsNullOrEmpty(materialCode) || (IsEndWith(materialCode) ? detail.SuppRef.StartsWith(strOption(materialCode)) : detail.MaterialCode == materialCode))//(string.IsNullOrEmpty(materialCode) || detail.MaterialCode.StartsWith(materialCode))
            //                  && (string.IsNullOrEmpty(sampleOrder) || detail.SampleOrder == sampleOrder)
            //                  && (string.IsNullOrEmpty(supp) || detail.Supplier == supp)
            //                  && (string.IsNullOrEmpty(status) || detail.Status == status)
            //                  && (bdt == DateTime.MinValue || (detail.CreateDate >= bdt && detail.CreateDate <= edt))
            //                  && !(detail.MIDStatus == "NonApproved")
            //           select detail;
            bool tag = false;
            if (IsHaveSave)
            {
                foreach (Detail obj in objs)
                {
                    foreach (Detail d in Details)
                    {
                        if (d.SuppRef == obj.SuppRef)
                        {
                            tag = true;
                            break;
                        }
                    }
                    if (!tag)
                    {
                        Details.Add(obj);
                        tag = false;
                    }
                }
                this.DataSource = from c in Details select c;

            }
            else
            {
                this.DataSource = from c in objs select c;
            }

            if (this.objListGridView.RowCount == 0)
            {
                MessageBox.Show("沒有查詢出符合條件數據！", "提示!");

            }


        }

        private bool IsEndWith(string str)
        {
            if (str.EndsWith("%"))
                return true;
            else
                return false;
        }

        private string strOption(string str)
        {

            if (string.IsNullOrEmpty(str))
                return "";

            if (str.EndsWith("%") && str.Length > 2)
                return str.Substring(0, str.Length - 1);
            else
                return str;
        }

        void editSupplier_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {

        }

        void editMaterialType_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {

        }

        void simpleButton1_Click(object sender, EventArgs e)
        {
            // PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = _context;
            this.DataSource = from detail in _context.Details select detail;
            //this.DetailListForm1.BindingSource.ResetCurrentItem();
        }

        void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectData();
        }

        void DetailQueryListForm_Load(object sender, EventArgs e)
        {
            this.objListGridView.OptionsBehavior.Editable = true;
            this.AllowGridEdit = false;
            //this.IsCopyAsNew = false;
            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.objListGridView.Columns)
            {
                col.OptionsColumn.AllowEdit = true;
                if (col.FieldName != "Selected")
                    col.OptionsColumn.ReadOnly = true;
            }

            _context = ContextBuilder.CreateContext<MIDcDataContext>();

            //zttag
            //IList<PH.Sys.BO.RightModule> Rightlist = PH.UI.Global.GetUserRightByModule("PH.MIDc.DetailQueryListForm");

            //if (Rightlist.Where(p => p.ActionName == "IsHaveSave").FirstOrDefault() != null)
            //    this.IsHaveSave = true;

            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = new PH.Platform.Misc.BO.PHPlatformMiscDataContext();
            this.editStatus.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.Status" select dictionaryData;
            this.editStatus.Properties.DisplayMember = "DefCode";
            this.editStatus.Properties.ValueMember = "DefCode";
            LookUpColumnInfoCollection coll = this.editStatus.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DefCode", "Status", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

        }

        void TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                SelectData();
            }
        }

        void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.DataContext = null;
            //this.DataSource = null;

            this.DataSource = from detail in _context.Details
                              where detail.SuppRef == "~@#$%^&*"
                              select detail;

            //this.DataSource = from detail in _context.Details
            //                  where (string.IsNullOrEmpty(suppref) || detail.SuppRef.StartsWith(suppref))                            
            //                  select detail;
            Details.Clear();

        }
    }
}

