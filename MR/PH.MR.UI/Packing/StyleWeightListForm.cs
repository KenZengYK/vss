using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;

namespace PH.MR.UI.Packing
{
    public partial class StyleWeightListForm : PH.Platform.UI.CS.BaseListForm
    {
        public StyleWeightListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleWeightDetailForm).FullName;
        }

        public override void DataBind()
        {
            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            this.DataContext = dcon;
            this.DataContext.CommandTimeout = 3000;

            DataQueryParameter result = new DataQueryParameter();
            result.BoType = typeof(PH.MR.BO.MRStyleWeightCompare_Packing);
            result.View = this.objListGridView;
            result.WarnRecord = -1;
            this.StartEnquiry(result);


            //this.BindingSource.DataSource = dcon.MRStyleWeightCompare_Packings;
            //this.objListGridView.RefreshData(); 


            SetReadOnly();
        }

        private void SetReadOnly()
        {
            Color color = Color.FromArgb(195, 246, 246);

            this.colSalesOrder.RealColumnEdit.ReadOnly = true;
            //this.colSalesOrder.OptionsColumn.AllowEdit = false;
            this.colSalesOrder.AppearanceCell.BackColor = color;

            this.colProjectNO.RealColumnEdit.ReadOnly = true;
            //this.colProjectNO.OptionsColumn.AllowEdit = false;
            this.colProjectNO.AppearanceCell.BackColor = color;

            this.colStyleNO.RealColumnEdit.ReadOnly = true;
            //this.colStyleNO.OptionsColumn.AllowEdit = false;
            this.colStyleNO.AppearanceCell.BackColor = color;

            this.colWeight_MR.RealColumnEdit.ReadOnly = true;
            //this.colWeight_MR.OptionsColumn.AllowEdit = false;
            this.colWeight_MR.AppearanceCell.BackColor = color;

            this.colWeight_packing.RealColumnEdit.ReadOnly = true;
            //this.colWeight_packing.OptionsColumn.AllowEdit = false;
            this.colWeight_packing.AppearanceCell.BackColor = color;

            this.colWorkOrderNO.RealColumnEdit.ReadOnly = true;
            //this.colWorkOrderNO.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNO.AppearanceCell.BackColor = color;

        }




        private void bBtn_GenerateStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ProjectChooseForm projectChooseFrm = new ProjectChooseForm(ProjectSelectEnume.GenerateCompareWeight);
            if (projectChooseFrm.ShowDialog() != DialogResult.OK)
            {
                return;
            }
            List<string> prjNOs = projectChooseFrm.SelectedProjectNOS;
            if (prjNOs.Count == 0)
            {
                return;
            }
            PH.MR.BO.MRDataContext dcon = this.DataContext as PH.MR.BO.MRDataContext;
            List<string> alives = dcon.MRStyleWeightCompare_Packings.Where(p =>prjNOs.Contains(p.ProjectNO)).Select(p=>p.ProjectNO).Distinct().ToList();
            string alivePrjNOS="";
            foreach (string item in alives)
            {
                alivePrjNOS +="["+ item.Trim() + "] ";
            }

            if (alivePrjNOS != "")
            {
                if (MessageBox.Show("Project NO:\r\n" + alivePrjNOS + "\r\n 已經存在記錄，對應的Weight將被更新。你卻認要繼續嗎？",
                     "系統提示",
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question)
                    == DialogResult.No)
                {
                    return;
                }
            }
            else
            {
                if (MessageBox.Show("你卻認要生成Project NO:\r\n" + alivePrjNOS + "\r\n 的style信息嗎？",
                                "系統提示",
                                MessageBoxButtons.YesNo,
                                MessageBoxIcon.Question)
                    == DialogResult.No)
                {
                    return;
                }
            }

            string selectedPrjNOs = "";
            foreach (string item in prjNOs)
            {
                selectedPrjNOs +=  item + ",";
            }
            if (selectedPrjNOs.Length > 0)
            {
                selectedPrjNOs = selectedPrjNOs.Substring(0, selectedPrjNOs.Length - 1);
            }

            dcon.P_GenerateStyle_Packing(selectedPrjNOs, PH.Platform.Common.SysParamHelper.Instance.UserID);
            this.objListGridView.RefreshData();
            DataBind();

            MessageBox.Show("生成style信息完成,你需要重新刷新數據才能看到最新的結果！", "系統提示");
        }

        private void CompareReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        { 
            ProjectChooseForm projectChooseFrm = new ProjectChooseForm(ProjectSelectEnume.CompareReport);
            if (projectChooseFrm.ShowDialog() != DialogResult.OK)
            {
                return;
            }
            List<string> prjNOs = projectChooseFrm.SelectedProjectNOS;
            if (prjNOs.Count == 0)
            {
                return;
            } 

            PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            List<PH.MR.BO.MRStyleWeightCompare_Packing> bos = dcon.MRStyleWeightCompare_Packings.Where(p => prjNOs.Contains(p.ProjectNO)).OrderBy(p => p.StyleNO).ToList();
            PH.MR.BackEnd.Report.StyleWeightCompareRpt rpt = new PH.MR.BackEnd.Report.StyleWeightCompareRpt();
            rpt.DataSource = bos;
            rpt.ShowPreview();

        }

    }
}
