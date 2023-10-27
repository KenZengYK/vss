using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LWPM.UI.LB5
{
    public partial class Step5DeploymentReArrangingParamForm : Form
    {
        public Step5DeploymentReArrangingParamForm()
        {
            InitializeComponent();
        }

        public string Factory
        {
            get
            {
                return this.cbFactory.Text;
            }
        }

        public string Language
        {
            get
            {
                return this.cbLanguage.Text;
            }
        }
    }
}
