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
    public partial class ProcessSolutionDetailForm : PH.UI.UI2.ChildDetailForm
    {
        public ProcessSolutionDetailForm()
        {
            InitializeComponent();
        }

        private void ProcessSolutionDetailForm_Load(object sender, EventArgs e)
        {
            ///Summary
            ///Load Process Solution data into LookUpEdit control
            ///Summary
            string strParameterType = "SDPS";
            this.lookUpEdit1.Properties.DataSource = from ProcSolution in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select ProcSolution;
            this.lookUpEdit2.Properties.DataSource = from ProcSolution in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select ProcSolution;
            this.lookUpEdit3.Properties.DataSource = from ProcSolution in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select ProcSolution;
            this.lookUpEdit4.Properties.DataSource = from ProcSolution in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select ProcSolution;
            this.lookUpEdit5.Properties.DataSource = from ProcSolution in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select ProcSolution;

            ///Summary
            ///Load Item No & Item Description & Stock In Date
            ///Summary
            var Context01 = (this.CurBindingSource.Current as Fabric_Insp_SpreadDefect).Fabric_Insp_Header; 
            textEdit3.EditValue = Context01.Item_No;
            textEdit4.EditValue=Context01.Item_Desc;
            textEdit1.EditValue = Context01.Stock_In_Date;

            ///Summary
            ///Setting button for Add & Delete denie use
            ///Summary

            base.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            base.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;    

        }

    }
}
