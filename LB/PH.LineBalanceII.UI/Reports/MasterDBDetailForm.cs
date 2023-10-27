using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LineBalanceII.BO;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class MasterDBDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public MasterDBDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            string DBType =(this.PrevForm as MasterDBForm).Type;
            MasterDB db = this.BindingSource.Current as MasterDB;
            db.Type = DBType;
            base.SaveCurrent();

        }
    }
}
