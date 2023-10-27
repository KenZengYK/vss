﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.Misc.BO;

namespace PH.LineBalanceII.UI.Setup
{
    public partial class BOMZHDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public BOMZHDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary obj = this.BindingSource.Current as Misc_DataDictionary;
            obj.DataType = "PH.SMB.BOMZH";

            base.SaveCurrent();
        }
       
    }
}
