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
using PH.BasicInfo.BackEnd.DestinationPHKey.Report;


namespace PH.BasicInfo.UI.DestinationPHKey
{
    public partial class PHKeyParentListFrm : ListForm 
    {
        public PHKeyParentListFrm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            ForPointDeliveryofDestinationPHKeyList DataLst = new ForPointDeliveryofDestinationPHKeyList();
            this.DataContext = DataLst.CurrentDataContext;
            this.BindingSource.DataSource = DataLst.GetAllData();
            base.DataBind();
            this.EditorTypeName = typeof(PEParentChildFrm).FullName;

        }

        private void barBtnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.DestinationPHKey.Report.BuyerCargoRpt Rpt = new PH.BasicInfo.BackEnd.DestinationPHKey.Report.BuyerCargoRpt();
            Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.SqlWhere = !string.IsNullOrEmpty(Sql) ? "where " + Sql + "" : string.Empty;
            Rpt.ShowPreviewDialog();

        }
    }
}
