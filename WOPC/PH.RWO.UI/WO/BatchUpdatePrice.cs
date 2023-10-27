using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.UI.WO
{
    public partial class BatchUpdatePrice : DevExpress.XtraEditors.XtraForm
    {

        public RWOSOPCDataContext RwoCtx;
        WOProductPriceList ParForm;

        public BatchUpdatePrice(WOProductPriceList parent)
        {
            InitializeComponent();
            ParForm = parent;
        }


        private void BatchUpdatePrice_Load(object sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {

            if (RwoCtx == null)
                return;

            //-------bind project

            DataTable dt = RwoCtx.ExecuteDataTable("select ProjectNo,SalesOrderno,StyleNo,CustomerStyleNo,CustomerPO from dbo.vw_searchproject", "tbproj");
            bsProj.DataSource = dt;
            //DataRow nrow = dt.NewRow();
            //nrow["ProjectNo"] = null;
            //nrow["WorkOrderNo"] = null;
            //nrow["SalesOrderno"] = null;
            //nrow["StyleNo"] = null;
            //dt.Rows.Add(nrow);

            //bs.DataSource = dt;
            //bs.Sort = "ProjectNo";



            //var depts = from a in rqc.BaseCodes
            //                where a.Type == "DeptType"
            //               select new {a.Code, a.Name };

            glueProject.Properties.DisplayMember = "ProjectNo";
            glueProject.Properties.ValueMember = "ProjectNo";
            glueProject.Properties.DataSource = bsProj;

            this.glueProject.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.True;
            this.glueProject.Properties.View.BestFitColumns();
            this.glueProject.Properties.ShowFooter = false;
            this.glueProject.Properties.View.OptionsView.ShowAutoFilterRow = true; 
            this.glueProject.Properties.AutoComplete = false;
            this.glueProject.Properties.ImmediatePopup = true;

            //this.glueProject.Properties.poPopupFilterMode = DevExpress.XtraEditors.PopupFilterMode.Contains;
            this.glueProject.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            cbbCurrency.SelectedIndex = 0;
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            decimal vprice=0;
            bool valid = true;

            if (!Decimal.TryParse(this.edtPrice.Text, out vprice))
                valid = false;
            else if (vprice <= 0)
                valid = false;
            if (!valid)
            {
                MessageBox.Show("單價應錄入大于0的有效數值!");
                this.DialogResult = DialogResult.None;
            }
            else
            {
                DataRowView drv = bsProj.Current as DataRowView;
                if (drv != null)
                {
                    ParForm.CurSaleorder = drv.Row["SalesOrderno"].ToString();
                }

                ParForm.CurPrice = vprice;
                ParForm.CurCurrency = cbbCurrency.SelectedItem.ToString();
            }

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            DataRowView drv = bsProj.Current as DataRowView;
            if (drv != null)
            {
                ParForm.CurSaleorder = drv.Row["SalesOrderno"].ToString();
            }
        }
    }

   
}