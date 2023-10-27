using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.PO
{
    public partial class POHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POHeaderListForm()
        {
            InitializeComponent();
        }

        public int POType { get; set; }
        public POHeaderListForm(string APOType)
            : this()
        {
            this.POType = Convert.ToInt32(APOType);
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.POHeaders.Where(p => p.POType == this.POType).OrderByDescending(p => p.IssueDate);

            this.EditorTypeName = typeof(POHeaderDetailForm).FullName;
            base.DataBind();

            //this.colProjectionDate.Visible = this.POType == 0;

            //if (this.POType == 0)
            //{
            //    this.barBtnPrint_PYtoEnternal.Visibility = BarItemVisibility.Always;
            //    this.barBtnPrint_EnternaltoPH.Visibility = BarItemVisibility.Always;
            //    this.barBtnPrint_PHtoVendor.Visibility = BarItemVisibility.Always;
            //}
            //else if (this.POType == 1)
            //{
            //    this.barBtnPrint_PYtoEnternal.Visibility = BarItemVisibility.Never;
            //    this.barBtnPrint_EnternaltoPH.Visibility = BarItemVisibility.Never;
            //    this.barBtnPrint_PHtoVendor.Visibility = BarItemVisibility.Never;
            //}
        }

        private void btnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            POHeader poHeader = this.BindingSource.Current as POHeader;
            PrintSetupPO frmPrint = new PrintSetupPO(poHeader, this.POType);
            if (frmPrint.ShowDialog() == DialogResult.OK)
            {
                if (frmPrint.SelectLanguage == ReportLanguages.English)
                {
                    POReport_EN rtpPO = new POReport_EN(poHeader, frmPrint.SelectPOType, this.POType);
                    rtpPO.CreateDocument();

                    if (this.POType == 0 && poHeader.PODetails.Where(p => p.IsSupplement ?? false).Count() > 0)
                    {
                        POSubSupplement_EN subReportSupplement = new POSubSupplement_EN(poHeader, frmPrint.SelectPOType);
                        subReportSupplement.CreateDocument();

                        rtpPO.Pages.AddRange(subReportSupplement.Pages);
                        rtpPO.PrintingSystem.ContinuousPageNumbering = false;
                    }

                    rtpPO.ShowPreview();
                }
                else if (frmPrint.SelectLanguage == ReportLanguages.Chinese)
                {
                    MessageBox.Show("Under construction");
                    //POReport_CN rtpPO = new POReport_CN(this.BindingSource.Current as POHeader, frmPrint.SelectPOType, this.POType);
                    //rtpPO.ShowPreview();
                }
            }
        }

        //private void barBtnPrintPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    POReport rtpPO = new POReport(this.BindingSource.Current as POHeader, POTypes.YTToEnteranl);
        //    //POReport rtpPO = new POReport();
        //    //rtpPO.DataSource = this.BindingSource.Current as POHeader;
        //    rtpPO.ShowPreview();
        //}

        //private void barBtnPrint_YTtoEnternal_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    POReport rtpPO = new POReport(this.BindingSource.Current as POHeader, POTypes.PYToEteranl, this.POType);
        //    rtpPO.ShowPreview();
        //}

        //private void barBtnPrint_EnternaltoPH_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    POReport rtpPO = new POReport(this.BindingSource.Current as POHeader, POTypes.EternalToPHHK, this.POType);
        //    rtpPO.ShowPreview();
        //}

        //private void barBtnPrint_PHtoVendor_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    POReport rtpPO = new POReport(this.BindingSource.Current as POHeader, POTypes.PHHKToVendor, this.POType);
        //    rtpPO.ShowPreview();
        //}

        //private void barBtnGeneralPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    POReport rtpPO = new POReport(this.BindingSource.Current as POHeader, POTypes.GeneralPO, this.POType);
        //    rtpPO.ShowPreview();
        //}


    }
}
