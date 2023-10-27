using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCShowForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string AOverallReject = "";


        public CustQCShowForm()
        {
            InitializeComponent();
        }

        public CustQCShowForm(string OverallReject)           
        {
            InitializeComponent();

            AOverallReject = OverallReject;
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = typeof(CustQCMaster);

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnSave.Visibility = BarItemVisibility.Never;
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
            this.barBtnFind.Visibility = BarItemVisibility.Always;
        }

        CustQCQueryForm frmQuery = new CustQCQueryForm();
        List<CustQCMaster> DataList;
        protected override void OnClickFind()
        {
            if (frmQuery.ShowDialog() == DialogResult.OK)
            {
                if (frmQuery.CalulateType == CustQCReportCalulateType.ByWeek)
                {
                    this.gridBandQueryCondition.Caption = string.Format("Q.C. loc.: {0}  Exam Week: {1}", frmQuery.QCLocation, frmQuery.WeekOfYear.ToString());
                }
                else
                {
                    this.gridBandQueryCondition.Caption = string.Format("Q.C. loc.: {0}  Exam Date: {1} ~ {2}",
                        frmQuery.QCLocation, frmQuery.StartDate.ToString("yyyy-MM-dd"), frmQuery.DueDate.ToString("yyyy-MM-dd"));
                }

                List<string> FactoryList = new List<string>();
                FactoryList.Add("GG");
                FactoryList.Add("RX");
                if (frmQuery.QCLocation == "CN") FactoryList.Add("SL");

                List<CustQCMaster> CList = (this.DataContext as MobileQCDataContext).CustQCMasters.Where(p =>
                    (
                    (frmQuery.QCLocation == "GX" && FactoryList.Contains(p.MfgLocation) ) || (p.MfgLocation == frmQuery.QCLocation)
                    || (frmQuery.QCLocation == "CN" && FactoryList.Contains(p.MfgLocation)) 
                    ) 
                    && p.ExamDate >= frmQuery.StartDate && p.ExamDate < frmQuery.DueDate.AddDays(1)
                    && p.IsShowRpt =="Y"
                    ).OrderBy(p => p.ExamDate).ThenBy(p => p.OID).ToList();

                DataList = CList.Where(dr => (AOverallReject == "")  || (AOverallReject == "1" && dr.OverallRejectShow == "x") ).ToList();
                  
                  
                int Seq = 1;
                foreach (var obj in DataList)
                {
                    obj.SeqNo = Seq++;
                }

                this.BindingSource.DataSource = DataList;



            }
        }

        private void btnPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            List<CustQCMaster> Alist = new List<CustQCMaster>();
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                CustQCMaster Aobj = this.bandedGridView1.GetRow(i) as CustQCMaster;
                Alist.Add(Aobj);
            }

            List<CustQCMaster> StratDataSource = BindingSource.List as List<CustQCMaster>;

            List<long> AOIDlist = Alist.Select(dr => dr.OID).ToList();
            string OIDStr =string.Join("/", Alist.Select(dr => dr.OID.ToString()).ToArray());

            if (this.BindingSource.List.Count == 0) return;

            CustQCSummaryReport rptSummary;
            if (frmQuery.CalulateType == CustQCReportCalulateType.ByWeek)
            {
                rptSummary = new CustQCSummaryReport(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate, frmQuery.WeekOfYear, AOIDlist, StratDataSource);
            }
            else
            {
                rptSummary = new CustQCSummaryReport(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate, AOIDlist, StratDataSource);
            }
            rptSummary.CreateDocument();
            CustQCDetailReport rptDetail = new CustQCDetailReport(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate.AddDays(1), OIDStr);
            rptDetail.CreateDocument();
            rptSummary.PrintingSystem.Pages.AddRange(rptDetail.Pages);
            rptSummary.ShowPreview();
        }

        private void btnAdditionalInformation_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DataList == null) return;
            AdditionalInformationForm frmAdditional = new AdditionalInformationForm(DataList);
            //int xWidth = SystemInformation.PrimaryMonitorSize.Width;//获取显示器屏幕宽度
            //int yHeight = SystemInformation.PrimaryMonitorSize.Height;//高度
            frmAdditional.Location = new Point(234, 457);
            frmAdditional.ShowDialog();
        }

        private void btnDetailInformation_ItemClick(object sender, ItemClickEventArgs e)
        {
            DetailInformationForm frmDetail = new DetailInformationForm(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate);
            frmDetail.ShowDialog();
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {

            switch (e.Column.FieldName)
            {
                case "CasingCriticalDefectQtyShow":
                case "OptCriticalDefectQtyShow":
                    int FieldValue = ConvertToInt(this.bandedGridView1.GetRowCellValue(e.RowHandle, e.Column.FieldName));
                    e.Appearance.ForeColor = FieldValue > 0 ? Color.Red : Color.Black;
                    break;

                case "OptMarjorDefectQtyShow":
                    int OptMarjorDefectQtyShow = ConvertToInt(this.bandedGridView1.GetRowCellValue(e.RowHandle, "OptMarjorDefectQtyShow"));
                    int AQLMarjorDefectAcceptQty = ConvertToInt(this.bandedGridView1.GetRowCellValue(e.RowHandle, "AQLMarjorDefectAcceptQty"));
                    e.Appearance.ForeColor = OptMarjorDefectQtyShow > AQLMarjorDefectAcceptQty ? Color.Red : Color.Black;
                    break;

                case "OptMinorDefectQtyShow":
                    int OptMinorDefectQtyShow = ConvertToInt(this.bandedGridView1.GetRowCellValue(e.RowHandle, "OptMinorDefectQtyShow"));
                    int AQLMinorDefectAcceptQty = ConvertToInt(this.bandedGridView1.GetRowCellValue(e.RowHandle, "AQLMinorDefectAcceptQty"));
                    e.Appearance.ForeColor = OptMinorDefectQtyShow > AQLMinorDefectAcceptQty ? Color.Red : Color.Black;

                    break;
                default:
                    break;
            }

        }

        int ConvertToInt(object ACurrentColumnValue)
        {
            try
            {
                return Convert.ToInt32(ACurrentColumnValue);
            }
            catch
            {
                return 0;
            }
        }

    }
}
