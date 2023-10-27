using System.Data;
using System.Linq;
using PH.LWPM.BO;
using System;
using PH.LineBalanceII.BO;
using PH.Platform.BO;
using System.Windows.Forms;

namespace PH.LWPM.UI.LB4
{
    public partial class BatchAddForm : DevExpress.XtraEditors.XtraForm
    {
        RAPLQDataContext db;
        LineBalanceIIDataContext LB3DB;
        string _OptionType;
        private BatchAddForm()
        {
            InitializeComponent();
        }

        public BatchAddForm(string AOptionType)
            : this()
        {
            _OptionType = AOptionType;
            db = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
            LB3DB = ContextBuilder.CreateContext<LineBalanceIIDataContext>();

            this.PrepareData();
        }


        private void PrepareData()
        {
            this.GetFactoryList();
            this.GetWorkshopList();

            //DataTable linetb = DBAccess.GetInterBaseTable(string.Format("SELECT distinct PLINE FROM TBLSHEDULE WHERE (TPLANT =''{0}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", DBAccess.CurFactory()));
            //cbLine.Properties.Items.AddRange(linetb.AsEnumerable().Select(P => P.Field<string>("PLINE")).ToArray());
        }

        private void cbFactory_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            this.GetWorkshopList();
            this.cbWorkshop.EditValue = null;
            this.cbLine.EditValue = null;
            //DataTable dtWorkshop = DBAccess.GetInterBaseTable(string.Format("SELECT distinct TShop FROM TBLSHEDULE WHERE (TPLANT =''{0}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", this.cbFactory.Text));
            //cbWorkshop.Properties.Items.AddRange(dtWorkshop.AsEnumerable().Select(P => P.Field<string>("TShop")).ToArray());
        }

