using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.PHGDB2.BO;
using PH.Platform.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class PriceOrderDetailForm_IDO : PH.Platform.UI.CS.UI2.DetailForm
    {
              
        public PriceOrderDetailForm_IDO()
        {
            InitializeComponent();
         
        }

       
        public override void DataBind()
        {
            obj = this.BindingSource.Current as ByPrice_Order_IDO;
            this.Flag = (this.ListForm as PriceOrderListForm_IDO).Flag;
            BindLookEdit();
            //BindcheckedComboBoxEdit();
            base.DataBind();

        }

        public override void EditCurrent ()
        {
   
            base.EditCurrent();
        }

        public int Flag;
        protected override void SaveCurrent() 
        {
            
            if(CheckText())
            {
                PHGDB2DataContext context = this.DataContext as PHGDB2DataContext;  //new PHGDB2DataContext();
                this.Flag= (this.ListForm as PriceOrderListForm_IDO).Flag;
                bool T = context.GetUser_IDO(lookUpEdit1.EditValue.ToString(), comboBox1.Text, checkedComboBoxEdit1.Text, txtPROJECT_NOType.Text, this.Flag);
                string a = checkedComboBoxEdit1.Text;
                obj.OrderName = this.lookUpEdit1.Text;
                obj.Flag = Flag;
                 base.SaveCurrent();
            }

        }

        bool CheckText ()
        {
            if (string.IsNullOrEmpty(this.comboBox1.Text))
            {
                MessageBox.Show("請輸入IDO!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else    if (string.IsNullOrEmpty(this.txtPROJECT_NOType.Text))
            {
                MessageBox.Show("請選擇工程號!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.checkedComboBoxEdit1.Text))
            {
                MessageBox.Show("請選擇物料類別!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.lookUpEdit1.Text))
            {
                MessageBox.Show("請選擇倉管!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;
        }


        ByPrice_Order_IDO obj = new ByPrice_Order_IDO();

        BindingSource bs = new BindingSource();
     
        private void BindLookEdit()
        {
            PH.PHGDB2.BO.PHGDB2DataContext Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            var emplist1 = Context.ByPiece_Employees.Where(p => p.Flag == this.Flag);
                //from p in Context.ByPiece_Employees select p ;

            bs.DataSource = emplist1;

            this.lookUpEdit1.Properties.Columns.Clear();

            this.lookUpEdit1.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 10, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

            this.lookUpEdit1.Properties.AutoSearchColumnIndex = 0;
            this.lookUpEdit1.Properties.DataSource = bs;
            this.lookUpEdit1.Properties.ValueMember = "EmpId";
            this.lookUpEdit1.Properties.DisplayMember = "EmpName";


            //if (ByOrder != null)
            //{
            //    //var _emplist_disp = from p in _ctx.ByPiece_Employees select p;

            //    List<ByPiece_Employee> _emplst = Context.ByPiece_Employees.ToList();
            //    if (_emplst != null)
            //    {
            //        ByPiece_Employee _emp1 = _emplst.Where(p => p.EmpId == ByOrder.OrderID).FirstOrDefault();
            //        if (_emp1 != null)
            //            label4.Text = _emp1.EmpName;
            //     }


            //}

        }


        //private void BindcheckedComboBoxEdit()
        //{
        //    DataTable tb = DataHelper.GetProject_Material1();
        //        int a = tb.Rows.Count;
        //        if (tb.Rows.Count > 0)
        //        {
        //            checkedComboBoxEdit1.Properties.Items.Clear();
        //            checkedComboBoxEdit1.Text = "";
        //            for(int i=0;i<tb.Rows.Count;i++)
        //            {
        //                checkedComboBoxEdit1.Properties.Items.Add(tb.Rows[i]["TypeId"].ToString());
        //            }
        //        }
                
            

        //}

        private void lookUpEdit1_EditValueChanged(object sender, EventArgs e)
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            var obj = Context.ByPiece_Employees.FirstOrDefault(p => p.EmpId == lookUpEdit1.Text);         
                //label4.Text = obj.EmpName;

        }

        private void txtPROJECT_NOType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_Leave_1(object sender, EventArgs e)
        {
                DataTable tb_Project = DataHelper.GetIDO_Project(comboBox1.Text);
          
          
            if (tb_Project.Rows.Count >= 1)
            {
                for (int a = 0; a < tb_Project.Rows.Count; a++)
                {
                    txtPROJECT_NOType.Properties.Items.Add(tb_Project.Rows[a]["PROJECT_NO"].ToString());
                }
            }
            else
            {
                MessageBox.Show("IDO有誤，請檢查!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            DataTable tb_IDO = DataHelper.GetIDO_Material(comboBox1.Text);
            if (tb_IDO.Rows.Count >= 1) 
            {
                for (int a = 0; a < tb_IDO.Rows.Count; a++)
                {
                    checkedComboBoxEdit1.Properties.Items.Add(tb_IDO.Rows[a]["pgmn"].ToString());
                }
            }


        }






       }

      
    }

