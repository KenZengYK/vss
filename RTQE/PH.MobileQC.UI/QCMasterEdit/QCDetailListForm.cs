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
    public partial class QCDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
       
        public QCDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.DataContext = context;
            this.EditorTypeName = typeof(QCDetailDetailForm).FullName;
            this.DataSource = typeof(QC_Detail);
            base.DataBind();
        }

    }
}