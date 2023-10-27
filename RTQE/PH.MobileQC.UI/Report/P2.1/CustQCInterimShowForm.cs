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
    public partial class CustQCInterimShowForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustQCInterimShowForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindingSource.DataSource = typeof(CustQCMaster_Interim);

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnSave.Visibility = BarItemVisibility.Never;
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
            this.barBtnFind.Visibility = BarItemVisibility.Always;
        }

        CustQCQueryForm frmQuery = new CustQCQueryForm();
        List<CustQCMaster_Interim> DataList;
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

                DataList = (this.DataContext as MobileQCDataContext).CustQCMaster_Interims.Where(p => p.MfgLocation == frmQuery.QCLocation &&
                    p.ExamDate >= frmQuery.StartDate && p.ExamDate < frmQuery.DueDate).OrderBy(p => p.ExamDate).ThenBy(p => p.OID).ToList();

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
            if (this.BindingSource.List.Count == 0) return;

            CustQCSummaryInterimReport rptSummary;
            if (frmQuery.CalulateType == CustQCReportCalulateType.ByWeek)
            {
                rptSummary = new CustQCSummaryInterimReport(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate, frmQuery.WeekOfYear);
            }
            else
            {
                rptSummary = new CustQCSummaryInterimReport(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate);
            }
            rptSummary.CreateDocument();
            CustQCDetailInterimReport rptDetail = new CustQCDetailInterimReport(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate);
            rptDetail.CreateDocument();
            rptSummary.PrintingSystem.Pages.AddRange(rptDetail.Pages);
            rptSummary.ShowPreview();
        }

        private void btnAdditionalInformation_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (DataList == null) return;
            AdditionalInformationInterimForm frmAdditional = new AdditionalInformationInterimForm(DataList);
            //int xWidth = SystemInformation.PrimaryMonitorSize.Width;//获取显示器屏幕宽度
            //int yHeight = SystemInformation.PrimaryMonitorSize.Height;//高度
            frmAdditional.Location = new Point(232, 269);
            frmAdditional.ShowDialog();
        }

        private void btnDetailInformation_ItemClick(object sender, ItemClickEventArgs e)
        {
            DetailInformationInterimForm frmDetail = new DetailInformationInterimForm(frmQuery.QCLocation, frmQuery.StartDate, frmQuery.DueDate);
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
