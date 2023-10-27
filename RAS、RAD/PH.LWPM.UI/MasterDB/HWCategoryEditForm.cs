using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MasterDB
{
    public partial class HWCategoryEditForm : BaseCodeEditForm
    {
        public HWCategoryEditForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            if (obj != null)
            {
                //obj.Type = (this.ListForm as BaseCodeListForm).BaseCodeType;
                //obj.Code = obj.Type + "_" + obj.Lang;
                obj.Code = "McCategory_" + obj.Lang;
            }

            
            base.SaveCurrent();
        }
    }
}
