using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;
using PH.Platform.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class WorkTimeApplicationListForm : ListForm
    {
        public WorkTimeApplicationListForm()
        {
            InitializeComponent();      
        }

        public int Flag;
        PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
        public override void DataBind()
        {
            this.DataContext = Context;
            //this.Flag = (this.ListForm as WorkTimeApplicationGroupListForm).Flag;
            this.BindingSource.DataSource = Context.ByPrice_WorkTimeApplications.Where(p=>p.Flag==this.Flag);
            //this.EditorTypeName = typeof(WorkTimeApplicationDetailForm).FullName;
            this.AllowGridEdit = true;
            //this.BsEmp.DataSource = Context.ByPiece_Employees.Where(p => p.Flag == this.Flag);
            base.DataBind();
        }
        ByPrice_WorkTimeApplication obj;
        public override void SaveData()
        {
            obj = this.BindingSource.Current as ByPrice_WorkTimeApplication;
            obj.Flag = this.Flag;
            base.SaveData();

            //this.txtID.Properties.ReadOnly = true;
        }

        //ByPrice_WorkTimeApplication obj;
        //protected override void SaveCurrent()
        //{
        //     obj = this.BindingSource.Current as ByPrice_WorkTimeApplication;
        //     obj.Flag = this.Flag;
        //      base.SaveCurrent();
        //}
    


    }
}
