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

namespace PH.MobileQC.UI.QCMasterEdit
{
    public partial class QCDetailSizeListForm_Final : PH.Platform.UI.CS.UI2.ListForm
    {

        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

        public QCDetailSizeListForm_Final()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.DataContext = context;
            this.EditorTypeName = typeof(QCDetailSizeDetailForm_Final).FullName;
            //this.DataSource = typeof(QC_Detail_SizeAudit);
            base.DataBind();
        }
    }
}