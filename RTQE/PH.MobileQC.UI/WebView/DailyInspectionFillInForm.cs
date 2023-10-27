using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;


namespace PH.MobileQC.UI.WebView
{
    public partial class DailyInspectionFillInForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        List<FullInspectionHeader> AHeader = new List<FullInspectionHeader>();
        List<FullInspectionHeader> AllHeader = new List<FullInspectionHeader>();
        public DailyInspectionFillInForm()
        {
            InitializeComponent();

            AllHeader = context.FullInspectionHeaders.ToList();
            AHeader = GetType(AllHeader, 0);
            
        }

        private void cbFty_EditValueChanged(object sender, EventArgs e)
        {        
            this.cbWs.Properties.Items.Clear();
            this.cbLine.Properties.Items.Clear();
            this.cbQN.Properties.Items.Clear();

            AHeader = GetType(AllHeader, radioGroup1.SelectedIndex);

            this.cbWs.Properties.Items.AddRange(AHeader.Where(dr => dr.Factory == this.cbFty.Text && !string.IsNullOrEmpty(dr.WorkShop)).Select(dr => dr.WorkShop).Distinct().OrderBy(dr => dr).ToList());

        }

        private void cbWs_EditValueChanged(object sender, EventArgs e)
        {
          
            this.cbLine.Properties.Items.Clear();
            this.cbQN.Properties.Items.Clear();

            AHeader = GetType(AllHeader, radioGroup1.SelectedIndex);

            this.cbLine.Properties.Items.AddRange(AHeader.Where(dr => dr.Factory == this.cbFty.Text && dr.WorkShop == this.cbWs.Text && !string.IsNullOrEmpty(dr.Line)).Select(dr => dr.Line).Distinct().OrderBy(dr => dr).ToList());

        }

        private void cbLine_EditValueChanged(object sender, EventArgs e)
        {

            this.cbQN.Properties.Items.Clear();

            AHeader = GetType(AllHeader, radioGroup1.SelectedIndex);

            this.cbQN.Properties.Items.AddRange(AHeader.Where(dr => dr.Factory == this.cbFty.Text && dr.WorkShop == this.cbWs.Text && dr.Line == this.cbLine.Text && !string.IsNullOrEmpty(dr.LWO) ).Select(dr => dr.LWO).Distinct().OrderBy(dr=>dr).ToList());

        }

        private void brPrint_Click(object sender, EventArgs e)
        {
            if (!CheckCondition()) return;

            MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            FullInspectionHeader Obj = new FullInspectionHeader();

            Obj = db.FullInspectionHeaders.Where(dr => dr.Factory == this.cbFty.Text && dr.WorkShop == this.cbWs.Text && dr.Line == this.cbLine.Text && dr.LWO == this.cbQN.Text).FirstOrDefault();


            DailyInspectionFillInFormReport Rpt = new DailyInspectionFillInFormReport(Obj, this.cbType.Text);
            Rpt.ShowPreview();
        }

        bool CheckCondition() 
        {
            if (string.IsNullOrEmpty(this.cbFty.Text)) 
            {
                MessageBox.Show("Please chose the Fty", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (string.IsNullOrEmpty(this.cbWs.Text))
            {
                MessageBox.Show("Please chose the Ws", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (string.IsNullOrEmpty(this.cbLine.Text))
            {
                MessageBox.Show("Please chose the Line", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (string.IsNullOrEmpty(this.cbQN.Text))
            {
                MessageBox.Show("Please chose the QN", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (string.IsNullOrEmpty(this.cbType.Text))
            {
                MessageBox.Show("Please chose the Rpt Type", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return true;

        }

        public List<FullInspectionHeader> GetType(List<FullInspectionHeader> ListSource, int AType) 
        {
            if (AType == 0) 
            {
                return ListSource.Where(dr => (dr.ExftyDate ?? DateTime.MaxValue) >= DateTime.Now && string.IsNullOrEmpty(dr.InspectionConfirmBy)).ToList();
            }
            else if (AType == 1)
            {
                return ListSource.Where(dr => (dr.ExftyDate ?? DateTime.MaxValue) >= DateTime.Now && !string.IsNullOrEmpty(dr.InspectionConfirmBy) ).ToList();
            }
            else 
            {
                return ListSource.Where(dr => (dr.ExftyDate ?? DateTime.MaxValue) >= DateTime.Now.AddDays(-90)).ToList();
            }
        }

        private void radioGroup1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radioGroup1.SelectedIndex == 0) 
            {
                AHeader = GetType(AllHeader, 0);
                this.cbQN.Properties.Items.Clear();
                this.cbQN.Properties.Items.AddRange(AHeader.Where(dr => (this.cbFty.Text == "" || dr.Factory == this.cbFty.Text) && (this.cbWs.Text ==""|| dr.WorkShop == this.cbWs.Text) &&( this.cbLine.Text  ==""|| dr.Line == this.cbLine.Text )&& !string.IsNullOrEmpty(dr.LWO)).Select(dr => dr.LWO).Distinct().OrderBy(dr => dr).ToList());

            }
            else if (radioGroup1.SelectedIndex == 1)
            {
                AHeader = GetType(AllHeader, 1);
                this.cbQN.Properties.Items.Clear();
                this.cbQN.Properties.Items.AddRange(AHeader.Where(dr => (this.cbFty.Text == "" || dr.Factory == this.cbFty.Text) && (this.cbWs.Text == "" || dr.WorkShop == this.cbWs.Text) && (this.cbLine.Text == "" || dr.Line == this.cbLine.Text) && !string.IsNullOrEmpty(dr.LWO)).Select(dr => dr.LWO).Distinct().OrderBy(dr => dr).ToList());

            }
            else 
            {
                AHeader = GetType(AllHeader, 2);
                this.cbQN.Properties.Items.Clear();
                this.cbQN.Properties.Items.AddRange(AHeader.Where(dr => (this.cbFty.Text == "" || dr.Factory == this.cbFty.Text) && (this.cbWs.Text == "" || dr.WorkShop == this.cbWs.Text) && (this.cbLine.Text == "" || dr.Line == this.cbLine.Text) && !string.IsNullOrEmpty(dr.LWO)).Select(dr => dr.LWO).Distinct().OrderBy(dr => dr).ToList());

            }
        }

    }
}
