﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class AppRightInfoListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public AppRightInfoListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(AppRightInfoDetailForm).FullName;
        }

        //public override void DataBind()
        //{
        //    PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
        //    this.DataContext = dcon;
        //    this.BindingSource.DataSource = dcon.QC_AppRightInfos;
        //}

        

    }
}
