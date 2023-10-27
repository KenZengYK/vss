using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;
using PH.BasicInfo.BackEnd.Incoterms.Report;

namespace PH.BasicInfo.UI.Incoterms
{
    public partial class ImParentListFrm : ListForm
    {
        public ImParentListFrm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            IncotermList DataLst = new IncotermList();
            this.DataContext = DataLst.CurrentDataContext;
            this.BindingSource.DataSource = DataLst.GetAllData();
            base.DataBind();
            this.EditorTypeName = typeof(ImListEditFrm).FullName;
        }

        private void barBtnENG_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.Incoterms.Report.ENGRpt Rpt = new PH.BasicInfo.BackEnd.Incoterms.Report.ENGRpt();
            Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.WhereCondition = !string.IsNullOrEmpty(objListGridView.FilterPanelText) ? "where " + objListGridView.FilterPanelText : string.Empty;
            Rpt.ShowPreviewDialog();
        }

        private void barBtnCHI_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.Incoterms.Report.CHIRpt Rpt = new PH.BasicInfo.BackEnd.Incoterms.Report.CHIRpt();
            Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.WhereCondition = !string.IsNullOrEmpty(objListGridView.FilterPanelText) ? "where " + objListGridView.FilterPanelText : string.Empty;
            Rpt.ShowPreviewDialog();
        }
    }
}
