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
    public partial class SpreadDefectDetailListForm : PH.UI.UI2.ChildListForm
    {
        public SpreadDefectDetailListForm()
        {
            InitializeComponent();
        }

        private void SpreadDefectDetailListForm_Load(object sender, EventArgs e)
        {
            
            ///Summary
            ///Setting Allow in Grid Edit Data
            ///Summary
            try
            {
                this.objListGridView.OptionsBehavior.Editable = true;
                this.AllowGridEdit = true;
                this.AllowKeyPress = true;

                //Summary
                //Setting Add & Delete button visiable equel nerver
                //Summary
                base.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                base.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnCopyToAll.Enabled = false;

                //Summary
                //Load Process Solution data
                //Summary
                string strParameterType = "SDPS";
                PH.FabricInspection.BO.FabricInspectionDataContext sm= new FabricInspectionDataContext();    
                var Context01 = from ProcSolution in sm.Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select ProcSolution;
                repositoryItemLookUpEdit2.DataSource = Context01;
                repositoryItemLookUpEdit3.DataSource = Context01;
                repositoryItemLookUpEdit4.DataSource = Context01;
                repositoryItemLookUpEdit5.DataSource = Context01;
                repositoryItemLookUpEdit6.DataSource = Context01;
                barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                barBtnCopyToAll.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                barBtnOpen.Enabled = true;
                barBtnCopyToAll.Enabled = true; 
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message); 
            }

        }

        private void barBtnCopyToAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ///Summary
            ///Process Copy to All Function
            ///Summary

            try
            {
                Fabric_Insp_SpreadDefect detail = (Fabric_Insp_SpreadDefect)this.CurBindingSource.Current;
                if (detail == null)
                {
                    return;
                }
                string ProcessSolution01 = detail.Proc_Code1;
                string ProcessSolution02 = detail.Proc_Code2;
                string ProcessSolution03 = detail.Proc_Code3;
                string ProcessSolution04 = detail.Proc_Code4;
                string ProcessSolution05 = detail.Proc_Code5;
                string ProcessStatus = detail.Proc_Status;

                foreach (Fabric_Insp_SpreadDefect temp in this.CurBindingSource)
                {
                    temp.Proc_Code1 = ProcessSolution01;
                    temp.Proc_Code2 = ProcessSolution01;
                    temp.Proc_Code3 = ProcessSolution01;
                    temp.Proc_Code4 = ProcessSolution01;
                    temp.Proc_Code5 = ProcessSolution01;
                    temp.Proc_Status = ProcessStatus;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);  
            }
   
        }

    }
}
