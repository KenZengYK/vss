using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI
{
    public partial class QCMasterDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        QC_Master obj;
        public QCMasterDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            obj = this.BindingSource.Current as QC_Master;
            base.SaveCurrent();
        }

        public override void EditCurrent()
        {
            obj = this.BindingSource.Current as QC_Master;
            base.EditCurrent();
        }

        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
        public override void DataBind()
        {
            obj = this.BindingSource.Current as QC_Master;
            this.qcDetailListForm1.BindingSource.DataSource = obj.QC_Details;  // context.QC_Details.Where(p => p.MasterID == obj.MasterID);
            base.DataBind();
        }
    }
}