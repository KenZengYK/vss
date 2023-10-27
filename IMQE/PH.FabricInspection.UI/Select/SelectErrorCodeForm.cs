using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.FabricInspection.UI.Select
{
    public partial class SelectErrorCodeForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectErrorCodeForm()
        {
            InitializeComponent();
            PrepareData();
        }

        void PrepareData()
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            bindingSource.DataSource = (db as FabricInspectionDataContext).ErrorCodes;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            ErrorCode obj = bindingSource.Current as ErrorCode;
            if (obj != null)
            {
                ErrorCode = obj.Code;
                ErrorNameEN = obj.NameEN;
                ErrorNameCN = obj.NameCN;
            }
        }

        public string ErrorCode { get; set; }
        public string ErrorNameEN { get; set; }
        public string ErrorNameCN { get; set; }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ErrorCode = "";
            ErrorNameEN = "";
            ErrorNameCN = "";
        }


    }
}