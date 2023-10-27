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
    public partial class QCMasterDetailForm_Final : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        QC_Master_Final obj;
        public QCMasterDetailForm_Final()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            obj = this.BindingSource.Current as QC_Master_Final;
            base.SaveCurrent();
        }

        public override void EditCurrent()
        {
            obj = this.BindingSource.Current as QC_Master_Final;
            base.EditCurrent();
        }

        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
        public override void DataBind()
        {
            obj = this.BindingSource.Current as QC_Master_Final;
            this.qcDetailListForm_Final1.BindingSource.DataSource = obj.QC_Detail_Finals;  // context.QC_Details.Where(p => p.MasterID == obj.MasterID);
            base.DataBind();
        }
    }
}