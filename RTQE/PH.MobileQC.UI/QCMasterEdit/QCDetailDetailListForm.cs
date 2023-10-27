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

namespace PH.MobileQC.UI
{
    public partial class QCDetailDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public QCDetailDetailListForm()
        {
            InitializeComponent();
        }

         MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

        public override void DataBind()
        {
           

            this.DataContext = context;
            this.EditorTypeName = typeof(QCDetailDetailDetailForm).FullName;
            //this.DataSource = typeof(QC_Detail_Detail);
            base.DataBind();
        }

    }
}