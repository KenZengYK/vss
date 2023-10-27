using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class CompositionDefaultListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string Deftype { get; set; }

        public CompositionDefaultListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

        }

        public CompositionDefaultListForm(string deftype)
        {
            InitializeComponent();
            Deftype = deftype;
            this.barBtnImport.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            if (Deftype == "PH.MIDc.CompositionDefault_FG")
            {
                this.barBtnImport.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            }

            this.colDataNameCN.Visible = (Deftype == "PH.MIDc.CompositionDefault" || Deftype == "PH.MIDc.CompositionDefault_FG");
            this.colDataNameEN.Visible = this.colDataNameCN.Visible;
            this.colDataNameTW.Caption = this.colDataNameEN.Visible ? "Name(TW)" : "Name";
        }

        protected override void AddNewObject()
        {
            base.AddNewObject();
            PH.Platform.Misc.BO.Misc_DataDictionary obj = (PH.Platform.Misc.BO.Misc_DataDictionary)(this.BindingSource.Current);
            if (obj != null)
            {
                obj.DataType = Deftype;
            }
        }

        protected override void OnClickAddNew()
        {
            base.OnClickAddNew();
            PH.Platform.Misc.BO.Misc_DataDictionary obj = (PH.Platform.Misc.BO.Misc_DataDictionary)(this.BindingSource.Current);
            if (obj != null)
            {
                obj.DataType = Deftype;
            }
        }

        public override void DataBind()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();// new PH.Platform.Misc.BO.PHPlatformMiscDataContext();
            this.DataContext = context;
            this.DataSource = from dic in context.Misc_DataDictionaries
                              where dic.DataType == Deftype
                              select dic;

            this.EditorTypeName = typeof(CompositionDefaultDetailForm).FullName;

            base.DataBind();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Controller.PostGridValue(this.objListGridView);
            this.DataContext.SubmitChanges();
        }

        private void barBtnImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (Deftype == "PH.MIDc.CompositionDefault_FG")
            {
                if (MessageBox.Show("是否從ERP中導入成份定義?", "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
                    db.ExecuteCommand("exec ImportCompositionDefaultFromAS400");
                    this.DataBind();
                }
            }

        }



    }
}
