using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.SPC1.BO;

namespace PH.SPC1.UI
{
    public partial class LARDDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public LARDDetailForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        protected override void SaveCurrent()
        {
            if (this.DataContext == null)
            {
            }
            // (this.BindingSource.Current as BaseEntity).BOWorkMode = PH.Platform.BO.Interface.WorkMode.New;
                base.SaveCurrent();
        }
    }
}
