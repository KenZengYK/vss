using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using System.Globalization;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.MobileQC.UI.RPT;
using PH.RWO.BO;

namespace PH.MobileQC.UI.AQL
{
    public partial class FullInspectionCondition : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
        public FullInspectionCondition()
        {
            InitializeComponent();
           // FillCombox();
           
             DataTable dt = context.GetFactoryType();
             cmbFac.Properties.Items.Clear();
             for (int i = 0; i < dt.Rows.Count; i++)
              {
                  cmbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
               }
             CheckFistLoad = 0;

        }

        private void FullInspectionCondition_Load(object sender, EventArgs e)
        {
            this.deEnd.Enabled = false;
        }

        private int WeekOfYear(DateTime day)
        {
            int weeknum;
            System.DateTime fDt = DateTime.Parse(day.Year.ToString() + "-01-01");
            int k = Convert.ToInt32(fDt.DayOfWeek);//得到该年的第一天是周几
            if (k == 0)
            {
                k = 7;
            }
            int l = Convert.ToInt32(day.DayOfYear);//得到当天是该年的第几天
            l = l - (7 - k + 1);
            if (l <= 0)
            {
                weeknum = 1;
            }
            else
            {
                if (l % 7 == 0)
                {
                    weeknum = l / 7 + 1;
                }
                else
                {
                    weeknum = l / 7 + 2;//不能整除的时候要加上前面的一周和后面的一周
                }
            }
            return weeknum;
        }      

        private void FillCombox(string dt_start,string dt_end)
        {

            Dictionary<string, string[]> _dicts = SqlDataHelper.GetWoAndCustomer(dt_start, dt_end);
            cbbCust.Properties.Items.Clear();
            //  cbbCust.Properties.Items.Add("ALL");
            if (_dicts["Customer"].Length > 0)
            {
                for (int m = 0; m < _dicts["Customer"].Length; m++)
                    //cbbCust.Properties.Items.AddRange(_dicts["Customer"]);
                    cbbCust.Properties.Items.Add(_dicts["Customer"][m]);
            }

            cbbWo.Properties.Items.Clear();
            //   cbbWo.Properties.Items.Add("ALL");
            if (_dicts["Wo"].Length > 0)
            {
                //cbbWo.Properties.Items.AddRange(_dicts["Wo"]);
                for (int m = 0; m < _dicts["Wo"].Length; m++)
                    cbbWo.Properties.Items.Add(_dicts["Wo"][m]);
            }

            if (_dicts["Workshop"].Length > 0)
            {
                for (int m = 0; m < _dicts["Workshop"].Length; m++)
                    cbbWs.Properties.Items.Add(_dicts["Workshop"][m]);
            }

            if (_dicts["Line"].Length > 0)
            {
                for (int m = 0; m < _dicts["Line"].Length; m++)
                    cbbLine.Properties.Items.Add(_dicts["Line"][m]);
            }

        }

