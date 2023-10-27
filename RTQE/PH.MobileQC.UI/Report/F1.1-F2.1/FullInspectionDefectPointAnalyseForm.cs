using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.UI.AQL;
using PH.Platform.ExtendLibrary;
using System.Globalization;
using System.Linq;
using PH.MobileQC.BO;
using PH.MobileQC.UI.UserControllibrary;
using PH.MobileQC.UI.Rpt21aa;
using PH.Platform.BO;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class FullInspectionDefectPointAnalyseForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public FullInspectionDefectPointAnalyseForm()
        {
            InitializeComponent();

            //cbWs.Properties.Items.Clear();
            //var WorkShopList = db.FullInspectionHeaders.Where(dr => dr.Factory == "SL" && dr.WorkShop != null);
            //cbWs.Properties.Items.AddRange(WorkShopList.Select(dr => dr.WorkShop).Distinct().ToList());

            List<string> CustList = db.FullInspectionHeaders
             .Where(dr => dr.Factory == "SL" && dr.Project != null).Select(dr => dr.Project.Substring(0, 4)).Distinct().OrderBy(dr => dr).ToList();

            checkCust.Properties.Items.Clear();
            foreach (string Obj in CustList)
            {
                checkCust.Properties.Items.Add(Obj);
            }

           List<string> WsList = db.FullInspectionHeaders
                .Where(dr => dr.Factory == "SL" && dr.WorkShop != null).Select(dr => dr.WorkShop).Distinct().OrderBy(dr=>dr).ToList();

           checkWs.Properties.Items.Clear();
           foreach (string Obj in WsList)
           {
               checkWs.Properties.Items.Add(Obj);
           }


           List<string> LineList = db.FullInspectionHeaders
              .Where(dr => dr.Factory == "SL" && dr.Line != null).Select(dr => dr.Line).Distinct().OrderBy(dr=>dr).ToList();

           checkLine.Properties.Items.Clear();
           foreach (string obj in LineList)
           {
               checkLine.Properties.Items.Add(obj);
           }



        }


        //DateTime Date1 = DateTime.MinValue;
        //DateTime Date2 = DateTime.MinValue;  
        //DateTime Date3 = DateTime.MinValue;
        //DateTime Date4 = DateTime.MinValue;
        //List<DateTime> DataTimeList = new List<DateTime>();
        //DateTime StartDate = DateTime.MinValue;
        //DateTime DueDate = DateTime.MinValue;

        DateTime FromDate = DateTime.MinValue;
        DateTime ToDate = DateTime.MinValue;
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
 
        private void simpleButton1_Click(object sender, EventArgs e)
        {
            DatePeroidTypes DateType = ucDateChoice.DatePeroidType;

            if (!ucDateChoice.ProcessDate()) return;
          

          
            string WeeklyOrMonthly = "";

            if (DateType == DatePeroidTypes.Daily)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = FromDate;
            }
            else if (DateType == DatePeroidTypes.Weekly)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
                WeeklyOrMonthly = ucDateChoice.Week.ToString();
            }
            else if (DateType == DatePeroidTypes.Monthly)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
                WeeklyOrMonthly = ucDateChoice.Month.ToString();
            }
            else if (DateType == DatePeroidTypes.PeroidRang)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
            }

            if (CheckInformation())
            {
                if (comboBoxEdit1.SelectedIndex == 0)
                {
                    FullInspectionDefectPointListReport_Rpt21a rpt = new FullInspectionDefectPointListReport_Rpt21a
                        (DateType, WeeklyOrMonthly, this.txFactory.Text, FromDate, ToDate, checkWs.Text, checkLine.Text, checkCust.Text);
                    rpt.ShowPreview();        
                }
                else 
                {
                    FullInspectionDefectPointAnalyseReport rpt = new FullInspectionDefectPointAnalyseReport
                        (DateType, WeeklyOrMonthly, this.txFactory.Text, FromDate, ToDate);
                    rpt.ShowPreview();
                }
            }
        }

        bool CheckInformation()
        {
            if (string.IsNullOrEmpty(this.txFactory.Text))
            {
                MessageBox.Show("請選擇工廠", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (string.IsNullOrEmpty(comboBoxEdit1.Text)) 
            {
                MessageBox.Show("請報表類型", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            //if (this.txDateFrom.EditValue == null)
            //{
            //    MessageBox.Show("請選擇開始日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}
            //if (this.txDateTo.EditValue == null)
            //{
            //    MessageBox.Show("請選擇結束日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}
            //if (this.txDateFrom.DateTime > this.txDateTo.DateTime)
            //{
            //    MessageBox.Show("開始日期不能大於結束日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return false;
            //}

            return true;
        }

        List<FullInspectionHeader> FullHeaderList = new List<FullInspectionHeader>();

        private void cbWs_MouseClick(object sender, MouseEventArgs e)
        {
            //cbWs.Properties.Items.Clear();
            //if (!ucDateChoice.ProcessDate()) return;
            //if (ucDateChoice.FromDate == DateTime.MinValue && ucDateChoice.ToDate == DateTime.MinValue) return;


            //FullHeaderList = db.FullInspectionHeaders.Where(dr => dr.Factory == txFactory.Text 
            //    && dr.InspectionDate >= ucDateChoice.FromDate && dr.InspectionDate < ucDateChoice.ToDate.AddDays(1)).ToList();

            //cbWs.Properties.Items.AddRange(FullHeaderList.Select(dr => dr.WorkShop).Distinct().ToList());
        }

        private void txFactory_EditValueChanged(object sender, EventArgs e)
        {


            List<string> CustList = db.FullInspectionHeaders
             .Where(dr => dr.Factory == txFactory.Text && dr.Project != null).Select(dr => dr.Project.Substring(0, 4)).Distinct().OrderBy(dr => dr).ToList();

            checkCust.Properties.Items.Clear();
            foreach (string Obj in CustList)
            {
                checkCust.Properties.Items.Add(Obj);
            }

            List<string> WsList = db.FullInspectionHeaders
                 .Where(dr => dr.Factory == txFactory.Text && dr.WorkShop != null).Select(dr => dr.WorkShop).Distinct().OrderBy(dr => dr).ToList();

            checkWs.Properties.Items.Clear();
            foreach (string Obj in WsList)
            {
                checkWs.Properties.Items.Add(Obj);
            }


            List<string> LineList = db.FullInspectionHeaders
               .Where(dr => dr.Factory == txFactory.Text && dr.Line != null).Select(dr => dr.Line).Distinct().OrderBy(dr => dr).ToList();

            checkLine.Properties.Items.Clear();
            foreach (string obj in LineList)
            {
                checkLine.Properties.Items.Add(obj);
            }
           
        }

        

        private void comboBoxEdit1_EditValueChanged(object sender, EventArgs e)
        {

            labCust.Visible = labws.Visible = labLine.Visible = checkCust.Visible = checkLine.Visible = checkWs.Visible =
                comboBoxEdit1.SelectedIndex == 1 ? false : true;
        }

        private void checkWs_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(checkWs.Text)) return;
            List<string> Alist = checkWs.Text.Replace(" ", "").Split(',').ToList();
            
            if (!ucDateChoice.ProcessDate()) return;

            var CLineList = (from a in db.FullInspectionHeaders
                             from b in db.FullInspectionDetails
                             where a.Oid == b.FullInspectionHeader && a.Line != null && a.Factory == txFactory.Text &&
                                     (checkWs.Text == "" || Alist.Contains((a.WorkShop ?? "")))
                                     && b.InspectionDate >= ucDateChoice.FromDate && b.InspectionDate < ucDateChoice.ToDate.AddDays(1)
                             //orderby new { a.Line }
                             select new { a.Line }).Distinct().ToList();

            checkLine.Properties.Items.Clear();

            foreach (var obj in CLineList)
            {
                checkLine.Properties.Items.Add(obj.Line);
            }

        }

        private void checkLine_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(checkLine.Text)) return;
            List<string> Alist = checkLine.Text.Replace(" ", "").Split(',').ToList();
          
            if (!ucDateChoice.ProcessDate()) return;

            var CustList = (from a in db.FullInspectionHeaders
                            from b in db.FullInspectionDetails
                            where a.Oid == b.FullInspectionHeader && a.Line != null && a.Factory == txFactory.Text &&
                                    (checkLine.Text == "" || Alist.Contains((a.Line ?? "")))
                                    && b.InspectionDate >= ucDateChoice.FromDate && b.InspectionDate < ucDateChoice.ToDate.AddDays(1)

                            select new { Project = a.Project.Substring(0, 4) }).Distinct().ToList(); ;

            checkCust.Properties.Items.Clear();
            foreach (var obj in CustList)
            {
                checkCust.Properties.Items.Add(obj.Project);
            }
        }

        //ReportDatePeroidTypes DateType = ReportDatePeroidTypes.Daily;
        //private void radioGroup1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    this.xrTimeName.Text = this.radioGroup1.EditValue.ToString() == "Daily" || this.radioGroup1.EditValue.ToString() == "Period Range" ? "Date : " : this.radioGroup1.EditValue.ToString().Replace("ly", "") + " :";

        //    DateType = (ReportDatePeroidTypes)radioGroup1.SelectedIndex;

        //    txDateTo.Visible = labelControl3.Visible = this.radioGroup1.SelectedIndex == 3;

        //    DayOrPeroidRange.Visible = this.radioGroup1.SelectedIndex == 0 || this.radioGroup1.SelectedIndex == 3;
        //    txDateFrom.Visible = !DayOrPeroidRange.Visible;

        //    //ReportDatePeroidType = (ReportDatePeroidTypes)this.radioGroup1.SelectedIndex;

        //    if (this.radioGroup1.SelectedIndex == 1)
        //    {
        //        this.txDateFrom.SetWorkMode(DateEditWorkMode.ByWeek);
        //    }
        //    else if (this.radioGroup1.SelectedIndex == 2)
        //    {
        //        this.txDateFrom.SetWorkMode(DateEditWorkMode.ByMonth);
        //    }
        //}

      


    }
}