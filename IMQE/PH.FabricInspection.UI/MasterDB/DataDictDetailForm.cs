using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class DataDictDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
      
        public DataDictDetailForm()
        {
            InitializeComponent();
           
        }
        protected override void SaveCurrent()
        {
            if (!string.IsNullOrEmpty(this.txtCode.Text))
            {
                DataDict obj = this.BindingSource.Current as DataDict;
                obj.Flag =  (this.ListForm as DataDictListForm).FrmType; 
                base.SaveCurrent();
            }
        }

        
    }
}