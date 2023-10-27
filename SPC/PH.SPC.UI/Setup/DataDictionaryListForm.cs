using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.UI.Setup
{
    public partial class DataDictionaryListForm : PH.Platform.Misc.UI.DataDictionary.DataDictionaryListForm
    {
        public DataDictionaryListForm()
        {
            InitializeComponent();
        }

        public string DictionaryType { get; set; }

        public DataDictionaryListForm(string dictionaryType)
        {
            this.DictionaryType = dictionaryType;

            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            PH.Platform.Misc.BO.Misc_DataDictionaryList list = new PH.Platform.Misc.BO.Misc_DataDictionaryList();
            this.DataContext = list.CurrentDataContext;
            this.BindingSource.DataSource = list.GetAllMisc_DataDictionaryByCondition(this.DictionaryType);
            this.EditorTypeName = typeof(DataDictionaryDetailForm).FullName;

            DevExpress.XtraGrid.Columns.GridColumn col = this.objListGridView.Columns.ColumnByFieldName("DataType");
            if (col != null) col.Visible = false;

            this.btnReport.Visibility =
                (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToUpper() == "PETER") ?
                DevExpress.XtraBars.BarItemVisibility.Always : DevExpress.XtraBars.BarItemVisibility.Never;
        }

        protected override void AddNewObject()
        {
            base.AddNewObject();
            PH.Platform.Misc.BO.Misc_DataDictionary current = this.BindingSource.Current as PH.Platform.Misc.BO.Misc_DataDictionary;
            current.DataType = this.DictionaryType;

        }

        private void btnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = true;
            dlg.ShowDialog();
        }
    }
}
