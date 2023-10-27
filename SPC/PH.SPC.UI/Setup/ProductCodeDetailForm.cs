using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.Misc.BO;

namespace PH.SPC.UI.Setup
{
    public partial class ProductCodeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ProductCodeDetailForm()
        {
            InitializeComponent();
        }


        protected override void SaveCurrent()
        {
            Misc_DataDictionary obj = this.BindingSource.Current as Misc_DataDictionary;
            string AFlagType = (this.ListForm as ProductCodeListForm).DictionaryType;
            obj.DataType = AFlagType;

            base.SaveCurrent();
        }
    }
}
