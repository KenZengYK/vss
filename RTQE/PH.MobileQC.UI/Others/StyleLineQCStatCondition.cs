using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class StyleLineQCStatCondition : Form
    {
        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        
        public StyleLineQCStatCondition()
        {
            InitializeComponent();
        }

        private void StyleLineQCStatCondition_Load(object sender, EventArgs e)
        {
            this.edtLine.Properties.DataSource = context.GetAllLine();
            this.edtLine.Properties.DisplayMember = "Line";
            this.edtLine.Properties.ValueMember = "Line";
        }

        private void edtLine_EditValueChanged(object sender, EventArgs e)
        {
            this.edtStyle.Properties.DataSource = context.GetStyle(this.edtLine.Text);
            this.edtStyle.Properties.DisplayMember = "Style";
            this.edtStyle.Properties.ValueMember = "Style";
        }

        public string Line
        {
            get
            {
                return this.edtLine.Text;
            }
        }

        public string Style
        {
            get
            {
                return this.edtStyle.Text;
            }
        }
 

    }
}
