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

namespace PH.MobileQC.UI.FullInspection
{
    public partial class TopFourDefectDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public TopFourDefectDetailForm()
        {
            InitializeComponent();

        }

        protected override void SaveCurrent()
        {
            FourDefectCode obj = this.BindingSource.Current as FourDefectCode;
            base.SaveCurrent();
        }
    }
}