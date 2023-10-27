using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.MIDc.UI
{
    public partial class ElementDetail : DetailForm
    {
        public ElementDetail()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            Misc_DataDictionary _current = this.BindingSource.Current as Misc_DataDictionary;
            if (IsNew)
            {
                _current.DataType = "PH.MIDc.MaterialElement";
                dataCodeTextEdit.Properties.ReadOnly = false;
            }
            if (IsEditting)
                dataCodeTextEdit.Properties.ReadOnly = true;
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary _current = this.BindingSource.Current as Misc_DataDictionary;
            //_current.DataName = _current.DataCode;
            _current.Description = _current.DataNameCN;
            base.SaveCurrent();
        }

    }
}
