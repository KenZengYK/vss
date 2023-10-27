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
    public partial class CompositionDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CompositionDetailDetailForm()
        {
            InitializeComponent();
        }

        private void CompositionDetailDetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context =ContextBuilder.CreateContext<  PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            //Composition
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.Composition" select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Composition", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            try
            {
                if (((CompositionDetail)this.BindingSource.Current).SuppRef == null && this.BindingSource.Current != null)
                {
                    Detail detail = ((this.PrevForm as DetailDetailForm).BindingSource.Current as Detail);
                    ((CompositionDetail)this.BindingSource.Current).SuppRef = detail.SuppRef;
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
