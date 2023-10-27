using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.WF
{
    public partial class MCCategoryDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public MCCategoryDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            obj.Type = "McCategory";
            if (string.IsNullOrEmpty(obj.Code))
            {
                obj.Code = "McCategory_" + obj.Lang;
            }
            base.SaveCurrent();

            //通過HW Type更新Machine里的中文名稱(Type)、英文名稱(Type2)和HW Group(MachineClass)
            //string SqlStr = "Update Machine set Type = '{0}', Type2 = '{1}', MachineClass = '{2}' where Type1 = '{3}'";
            //SqlStr = string.Format(SqlStr, obj.Name, obj.NameEN, obj.Description, obj.Code);
            //(this.DataContext as RAPLQDataContext).ExecuteCommand(SqlStr);
        }
    }
}
