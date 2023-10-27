using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.Packing
{
    public partial class StyleChooseForm : Form
    {

        public PH.MR.BO.V_StyleNO CurrStyleBO
        {
            get
            {
                return this.styleBOBindingSource.Current as PH.MR.BO.V_StyleNO;
            }
        }

        public StyleChooseForm()
        {
            InitializeComponent();

            DataBind();
        }

        private void DataBind()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            this.styleBOBindingSource.DataSource = from val in dcon.V_StyleNOs
                                                   orderby val.StyleNO
                                                   select val;

        }

        private void sBtn_Cancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void sBtn_Select_Click(object sender, EventArgs e)
        {
            if (CurrStyleBO == null)
            {
                MessageBox.Show("請選擇Style!", "系統提示");
                return;
            }
            this.DialogResult = DialogResult.OK;
        }
    }
}
