using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;


namespace PH.MobileQC.UI
{
    public partial class MasterList : PH.Platform.UI.CS.UI2.ListForm//PH.Platform.UI.CS.UI2.ListForm :PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        public CheckRptCondition conditionform;
        ReportTypes ReportType = ReportTypes.Audit;
        DateTime FromDate;
        DateTime ToDate;

        public QC_Master _CurQC_Master
        {
            get
            {
                return (this.BindingSource.Current as QC_Master);
            }
        }

        #endregion

        string Flag = "";
        public MasterList()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(MasterDetail).FullName;
        }

        //Flag:  Failure、Repeat、All
        public MasterList(string flag)
        {
            InitializeComponent();
            this.EditorTypeName = typeof(MasterDetail).FullName;
            Flag = flag;
            barBtnOpen.Visibility = BarItemVisibility.Never;
            barBtnAddNew.Visibility = BarItemVisibility.Never;



        }

        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
        public override void DataBind()
        {
            base.DataBind();


            this.DataContext = context;
            this.DataSource = typeof(sp_GetExamListResult);

            //PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            //param.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.StoredProcedure;
            //param.ParamList.Add("@Factory", frmCondition.Factory);
            //param.ParamList.Add("@Workshop", frmCondition.WorkShop);
            //param.ParamList.Add("@Customer", frmCondition.Customer);
            //param.ParamList.Add("@CustStyle", frmCondition.Style);
            //param.ParamList.Add("@Project", frmCondition.Project);
            //param.ParamList.Add("@Line", frmCondition.Line);
            //param.ParamList.Add("@StartDate", frmCondition.FromDate);
            //param.ParamList.Add("@EndDate", frmCondition.ToDate);
            //param.ParamList.Add("@ExamType", frmCondition.ReportType);
            //param.ParamList.Add("@Flag", Flag);

            //param.BoType = typeof(sp_GetExamListResult);
            //param.WarnRecord = 1000;
            //this.StartEnquiry(param);


            //            @Factory   varchar(20),   -- 工廠
            //@Workshop  varchar(20),   -- 車間
            //@Customer  varchar(20),   -- 客戶
            //@CustStyle varchar(100),  -- 客款號
            //@Project   varchar(100),  -- 工程號
            //@Line      varchar(50),   -- 拉 
            //@StartDate varchar(100),  -- 開始日期，格式為：2019-06-01
            //@EndDate   varchar(100),  -- 結束日期, 格式為：2019-06-10 
            //@ExamType  varchar(100),  --檢查類型: Audit或Inspection
            //@Flag      varchar(100)   --顯示數據的類型: Failure、Repeat、All 
            //                          --1.0 Fundamental Data List報表，本參數為: All
            //                          --1.3 Exam. Failure報表，本參數為: Failure
            //                          --1.4 Repeat Exam.報表，本參數為: Repeat

        }

        // CheckRptCondition2 frmCondition = new CheckRptCondition2();
        public override void ProcessBORight()
        {
           //base.ProcessBORight();
        }

        protected override void OnClickFind()
        {

            CheckRptCondition2 frmCondition = new CheckRptCondition2();
            frmCondition.radioGroup1.Visible = true;
            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                ReportType = frmCondition.ReportType;
                //(this.DataContext as MobileQCDataContext).ExecuteDataSet
                string Sqlstr = "exec sp_GetExamDataList '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}' ";

                Sqlstr = string.Format(Sqlstr, frmCondition.Factory,
                                                           frmCondition.WorkShop,
                                                           frmCondition.Customer,
                                                           frmCondition.Style,
                                                           frmCondition.Project,
                                                           frmCondition.Line,
                                                           frmCondition.FromDate.ToString("yyyy-MM-dd"),
                                                           frmCondition.ToDate.ToString("yyyy-MM-dd"),
                                                           frmCondition.ReportType.ToString(),
                                                           Flag);

                var lists = context.ExecuteQuery<sp_GetExamListResult>(Sqlstr);

                //DataSet ds = context.ExecuteDataSet(Sqlstr, new DataSet(), "Opts");

                this.FromDate = frmCondition.FromDate;
                this.ToDate = frmCondition.ToDate;
                //this.BindingSource.DataSource = ds.Tables[0];
                this.BindingSource.DataSource = lists;



                //this.DataBind();
                //ReportType = frmCondition.ReportType;
                //FromDate = frmCondition.FromDate;
                //ToDate = frmCondition.ToDate;

                //    var lists = (this.DataContext as MobileQCDataContext).QC_Masters.Where(p => p.QCType == "Process" &&
                //        p.QC_time >= frmCondition.FromDate && p.QC_time < frmCondition.ToDate.AddDays(1));

                //    if (!string.IsNullOrEmpty(frmCondition.Factory))
                //    {
                //        lists = lists.Where(p => p.Factory == frmCondition.Factory);
                //    }

                //    if (!string.IsNullOrEmpty(frmCondition.WorkShop))
                //    {
                //        lists = lists.Where(p => p.WorkShop == frmCondition.WorkShop);
                //    }

                //    if (!string.IsNullOrEmpty(frmCondition.Line))
                //    {
                //        lists = lists.Where(p => p.Line == frmCondition.Line);
                //    }

                //    if (!string.IsNullOrEmpty(frmCondition.Style))
                //    {
                //        lists = lists.Where(p => p.Style == frmCondition.Style);
                //    }

                //    if (!string.IsNullOrEmpty(frmCondition.Project))
                //    {
                //        lists = lists.Where(p => p.Project == frmCondition.Project);
                //    }

                //    if (!string.IsNullOrEmpty(frmCondition.Customer))
                //    {
                //        lists = lists.Where(p => p.Project.Contains(frmCondition.Customer));
                //    }

                //    if (frmCondition.ReportType == ReportTypes.Audit)
                //    {
                //        lists = lists.Where(p => p.QCRoleCode == "MobileQC_MQA");
                //    }
                //    else
                //    {
                //        lists = lists.Where(p => p.QCRoleCode == "MobileQC_MQC");
                //    }


                //    //Flag:  Failure、Repeat、All
                //    if (Flag == "Failure")
                //    {
                //        //lists = lists.Where(p => p.QC_Details.Where(d => d.QC_Light == "F").Count() > 0);
                //        this.BindingSource.DataSource = lists.ToList().Where(p => p.FCount > 0);
                //    }
                //    else if (Flag == "Repeat")
                //    {
                //        this.BindingSource.DataSource = lists.ToList().Where(p => p.ReAudit_Disp != "N");
                //    }
                //    else
                //    {
                //        this.BindingSource.DataSource = lists;
                //    }

            }

            //this.BindingSource.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
            //base.OnClickFind();

        }

        private void objListGridView_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            //if (e.Column.FieldName == "QCCount")
            if (e.Column.FieldName == "ReAudit_Disp")
            {
                // string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit");
                string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit_Disp");
                if (_audit.Substring(0, 1) == "Y")
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }

            if (e.Column.FieldName == "FCount")
            {
                string _qty = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "FCount");
                if (int.Parse(_qty) > 0)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
        }

        public string Condition = "";


        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            List<sp_GetExamListResult> qclist = new List<sp_GetExamListResult>();
            for (int i = 0; i < this.objListGridView.RowCount; i++)
            {
                sp_GetExamListResult qc = this.objListGridView.GetRow(i) as sp_GetExamListResult;
                qclist.Add(qc);
            }

            string ss = FromDate.ToString("yyyy-MM-dd") + " ~ " + ToDate.ToString("yyyy-MM-dd");

            string Iswkly = (FromDate.ToString("yyyy-MM-dd") != ToDate.ToString("yyyy-MM-dd")) ? "Wkly" : "Daily";

            if (Flag == "All")
            {
                rptMastList_New rpt = new rptMastList_New(qclist, ss, ReportType, Flag);
                rpt.ShowPreview();
            }
            else
            {
                rptRecheklist rpt = new rptRecheklist(qclist, ss, ReportType, Flag, Iswkly);
                rpt.ShowPreview();
            }

            //string considtions = "";
            // FrmMastListPrint fsd = new FrmMastListPrint(this);
            //fsd.StartPosition = FormStartPosition.CenterParent;
            //DialogResult drg = fsd.ShowDialog();
            //if (drg == DialogResult.OK && !string.IsNullOrEmpty(Condition))
            //if ( !string.IsNullOrEmpty(Condition))
            // {
            //string[] arycond = Condition.Split(new char[] { ';' });
            //string _fac = arycond[0];
            //string _start = arycond[1] + " 00:00:00";
            //string _end = arycond[2] + " 23:00:00";
            //DateTime d1 = DateTime.Parse(_start);
            //DateTime d2 = DateTime.Parse(_end);

            ////MobileQCDataContext mdc =this.DataContext as MobileQCDataContext;
            //MobileQCDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            ////  MobileQCDataContext mdc = new MobileQCDataContext(MobileQCDataContext.TestConnStr);


            //string _role = ReportType == ReportTypes.Audit ? "MobileQC_MQA" : "MobileQC_MQC";

            //string sqlstr = string.Format("select * from qc_master where isnull(qctype,'Process')='Process'and factory='{0}' and qcrolecode='{1}' and qc_time between '{2}' and '{3}'", _fac, _role, _start, _end);
            //// string sqlstr = string.Format("select * from qc_master where factory='{0}' and qcrolecode='{1}' and qc_time between '{2}' and '{3}' and style='1195'", _fac, _role, _start, _end);
            ////  var lst = (IEnumerable<QC_Master>)this.BindingSource.DataSource;


            //List<QC_Master> qclist = new List<QC_Master>();
            //for (int i = 0; i < this.objListGridView.RowCount; i++)
            //{
            //    QC_Master qc = this.objListGridView.GetRow(i) as QC_Master;
            //    qclist.Add(qc);
            //    // qclist.Remove(qc);


            //}

            //// if (lst == null || lst.Count == 0)
            //if (this.BindingSource.Count == 0)
            //{
            //    MessageBox.Show("沒有數據 !");
            //    return;
            //}
            //else
            //{
            //    string ss = arycond[1] + " ~ " + arycond[2];
            //    //  var ds = lst.Where(p => p.Style == "1195").ToList();

            //    if (Flag == "All")
            //    {
            //        rptMastList_New rpt = new rptMastList_New(qclist, ss, ReportType, Flag);
            //        rpt.ShowPreview();
            //    }
            //    else
            //    {
            //        rptRecheklist rpt = new rptRecheklist(qclist, ss, ReportType, Flag);
            //         rpt.ShowPreview();
            //    }

            //}
            // }


        }

    }
}
