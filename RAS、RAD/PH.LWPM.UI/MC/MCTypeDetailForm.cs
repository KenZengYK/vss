﻿using System;
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
    public partial class MCTypeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public MCTypeDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.edtGroupCode.Properties.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "McGroup").OrderBy(p => p.Lang);
            this.edtGroupCode.Properties.DisplayMember = "Lang";
            this.edtGroupCode.Properties.ValueMember = "Lang";
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            obj.Type = "METHODTYPE";
            base.SaveCurrent();

            //通過HW Type更新Machine里的中文名稱(Type)、英文名稱(Type2)和HW Group(MachineClass)
            string SqlStr = "Update Machine set Type = '{0}', Type2 = '{1}', MachineClass = '{2}' where Type1 = '{3}'";
            SqlStr = string.Format(SqlStr, obj.Name, obj.NameEN, obj.Description, obj.Code);
            (this.DataContext as RAPLQDataContext).ExecuteCommand(SqlStr);
        }
    }
}
