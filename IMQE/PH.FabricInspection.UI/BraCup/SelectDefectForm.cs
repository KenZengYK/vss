using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.BraCup
{
    public partial class SelectDefectForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectDefectForm()
        {
            InitializeComponent();

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.bindingSource.DataSource = db.PHQCDefects.Where(p => (p.IsBraCup ?? false));
        }

        public string GetSelectDefectCode()
        {
            PHQCDefect obj = this.bindingSource.Current as PHQCDefect;
            if (obj == null) return "";

            return (this.bindingSource.Current as PHQCDefect).PHDefectCode;
        }

    }
}