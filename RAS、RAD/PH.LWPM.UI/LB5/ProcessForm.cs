using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Data.Linq.SqlClient;
using PH.Platform.BO;
using System.IO;
using System.Transactions;

namespace PH.LWPM.UI.LB5
{
    public partial class ProcessForm : DevExpress.XtraEditors.XtraForm
    {
        public ProcessForm()
        {
            InitializeComponent();
        }

        // add by joseph
        WPMaster _curMaster;
        RAPLQDataContext _curdc;
        public ProcessForm(WPMaster curMaster, RAPLQDataContext dc)
        {
            InitializeComponent();
            _curMaster = curMaster;
            _curdc = dc;
        }

        //private void timer1_Tick(object sender, EventArgs e)
        //{
        //    if (DBAccess.CurFactory() == string.Empty)
        //    {
        //        timer1.Enabled = false;
        //        this.Dispose();
        //        return;
        //    }

        //    //if (DBAccess.ProcessState() == "1")
        //    //{
        //    //    PB.Visible = false;
        //    //    MPB.Visible = true;

        //    //    do
        //    //    {
        //    //        MPB.Refresh();
        //    //    } while (DBAccess.ProcessState() == "1");
        //    //    timer1.Enabled = false;
        //    //    this.Dispose();
        //    //    return;
        //    //}


        //    RAPLQDataContext Context = ContextBuilder.CreateContext<RAPLQDataContext>();

        //    DateTime dt = DateTime.Now.AddDays(-7);//Context.GetServerDate().AddDays(-7);
        //    IEnumerable<WPMaster> MList = from wp in Context.WPMasters
        //                                  where SqlMethods.Like(wp.Flag, "%s%")
        //                                      && wp.IsConfirmed == true && wp.EndTime.GetValueOrDefault() > dt && wp.Factory == DBAccess.CurFactory()
        //                                  select wp;
        //    PB.Properties.Minimum = 0;
        //    PB.Properties.Maximum = MList.Count();

        //    //Context.ExecuteCommand("exec ProcessingLB5State_1");

        //    foreach (WPMaster item in MList)
        //    {
        //        DBAccess.CheckQN(Context, item);
        //        ++PB.Position;
        //        PB.Refresh();
        //    }
        //    //Context.ExecuteCommand("exec ProcessingLB5State_0");
        //    timer1.Enabled = false;
        //    this.Dispose();

        //}


        private void timer11_Tick(object sender, EventArgs e)
        {
            //if (DBAccess.CurFactory() == string.Empty)
            //{
            //    timer1.Enabled = false;
            //    this.Dispose();
            //    return;
            //}

            if (_curMaster == null)
                return;


            //CheckQN_NEW(_curdc, _curMaster);


            PB.Position = 10;
            PB.Refresh();


            //由David改写 2018-07-27
            if (_curMaster.PoolInfos.Count() == 0)
            {
                _curMaster.CurrentDataContext = _curdc;
                _curMaster.AddFirstPoolInfo();
            }

            PB.Position = 30;
            PB.Refresh();

            _curMaster.CheckQNState();

            PB.Position = 90;
            PB.Refresh();

            timer1.Enabled = false;
            this.Dispose();

            PB.Position = 100;
            PB.Refresh();
        }


        //private void timer11_Tick(object sender, EventArgs e)
        //{
        //    if (DBAccess.CurFactory() == string.Empty)
        //    {
        //        timer1.Enabled = false;
        //        this.Dispose();
        //        return;
        //    }

        //    DateTime dt = DateTime.Now.AddDays(-7);
        //    if (_curMaster == null)
        //        return;


        //    CheckQN_NEW(_curdc, _curMaster);
            

        //    //if (_curMaster.Flag.Contains('s') && _curMaster.IsConfirmed.GetValueOrDefault() && _curMaster.EndTime.GetValueOrDefault() > dt)
        //    //{
        //    //    CheckQN_NEW(_curdc, _curMaster);
        //    //}


        //    timer1.Enabled = false;
        //    this.Dispose();