        private void sbut_print_Click(object sender, EventArgs e)
        {

            if (deStart.EditValue == null)
            {
                MessageBox.Show("請選擇開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            string _end = "";
            string _start = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deStart.EditValue.ToString()));
            if (radioGroup1.SelectedIndex == 0)
                _end = _start;
            else
            {
                if (deEnd.EditValue == null || deStart.EditValue == null)
                {
                    MessageBox.Show("請選擇開始&結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                _end = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deEnd.EditValue.ToString()));
            }
            string _fac = this.cmbFac.Text;
            string _range = _start + " ~ " + _end;

            string _tag = "0";
            if (this.radioGroup1.SelectedIndex == 0)
                _tag = "1";
            if (this.radioGroup1.SelectedIndex == 1)
                _tag = "2";
            if (this.radioGroup1.SelectedIndex == 2)
                _tag = "3";

            string _custlst = this.cbbCust.Text.ToString();
            string _wolst = this.cbbWo.Text.ToString();
            string _wslst = cbbWs.Text.ToString();
            string _linelst = cbbLine.Text.ToString();

            if (cmbType.SelectedIndex == 0)
            {

                //RptAuditAQL_Sub21 AQL2 = new RptAuditAQL_Sub21();
                //AQL2.ReportHeaderObject.Visible = false;

               // AQL2.Close_AQL_Sub21(1);

                //int _wknum = GetWeekOfYear(DateTime.Parse(_start));
                string _wknum = GetWeekOfYear(DateTime.Parse(_start));
                //int _wknum = WeekOfYear(Convert.ToDateTime(deEnd.Text.ToString()));
                //RptFullAuditOnLine_AQL21 rpt2 = new RptFullAuditOnLine_AQL21(_fac, int.Parse(_tag), _start, _end, "E", _range, _tag, _custlst, _wolst, _wslst, _linelst, _wknum);
                AQLPerfDefectPointListReport rpt2 = new AQLPerfDefectPointListReport(_fac, int.Parse(_tag), _start, _end, "E", _range, _tag, _custlst, _wolst, _wslst, _linelst, _wknum);

                //rpt2.CreateDocument();

                //DefectPoint18SymbolsReport rpt18Symbols = new DefectPoint18SymbolsReport();
                //rpt18Symbols.CreateDocument();
                //rpt2.PrintingSystem.Pages.AddRange(rpt18Symbols.Pages);

                rpt2.ShowPreview();

            }
            //else if (cmbType.SelectedIndex == 1)
            //{
            //    //int _wknum = GetWeekOfYear(DateTime.Parse(_start));
            //    string _wknum = GetWeekOfYear(DateTime.Parse(_start));
            //    RptFullAuditOnLine_V2 rpt1 = new RptFullAuditOnLine_V2(_fac, int.Parse(_tag), _start, _end, "E", _tag, _custlst, _wolst, _wslst, _linelst, _wknum);
            //    rpt1.ShowPreview();
            //}
            else if (cmbType.SelectedIndex == 1)
            {
                RptFullAuditOnLine_V1 rpt = new RptFullAuditOnLine_V1(_fac, int.Parse(_tag), _start, _end, "E");
                rpt.ShowPreview();

            }
            //else if (cmbType.SelectedIndex == 3)
            //{
            //    if (_custlst.Contains(",")||_custlst=="")
            //    {
            //        MessageBox.Show("只能選擇一個客戶!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return;
                
            //    }
            //    //int _wknum = GetWeekOfYear(DateTime.Parse(_start));
            //    string _wknum = GetWeekOfYear(DateTime.Parse(_start));
            //    RptFullQualityPerfomance _rptfap = new RptFullQualityPerfomance(_fac, _start, _end, _custlst, _wslst, _wknum);
            //    _rptfap.ShowPreview();
            //}
            else if (cmbType.SelectedIndex == 2) //AQL Refuse
            {
                RptAQLRefuse _rpt = new RptAQLRefuse(_fac,_start,_end);
                _rpt.ShowPreview();
            }
            //else if (cmbType.SelectedIndex == 5) //Full Audit Refuse
            //{
            //    RptFullRefuse _rpt = new RptFullRefuse(_fac, _start, _end);
            //    _rpt.ShowPreview();
            //}
        }

        private void radioGroup1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radioGroup1.SelectedIndex == 0)
            {
                this.deEnd.Enabled = false;
            }
            else if (radioGroup1.SelectedIndex == 1)
            {
                this.deEnd.Enabled = true;
            }
            else if (radioGroup1.SelectedIndex == 2)
            {
                this.deEnd.Enabled = true;
            }
        }




        private void deEnd_Leave(object sender, EventArgs e)
        {
            //if (deStart.EditValue == null)
            //{
            //    MessageBox.Show("請選擇開始日期!");
            //    return;
            //}
            //if (cmbType.SelectedIndex == 1 || cmbType.SelectedIndex == 2)
            //{
                //string _start = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deStart.EditValue.ToString()));
                //string _end = deEnd.EditValue == null ? "" : string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deEnd.EditValue.ToString()));
                //this.FillCombox(_start, _end);
           // }
        }

