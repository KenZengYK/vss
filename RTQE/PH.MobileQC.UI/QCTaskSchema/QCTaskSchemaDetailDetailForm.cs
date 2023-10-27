using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.QCTaskSchema
{
    public partial class QCTaskSchemaDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public QCTaskSchemaDetailDetailForm()
        {
            InitializeComponent();
        }

        private void QCTaskSchemaDetailDetailForm_Load(object sender, EventArgs e)
        {

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.factoryImageComboBoxEdit.Properties.ReadOnly = true;
            this.workShopTextEdit.Properties.ReadOnly = true;
            this.workLineTextEdit.Properties.ReadOnly = true;
            this.qNNOTextEdit.Properties.ReadOnly = true;
            this.projectNOTextEdit.Properties.ReadOnly = true;
            this.styleNOTextEdit.Properties.ReadOnly = true;          
            this.wONOTextEdit.Properties.ReadOnly = true;
            this.rWONOTextEdit.Properties.ReadOnly = true;
            this.colorCodeTextEdit.Properties.ReadOnly = true;
            this.processSeqSpinEdit.Properties.ReadOnly = true;
            this.processCodeTextEdit.Properties.ReadOnly = true;
            this.processNameTextEdit.Properties.ReadOnly = true;
            this.processStepTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;  
        }
    }
}