        //    PB.Position = 100;
        //    PB.Refresh();
        //}



//        private void CheckQN_NEW(RAPLQDataContext CurDataCx, WPMaster CurWPmaster)
//        {
//            Boolean Flag;
//            // RAPLQDataContext RAPDataCnx = ContextBuilder.CreateContext<RAPLQDataContext>();
//            // RAPDataCnx.CommandTimeout = 8000;

//            //var CurWPmaster = this.BindingSource.Current as WPMaster;

//            CurDataCx.CommandTimeout = 8000;
//            DateTime StartDate = Convert.ToDateTime(CurWPmaster.StartTime != null ? CurWPmaster.StartTime : null);
//            DateTime EndDate = Convert.ToDateTime(CurWPmaster.EndTime != null ? CurWPmaster.EndTime : null);

//            PB.Properties.Minimum = 0;
//            PB.Properties.Maximum = 1000;

//            string dateDiff = null;
//            TimeSpan ts1 = new TimeSpan(DateTime.Now.Ticks);


//            //using (TransactionScope ts = new TransactionScope())
//            //{
//            if (CurWPmaster.PoolInfos.Count > 0)
//            {
//                var MinDate = CurWPmaster.PoolInfos.Select(S => S.Date).Min();
//                var MaxDate = CurWPmaster.PoolInfos.Select(S => S.Date).Max();

//                Flag = MinDate != StartDate || MaxDate != EndDate ? true : false;

//                if (Flag)
//                {
//                    //var PILst = CurWPmaster.PoolInfos.Where(P => (P.Date < StartDate || P.Date > EndDate) && P.IsConfirmed == false);

//                    var PILst = CurWPmaster.PoolInfos.Where(P => P.Date > EndDate && P.IsConfirmed == false);
//                    foreach (PoolInfo item in PILst)
//                    {
//                        item.Lb5Matchings.Clear();
//                    }
//                    CurDataCx.PoolInfos.DeleteAllOnSubmit(PILst);
//                    //  CurDataCx.SubmitChanges();
//                }
//            }
//            else
//            {
//                Flag = true;
//            }



//            string[] OTNLst = { "N1", "N2", "OT1", "OT2" };
//            if (Flag)
//            {
//                while (StartDate <= EndDate)
//                {
//                    string Sql = string.Format("select * from v_wk52 where line=''{0}'' and date1=''{1}''", CurWPmaster.LineCode, StartDate.ToString("yyyy/MM/dd"));
//                    DataTable pooltb = DBAccess.GetInterBaseTable(Sql);
//                    if (pooltb.Rows.Count == 0)
//                    {

//                        foreach (string OT in OTNLst)
//                        {
//                            PoolInfo PILst = CurWPmaster.PoolInfos.Where(P => P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
//                            PoolInfo POLst = CurDataCx.PoolInfos.Where(P => P.Factory.Trim() == CurWPmaster.Factory.Trim() && P.LineCode.Trim() == CurWPmaster.LineCode.Trim() && P.j_NO.Trim() == CurWPmaster.j_NO.Trim() && P.J2_job.Trim() == CurWPmaster.J2_job.Trim() && P.Rwo.Trim() == CurWPmaster.Rwo.Trim() && P.Qn.Trim() == CurWPmaster.Qn.Trim() && P.Date == StartDate && P.OTN.Trim() == OT && P.Bcolor.Trim() == CurWPmaster.Bcolor.Trim()).FirstOrDefault();

//                            if (PILst == null && POLst == null)
//                            {
//                                PoolInfo pi = new PoolInfo();
//                                pi.Factory = CurWPmaster.Factory;
//                                pi.j_NO = CurWPmaster.j_NO;
//                                pi.J2_job = CurWPmaster.J2_job;
//                                pi.Rwo = CurWPmaster.Rwo;
//                                pi.Qn = CurWPmaster.Qn;
//                                pi.Bcolor = pi.Bcolor;
//                                pi.LineCode = pi.LineCode;
//                                pi.Date = StartDate;
//                                pi.OTN = OT;
//                                pi.IsConfirmed = false;
//                                CurWPmaster.PoolInfos.Add(pi);

//                                Lb5Matching YYYY = CurDataCx.Lb5Matchings.Where(P => P.Factory.Trim() == CurWPmaster.Factory.Trim()
//                                    && P.LineCode.Trim() == CurWPmaster.LineCode.Trim() && P.j_NO.Trim() == CurWPmaster.j_NO.Trim()
//                                    && P.J2_job.Trim() == CurWPmaster.J2_job.Trim()
//                                    && P.Rwo.Trim() == CurWPmaster.Rwo.Trim() && P.Qn.Trim() == CurWPmaster.Qn.Trim() && P.Date == StartDate
//                                    && P.OTN.Trim() == OT && P.Bcolor.Trim() == CurWPmaster.Bcolor.Trim()).FirstOrDefault();

//                                if (YYYY == null)
//                                {
//                                    foreach (Matching Mg in CurWPmaster.Matchings)
//                                    {
//                                        Lb5Matching Lg = new Lb5Matching();
//                                        Lg.Factory = Mg.Factory;
//                                        Lg.j_NO = Mg.j_NO;
//                                        Lg.J2_job = Mg.J2_job;
//                                        Lg.Rwo = Mg.Rwo;
//                                        Lg.Qn = Mg.Qn;
//                                        Lg.Bcolor = Mg.Bcolor;
//                                        Lg.LineCode = Mg.LineCode;
//                                        Lg.Date = pi.Date;
//                                        Lg.OTN = pi.OTN;
//                                        Lg.WPSN = Mg.WPSN;
//                                        Lg.OperationSN = Mg.OperationSN;
//                                        Lg.OperationGroup = Mg.OperationGroup;
//                                        Lg.OperationCode = Mg.OperationCode;
//                                        Lg.OperationName = Mg.OperationName;
//                                        Lg.MCType = Mg.MCType;
//                                        Lg.GSD_SAH = Mg.GSD_SAH;
//                                        Lg.BestSAH = Mg.BestSAH;
//                                        Lg.BestMTM = Mg.BestMTM;
//                                        Lg.WorkforceNum = Mg.WorkforceNum;
//                                        Lg.Rpm = Mg.Rpm;
//                                        Lg.WorkerName = Mg.WorkerName;
//                                        Lg.WorkerId = Mg.WorkerId;
//                                        Lg.WorkStyle = Mg.WorkStyle;
//                                        Lg.MachineId = Mg.MachineId;
//                                        Lg.addworker1 = Mg.addworker1;
//                                        Lg.addworkerId1 = Mg.addworkerId1;
//                                        Lg.addWorkStyle1 = Mg.addWorkStyle1;
//                                        Lg.addMachineId1 = Mg.addMachineId1;
//                                        Lg.addworker2 = Mg.addworker2;
//                                        Lg.addworkerId2 = Mg.addworkerId2;
//                                        Lg.addWorkStyle2 = Mg.addWorkStyle2;
//                                        Lg.addMachineId2 = Mg.addMachineId2;
//                                        Lg.addworker3 = Mg.addworker3;
//                                        Lg.addworkerId3 = Mg.addworkerId3;
//                                        Lg.addWorkStyle3 = Mg.addWorkStyle3;
//                                        Lg.addMachineId3 = Mg.addMachineId3;
//                                        Lg.Rpm0 = Mg.Rpm0;
//                                        Lg.addRpm1 = Mg.addRpm1;
//                                        Lg.addRpm2 = Mg.addRpm2;
//                                        Lg.addRpm3 = Mg.addRpm3;
//                                        Lg.Bcolor = Mg.Bcolor;
//                                        Lg.mc = Mg.mc;
//                                        Lg.JFlag = Mg.JFlag;
//                                        Lg.FAE = Mg.FAE; //14/12/20 


//                                        //15/06/10 add
//                                        Lg.Move_LB3 = Mg.Move;
//                                        Lg.CWorkSN_LB3 = Mg.CWorkSN;
//                                        Lg.BN_Seq_LB3 = Mg.BN_Seq_LB3;
//                                        Lg.CWorkSN_LB3 = Mg.CWorkSN_LB3;
//                                        Lg.JWorkSN_LB3 = Mg.JWorkSN_LB3;
//                                        Lg.WFCode_LB3 = Mg.WFCode_LB3;
//                                        Lg.StaitonCount_LB3 = Mg.StaitonCount_LB3;
//                                        Lg.GZW_LB3 = Mg.GZW_LB3;
//                                        Lg.WKStaitonSeq_LB3 = Mg.WKStaitonSeq_LB3;

//                                        //15/6/27
//                                        Lg.Move = Mg.Move;
//                                        Lg.Mtm_Suggest = Mg.Mtm_Suggest;


//                                        Lg.CurrentDataContext = this._curdc;

//                                        pi.Lb5Matchings.Add(Lg);
//                                    }
//                                }


//                            }
//                        }
//                    }
//                    else
//                    {

//                        foreach (string OT in OTNLst)
//                        {
//                            PoolInfo pi = CurWPmaster.PoolInfos.Where(P => P.Date == StartDate && P.OTN.Trim() == OT).FirstOrDefault();
//                            if (pi != null)
//                            {
//                                CurWPmaster.PoolInfos.Remove(pi);
//                            }
//                        }
//                    }
//                    pooltb.Dispose();
//                    //  CurDataCx.SubmitChanges();
//                    StartDate = StartDate.AddDays(1);

//                    ++PB.Position;
//                    PB.Refresh();
//                }


//                TimeSpan ts2 = new TimeSpan(DateTime.Now.Ticks);
//                TimeSpan ts = ts1.Subtract(ts2).Duration();
//                dateDiff = ts.Days.ToString() + "天"
//                    + ts.Hours.ToString() + "小時"
//                    + ts.Minutes.ToString() + "分"
//                    + ts.Seconds.ToString() + "秒";

//                //MessageBox.Show(string.Format("材琿矪瞶禣丁:'{0}'", dateDiff));

//            }



//            ts1 = new TimeSpan(DateTime.Now.Ticks);
//            #region QN State will be changed to "s"
//            DataTable InterBaseTb = DBAccess.GetInterBaseTable(string.Format(@"SELECT  FLAG3 FROM TBLSHEDULE 
//WHERE (PLINE =''{0}'') AND (CSTYLE =''{1}'') AND (TPLANT = ''{2}'') AND (RWO = ''{3}'') AND (FCCS = ''{4}'') AND (J_NO = ''{5}'') AND (J2_JOB = ''{6}'') and (ACOL=''{7}'') and CFKSRQ is not null", CurWPmaster.LineCode.TrimEnd(), CurWPmaster.CustStyleCode.TrimEnd(), CurWPmaster.Factory.TrimEnd(), CurWPmaster.Rwo.TrimEnd(), CurWPmaster.Qn.TrimEnd(), CurWPmaster.j_NO.TrimEnd(), CurWPmaster.J2_job.TrimEnd(), CurWPmaster.Bcolor.TrimEnd()));
//            string QNs, FlagS;
//            if (InterBaseTb.Rows.Count > 0)
//            {
//                string RAP_flag = CurWPmaster.Flag != null ? CurWPmaster.Flag.TrimEnd() : string.Empty;
//                string IB_flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
//                if (RAP_flag != IB_flag)
//                {
//                    CurWPmaster.Flag = IB_flag;
//                }
//            }
//            else
//            {

//                DataTable NOQN_IBTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,ACOL,CWO FROM TBLSHEDULE WHERE (PLINE = ''{0}'') AND (SEQ ={1}) and CFKSRQ is not null", CurWPmaster.LineCode.TrimEnd(), CurWPmaster.Seq.ToString()));
//                if (NOQN_IBTb.Rows.Count > 0)
//                {
//                    QNs = NOQN_IBTb.Rows[0]["fccs"].ToString().TrimEnd();
//                    if (CurDataCx.WPMasters.Where(P => P.LineCode == CurWPmaster.LineCode && P.Seq == CurWPmaster.Seq && P.Qn.Trim() == QNs).Count() > 0)
//                    {
//                        CurDataCx.ExecuteCommand(string.Format(" Exec LB4_Del_RwoQNSTDate '{0}','{1}','{2}','{3}','{4}','{5}'", CurWPmaster.LineCode.Trim(), CurWPmaster.Seq, CurWPmaster.Qn, CurWPmaster.J2_job.Trim(), CurWPmaster.Rwo.Trim(), CurWPmaster.Bcolor.Trim()));
//                    }
//                    else
//                    {
//                        //CurWPmaster.Qn = QNs;
//                        FlagS = NOQN_IBTb.Rows[0]["flag3"].ToString().TrimEnd();
//                        CurDataCx.ExecuteCommand(string.Format(" Exec UPD_QN '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}'", CurWPmaster.Rwo, QNs, CurWPmaster.Seq.ToString(), Convert.ToDateTime(CurWPmaster.StartTime).ToString("yyyy/MM/dd"), Convert.ToDateTime(CurWPmaster.EndTime).ToString("yyyy/MM/dd"), FlagS, CurWPmaster.Factory, CurWPmaster.LineCode, CurWPmaster.j_NO, CurWPmaster.J2_job, CurWPmaster.Rwo, CurWPmaster.Qn, CurWPmaster.Bcolor));
//                    }

//                }
//            }
//            #endregion

//            CurDataCx.SubmitChanges();
//            TimeSpan ts21 = new TimeSpan(DateTime.Now.Ticks);
//            TimeSpan _ts = ts1.Subtract(ts21).Duration();
//            dateDiff = _ts.Days.ToString() + "天"
//                + _ts.Hours.ToString() + "小時"
//                + _ts.Minutes.ToString() + "分"
//                + _ts.Seconds.ToString() + "秒";

//            // MessageBox.Show(string.Format("interbase矪瞶禣丁:'{0}'", dateDiff));
//            //}

//            PB.Position = 1000;
//            PB.Refresh();
//        }



        private void ProcessForm_Load(object sender, EventArgs e)
        {
            timer1.Enabled = true;
        }

        private void ProcessForm_Activated(object sender, EventArgs e)
        {
            this.Show();
        }
    }
}