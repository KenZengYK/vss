using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data.Linq;
using System.Linq;
using PH.LWPM.BO;


namespace PH.LWPM.UI.WF.Report
{
    public partial class WorkForcePoolSewingSummary : DevExpress.XtraReports.UI.XtraReport
    {
        private  RAPLQDataContext Context;
        private string Param;

        public WorkForcePoolSewingSummary()
        {
            InitializeComponent();
        }
        public WorkForcePoolSewingSummary(RAPLQDataContext context,string param)
        {
            this.Context= context;
            Param = param;
            InitializeComponent();
        }

        private void DirectWorkForcePoolSewingDepartmentSummary_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
            var GF= this.Context.WorkForces.Where(P => P.ClsName == Param && P.InActive==false).Select(S=>S.Factory).Distinct();
            int TotalCount = this.Context.WorkForces.Where(P => P.ClsName == Param && P.InActive == false).Count();
            foreach (var item in GF)
            {
                int CurFtyCount = this.Context.WorkForces.Where(P => P.ClsName == Param && P.Factory == item && P.InActive == false).Count();
                XRTableRow row = new XRTableRow();
                row.Cells.Add(NewCell(item,61,DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
                row.Cells.Add(NewCell(CurFtyCount.ToString(), 68, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
                row.Cells.Add(NewCell((CurFtyCount * 1.0 / TotalCount).ToString("0.00%"), 66, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));

                XRTable TB2 = new XRTable();
                var PoolTypeLst = from a in this.Context.WorkForces where a.ClsName == Param && a.Factory == item && a.InActive == false group a by a.WorkerType into g select new { pooltype = g.Key, count = g.Count() };
                foreach (var L1 in PoolTypeLst)
                {

                    XRTableRow row0 = new XRTableRow();
                    row0.Cells.Add(NewCell(L1.pooltype,86,DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
                    row0.Cells.Add(NewCell(L1.count.ToString(), 83, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
                    row0.Cells.Add(NewCell((CurFtyCount > 0 ? L1.count * 1.0 / CurFtyCount : 0).ToString("0.00%"), 86, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
                    var workerTypeLst = from a in this.Context.WorkForces where a.ClsName == Param && a.Factory == item && a.WorkerType == L1.pooltype && a.InActive == false group a by a.JobTitleEn into g select new { workertype = g.Key, count = g.Count() };
                    XRTable TB3 = new XRTable();
                    foreach (var L2 in workerTypeLst)
                    {
                        XRTableRow row1 = new XRTableRow();
                        row1.Cells.Add(NewCell(L2.workertype, 120, DevExpress.XtraPrinting.TextAlignment.MiddleLeft));                     
                        row1.Cells.Add(NewCell(L2.count.ToString(),60, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
                        row1.Cells.Add(NewCell((L1.count > 0 ? L2.count * 1.0 / L1.count : 0).ToString("0.00%"), 0, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));                       
                        TB3.Rows.Add(row1);
                    }


                    XRTableCell C4 = NewCell(string.Empty,380, DevExpress.XtraPrinting.TextAlignment.MiddleCenter);                  
                    C4.Controls.Add(TB3);
                    TB3.Location = new System.Drawing.Point(0, 0);
                    row0.Height = TB3.Height;                    
                    TB3.Width = C4.Width-48;                    
                    row0.Cells.Add(C4);
                    TB2.Rows.Add(row0);                  
                    
                }

                XRTableCell cell4 = new XRTableCell();
                cell4.Width = 563;
                cell4.Text = string.Empty;
                cell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                cell4.Controls.Add(TB2);
                TB2.Location = new System.Drawing.Point(-1, -1);
                row.Height = TB2.Height;
                TB2.Width = cell4.Width;
                row.Cells.Add(cell4);               
                TB1.Rows.Add(row);
                

            }
            XRTableRow totalrow = new XRTableRow();          
            totalrow.Cells.Add(NewCell("Total",61,DevExpress.XtraPrinting.TextAlignment.MiddleCenter));          
            totalrow.Cells.Add(NewCell(TotalCount.ToString(), 68, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
            totalrow.Cells.Add(NewCell("100%", 66, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
            totalrow.Cells.Add(NewCell(string.Empty, 563, DevExpress.XtraPrinting.TextAlignment.MiddleCenter));
            TB1.Rows.Add(totalrow);
           
        }
        XRTableCell NewCell(string celltext,int width,DevExpress.XtraPrinting.TextAlignment aglinment)
        {
            XRTableCell cell = new XRTableCell();
            cell.Text = celltext;
            if(width>0)
            cell.Width = width;
            cell.TextAlignment = aglinment;
            return cell;
        }
      
    }
   
}
