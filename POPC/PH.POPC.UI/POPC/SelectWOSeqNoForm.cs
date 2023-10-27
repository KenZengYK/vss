using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
using PH.Platform.BO;

namespace PH.POPC.UI.POPC
{
    public partial class SelectWOSeqNoForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectWOSeqNoForm(string AProjectNo)
        {
            InitializeComponent();

            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            string SqlStr = string.Format("exec sp_GetChoiceWOSeqNo '{0}'", AProjectNo);
            this.bsChoiceWOSeqNo.DataSource = db.ExecuteQuery<ChoiceWOSeqNoClass>(SqlStr);
        }

        public ChoiceWOSeqNoClass CurrentChoiceObj
        {
            get
            {
                return this.bsChoiceWOSeqNo.Current as ChoiceWOSeqNoClass;
            }
        }


    }
}