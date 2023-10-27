using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.POPC.BO;
using PH.Platform.UI.CS.DataQuery;

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.Data;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraEditors.Controls;
using PH.Platform.ExtendLibrary;

namespace PH.POPC.UI
{
    public partial class POClassCodeForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POClassCodeForm()
        {
            InitializeComponent();
        }

        PH.POPC.BO.POPCDataContext context;
        public override void DataBind()
        {
            base.DataBind();

            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);

            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
            this.objListGridView.OptionsBehavior.Editable = true;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.POPC.BO.POColorSizeDetail);
            param.WarnRecord = -1;
            this.StartEnquiry(param);

            AssignDataToLookupEdit();
            //foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn item in this.objListGridControl.Columns)
            //{
            //    item.OptionsColumn.AllowEdit = true;
            //    item.OptionsColumn.ReadOnly = false;

            //}
        }

        #region Enquiry

        private POPCSortBy _sortby;
        protected override void OnClickFind()
        {
            using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(5))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    EnquiryPOPC(frm.Condition);
                }
            }
        }
        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {

            //this.CreateWaitDialog("Loading data...", "Please waiting");
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

                this.DataContext = context;

                _sortby = condition.SortBy;

                var cc = from c in context.PODetails
                         where c.Company == condition.Company
                         && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                         && (c.VersionFlag ?? false)
                         && c.POHeader.POType == (int)POType.PO
                         && (c.POHeader.Flag == null || c.POHeader.Flag == "")
                         && (c.Flag == null || c.Flag == "")
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POHeader.Supplier))
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                         
                         && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.POHeader.OrderClass))
                         && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.POHeader.EndCustCode))
                         && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.POHeader.Dept))
                         && (string.IsNullOrEmpty(condition.Factory) || c.POHeader.Factory == condition.Factory)
                         && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.SupplierReference))

                         && (string.IsNullOrEmpty(condition.Coordinator) || c.POHeader.PurchaseOfficer == condition.Coordinator)
                         && (condition.IssueDateFrom == DateTime.MinValue ||
                               ((c.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                            )
                         && (condition.DeliveryDateFrom == DateTime.MinValue ||
                               ((c.ConfirmETADate) >= condition.DeliveryDateFrom && (c.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                            )

                         orderby c.PONO, c.OrderLine, c.ItemCode
                         select c;

                this.BindingSource.DataSource = cc;
                //GridViewSort();
            }
            finally
            {
                //ReleaseWaitDialog();
            }

        }
        #endregion

        private void AssignDataToLookupEdit()
        {
            DicList list = new DicList();

            #region Class Code

            LookUpColumnInfoCollection cols;
            var cc = list.GetDataDictionary(BO.Common.ClassCodeDictionary);
            this.ricbClassCode.DataSource = cc;
            this.ricbClassCode.DisplayMember = "DataCode";
            this.ricbClassCode.ValueMember = "DataCode";
            cols = this.ricbClassCode.Columns;
            LookUpColumnInfo lci = new LookUpColumnInfo("DataCode", "Code", 30);
            lci.Alignment = HorzAlignment.Center;
            cols.Add(lci);
            cols.Add(new LookUpColumnInfo("Description", "Description", 120));
            ricbClassCode.PopupFormWidth = 500;
            #endregion

        }

    }
}