        RWOSOPCDataContext ROWDB = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        private void deStart_Leave(object sender, EventArgs e)
        {
           // if (deStart.EditValue == null)
           // {
           //     MessageBox.Show("請選擇開始日期!");
           //     return;
           // }
           // //string _start = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deStart.EditValue.ToString()));
           // //string _end = deEnd.EditValue == null ? "" : string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deEnd.EditValue.ToString()));
           // //this.FillCombox(_start, _end);
           
        }


        private string  GetWeekOfYear(DateTime dt)
        {
            GregorianCalendar gc = new GregorianCalendar();
            int weekOfYear = gc.GetWeekOfYear(dt, CalendarWeekRule.FirstDay, DayOfWeek.Sunday);
            if (weekOfYear == 53)
                weekOfYear = 1;
            return weekOfYear.ToString().Length == 1 ? "0" + weekOfYear.ToString() : weekOfYear.ToString();
        }

        private void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbType.SelectedIndex == 3)
            {
                cbbWo.Enabled = false;
                cbbLine.Enabled = false;
            }
            else
            {
                cbbWo.Enabled = true;
                cbbLine.Enabled = true;
            
            }
        }

        private void deStart_EditValueChanged(object sender, EventArgs e)
        {
            CheckFistLoad = 1;
            cbbCust.Properties.Items.Clear(); cbbCust.Text = "";
            cbbLine.Properties.Items.Clear(); cbbLine.Text = "";
            cbbWo.Properties.Items.Clear(); cbbWo.Text = "";
            cbbWs.Properties.Items.Clear(); cbbWs.Text = "";
            if (deStart.EditValue == null)
            {
                MessageBox.Show("請選擇開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            //string _start = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deStart.EditValue.ToString()));
            //string _end = deEnd.EditValue == null ? "" : string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deEnd.EditValue.ToString()));
            //this.FillCombox(_start, _end);

            List<QC_Master_Final> ListSource = SelectSource();
            cbbPropertiesItemsAdd(ListSource);
            
          
        }

        private void deEnd_EditValueChanged(object sender, EventArgs e)
        {
            cbbCust.Properties.Items.Clear(); cbbCust.Text = "";
            cbbLine.Properties.Items.Clear(); cbbLine.Text = "";
            cbbWo.Properties.Items.Clear(); cbbWo.Text = "";
            cbbWs.Properties.Items.Clear(); cbbWs.Text = "";
            if (deEnd.EditValue == null)
            {
                MessageBox.Show("請選擇結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            List<QC_Master_Final> ListSource = SelectSource();
            cbbPropertiesItemsAdd(ListSource);

        }

        int CheckFistLoad;
        private void cmbFac_EditValueChanged(object sender, EventArgs e)
        {
            if (CheckFistLoad==0) return;
            cbbCust.Properties.Items.Clear(); cbbCust.Text = "";
            cbbLine.Properties.Items.Clear(); cbbLine.Text = "";
            cbbWo.Properties.Items.Clear(); cbbWo.Text = "";
            cbbWs.Properties.Items.Clear(); cbbWs.Text = "";

            List<QC_Master_Final> ListSource = SelectSource();
            cbbPropertiesItemsAdd(ListSource);
        }


        public void cbbPropertiesItemsAdd(List<QC_Master_Final> ListSource) //int i: 1 = WO; 2=WorkShop ; 3= Line ; 4 = Customer ; 0 = All
        {        
           
            List<string> Lines = ListSource.OrderBy(p=>p.Line).Select(p => p.Line).Distinct().ToList();
            List<string> WOs = ListSource.OrderBy(p=>p.WO).Select(p => p.WO).Distinct().ToList();
            List<string> WorkShops = ListSource.OrderBy(p=>p.WorkShop).Select(p => p.WorkShop).Distinct().ToList();

            
            foreach (var a in Lines)
            {
                cbbLine.Properties.Items.Add(a);
            }

            foreach (var a in WOs)
            {
                cbbWo.Properties.Items.Add(a);
            }

            foreach (var a in WorkShops)
            {
                cbbWs.Properties.Items.Add(a);
            }
        
            List<string> Projects = ListSource.OrderBy(p => p.Project).Select(p => p.Project).Distinct().ToList();

            List<string> Customers = ROWDB.Projects.Where(p => Projects.Contains(p.ProjectNo)).Select(a => a.Customer.Substring(0, 4)).Distinct().ToList();
            foreach (var a in Customers)
            {
                cbbCust.Properties.Items.Add(a);
            }
        }

        public List<QC_Master_Final> SelectSource()
        {
            CheckTime();
            var predicate = PredicateBuilder.True<QC_Master_Final>();
            if (!string.IsNullOrEmpty(cmbFac.Text))
            {
                predicate = predicate.And(p => p.Factory.Contains(cmbFac.Text));
            }

            string dt_start = "", dt_end = "";
            //處理只選一個時間的情況
            if (deEnd.EditValue == null && deStart.EditValue != null)
            {
                dt_start = deStart.DateTime.ToString("yyyy-MM-dd");
                dt_end = deStart.DateTime.AddDays(1).ToString("yyyy-MM-dd");
            }

            if (deEnd.EditValue != null && deStart.EditValue != null)
            {
                dt_start = deStart.DateTime.ToString("yyyy-MM-dd");
                dt_end = deEnd.DateTime.ToString("yyyy-MM-dd") + " 23:59:59";
            }

            if (!string.IsNullOrEmpty(dt_start) && !string.IsNullOrEmpty(dt_end))
            {              
                predicate = predicate.And(p => p.QC_time >= Convert.ToDateTime(dt_start) && p.QC_time < Convert.ToDateTime(dt_end));
            }
     
            List<QC_Master_Final> _QC_Master_Finals = context.QC_Master_Finals.Where(predicate).ToList();
            List<string> WoList = new List<string>();
            List<string> LineList = new List<string>();
            List<string> WsList = new List<string>();

                if (!string.IsNullOrEmpty(cbbWo.Text))
                {
                   WoList= cbbWo.Text.Replace(" ","").Split(',').ToList();                  
                   _QC_Master_Finals = _QC_Master_Finals.Where(p => WoList.Contains(p.WO)).ToList();        
                }


            if (!string.IsNullOrEmpty(cbbWs.Text))
            {
                WsList = cbbWs.Text.Replace(" ", "").Split(',').ToList();
                _QC_Master_Finals = _QC_Master_Finals.Where(p => WsList.Contains(p.WorkShop)).ToList();                
            }


            if (!string.IsNullOrEmpty(cbbLine.Text))
            {
                LineList = cbbLine.Text.Replace(" ", "").Split(',').ToList();
                _QC_Master_Finals = _QC_Master_Finals.Where(p => LineList.Contains(p.Line)).ToList();
              
            }       

            return _QC_Master_Finals;

        }

        private void cbbWo_EditValueChanged(object sender, EventArgs e)
        {
            if (CheckFistLoad == 0) return;

            cbbLine.Properties.Items.Clear(); 
            cbbWs.Properties.Items.Clear();
            cbbCust.Properties.Items.Clear();

            List<QC_Master_Final> ListSource = SelectSource();
            List<string> Lines = ListSource.OrderBy(p => p.Line).Select(p => p.Line).Distinct().ToList();         
            List<string> WorkShops = ListSource.OrderBy(p => p.WorkShop).Select(p => p.WorkShop).Distinct().ToList();


            foreach (var a in Lines)
            {
                cbbLine.Properties.Items.Add(a);
            }        

            foreach (var a in WorkShops)
            {
                cbbWs.Properties.Items.Add(a);
            }

            List<string> Projects = ListSource.OrderBy(p => p.Project).Select(p => p.Project).Distinct().ToList();

            List<string> Customers = ROWDB.Projects.Where(p => Projects.Contains(p.ProjectNo)).Select(a => a.Customer.Substring(0, 4)).Distinct().ToList();
            foreach (var a in Customers)
            {
                cbbCust.Properties.Items.Add(a);
            }

           
        }

        private void cbbWs_EditValueChanged(object sender, EventArgs e)
        {
            if (CheckFistLoad == 0) return;

            cbbLine.Properties.Items.Clear();
            cbbWo.Properties.Items.Clear();
            cbbCust.Properties.Items.Clear();

            List<QC_Master_Final> ListSource = SelectSource();

            List<string> Lines = ListSource.OrderBy(p => p.Line).Select(p => p.Line).Distinct().ToList();

            List<string> WOs = ListSource.OrderBy(p => p.WO).Select(p => p.WO).Distinct().ToList();      

            foreach (var a in WOs)
            {
                cbbWo.Properties.Items.Add(a);
            }
           
            foreach (var a in Lines)
            {
                cbbLine.Properties.Items.Add(a);
            }

            List<string> Projects = ListSource.OrderBy(p => p.Project).Select(p => p.Project).Distinct().ToList();

            List<string> Customers = ROWDB.Projects.Where(p => Projects.Contains(p.ProjectNo)).Select(a => a.Customer.Substring(0, 4)).Distinct().ToList();
            foreach (var a in Customers)
            {
                cbbCust.Properties.Items.Add(a);
            }

           
        }

        private void cbbLine_EditValueChanged(object sender, EventArgs e)
        {
            if (CheckFistLoad == 0) return;

        
            cbbWo.Properties.Items.Clear();
            cbbWs.Properties.Items.Clear();
            cbbCust.Properties.Items.Clear();

            List<QC_Master_Final> ListSource = SelectSource(); 
            List<string> WOs = ListSource.OrderBy(p => p.WO).Select(p => p.WO).Distinct().ToList();
            List<string> WorkShops = ListSource.OrderBy(p => p.WorkShop).Select(p => p.WorkShop).Distinct().ToList();
           
     

            foreach (var a in WOs)
            {
                cbbWo.Properties.Items.Add(a);
            }

            foreach (var a in WorkShops)
            {
                cbbWs.Properties.Items.Add(a);
            }

            List<string> Projects = ListSource.OrderBy(p => p.Project).Select(p => p.Project).Distinct().ToList();

            List<string> Customers = ROWDB.Projects.Where(p => Projects.Contains(p.ProjectNo)).Select(a => a.Customer.Substring(0, 4)).Distinct().ToList();
            foreach (var a in Customers)
            {
                cbbCust.Properties.Items.Add(a);
            }
        }

        private void cbbCust_EditValueChanged(object sender, EventArgs e)
        {

            if (CheckFistLoad == 0) return;

            if (string.IsNullOrEmpty(this.cbbCust.Text)) return;

            cbbWo.Properties.Items.Clear();
            cbbWs.Properties.Items.Clear();
            cbbLine.Properties.Items.Clear();

           
          
            List<string>  Projcets = ROWDB.Projects.Where(p=>  cbbCust.Text.Replace(" ","").Split(',').Contains(p.Customer.Substring(0,4).ToString())).Select(p=>p.ProjectNo).Distinct().ToList();
            //List<string> Projects = ListSource.OrderBy(p => p.Project).Select(p => p.Project).Distinct().ToList();
           
            List<QC_Master_Final> ListSource = SelectSource().Where(p=>Projcets.Contains(p.Project)).ToList();


            List<string> WOs = new List<string>();
            List<string> Lines = new List<string>();
            List<string> WorkShops = new List<string>();
            WOs = ListSource.Select(p => p.WO).Distinct().ToList();
            Lines = ListSource.Select(p => p.Line).Distinct().ToList();
            WorkShops = ListSource.Select(p => p.WorkShop).Distinct().ToList();


            foreach (var a in WOs)
            {
                cbbWo.Properties.Items.Add(a);
            }

            foreach (var a in Lines)
            {
                cbbLine.Properties.Items.Add(a);
            }
            foreach (var a in WorkShops)         
            {
                cbbWs.Properties.Items.Add(a);
            }

        }


        public void CheckTime() 
        {
            if (this.deStart.EditValue == null) 
            {
                MessageBox.Show("請選擇日期", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
        }

    }
}
