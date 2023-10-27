using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class InputNumber : Form
    {
        public InputNumber()
        {
            InitializeComponent();
        }

        public InputNumber(RoundWorkOrderDetailForm rwod)
        {
            InitializeComponent();
            rwodform = rwod;
        }
        public InputNumber(RoundWorkOrderIIDetailForm rwo2d)
        {
            InitializeComponent();
            rwo2dform = rwo2d;
        }

        RoundWorkOrderDetailForm rwodform;
        RoundWorkOrderIIDetailForm rwo2dform;
        private void button1_Click(object sender, EventArgs e)
        {
            this.rwodform.RoundNo = System.Convert.ToInt32(this.txtDiv.Text);
            this.Close();
        }
    }
}
