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
    public partial class WorkTimeApplicationDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {

        //PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
        public WorkTimeApplicationDetailForm()
        {
            InitializeComponent();

        }

        public override void DataBind()
        {
            base.DataBind();
            this.numBComboBox.Items.Clear();
            PHGDB2DataContext db = this.DataContext as PHGDB2DataContext;
            this.numBComboBox.Items.AddRange(db.ByPiece_Employees.Select(p => p.EmpId).ToArray());
        }


        public override void ProcessFunctionRight() 
        {
            base.ProcessFunctionRight();
            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "IsAgree_Director");
            this.isAgree_DirectorCheckEdit.Enabled = obj!=null;

            PH.Platform.AuthMgr.BO.Auth_FunRight obj1 = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "IsAgree_Manager");

            this.isAgree_ManagerCheckEdit.Enabled = obj1 != null;

        }


        //public override void EditCurrent()x
        //{
        //    if (this.IsNew)
        //    {
        //        ByPrice_WorkTimeApplication obj = this.BindingSource.Current as ByPrice_WorkTimeApplication;


        //    }
        //    base.EditCurrent();

        //    //this.txtID.Properties.ReadOnly = true;
        //}


        public override void EditCurrent()
        {
            if (this.IsNew)
            {
                ByPrice_WorkTimeApplication obj = this.BindingSource.Current as ByPrice_WorkTimeApplication;


            }
            base.EditCurrent();

            //this.txtID.Properties.ReadOnly = true;
        }


        protected override void SaveCurrent()
        {

            ByPrice_WorkTimeApplication obj = this.BindingSource.Current as ByPrice_WorkTimeApplication;

            if (CheackTxt())
            {
                //obj.ApplicationDate = DateTime.Now;
                //obj.ApplicationName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

                obj.Time_Quantum_Start = Convert.ToDateTime(timeEdit1.Text);
                obj.Time_Quantum_Due = Convert.ToDateTime(timeEdit2.Text);
            }
               
                //TimeSpan ts = Convert.ToDateTime(this.txtTimeDue.Text) - Convert.ToDateTime(this.txtTimeStart.Text);
                //obj.Time_Quantum = Convert.ToDecimal(ts.TotalMinutes / 60);

            

            base.SaveCurrent();

            }

        bool CheackTxt()
        {
            if (string.IsNullOrEmpty(this.numBComboBox.Text))
            {
                MessageBox.Show("請填寫工號!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.nameComboBox.Text))
            {
                MessageBox.Show("請填寫姓名!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
      
            
            return true;

        }


        private void numBComboBox_SelectedValueChanged(object sender, EventArgs e)
        {
            PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
                        
           var name= Context.ByPiece_Employees.Where(p => p.EmpId == numBComboBox.Text).Select(p => p.EmpName);
           foreach (var a in name) 
           {
               nameComboBox.Text = a;
           }
        }

    }
}
