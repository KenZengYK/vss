using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using DevExpress.XtraScheduler;

namespace PH.LWPM.UI.LB5
{
    public partial class LockAndReserveFrm : DevExpress.XtraEditors.XtraForm
    {
        public List<LockAndReserve> LRLst { get; set; }
        
        public LockAndReserveFrm()
        {
            InitializeComponent();
        }

        private void LockAndReserveFrm_Load(object sender, EventArgs e)
        {
            int i = 0;
            foreach (LockAndReserve rr in LRLst)
            {
                if (i==0)
                {
                    this.schedulerControl1.GoToDate(Convert.ToDateTime(rr.StartTime));
                }
                Appointment at = new Appointment();
                at.Start = Convert.ToDateTime(rr.StartTime);
                at.End = Convert.ToDateTime(rr.EndTime);
                
                at.Subject = rr.Factory + "--" + rr.Line;
                at.LabelId = 3;
                at.AllDay = true;
                at.Description = string.Format("PH Style:{0}\r\n", rr.PHStyleCode);
                at.Description += string.Format("Cust Style:{0}\r\n", rr.CustStyleCode);
                at.Description += string.Format("Project NO:{0}\r\n", rr.J_NO);
                at.Description += (Convert.ToBoolean(rr.IsConfirmed) ? "Done\r\n" : "To be confirmed\r\n");
                at.Description += rr.lr;
                this.schedulerStorage1.Appointments.Add(at);
                i++;
            }
            
        }

        private void schedulerControl1_CustomDrawDayHeader(object sender, CustomDrawObjectEventArgs e)
        {
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[0].Caption = "Monday";
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[1].Caption = "Tuesday";
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[2].Caption = "Wednesday";
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[3].Caption = "Thursday";
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[4].Caption = "Friday";
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[5].Caption = "Saturday";
            this.schedulerControl1.MonthView.ViewInfo.WeekDaysHeaders[6].Caption = "Sunday";

        }
    }
}