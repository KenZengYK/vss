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
    public partial class WorkTimeApplicationGroupDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public WorkTimeApplicationGroupDetailForm()
        {
            InitializeComponent();
        }
         
        public override void EditCurrent()
        {
            if (string.IsNullOrEmpty(application_ManTextEdit.Text))
            {
                this.application_DateDateEdit.Text = DateTime.Now.ToString("yyyy-MM-dd");
                this.application_ManTextEdit.Text = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            }
            base.EditCurrent();
          
            //this.txtID.Properties.ReadOnly = true;
        }

        ByPrice_WorkTimeApplication_Master obj;
        protected override void SaveCurrent()
        {
            obj = this.BindingSource.Current as ByPrice_WorkTimeApplication_Master;
            //TimeSpan ts = Convert.ToDateTime(this.txtTimeDue.Text) - Convert.ToDateTime(this.txtTimeStart.Text);
            //obj.Time_Quantum = Convert.ToDecimal(ts.TotalMinutes / 60);
            //ByPrice_WorkTimeApplication obj=this.bin
            obj.Flag =  (this.ListForm as WorkTimeApplicationGroupListForm).Flag;
            base.SaveCurrent();

        }

        PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
        public override void DataBind()
        {

            obj = this.BindingSource.Current as ByPrice_WorkTimeApplication_Master;
           
            this.workTimeApplicationListForm1.BindingSource.DataSource = obj.ByPrice_WorkTimeApplications.Where(p=>p.Flag==(this.ListForm as WorkTimeApplicationGroupListForm).Flag).OrderBy(p => p.NumB);
            this.workTimeApplicationListForm1.Flag = (this.ListForm as WorkTimeApplicationGroupListForm).Flag;
            this.workTimeApplicationListForm1.BsEmp.DataSource = Context.ByPiece_Employees.Where(p => p.Flag == (this.ListForm as WorkTimeApplicationGroupListForm).Flag);
            //this.workTimeApplicationListForm1.gridColumn12
            base.DataBind();
        }

    }
}
