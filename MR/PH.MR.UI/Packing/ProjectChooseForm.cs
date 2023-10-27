using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.Packing
{
    public partial class ProjectChooseForm : Form
    {
        private ProjectSelectEnume _ProjectType
        {
            get;
            set;
        }

        public List<string> SelectedProjectNOS
        {
            get
            {
                List<string> vals = new List<string>();
                foreach (ProjectBO item in this.bindingSource_Choose.List)
                {
                    vals.Add(item.ProjectNO.Trim());
                }
                return vals;
            }
        }

        public ProjectChooseForm(ProjectSelectEnume Type)
        {
            InitializeComponent();
            this._ProjectType = Type;
            DataBind();
        }

        private void DataBind()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            switch (this._ProjectType)
            {
                case ProjectSelectEnume.GenerateCompareWeight:
                    this.bindingSource_Original.DataSource = from val in dcon.V_ProjectNOs
                                                             orderby val.ProjectNO
                                                             select new ProjectBO { Selected = false, ProjectNO = val.ProjectNO, SalesOrderNO = val.SalesOrder };
                    break;
                case ProjectSelectEnume.CompareReport:
                    this.bindingSource_Original.DataSource = dcon.MRStyleWeightCompare_Packings.Select(p => new ProjectBO { Selected = false, ProjectNO = p.ProjectNO, SalesOrderNO = p.SalesOrder }).Distinct().ToList();
                    break;
            }

        }

        private void sBtn_Cancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void sBtn_Select_Click(object sender, EventArgs e)
        {
            if (this.bindingSource_Choose.List.Count == 0)
            {
                MessageBox.Show("請選擇Project!", "系統提示");
                return;
            }
            this.DialogResult = DialogResult.OK;
        }

        //Xsj:add Project
        private void sBtn_Add_Click(object sender, EventArgs e)
        {
            List<ProjectBO> selectedBOList = new List<ProjectBO>();
            foreach (ProjectBO item in this.bindingSource_Original.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (ProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bindingSource_Choose.Add(item);
                this.bindingSource_Original.Remove(item);
            }
            this.gridView_Original.RefreshData();
            this.gridView_Chose.RefreshData();
            this.chk_OriginalALL.Checked = false;
            this.chk_ChoseALL.Checked = false;
        }

        //Xsj:remove Project
        private void sBtn_Remove_Click(object sender, EventArgs e)
        {
            List<ProjectBO> selectedBOList = new List<ProjectBO>();
            foreach (ProjectBO item in this.bindingSource_Choose.List)
            {
                if (item.Selected)
                {
                    selectedBOList.Add(item);
                }
            }

            foreach (ProjectBO item in selectedBOList)
            {
                item.Selected = false;
                this.bindingSource_Original.Add(item);
                this.bindingSource_Choose.Remove(item);
            }
            this.gridView_Chose.RefreshData();
            this.gridView_Original.RefreshData();
            this.chk_ChoseALL.Checked = false;
            this.chk_OriginalALL.Checked = false;
        }


        //Xsj:Chose ALL Original
        private void chk_OriginalALL_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < this.gridView_Original.RowCount; i++)
            {
                ProjectBO bo = this.gridView_Original.GetRow(i) as ProjectBO;
                bo.Selected = this.chk_OriginalALL.Checked;
            }
            this.gridView_Original.RefreshData();
        }

        //Xsj:Chose ALL Selected
        private void chk_ChoseALL_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < this.gridView_Chose.RowCount; i++)
            {
                ProjectBO bo = this.gridView_Chose.GetRow(i) as ProjectBO;
                bo.Selected = this.chk_ChoseALL.Checked;
            }
            this.gridView_Chose.RefreshData();
        }

        private void bindingSource_Original_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lbl_Original.Text = this.bindingSource_Original.List.Count.ToString();
        }

        private void bindingSource_Choose_ListChanged(object sender, ListChangedEventArgs e)
        {
            this.lbl_Chose.Text = this.bindingSource_Choose.List.Count.ToString();
        }


    }
}
