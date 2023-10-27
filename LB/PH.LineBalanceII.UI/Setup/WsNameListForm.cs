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
    public partial class WsNameListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public WsNameListForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.BindingSource.DataSource = (this.DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries.Where(p => p.DataType == "PH.SMB.WsName").OrderBy(p => p.DataNameCN);
            this.EditorTypeName = typeof(WsNameDetailForm).FullName;
        }
    }
}
