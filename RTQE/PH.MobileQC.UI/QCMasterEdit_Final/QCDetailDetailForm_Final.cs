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
    public partial class QCDetailDetailForm_Final :  PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public QCDetailDetailForm_Final()
        {
            InitializeComponent();
        }


         //QC_Detail obj
        protected override void SaveCurrent()
        {
             //QC_Detail obj = this.BindingSource.Current as QC_Detail;

            //obj.Problem = textEdit4.Text;
            base.SaveCurrent();
        }

        public override void EditCurrent()
        {
            //obj = this.BindingSource.Current as QC_Detail;
            base.EditCurrent();
        }

        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
        public override void DataBind()
        {
             QC_Detail_Final obj = this.BindingSource.Current as QC_Detail_Final;

            this.qcDetailDetailListForm_Final1.BindingSource.DataSource = obj.QC_Detail_Detail_Finals;

            if (obj.DetailType == "Size") 
            {
                this.xtraTabPage2.PageVisible = true;
                this.qcDetailSizeListForm_Final1.BindingSource.DataSource = obj.QC_Detail_SizeAudit_Finals;
            }
            base.DataBind();
        }

    }
}