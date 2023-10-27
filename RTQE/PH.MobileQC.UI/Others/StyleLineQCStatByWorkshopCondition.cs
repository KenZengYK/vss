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
    public partial class StyleLineQCStatByWorkshopCondition : Form
    {
        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

        public StyleLineQCStatByWorkshopCondition()
        {
            InitializeComponent();
        }

        #region 数据处理
        private void StyleLineQCStatCondition_Load(object sender, EventArgs e)
        {
            //this.edtFactory.Properties.DataSource = context.GetAllFactory();
         
            //this.edtFactory.Properties.DisplayMember = "Factory";
            //this.edtFactory.Properties.DisplayMember = "Factory";

            this.edtFactory.Properties.DataSource = context.GetFactoryType();
            this.edtFactory.Properties.DisplayMember = "Name";
            this.edtFactory.Properties.DisplayMember = "Name";


            this.edtLine.Properties.DataSource = context.GetAllLine();
            this.edtLine.Properties.DisplayMember = "Line";
            this.edtLine.Properties.ValueMember = "Line";


        }

        private void edtFactory_EditValueChanged(object sender, EventArgs e)
        {
            this.edtWorkshop.Properties.DataSource = this.context.GetAllWorkshop(this.Factory);
            this.edtWorkshop.Properties.DisplayMember = "Workshop";
            this.edtWorkshop.Properties.ValueMember = "Workshop";
        }

        #endregion

        #region 属性
        public string Factory
        {
            get
            {
                return this.edtFactory.Text;
            }
        }

        public string Workshop
        {
            get
            {
                return this.edtWorkshop.Text;
            }
        }


        public int ShowYellow
        {
            get
            {
                return (this.chkShowItem.Items[0].CheckState == CheckState.Checked ? 1 : 0);
            }
        }

        public int ShowGreen
        {
            get
            {
                return (this.chkShowItem.Items[1].CheckState == CheckState.Checked ? 1 : 0);
            }
        }

        public int ShowRed
        {
            get
            {
                return (this.chkShowItem.Items[2].CheckState == CheckState.Checked ? 1 : 0);
            }
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

        #endregion

        #region 查询时一定要录入Factory和Workshop
        private void sbut_OK_Click(object sender, EventArgs e)
        {
            if (!this.CheckData())
            {
                this.DialogResult = DialogResult.None;
                return;
            }
            this.DialogResult = DialogResult.OK;
        }

        private bool CheckData()
        { 
            if (this.Factory == "")
            {
                MessageBox.Show("Please Choice Factory!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            //else if (this.Workshop == "")
            //{
            //    MessageBox.Show("Please Choice Workshop!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return false;
            //}
            return true;
        }

        #endregion

        private void labelControl12_Click(object sender, EventArgs e)
        {

        }

        private void edtLine_EditValueChanged(object sender, EventArgs e)
        {
            this.edtStyle.Properties.DataSource = context.GetStyle(this.edtLine.Text);
            this.edtStyle.Properties.DisplayMember = "Style";
            this.edtStyle.Properties.ValueMember = "Style";
        }
    }
}
