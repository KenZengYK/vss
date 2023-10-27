using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MCSummyByRegionRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public MCSummyByRegionRpt()
        {
            InitializeComponent();
        }

        string _faccod, _facdesc,_regtype;
        int rowcount = 0;

        public MCSummyByRegionRpt(string fac)
        {
            InitializeComponent();
            string[] facs =fac.Split(new char[]{'@'});

            _faccod = facs[0];
            _facdesc= facs[1];
            _regtype = facs[2];
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void MCSummyByDepartRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string faclist ="";
            if (_regtype == "0") //FACTORY
                faclist = "('" + _faccod + "')";
            if (_regtype == "1")  //CHINA            
                faclist = "('SL','RX','GG')";
      
            if (_regtype == "2") //OFF-SHOE            
                faclist = "('CG')";
            
              
            string sqltotal ="";            
           if (_regtype=="3")
             sqltotal=string.Format("select count(*) from machine where Class!='Mc-Dead Stock Room' ");
           else
             sqltotal= string.Format("select count(*) from machine where factory in {0} and Class!='Mc-Dead Stock Room'",faclist);

            
            DbDataReader dr =context.ExecuteReader(sqltotal);
            if (dr.Read()) 
               rowcount =int.Parse(dr[0].ToString());
            dr.Close();

            string sql = string.Format("exec [PROC_MCSummary_ByDept] '{0}',{1}", _faccod, _regtype);
            this.bsSummyByDept.DataSource = context.ExecuteQuery<McSummaryByDept>(sql);                            

        }

        private void ReportHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            if (_regtype == "3") //group
            {
                this.xrlRegion.Text = " group ";
                xrLabel2.Text = "GROUP : PH GROUP ";
            }
            else
            {
                this.xrlRegion.Text = " region ";
                if (_regtype == "1")
                    xrLabel2.Text = "REGION : CHINA ";
                else
                    xrLabel2.Text = "REGION : OFF-SHOE ";

            }

           

            this.xltotal.Text = rowcount.ToString();
        }

        string _team, _dept, _sect, _class,_fact;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            McSummaryByDept msb = this.GetCurrentRow() as McSummaryByDept;         

            if (_fact!=msb.Factory ||_dept != msb.DepartmentEn || _sect != msb.SectionEn 
                || _class != msb.Class || _team != msb.TeamEn)
            {

                _fact = msb.Factory; _team = msb.TeamEn; _dept = msb.DepartmentEn;
                _sect = msb.SectionEn; _class = msb.Class;
                //_class = msb.MCclass;
                xrTableCell41.Text = msb.Factory;
                xrTableCell30.Text = msb.DepartmentEn;
                xrTableCell27.Text = msb.SectionEn;
                xrTableCell31.Text = msb.TeamEn;
                xrTableCell32.Text = msb.Class;

                xrTableCell36.Text = msb.total_byclass == 0 ? "- -" : msb.total_byclass.ToString();
                xrTableCell37.Text = msb.total_byteam == 0 ? "- -" : msb.total_byteam.ToString();
                xrTableCell38.Text = msb.total_bysect == 0 ? "- -" : msb.total_bysect.ToString();

                xrTableCell29.Text = msb.total_bydept.ToString();

            }
            else
            {
                xrTableCell41.Text ="";
                xrTableCell30.Text = "";
                xrTableCell27.Text = "";
                xrTableCell31.Text = "";
                xrTableCell32.Text = "";

                xrTableCell36.Text = "";
                xrTableCell37.Text = "";
                xrTableCell38.Text = "";
                xrTableCell29.Text = "";
            }

        }

        private void xrlRegion_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (_regtype == "1")  //CHINA
            {
                xrlRegion.Text = "CHINA = ";

            }
            if (_regtype == "2") //OFF-SHOE            
                xrlRegion.Text = "OFF-SHOE = ";

            if (_regtype == "3") //GROUP
                xrlRegion.Text = "GROUP = ";

        }

    }
}
