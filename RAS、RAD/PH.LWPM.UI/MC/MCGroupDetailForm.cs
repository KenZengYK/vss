using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC
{
    public partial class MCGroupDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public MCGroupDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            obj.Type = "METHODTYPE";
            obj.Code = obj.Lang;
            base.SaveCurrent();
        }
    }
}
