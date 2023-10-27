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
using System.Linq;
using PH.Platform.ExtendLibrary;

namespace PH.MobileQC.UI.QCMasterEdit_Final
{
    public partial class GDAQLAuditQueryForm_Final : PH.Platform.UI.CS.UI0.BlankForm
    {
        
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        public GDAQLAuditQueryForm_Final()
        {
            InitializeComponent();
            //«@È¡Factoryßxí—
            //DataTable dt = db.GetFactoryType();
            //comFactory.Properties.Items.Clear();

            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    comFactory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //}
            //comFactory.Properties.Items.Add("GX(GG+RX)");
        }

        private void comFactory_EditValueChanged(object sender, EventArgs e)
        {
            this.comWorkShop.Properties.Items.Clear();
            string Sqlstr = "select distinct Workshop from QC_Master_Final where ( ('{0}' ='GX(GG+RX)'  and Factory in ('RX','GG')) or Factory ='{0}') order by  Workshop";
            Sqlstr = string.Format(Sqlstr, this.comFactory.Text);

            DataTable dt= db.ExecuteDataSet(Sqlstr,new DataSet(),"Opts").Tables[0];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                this.comWorkShop.Properties.Items.Add(dt.Rows[i]["Workshop"]);
            }
 
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (!CheckInputData()) { return; }

            DateTime Date1 = DateTime.MinValue;
            DateTime Date2 = DateTime.MinValue;
            DateTime Date3 = DateTime.MinValue;
            DateTime Date4 = DateTime.MinValue;

       
           this.StartdateEdit.GetDate(DateEditWorkMode.ByMonth, out Date1, out Date2);
           this.DuedateEdit.GetDate(DateEditWorkMode.ByMonth, out Date3, out Date4);
            

            DateTime StartDate = Date1;
            DateTime DueDate = Date4;


            string FactoryOrWork = string.IsNullOrEmpty(comWorkShop.Text)?"¹¤S":"Ü‡ég";
            string Sqlstr = "exec [sp_GDAQLAuditChart] '{0}','{1}','{2}','{3}'";
            Sqlstr = string.Format(Sqlstr, this.comFactory.Text, this.comWorkShop.Text, StartDate, DueDate);
            DataSet ds = db.ExecuteDataSet(Sqlstr, new DataSet(), "Opt");
            List<sp_GDAQLAuditChartResult> lists = ds.Tables[0].AsEnumerable().Select
                    (dr => new sp_GDAQLAuditChartResult()
                    {
                        FactoryOrWorkShop = this.comWorkShop.Text == "" ? dr["Factory"].ToString() : dr["workshop"].ToString(),
                        Month = dr["Month"].ToString(),
                        LotsQty = Convert.ToInt32(dr["LotsQty"].ToString()),
                        LotsRejectQty = Convert.ToInt32(dr["LotsRejectQty"].ToString()),
                        LotsPrecent = Convert.ToDecimal(dr["LotsPrecent"].ToString()),
                        PieceQty = Convert.ToInt32(dr["PieceQty"].ToString()),
                        PieceRejectQty = Convert.ToInt32(dr["PieceRejectQty"].ToString()),
                        PieceRejectPrecent = Convert.ToDecimal(dr["PieceRejectPrecent"].ToString())
                    }
                    ).ToList();
            GDAQLAuditChartReport_Final Rpt = new GDAQLAuditChartReport_Final(lists, ds, FactoryOrWork, (this.comWorkShop.Text == "" ? this.comFactory.Text : this.comWorkShop.Text));
            Rpt.ShowPreview();
        }

        public bool CheckInputData()
        {
            if (string.IsNullOrEmpty(this.comFactory.Text))
            {
                MessageBox.Show("Please chosen factory ", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            if (string.IsNullOrEmpty(this.StartdateEdit.Text))
            {
                MessageBox.Show("Please chosen start Month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.StartdateEdit.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(this.DuedateEdit.Text))
            {
                MessageBox.Show("Please chosen due Month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.DuedateEdit.Focus();
                return false;
            }

            if (DuedateEdit.DateTime <=StartdateEdit.DateTime)
            {
                MessageBox.Show("Please the due month must greater than the start month", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.DuedateEdit.Focus();
                return false;
            }
     
            return true;
        }

    }
}