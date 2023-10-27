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
using PH.Platform.BO;


namespace PH.MIDc.UI
{
    public partial class SpecDetailForm :  PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public Spec _thisSpec
        {
            get { return (this.BindingSource.Current as Spec); }
        }

        public SpecDetailForm()
        {
            InitializeComponent(); 
           

            Controller.DisableSpinEditScrollings(this);
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            
        }

        public override void DataBind()
        {
            BandComBox(); 
           
            

            //指定子表數據源
            this.technicalInformationListForm1.BandData(_thisSpec, (this.DataContext as MIDcDataContext)); //this.technicalInformationListForm1.BindingSource.DataSource = (this.BindingSource.Current as Spec).TechnicalInformations;
            this.technicalInformationListForm1.EditorTypeName = typeof(TechnicalInformationDetailForm).FullName;
             
            this.techInforTestListForm1.BindingSource.DataSource = (this.BindingSource.Current as Spec).TechInforTests;
            base.DataBind();

            
        }

        protected override void SaveCurrent()
        {   
            bool isnew = this.IsNew;

            base.SaveCurrent();

            if (isnew)
                AutoInsertTechnicalInfo();
         

            
        }        

        protected override void OnClickSaveAndReturn()
        {
            bool isnew = this.IsNew;

            base.SaveCurrent();

            if (isnew)
                AutoInsertTechnicalInfo();

            base.ReturnToPrevForm();

            base.OnClickSaveAndReturn();
            (this.PrevForm as DetailDetailForm).SetFormEnable();
        }
      
        //zrtag
        //protected override void OnClickCancel()
        //{
        //    base.ReturnToPrevForm();
        //    (this.PrevForm as DetailDetailForm).SetFormEnable();

        //}

        private void BandComBox()
        {
            //PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext < PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            PH.MIDc.BO.MIDcDataContext midscontext = ContextBuilder.CreateContext<MIDcDataContext>();

            //Color
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in midscontext.Colors
                                                     select dictionaryData;

            this.lookUpEdit1.Properties.DisplayMember = "Color1";
            this.lookUpEdit1.Properties.ValueMember = "Color1";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("Color1", "Color", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

        }

        private void AutoInsertTechnicalInfo()
        {

            this._thisSpec.AutoInsertTechnicalInformation((this.DataContext as MIDcDataContext));

            this._thisSpec.CurrentDataContext = this.DataContext;
            this._thisSpec.CurrentBindingSource = this.BindingSource;
            this._thisSpec.Save();

            this.DataBind();

        }
       
        private void barButtonItem7_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            PrintHelper.PrintFormsSheet2(this._thisSpec.Detail, this._thisSpec);
            this.Cursor = Cursors.Default;
        }

        private void barButtonItem8_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            ColorAllInfo rpt = new ColorAllInfo(_thisSpec);
            rpt.ShowPreview();
        }

        private void barButtonItem9_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RptTechInforTest rpt = new RptTechInforTest(this._thisSpec);
            rpt.ShowPreview();
        }

    }
}
