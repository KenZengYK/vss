using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class LineOptAgreeForm : Form
    {
        public LineOptAgreeForm(List<string> ALineList, string AWorkMode)
        {
            InitializeComponent();

            this.cbLine.Properties.Items.Clear();
            this.cbLine.Properties.Items.AddRange(ALineList);
            this.cbLine.SelectedIndex = 0;

            if (AWorkMode == "Agree")
            {
                this.Text = "Chosen agree line";
                this.btnOK.Text = "Agree";
            }
            else
            {
                this.Text = "Chosen confirm line";
                this.btnOK.Text = "Confirm";
            }
        }

        public string Line
        {
            get
            {
                return this.cbLine.Text;
            }
        }
    }
}
