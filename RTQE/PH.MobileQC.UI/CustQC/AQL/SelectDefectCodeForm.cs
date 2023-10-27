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

namespace PH.MobileQC.UI.CustQC
{
    public partial class SelectDefectCodeForm : Form
    {

        string ADefectCode;
        public SelectDefectCodeForm(string DefectCode)
        {
            InitializeComponent();
            this.PrepareData();
            ADefectCode = DefectCode;
        }

        void PrepareData()
        {
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            string SqlStr = "select PHDefectCode, DefectChineseName, DefectEnglishName, DefectThaiName from [PH.FabricInspection]..PHQCDefect";

            List<CustQCDefectCode> DefectCodeSource  = db.ExecuteDataTable(SqlStr, "dtDefect").AsEnumerable().Select(dr => new CustQCDefectCode() 
            {
                PHDefectCode = dr["PHDefectCode"].ToString(),
                DefectChineseName = dr["DefectChineseName"].ToString(),
                DefectEnglishName = dr["DefectEnglishName"].ToString(),
                DefectThaiName = dr["DefectThaiName"].ToString(),

            }).ToList();

            this.bsDefectCode.DataSource = DefectCodeSource;
           
        }



        public string PHDefectCode
        {
            get
            {
                CustQCDefectCode obj = this.bsDefectCode.Current as CustQCDefectCode;
                return obj == null ? "" : obj.PHDefectCode;
            }
        }



        public string DefectChineseName
        {
            get
            {
                CustQCDefectCode obj = this.bsDefectCode.Current as CustQCDefectCode;
                return obj == null ? "" : obj.DefectChineseName;
            }
        }

        public string DefectThaiName
        {
            get
            {
                CustQCDefectCode obj = this.bsDefectCode.Current as CustQCDefectCode;
                return obj == null ? "" : obj.DefectThaiName;
            }
        }

        private void gridControl1_Load(object sender, EventArgs e)
        {
            int i=this.gridView1.LocateByDisplayText(0, this.gridView1.Columns["PHDefectCode"], ADefectCode);
            this.gridView1.FocusedRowHandle = this.gridView1.LocateByDisplayText(0, this.gridView1.Columns["PHDefectCode"], ADefectCode);
        }
    }

}
