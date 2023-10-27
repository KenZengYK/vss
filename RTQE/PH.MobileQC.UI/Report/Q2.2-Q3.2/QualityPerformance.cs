using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.Others
{
    public partial class QualityPerformance : PH.Platform.UI.CS.UI0.BlankForm
    {
        public QualityPerformance()
        {
            InitializeComponent();


            ucDateChoice.HideItem(DatePeroidTypes.PeroidRang);
            ucDateChoice.HideItem(DatePeroidTypes.Daily);

            ucDateChoice.radDateWorkMode.SelectedIndex = 0;

            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            // DataTable dt = context.GetFactoryType();
            // cbbFac.Properties.Items.Clear();
            // for (int i = 0; i < dt.Rows.Count; i++)
            //  {
            //      cbbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //   }
            // cbbFac.Properties.Items.Add("GX(GG+RX)");

        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext =  PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            this.BindWorkshop();
        }
        private void BindWorkshop()
        {
            List<string> wslist = this.GetWorkshopList(cbbFac.Text);
            cbbWshop.Properties.Items.Clear();
            cbbWshop.Properties.Items.Add("");
            cbbWshop.Properties.Items.AddRange(wslist.ToArray());
        }

        private void BindLine()
        {
            List<string> linelist = this.GetLineList(cbbFac.Text, cbbWshop.Text);
            this.cbbLine.Properties.Items.Clear();
            cbbLine.Properties.Items.Add("");
            cbbLine.Properties.Items.AddRange(linelist.ToArray());
        }


        private List<string> GetWorkshopList(string factory)
        {
            List<string> workshops = (this.DataContext as MobileQCDataContext).GetWorkshopInfo(factory);
            return workshops;
        }

        private List<string> GetLineList(string factory, string wshop)
        {
            List<string> lines = (this.DataContext as MobileQCDataContext).GetLineInfo(factory, wshop);
            return lines;
        }

        private void spbPrint_Click(object sender, EventArgs e)
        {
            if (deEnd.DateTime.ToShortDateString() == "0001/1/1" || deStart.DateTime.ToShortDateString() == "0001/1/1")
            {
                MessageBox.Show("請選擇開始日期與結束日期!");
                return;
            }
            if (deEnd.DateTime < deStart.DateTime)
            {
                MessageBox.Show("結束日期應大于等于開始日期!");
                return;
            }

            string _fac = this.cbbFac.Text ;
            string _ws = cbbWshop.Text;
            string _line = cbbLine.Text;


            
                DatePeroidTypes DateType = ucDateChoice.DatePeroidType;
                
                if (!ucDateChoice.ProcessDate()) return;

                DateTime FromDate = DateTime.MinValue;
                DateTime ToDate = DateTime.MinValue;
                string WeeklyOrMonthly = "";
                string AWeek = "";
                if (DateType == DatePeroidTypes.Daily)
                {
                    FromDate = ucDateChoice.FromDate;
                    ToDate = FromDate;
                }
                else if (DateType == DatePeroidTypes.Weekly)
                {
                    FromDate = ucDateChoice.FromDate;
                    ToDate = ucDateChoice.ToDate;
                    WeeklyOrMonthly = DatePeroidTypes.Weekly.ToString();
                    string aa = ucDateChoice.txtDateFrom.Text;
                    AWeek = ucDateChoice.txtDateFrom.Text.Substring(ucDateChoice.txtDateFrom.Text.IndexOf("-")+1);
                }
                else if (DateType == DatePeroidTypes.Monthly)
                {
                    FromDate = ucDateChoice.FromDate;
                    ToDate = ucDateChoice.ToDate;
                    WeeklyOrMonthly = DatePeroidTypes.Monthly.ToString();
                   
                }
                else if (DateType == DatePeroidTypes.PeroidRang)
                {
                    FromDate = ucDateChoice.FromDate;
                    ToDate = ucDateChoice.ToDate;
                }


                string _start = FromDate.ToString("yyyy-MM-dd");
                string _end = ToDate.ToString("yyyy-MM-dd");

           // string _start = deStart.Text;
            //string _end = this.deEnd.Text;
          //  rptQualityPerformance rpt = new rptQualityPerformance(_fac,_ws,_line,_start,_end);
            
            
            
            //rptQualityPerformance_V1 rpt = new rptQualityPerformance_V1(_fac, _ws, _line, _start, _end);
                QualityPerformanceReport rpt = new QualityPerformanceReport(_fac, _ws, _line, _start, _end, WeeklyOrMonthly, AWeek);  //copy了一個新的報表修改，David 2019-06-06
            rpt.ShowPreview();
        }

        private void cbbFac_SelectedValueChanged(object sender, EventArgs e)
        {
            BindWorkshop();
        }

        private void cbbWshop_SelectedValueChanged(object sender, EventArgs e)
        {
            this.BindLine();
        }
    }
}
