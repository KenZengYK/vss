using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using System.Linq;  

namespace PH.FabricInspection.UI
{
    public partial class ProcessSolutionMasterDetailForm : PH.UI.UI2.ParentChildForm
    {
        public ProcessSolutionMasterDetailForm()
        {
            InitializeComponent();
            this.spreadDefectDetailListForm1.EditorTypeName = typeof(ProcessSolutionDetailForm).FullName;
        }


        private void ProcessSolutionDetailsForm_Load(object sender, EventArgs e)
        {
            base.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            base.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;     
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.spreadDefectDetailListForm1.barBtnCopyToAll.Enabled = true;
        }

        protected override void CancelCurrent()
        {
            base.CancelCurrent();
            this.spreadDefectDetailListForm1.barBtnCopyToAll.Enabled = true;
        }

        protected override void SaveCurrent()
        {

            (this.CurBindingSource.Current as Fabric_Insp_Header).Change_Date = DateTime.Now;
            (this.CurBindingSource.Current as Fabric_Insp_Header).Change_User = PH.Environment.Instance.CurrentUser.UserID;

            var sod = (this.CurBindingSource.Current as Fabric_Insp_Header).Fabric_Insp_SpreadDefects.Where(cc => cc.Proc_Status == "退料".ToString()).Count();

            if (sod > 0)
            {
                (this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result = "退料";
            }
            else if ((this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result != "退料" && (this.CurBindingSource.Current as Fabric_Insp_Header).Fabric_Insp_SpreadDefects.Where(cc => cc.Proc_Status == "扣數".ToString()).Count() > 0)
            {
                (this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result = "扣數";
            }
            else if ((this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result != "扣數" && (this.CurBindingSource.Current as Fabric_Insp_Header).Fabric_Insp_SpreadDefects.Where(cc => cc.Proc_Status == "OK".ToString()).Count() > 0)
            {
                (this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result = "OK";
            } 
            base.SaveCurrent();
            this.spreadDefectDetailListForm1.barBtnCopyToAll.Enabled = true;
        }

        protected override void SaveAndReturnCurrent()
        {
            (this.CurBindingSource.Current as Fabric_Insp_Header).Change_Date = DateTime.Now;
            (this.CurBindingSource.Current as Fabric_Insp_Header).Change_User = PH.Environment.Instance.CurrentUser.UserID;
    
            var sod=(this.CurBindingSource.Current as Fabric_Insp_Header).Fabric_Insp_SpreadDefects.Where(cc=>cc.Proc_Status == "退料".ToString()).Count(); 

            if (sod>0)
            {
                (this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result = "退料";
            }
            else if ((this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result != "退料" && (this.CurBindingSource.Current as Fabric_Insp_Header).Fabric_Insp_SpreadDefects.Where(cc => cc.Proc_Status == "扣數".ToString()).Count()>0)
            {
                (this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result = "扣數";
            }
            else if ((this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result != "扣數" && (this.CurBindingSource.Current as Fabric_Insp_Header).Fabric_Insp_SpreadDefects.Where(cc => cc.Proc_Status == "OK".ToString()).Count()>0)
            {
                (this.CurBindingSource.Current as Fabric_Insp_Header).Spread_Insp_Result = "OK";
            }
            base.SaveAndReturnCurrent();
        }

        private void ProcessSolutionMasterDetailForm_Load(object sender, EventArgs e)
        {
        }

     }
}

