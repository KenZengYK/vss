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

namespace PH.MIDc.UI
{
    public partial class SpecDetailForm :  PH.UI.UI2.ParentChildForm
    {
        private Spec _thisSpec
        {
            get { return (this.CurBindingSource.Current as Spec); }
        }

        public SpecDetailForm()
        {
            InitializeComponent();
            this.technicalInformationListForm1.EditorTypeName = typeof(TechnicalInformationDetailForm).FullName;
        }

        private void SpecDetailForm_Load(object sender, EventArgs e)
        {
            PH.Sys.BO.SysDataContext context = new PH.Sys.BO.SysDataContext();
            PH.MIDc.BO.MIDcDataContext midscontext = new PH.MIDc.BO.MIDcDataContext();

            //Color
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in midscontext.Colors
                                                     select dictionaryData;

            this.lookUpEdit1.Properties.DisplayMember = "Color1";
            this.lookUpEdit1.Properties.ValueMember = "Color1";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("Color1", "Color", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));


            this.technicalInformationListForm1.BandData(_thisSpec, (this.DataContext as MIDcDataContext));
 
        }  

        protected override void SaveCurrent()
        {
            bool isadd = IsNew;

            base.SaveCurrent();

            if (isadd)           
                AutoInsertTechnicalInfo();          
      
        }

        protected override void SaveAndReturnCurrent()
        { 

            if (IsNew)
            {
                SaveCurrent(); 
            } 
            base.SaveAndReturnCurrent();            

        }

        private void AutoInsertTechnicalInfo()
        {

            (this.PrevForm as DetailDetailForm).CurSaveData();
            _thisSpec.AutoInsertTechnicalInformation((this.DataContext as MIDcDataContext));
            (this.PrevForm as DetailDetailForm).CurSaveData();

            this.technicalInformationListForm1.BandData(_thisSpec, (this.DataContext as MIDcDataContext));

        }

        void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            PrintHelper.PrintFormsSheet2(this._thisSpec.Detail, this._thisSpec);
            this.Cursor = Cursors.Default;
        }       

    }
}
