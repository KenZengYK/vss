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
    public partial class TechnicalInformationDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public TechnicalInformationDetailForm()
        {
            InitializeComponent();
        }

        private void TechnicalInformationDetailForm_Load(object sender, EventArgs e)
        {
            
            if ((this.BindingSource.Current as PH.MIDc.BO.TechnicalInformation).TestMethodStr != null)
            {
                foreach (string item in (this.BindingSource.Current as PH.MIDc.BO.TechnicalInformation).TestMethodStr)
                {
                    this.lookUpEdit1.Properties.Items.Add(item);
                }
            }

            lookUpEdit2.Properties.Items.Add(("1-2"));
            lookUpEdit2.Properties.Items.Add(("2-3"));
            lookUpEdit2.Properties.Items.Add(("3-4"));
            lookUpEdit2.Properties.Items.Add(("4-5"));

            try
            {
                if (((TechnicalInformation)this.BindingSource.Current).SuppRef == null && this.BindingSource.Current != null)
                {
                    Spec detail = ((this.PrevForm as SpecDetailForm).BindingSource.Current as Spec);

                    ((TechnicalInformation)this.BindingSource.Current).SuppRef = detail.SuppRef;
                    ((TechnicalInformation)this.BindingSource.Current).Color = detail.Color;
                    ((TechnicalInformation)this.BindingSource.Current).ColorCategory = detail.ColorCategory;
                    ((TechnicalInformation)this.BindingSource.Current).SuppRef = detail.SuppRef;
                }
            }
            catch { }

        }

        protected override void OnClickCancel()
        {
            try
            {
                base.OnClickCancel();
            }
            catch
            {
                this.OnClickSaveAndReturn();
            }
        }
    }
}
