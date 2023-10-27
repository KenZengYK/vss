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
using PH.POPC.BO;

namespace PH.POPC.BackEnd
{
    public partial class SelectPOForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectPOForm()
        {
            InitializeComponent();
            this.PrepareData();
        }

        void PrepareData()
        {
            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            this.bindingSource.DataSource = db.POHeaders.Where(p => (p.VersionFlag ?? false) == true && p.OrderDate >= DateTime.Now.AddYears(-1)).OrderByDescending(p => p.OrderDate);
        }

        public string GetChoosePOs()
        {
            string Str = "";
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                POHeader obj = this.gridView.GetRow(i) as POHeader;
                if (obj != null && obj.CheckFlag)
                {
                    Str += obj.PONO + ",";
                }
            }
            return Str;
        }

    }
}