﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class TradeMethodDetailFormBAK : PH.Platform.UI.CS.UI2.DetailForm
    {
        public TradeMethodDetailFormBAK()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary obj = this.BindingSource.Current as Misc_DataDictionary;
            if (obj != null)
            {
                obj.DataType = "PH.BasicInfo.TradeMethod";
            }
            base.SaveCurrent();
        }
    }
}
