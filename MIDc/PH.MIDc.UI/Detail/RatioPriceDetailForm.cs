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
    public partial class RatioPriceDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public RatioPriceDetailForm()
        {
            InitializeComponent();
            Controller.DisableSpinEditScrollings(this);
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        private void RatioPriceDetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext <  PH.Platform.Misc.BO.PHPlatformMiscDataContext>();


            try
            {
                if (((RatioPrice)this.BindingSource.Current).SuppRef == null && this.BindingSource.Current != null)
                {
                    Detail detail = ((this.PrevForm as DetailDetailForm).BindingSource.Current as Detail);

                    ((RatioPrice)this.BindingSource.Current).SuppRef = detail.SuppRef;
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
