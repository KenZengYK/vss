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
    public partial class PriceOrderDetailForm_Material : PH.Platform.UI.CS.UI2.DetailForm
    {

       

        public PriceOrderDetailForm_Material()
        {
            InitializeComponent();       
                         
        }


        
        ByPrice_Order ByPriceOr;
        public override void DataBind()
        {
            ByPriceOr = this.BindingSource.Current as ByPrice_Order;
            this.Flag = (this.ListForm as PriceOrderListForm_Material).Flag;
            BindLookEdit();
            BindcheckedComboBoxEdit();    
            base.DataBind();

        }


        public override void EditCurrent()
        {
           
             base.EditCurrent();

            //this.txtID.Properties.ReadOnly = true;
        }

        public int Flag;
        protected override void SaveCurrent()
        {           
            if (CheackTxt())
            {
                PHGDB2DataContext context = this.DataContext as PHGDB2DataContext;
                this.Flag = (this.ListForm as PriceOrderListForm_Material).Flag;
                bool i = context.GetUser_Material(this.lookUpEdit1.EditValue.ToString(), checkedComboBoxEdit1.Text, Convert.ToDateTime(txtStartDate.Text), Convert.ToDateTime(txtDueDate.Text), txtCalculate_Type.SelectedIndex, this.Flag);
                ByPriceOr.OrderMan = this.lookUpEdit1.Text;
                ByPriceOr.Flag = Flag;
                base.SaveCurrent();
            }
        }

        bool CheackTxt()
        {
            if (string.IsNullOrEmpty(this.txtStartDate.Text))
            {
                MessageBox.Show("請選擇開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtCalculate_Type.Text))
            {
                MessageBox.Show("請選擇計件類別!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.checkedComboBoxEdit1.Text))
            {
                MessageBox.Show("請選擇物料種類!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtDueDate.Text))
            {
                MessageBox.Show("請選擇結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            //else if (string.IsNullOrEmpty(this.txtSAH_Type.Text))
            //{
            //    MessageBox.Show("請SAH类别!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //    return false;
            //}
            else if (this.txtStartDate.DateTime > this.txtDueDate.DateTime)
            {
                MessageBox.Show("開始日期需小於結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            //else if (string.IsNullOrEmpty(this.txtIDMan.Text))
            //{
            //    MessageBox.Show("請填寫調到倉管!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //    return false;
            //}
            return true;

        }

        //private void txtCalculate_Type_SelectedValueChanged(object sender, EventArgs e)
        //{
        //    BindcheckedComboBoxEdit();
        //    string Calculate_Type = txtCalculate_Type.Text;
        //    if(Calculate_Type=="Issue")
        //    {
        //        var MaterialItem=(from a in Context.ByPiece_IssueItems select a.MaterialType).Distinct();

        //        //txtSAH_Type.Enabled = true;
        //        txtMaterialType.Items.Clear();
        //        txtMaterialType.Text = "";

        //       foreach(var a in MaterialItem)
        //       {
                  
        //           txtMaterialType.Items.Add(a);
                   
        //        }
        //    }
              
        //    else   if(Calculate_Type=="Recive")
        //    {
        //        var MaterialItem = (from a in Context.ByPiece_ReciveItems select a.MaterialType).Distinct();

        //        //txtSAH_Type.Text = "母";
        //        //txtSAH_Type.Enabled = false;
        //        txtMaterialType.Items.Clear();
        //        txtMaterialType.Text = "";

        //       foreach(var a in MaterialItem)
        //       {
        //            txtMaterialType.Items.Add(a);                 

        //        }
        //    }

        //    else  if(Calculate_Type=="Return")
        //    {
        //        var MaterialItem = (from a in Context.ByPiece_ReturnItems select a.MaterialType).Distinct();

        //        //txtSAH_Type.Text = "母";
        //        //txtSAH_Type.Enabled = false;
        //        txtMaterialType.Items.Clear();
        //        txtMaterialType.Text = "";

        //       foreach(var a in MaterialItem)
        //       {
                  
        //            txtMaterialType.Items.Add(a);
                  
        //        }
        //    }

        //}

        //private void txtIDMan_SelectedValueChanged(object sender, EventArgs e)
        //{
        //    var ID = Context.ByPiece_Employees.Where(p => p.EmpId == txtIDMan.Text).Select(p => p.EmpName);
        //    foreach (var a in ID) 
        //    {
        //        label7.Text = a;
        //    }
        //}

        
        BindingSource bs = new BindingSource();
       
        private void BindLookEdit()
        {

            PH.PHGDB2.BO.PHGDB2DataContext Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            var _emplist1 = Context.ByPiece_Employees.Where(p => p.Flag == this.Flag);
              //from p in Context.ByPiece_Employees  select p;
      
            bs.DataSource = _emplist1;
     
            this.lookUpEdit1.Properties.Columns.Clear();

            this.lookUpEdit1.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 10, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
        
            this.lookUpEdit1.Properties.AutoSearchColumnIndex = 0;      
            this.lookUpEdit1.Properties.DataSource = bs;          
            this.lookUpEdit1.Properties.ValueMember = "EmpId";
            this.lookUpEdit1.Properties.DisplayMember = "EmpName";
          
            //if (ByPriceOr != null)
            //{
            //    List<ByPiece_Employee> ByEmployeeList = Context.ByPiece_Employees.ToList();
            //    if (ByEmployeeList != null)
            //    {
            //        ByPiece_Employee _emp1 = ByEmployeeList.Where(p => p.EmpId == ByPriceOr.OrderID).FirstOrDefault();
            //        if(_emp1!=null)
            //        label7.Text = _emp1.EmpName;
            //    }
            //}

        }

        private void BindcheckedComboBoxEdit() 
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();

            if (txtCalculate_Type.SelectedIndex == 0) 
            {
                //var MaterialItem = (from a in Context.ByPiece_IssueItems select a.MaterialType).Distinct();
                var MaterialItem = Context.ByPiece_IssueItem_Texts.Where(dr => dr.Flag == this.Flag).Select(dr => dr.MaterialType).OrderBy(dr => dr).Distinct();
                checkedComboBoxEdit1.Properties.Items.Clear();
                checkedComboBoxEdit1.Text = "";            

                foreach (var a in MaterialItem)
                {

                    checkedComboBoxEdit1.Properties.Items.Add(a);

                }
            }

            else   if (txtCalculate_Type.SelectedIndex == 1)
            {
                // var MaterialItem = (from a in Context.ByPiece_ReciveItems select a.MaterialType).Distinct();
                var MaterialItem = Context.ByPiece_ReciveItems.Where(dr => dr.Flag == this.Flag).Select(dr => dr.MaterialType).OrderBy(dr => dr).Distinct();
                checkedComboBoxEdit1.Properties.Items.Clear();
                checkedComboBoxEdit1.Text = "";

                foreach (var a in MaterialItem)
                {

                    checkedComboBoxEdit1.Properties.Items.Add(a);

                }
            }
            else if (txtCalculate_Type.SelectedIndex == 2)
            {
               // var MaterialItem = (from a in Context.ByPiece_ReturnItems select a.MaterialType).Distinct();
                var MaterialItem = Context.ByPiece_ReturnItems.Where(dr => dr.Flag == this.Flag).Select(dr => dr.MaterialType).OrderBy(dr => dr).Distinct();
                checkedComboBoxEdit1.Properties.Items.Clear();
                checkedComboBoxEdit1.Text = "";

                foreach (var a in MaterialItem)
                {

                    checkedComboBoxEdit1.Properties.Items.Add(a);

                }
            }
            else if (txtCalculate_Type.SelectedIndex == 3)
            {
               // var MaterialItem = (from a in Context.ByPiece_RCItems select a.MaterialType).Distinct();
                var MaterialItem = Context.ByPiece_RCItems.Where(dr => dr.Flag == this.Flag).Select(dr => dr.MaterialType).OrderBy(dr => dr).Distinct();
                checkedComboBoxEdit1.Properties.Items.Clear();
                checkedComboBoxEdit1.Text = "";

                foreach (var a in MaterialItem)
                {

                    checkedComboBoxEdit1.Properties.Items.Add(a);

                }
            }




        }

        private void lookUpEdit1_EditValueChanged(object sender, EventArgs e)
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
            var obj = Context.ByPiece_Employees.FirstOrDefault(p => p.EmpId == lookUpEdit1.Text);
            //label7.Text = obj.EmpName;   

            //ByPiece_Employee _defect = bs.Current as ByPiece_Employee;
            //object obj = lookUpEdit1.GetColumnValue("EmpName");
            //if (obj != null)
            //{
            //    label7.Text = lookUpEdit1.GetColumnValue("EmpName").ToString();

            //}
        }

        private void txtCalculate_Type_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindcheckedComboBoxEdit();
        }
   
       
    }
}
