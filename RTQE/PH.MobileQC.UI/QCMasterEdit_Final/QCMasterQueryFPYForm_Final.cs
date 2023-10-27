using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using System.Linq;

namespace PH.MobileQC.UI.QCMasterEdit_Final
{
    public partial class QCMasterQueryFPYForm_Final : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        public QCMasterQueryFPYForm_Final()
        {
            InitializeComponent();

            //«@È¡Factoryßxí—
            DataTable dt = db.GetFactoryType();
            comFactory.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                comFactory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(comFactory.Text)) 
            {
                MessageBox.Show("The Factory must be chosen", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning); 
                return;
            }

            if (string.IsNullOrEmpty(dateEdit1.Text))
            {
                MessageBox.Show("The Date must be chosen", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            DateTime Date1 = DateTime.MinValue;
            DateTime Date2 = DateTime.MinValue;

            this.dateEdit1.GetDate(DateEditWorkMode.ByMonth, out Date1, out Date2);
                
            DateTime StartDate = Date1;
            DateTime DueDate = Date2;
            string SqlStr = "exec sp_QCMasterFinalQueryFPY '{0}','{1}','{2}'";
            SqlStr = string.Format(SqlStr, comFactory.Text, StartDate.Date, DueDate.Date);

            List<QCMasterFinalFPY> DataSource = db.ExecuteDataSet(SqlStr, new DataSet(), "opts").Tables[0].AsEnumerable().Select(dr => new QCMasterFinalFPY()
            {
                WorkShop = dr["WorkShop"].ToString(),
                Line = dr["Line"].ToString(),
                CheckLots = Convert.ToInt32( dr["CheckLots"].ToString()),
                AcceptLots = Convert.ToInt32( dr["AcceptLots"].ToString()),
                FPYPercent = Convert.ToDecimal( dr["FPYPercent"].ToString()),

            }).ToList();
            QCMasterQueryFPYReport_Final rpt = new QCMasterQueryFPYReport_Final(DataSource, comFactory.Text, StartDate.ToString("yyyy-MM"));
            rpt.ShowPreview();

        }
    }
}