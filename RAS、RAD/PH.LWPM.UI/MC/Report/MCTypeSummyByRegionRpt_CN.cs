using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MCTypeSummyByRegionRpt_CN : DevExpress.XtraReports.UI.XtraReport
    {
        public MCTypeSummyByRegionRpt_CN()
        {
            InitializeComponent();
        }

        string _region;
        public MCTypeSummyByRegionRpt_CN(string regrion)
        {
            InitializeComponent();
            _region = regrion;
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void MCTypeSummyByRegionRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // xrLabel11.Text = DateTime.Now.ToShortDateString();
            xrLabel11.Text = DateTime.Now.ToShortDateString();
            context.CommandTimeout = 8000;
            string sqlcmd = "";               

            int _regionid=0;
            if (this._region == "GROUP")
            {
                _regionid = 0;
                this.xrLabel1.Text = "(PH Group)";
            }
            else if (this._region == "CHINA")
                _regionid = 1;
            else if (this._region == "Off-shore")
                _regionid = 2;


            sqlcmd = string.Format("exec [PROC_MCSummary_REGION] {0}", _regionid);
            this.bsSummyMc.DataSource = context.ExecuteQuery<McSummaryByRegionResult>(sqlcmd);
            

        }

        string beforegrp = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            McSummaryByRegionResult msr = this.GetCurrentRow() as McSummaryByRegionResult;
            this.xtcGrpDesc.Text = string.IsNullOrEmpty(msr.Class_EN) ? "" : msr.Class_EN.Trim() + "\r\n"
                + (string.IsNullOrEmpty(msr.Class_CN)?"":msr.Class_CN.Trim());
            this.xtcTypeDesc.Text = string.IsNullOrEmpty(msr.Type_EN) ? "" : msr.Type_EN.Trim() + "\r\n"
                    + (string.IsNullOrEmpty(msr.Type_EN) ? "" : msr.Type_CN.Trim());

            int total=0;
            if (this._region == "GROUP")
                total=msr.Summy_SL+msr.Summy_RX+msr.Summy_GG+msr.Summy_FJ+msr.Summy_CG;
            else if (this._region == "CHINA")
                 total=msr.Summy_SL+msr.Summy_RX+msr.Summy_GG+msr.Summy_FJ;
            else if (this._region == "Off-shore")
                  total=msr.Summy_CG;

            this.xtcTotal.Text = total.ToString();

           // xtcGroup.Text = "";

            if (beforegrp != msr.McClass.Trim())
            {
                //xtFactory.Text = " " + mct.Factory.Trim();
                //xrMachineClass.Text = mct.MachineClass.Trim();
                beforegrp = msr.McClass.Trim();
                xtcGroup.Text = msr.McClass.Trim();
            }
            else
            {
                xtcGroup.Text = "";
                
               
            }
            



        }

        Hashtable tbSummy = new Hashtable();
        int _grandtotal = 0, _grdsl = 0, _grdgg = 0, _grdrx = 0,_grdfj=0;
        private void grpMc_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // McSummaryByRegionResult msr = this.GetCurrentRow() as McSummaryByRegionResult;
            //xtcSubTotal.Text ="Sub-Total:"
            int _sl=xtcSL.Summary.GetResult()!=null?int.Parse(xtcSL.Summary.GetResult().ToString()):0;
            int _gg = xtcGG.Summary.GetResult() != null ? int.Parse(xtcGG.Summary.GetResult().ToString()):0;
            int _rx = xtcRX.Summary.GetResult() != null ? int.Parse(xtcRX.Summary.GetResult().ToString()) : 0;
            int _fj = xtcFJ.Summary.GetResult() != null ? int.Parse(xtcFJ.Summary.GetResult().ToString()) : 0;
          //  int _cg = xtcCG.Summary.GetResult() != null ? int.Parse(xtcCG.Summary.GetResult().ToString()) : 0;


            //int subtotal = int.Parse(xtcSL.Summary.GetResult().ToString()) + int.Parse(xtcGG.Summary.GetResult().ToString())
            //+int.Parse(xtcRX.Summary.GetResult().ToString()) + int.Parse(xtcFJ.Summary.GetResult().ToString()) 
            //+int.Parse(xtcCG.Summary.GetResult().ToString());

            int subtotal = _sl + _gg + _rx + _fj;            
            xtcSub.Text =subtotal.ToString();

            _grandtotal = _grandtotal + subtotal;
            _grdsl = _grdsl + _sl;
            _grdgg = _grdgg + _gg;
            _grdrx = _grdrx + _rx;
            _grdfj = _grdfj + _fj;
           // _grdcg = _grdcg + _cg;

        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xtcGrandTotal.Text = _grandtotal.ToString();
            this.xtcGrdSL.Text = _grdsl.ToString();
            this.xtcGrdGG.Text = _grdgg.ToString();
            this.xtcGrdRX.Text = _grdrx.ToString();
            this.xtcGrdFJ.Text = _grdfj.ToString();
           // this.xtcGrdCG.Text = _grdcg.ToString();
        }

    }
}
