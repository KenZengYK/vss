using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    public partial class sInputDefectForm : DevExpress.XtraEditors.XtraForm
    {
        public sInputDefectForm()
        {
            InitializeComponent();
            PrepareData();
        }

        void PrepareData()
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.bsFrequencyDefect.DataSource = db.PHQCDefects.Where(p => (p.Frequency ?? false)).OrderBy(p => p.PHDefectCode);
            this.bsAllDefect.DataSource = db.PHQCDefects.OrderBy(p => p.PHDefectCode);
        }

        public string SelectDefectCode
        {
            get
            {
                if (TabControlDefect.SelectedTabPageIndex == 0)
                {
                    PHQCDefect obj = this.bsFrequencyDefect.Current as PHQCDefect;
                    if (obj != null)
                    {
                        return obj.PHDefectCode;
                    }
                }
                else if (TabControlDefect.SelectedTabPageIndex == 1)
                {
                    PHQCDefect obj = this.bsAllDefect.Current as PHQCDefect;
                    if (obj != null)
                    {
                        return obj.PHDefectCode;
                    }
                }

                return "";
            }
        }
    }
}