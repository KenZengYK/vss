using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class ProductionScheduleBarChartQueryForm : Form
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        List<QC_Master> List = new List<QC_Master>();

        object ParentObj;
        public ProductionScheduleBarChartQueryForm(object parent)
        {
            InitializeComponent();
            ParentObj = parent;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            string Sqlstr = "exec sp_v_scheduling_FAEDateTime  '{0}', '{1}', '{2}', '{3}', '{4}' , '{5}'  ";



            Sqlstr = string.Format(Sqlstr, txtFactory.Text, txtWorkShop.Text, txtLine.Text, txtProject.Text, txtStyle.Text, txtColor.Text);

          
            //tb = db.ExecuteDataTable(Sqlstr, "111");
            DataSet  ds = db.ExecuteDataSet(Sqlstr, new DataSet(), "Opts");

            (this.ParentObj as ProductionScheduleBarChartForm).ds = ds;

            this.DialogResult = DialogResult.OK;
            this.Close();


        }

        private void txtFactory_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.txtFactory.Text == "") return;
            List = db.QC_Masters.Where(p=>p.Factory==this.txtFactory.Text).ToList<QC_Master>();
            this.txtWorkShop.Properties.Items.Clear();
            this.txtWorkShop.Properties.Items.AddRange(List.Select(p => p.WorkShop).Distinct().ToList()); 
            
           
        }

        private void txtLine_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.txtLine.Text == "") return;
            List = List.Where(p => p.Line == this.txtLine.Text).ToList<QC_Master>();
            this.txtProject.Properties.Items.Clear();
            this.txtProject.Properties.Items.AddRange(List.Select(p => p.Project).Distinct().ToList()); 
            //this.txtWorkShop.Properties.Items.Clear();
            //this.txtWorkShop.Properties.Items.AddRange(List.Select(p => p.WorkShop).Distinct().ToList());     
        }

        private void txtWorkShop_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.txtWorkShop.Text == "") return;
            List = List.Where(p => p.WorkShop == this.txtWorkShop.Text).ToList<QC_Master>();
            this.txtLine.Properties.Items.Clear();
            this.txtLine.Properties.Items.AddRange(List.Select(p => p.Line).Distinct().ToList());             
            
            //this.txtWorkShop.Properties.Items.Clear();
            //this.txtWorkShop.Properties.Items.AddRange(List.Select(p => p.WorkShop).Distinct().ToList());     
            //this.txtProject.Properties.Items.Clear();
            //this.txtProject.Properties.Items.AddRange(List.Select(p => p.Project).Distinct().ToList());     
        }

        private void txtProject_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.txtProject.Text == "") return;
            List = List.Where(p => p.Project == this.txtProject.Text).ToList<QC_Master>();
            this.txtStyle.Properties.Items.Clear();
            this.txtStyle.Properties.Items.AddRange(List.Select(p => p.Style).Distinct().ToList());   
        }

        private void txtStyle_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.txtStyle.Text == "") return;
            List = List.Where(p => p.Project == this.txtStyle.Text).ToList<QC_Master>();
            this.txtColor.Properties.Items.Clear();
            this.txtColor.Properties.Items.AddRange(List.Select(p => p.Color).Distinct().ToList());   
        }
    }
}
