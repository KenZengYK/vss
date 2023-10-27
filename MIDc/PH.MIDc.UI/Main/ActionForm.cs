using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ActionForm : PH.MIDc.UI.SampleOrderListForm
    {
        public ActionForm()
        {
            InitializeComponent();
        }
        public string MIDStatus { get; set; }
        public string UserRight { get; set; }
        IEnumerable<Detail> _detailList;

        public ActionForm(string midStatus)
        {
            InitializeComponent();

            this.EditorTypeName = "";
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            UserRight = "";
            MIDStatus = midStatus;

            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            
        }
        public ActionForm(string midStatus, string userRight)
            : this(midStatus)
        {
            UserRight = userRight;
            this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        }
        public override void DataBind()
        {

            this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            this.objListGridView.OptionsBehavior.Editable = true;
            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
            this.EditorTypeName = "";
            DetailList dlist = new DetailList();
            string selectCaption;
          

            base.DataBind();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            this.colCheckFlag.VisibleIndex = 0;
            //this.colCheckFlag1.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
        }
    }
}
