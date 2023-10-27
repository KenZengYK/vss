using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class SelectStyleForm_Report : Form
    {
        public SelectStyleForm_Report()
        {
            InitializeComponent();

            this.PrepareData();
        }

        void PrepareData()
        {
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            var lists =from a in  db.QC_ExamPlanHeaders where !a.Workshop.Contains("PPW")  select a;

            this.bsStyle.DataSource = lists;
 
        }



        public string CustStyle
        {
            get
            {
                QC_ExamPlanHeader obj = this.bsStyle.Current as QC_ExamPlanHeader;
                return obj == null ? "" : obj.CustStyle;
            }
        }



        public string Facotry
        {
            get
            {
                QC_ExamPlanHeader obj = this.bsStyle.Current as QC_ExamPlanHeader;
                return obj == null ? "" : obj.Factory;
            }
        }

        public Int64 Oid
        {
            get
            {
                QC_ExamPlanHeader obj = this.bsStyle.Current as QC_ExamPlanHeader;
                return obj == null ? -1 : obj.OID;
            }
        }
    }

}
