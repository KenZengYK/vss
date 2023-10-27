using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.Misc.BO;

namespace PH.MIDc.UI.Config
{
    public partial class SizeMatrixDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public SizeMatrixDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary obj = this.BindingSource.Current as Misc_DataDictionary;
            if(obj==null)   return;
            obj.DataType = "PH.WO.SizeMatrix";
            base.SaveCurrent();
        }

    }
}