        private void cbWorkshop_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            this.GetLineList();
            this.cbLine.EditValue = null;
        }

        void GetFactoryList()
        {
            this.cbFactory.Properties.Items.Clear();
            this.cbFactory.Properties.Items.AddRange(db.BaseCodes.Where(P => P.Type == "FACTORY" && P.ExtraField1 == "1").Select(S => S.Code).ToArray());
            this.cbFactory.Text = DBAccess.CurFactory();
        }

        void GetWorkshopList()
        {

            if (_OptionType == "PP")
            {
                cbWorkshop.Properties.Items.Clear();
                cbWorkshop.Properties.Items.Add("PPW");
            }
            else
            {
                DataTable dtWorkshop = DBAccess.GetInterBaseTable(string.Format("SELECT distinct TShop FROM TBLSHEDULE WHERE (TPLANT =''{0}'') and TShop not in (''SC1'', ''PPW'', ''NSB'') AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", this.Factory));
                cbWorkshop.Properties.Items.Clear();
                cbWorkshop.Properties.Items.AddRange(dtWorkshop.AsEnumerable().Select(P => P.Field<string>("TShop")).ToArray());
                cbWorkshop.Properties.Items.Insert(0, "");
            }
        }

        void GetLineList()
        {
            DataTable dtLine = DBAccess.GetInterBaseTable(string.Format("SELECT distinct PLINE FROM TBLSHEDULE WHERE (TPLANT =''{0}'') and TShop=''{1}''  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", this.Factory, this.Workshop));
            cbLine.Properties.Items.Clear();
            cbLine.Properties.Items.AddRange(dtLine.AsEnumerable().Select(P => P.Field<string>("PLINE")).ToArray());
            cbLine.Properties.Items.Insert(0, "");
        }

        public string Factory
        {
            get { return this.cbFactory.Text; }
        }

        public string Workshop
        {
            get { return this.cbWorkshop.Text; }
        }

        public string Line
        {
            get { return this.cbLine.Text; }
        }

        public int QNCount
        {
            get { return Convert.ToInt32(this.edtQNCount.EditValue); }
        }

        //private void cbLine_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        //{
        //    if (string.IsNullOrEmpty(this.cbLine.Text)) return;

        //    string Str = string.Format("SELECT PLINE,j_no ,J2_JOB,RWO,CSTYLE,ACOL,SCQTY,ARTNO,CFKSJS,CKJS,CFKSRQ,CFWCRQ,FCCS,SEQ,TSHOP,CWO FROM TBLSHEDULE WHERE (TPLANT =''{0}'') AND (PLINE=''{1}'')  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ORDER BY CFKSRQ", cbFactory.Text.TrimEnd(), cbLine.Text.TrimEnd());
        //    string SqlStr = string.Format("select top {0} convert(bit, 0) as CheckFlag, * from openquery(interbase, '{1}')", this.edtQNCount.Text, Str);

        //    int QNCount = int.Parse(this.edtQNCount.Text);
        //    DataTable dt = DBAccess.GetTable(SqlStr);
        //    for (int i = 0; i < QNCount; i++)
        //    {
        //        dt.Rows[i]["CheckFlag"] = true;
        //    }

        //    bindingSourceLWPM.DataSource = dt;
        //}

        //private void edtQNCount_EditValueChanged(object sender, EventArgs e)
        //{
        //    cbLine_Closed(sender, null);
        //}



        //public void BatchAddData()
        //{
        //    //檢查有多少個QN沒有做LB3，這些數據不能導入到LB4
        //    int MissingCount = this.GetNoLB3Count();
        //    if (MissingCount > 0)
        //    {
        //        if (MessageBox.Show(string.Format("Missing Qty: {0}, Do you want to continue?", MissingCount), "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
        //        {
        //            return;
        //        }
        //    }

        //    //導入數據到LB4
        //    DataTable dt = this.bindingSourceLWPM.DataSource as DataTable;
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        if (Convert.ToBoolean(dt.Rows[i]["CheckFlag"]))
        //        {
        //            //沒做LB3的，不導入到LB4中
        //            if (LB3DB.StyleMasters.Where(P => P.KHKH == dt.Rows[i]["CSTYLE"].ToString().TrimEnd()).Count() > 0)
        //            {
        //                InsertQNData(dt.Rows[i]);
        //            }
        //        }
        //    }
        //}

        //int GetNoLB3Count() //得到打勾的8張QN中，有幾張是沒有做LB3的，即Missing的數據
        //{
        //    int MissingCount = 0;
        //    DataTable dt = this.bindingSourceLWPM.DataSource as DataTable;
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        if (Convert.ToBoolean(dt.Rows[i]["CheckFlag"]))
        //        {
        //            string KH = dt.Rows[i]["CSTYLE"].ToString().TrimEnd();
        //            if (LB3DB.StyleMasters.Where(P => P.KHKH == KH).Count() == 0)
        //            {
        //                MissingCount++;
        //            }
        //        }
        //    }
        //    return MissingCount;
        //}

        //void InsertQNData(DataRow dr)
        //{
        //    int Count = db.WPMasters.Where(p =>
        //        p.Factory == this.cbFactory.Text.TrimEnd() &&
        //        p.LineCode == dr["PLINE"].ToString().TrimEnd() &&
        //        p.j_NO == dr["j_no"].ToString().TrimEnd() &&
        //        p.J2_job == dr["j2_job"].ToString().TrimEnd() &&
        //        p.Rwo == dr["rwo"].ToString().TrimEnd() &&
        //        p.Qn == dr["fccs"].ToString().TrimEnd() &&
        //        p.Bcolor == dr["acol"].ToString().TrimEnd()).Count();

        //    if (Count > 0) //QN已經增加過了，不能重複增加
        //    {
        //        return;
        //    }

        //    WPMaster CurWPM = new WPMaster();
        //    CurWPM.Factory = this.cbFactory.Text.TrimEnd();
        //    CurWPM.LineCode = dr["PLINE"].ToString().TrimEnd();
        //    CurWPM.StartTime = Convert.ToDateTime(dr["CFKSRQ"].ToString());
        //    CurWPM.EndTime = Convert.ToDateTime(dr["CFWCRQ"].ToString());
        //    CurWPM.STime = Convert.ToDecimal(dr["CFKSJS"].ToString());
        //    CurWPM.ETime = Convert.ToDecimal(dr["CKJS"].ToString());
        //    CurWPM.j_NO = dr["j_no"].ToString().TrimEnd();
        //    CurWPM.J2_job = dr["j2_job"].ToString().TrimEnd();
        //    CurWPM.Rwo = dr["rwo"].ToString().TrimEnd();
        //    CurWPM.Qn = dr["fccs"].ToString().TrimEnd();
        //    CurWPM.Seq = Convert.ToInt32(dr["seq"].ToString().TrimEnd());
        //    CurWPM.Bcolor = dr["acol"].ToString().TrimEnd();
        //    CurWPM.Location = dr["TSHOP"].ToString().TrimEnd();
        //    CurWPM.Woc = dr["CWO"].ToString().TrimEnd();


        //    //得到LB3資料
        //    string KH = dr["CSTYLE"].ToString().TrimEnd();
        //    StyleMaster CurStyleMaster = LB3DB.StyleMasters.FirstOrDefault(P => P.KHKH == KH);

        //    CurWPM.PHStyleCode = CurStyleMaster.PHKH;
        //    CurWPM.CustStyleCode = CurStyleMaster.KHKH;
        //    CurWPM.Version = CurStyleMaster.Edition;
        //    CurWPM.ZH = CurStyleMaster.ZH;
        //    CurWPM.IsBatchAdd = true;

        //    int xh = 0;
        //    var SPLst = CurStyleMaster.StyleProcedures.OrderBy(P => P.XH);

        //    foreach (StyleProcedure Ps in SPLst)
        //    {
        //        Matching Lf = new Matching();
        //        Lf.WPSN = ++xh;
        //        //Lf.WPSN = Convert.ToInt32(Ps.XH);
        //        Lf.OperationSN = Ps.SN;
        //        Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
        //        Lf.OperationCode = Ps.WorkSN;
        //        Lf.OperationName = Ps.WorkName;
        //        Lf.FAE = Ps.FAE;
        //        Lf.MCType = Ps.YCDM;
        //        Lf.GSD_SAH = Ps.CWorkSN;
        //        Lf.Rpm = Ps.YCSD;
        //        Lf.mc = true;
        //        Lf.JFlag = Ps.JFlag;
        //        Lf.BestSAH = Ps.PJHSAHSN;
        //        Lf.BestMTM = Ps.PJHMTM;
        //        Lf.WorkforceNum = Ps.LDL;
        //        Lf.IsFloater = false;

        //        Lf.Move_LB3 = Ps.Move;
        //        Lf.CWorkSN_LB3 = Ps.CWorkSN;
        //        Lf.BN_Seq_LB3 = Ps.BNCX;
        //        Lf.CWorkSN_LB3 = Ps.CWorkSN;
        //        Lf.JWorkSN_LB3 = Ps.JWorkSN;
        //        Lf.WFCode_LB3 = Ps.GRDH;
        //        Lf.GZW_LB3 = Ps.GZW;
        //        Lf.StaitonCount_LB3 = Ps.GZW;
        //        // Lf.WKStaitonSeq_LB3 = Ps.WKStaitonSeq;

        //        Lf.Mtm_Suggest = Ps.PJHMTM;
        //        Lf.Move = Ps.Move;

        //        CurWPM.Matchings.Add(Lf);
        //    }

        //    var SPLst1 = CurStyleMaster.StyleProcedure_Es.OrderBy(P => P.XH);
        //    foreach (StyleProcedure_E Ps in SPLst1)
        //    {
        //        Matching Lf = new Matching();
        //        Lf.WPSN = ++xh;
        //        //Lf.WPSN = Convert.ToInt32(Ps.XH);
        //        Lf.OperationSN = Ps.SN;
        //        Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
        //        Lf.OperationCode = Ps.WorkSN;
        //        Lf.OperationName = Ps.WorkName;
        //        Lf.FAE = Ps.FAE; // 14/8/20 add
        //        Lf.MCType = Ps.YCDM;
        //        Lf.GSD_SAH = Ps.CWorkSN;
        //        Lf.Rpm = Ps.YCSD;
        //        Lf.mc = true;
        //        Lf.JFlag = Ps.JFlag;
        //        Lf.BestSAH = Ps.PJHSAHSN;
        //        Lf.BestMTM = Ps.PJHMTM;
        //        Lf.WorkforceNum = Ps.LDL;
        //        Lf.Mtm_Suggest = Ps.PJHMTM;
        //        Lf.Move = Ps.Move;
        //        Lf.IsFloater = false;
        //        CurWPM.Matchings.Add(Lf);
        //    }

        //    var SPLst2 = CurStyleMaster.StyleProcedure_Fs.OrderBy(P => P.XH);
        //    foreach (StyleProcedure_F Ps in SPLst2)
        //    {
        //        Matching Lf = new Matching();
        //        Lf.WPSN = ++xh;
        //        //Lf.WPSN = Convert.ToInt32(Ps.XH);
        //        Lf.OperationSN = Ps.SN;
        //        Lf.OperationGroup = Ps.TeamYH != null ? Ps.TeamYH : string.Empty;
        //        Lf.OperationCode = Ps.WorkSN;
        //        Lf.OperationName = Ps.WorkName;
        //        Lf.FAE = Ps.FAE;
        //        Lf.MCType = Ps.YCDM;
        //        Lf.GSD_SAH = Ps.CWorkSN;
        //        Lf.Rpm = Ps.YCSD;
        //        Lf.mc = true;
        //        Lf.JFlag = Ps.JFlag;
        //        Lf.BestSAH = Ps.PJHSAHSN;
        //        Lf.BestMTM = Ps.PJHMTM;
        //        Lf.WorkforceNum = Ps.LDL;
        //        Lf.Mtm_Suggest = Ps.PJHMTM;
        //        Lf.Move = Ps.Move;
        //        Lf.IsFloater = false;
        //        CurWPM.Matchings.Add(Lf);
        //    }

        //    db.WPMasters.InsertOnSubmit(CurWPM);
        //    db.SubmitChanges();
        //}

        //private void bindingSourceLWPM_CurrentChanged(object sender, EventArgs e)
        //{
        //    if (bindingSourceLWPM.Count > 0)
        //    {
        //        string CustStyle = (this.bindingSourceLWPM.Current as DataRowView)["CSTYLE"].ToString().TrimEnd();
        //        this.gridLB3.DataSource = LB3DB.StyleMasters.Where(P => P.KHKH == CustStyle);
        //    }

        //}



    }
}