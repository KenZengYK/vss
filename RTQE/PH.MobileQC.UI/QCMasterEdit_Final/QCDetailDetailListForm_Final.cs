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
    public partial class QCDetailDetailListForm_Final : PH.Platform.UI.CS.UI2.ListForm
    {
        public QCDetailDetailListForm_Final()
        {
            InitializeComponent();
        }

         MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

        public override void DataBind()
        {
           

            this.DataContext = context;
            this.EditorTypeName = typeof(QCDetailDetailDetailForm_Final).FullName;
            this.DataSource = typeof(QC_Detail_Detail_Final);
            base.DataBind();
        }

    }
}