using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;
using PH.POPC.BackEnd;
using PH.POPC.BO;
using DevExpress.Utils;

namespace PH.POPC.UI
{
    public partial class MultiPOReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public MultiPOReport()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            //this.btnTest.Visible = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID == "Peter";
            _region = "SL";
            this.jobMultiPOReport1.JobHandle += new PH.POPC.BO.BackEndEventHandler(jobMultiPOReport1_JobHandle);
        }
        void jobMultiPOReport1_JobHandle(object sender, PH.POPC.BO.BackEndEventArgs e)
        {
            Print();
        }
        string _region;//KB,SL,HK
        //public MultiPOReport(string region)
        //{
        //    InitializeComponent();
        //    this._region = region;
        //}

        //Xsj:為打印海關PO而添加以下代碼------------------------ 
        public MultiPOReport(string region)
        {
            InitializeComponent();
            if (region.ToUpper() == "HSCODE")
            {
                this.jobMultiPOReport1.IsPrintPOForHS = true;
            }
            else
            {
                this._region = region;
            }

        }
        //------------------End--------------------------------


        private void btnPrint_Click(object sender, EventArgs e)
        {
            Print();
        }
        private void Print()
        {
            this.jobMultiPOReport1.Area = _region;

            string cono = this.jobMultiPOReport1.CONO;
            string pono = this.jobMultiPOReport1.PONO;

            string s = jobMultiPOReport1.ValidationPO();
            if (!string.IsNullOrEmpty(s))
            {
                MessageBox.Show(s);
                return;
            }

            if (string.IsNullOrEmpty(pono))
            {
                MessageBox.Show("Please input PO No.");
                return;
            }

            if (!CheckClassCodeHaveValue())
            {
                return;
            }

            if (this.jobMultiPOReport1.ReportType == 2) //选择All
            {
                this.jobMultiPOReport1.DynamicReportType = 0;
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.POPC.BackEnd.dll";　//當前dll全名
                data.ClassFullName = "PH.POPC.BackEnd.JobMultiPOReport";//報表全名
                data.JobName = string.Format("PO Report-{0}", pono);//JOB名稱
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.RunServer = "SL";
                data.Parameter = this.jobMultiPOReport1.GetParameter();
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");


                this.jobMultiPOReport1.DynamicReportType = 1;
                PH.Platform.BackEnd.BO.ServerJobData data1 = new PH.Platform.BackEnd.BO.ServerJobData();
                data1.AssemblyName = "PH.POPC.BackEnd.dll";　//當前dll全名
                data1.ClassFullName = "PH.POPC.BackEnd.JobMultiPOReport";//報表全名
                data1.JobName = string.Format("PO Report-{0}", pono);//JOB名稱
                data1.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data1.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data1.RunServer = "SL";
                data1.Parameter = this.jobMultiPOReport1.GetParameter();
                PH.Platform.BackEnd.BO.SReport.InsertData(data1, "EN");
            }
            else
            {
                this.jobMultiPOReport1.DynamicReportType = -19;

                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.POPC.BackEnd.dll";　//當前dll全名
                data.ClassFullName = "PH.POPC.BackEnd.JobMultiPOReport";//報表全名
                data.JobName = string.Format("PO Report-{0}", pono);//JOB名稱
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.RunServer = "SL";
                data.Parameter = this.jobMultiPOReport1.GetParameter();
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
            }
        }
        private void btnPrintReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Print();
        }
        private bool CheckClassCodeHaveValue()
        {
            GetHeaders(this.jobMultiPOReport1.CONO, this.jobMultiPOReport1.PONOs);
            string pos = GetNotExitPOs();
            if (!string.IsNullOrEmpty(pos))
            {
                MessageBox.Show(string.Format("PO [{0}] not exists!", pos));
                return false;
            }

            #region Check MIDc whether is Drop status

            string dropMatType = "";
            //Boolean bHaveDrop = false;
            List<string> drops = new List<string>();

            foreach (var h in Headers)
            {
                foreach (var d in h.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        //if (c.MIDcDetail != null &&  (c.MIDcDetail.Status == "Drop" || c.MIDcDetail.Status == "Drop-RMB"))

                        //MIDc中沒有的物料，狀態為：Drop、Drop-RMB、Stop的物料，不允許出PO  由David修改2019-09-19
                        List<string> ExcludeMIDcStatusList = new List<string>() { "DROP", "DROP-RMB", "STOP", "HOLD" };
                        if (c.MIDcDetail == null || ExcludeMIDcStatusList.Contains(c.MIDcDetail.Status.ToUpper()))
                        {
                            //bHaveDrop = true;
                            //break;
                            string drop1 = drops.Find(delegate(string s1)
                            {
                                return s1 == c.SupplierReference;
                            });

                            if (string.IsNullOrEmpty(drop1))
                            {
                                if (c.MIDcDetail == null)
                                {
                                    dropMatType += string.Format("\r\n   [{0}]", c.SupplierReference + " Not Find Material " + c.ItemCode);
                                    drops.Add(c.SupplierReference);
                                }
                                else
                                {
                                    dropMatType += string.Format("\r\n   {0}", c.SupplierReference + "   [" + c.MIDcDetail.Status + "]");
                                    drops.Add(c.SupplierReference);
                                }
                            }
                        }
                        //else
                        //    bHaveDrop = false;
                    }
                    //if (bHaveDrop) break;
                }
            }
            if (!string.IsNullOrEmpty(dropMatType))
            {
                MessageBox.Show(string.Format("Some PO [{0}]'s material has been dropped by MIDc, please contact MIDc!\r\n{1}", this.jobMultiPOReport1.PONO, dropMatType));
                return false;
            }

            #endregion

            #region Replenishment

            //Boolean bHaveReplenishment = true;
            List<POHeader> hs1 = new List<POHeader>();
            foreach (var h in Headers)
            {
                h.CurrentDataContext = this._context;
                //foreach (var item in h.PODetails)
                //{
                hs1.Add(h);
                //}
            }


            //取消PO Detail Replenishment栏位让用户选择，自动设置为：N (Normal),  由David改写以下代码 2022-05-30
            foreach (POHeader po in hs1)
            {
                foreach (var PODetail in po.PODetails)
                {
                    if (string.IsNullOrEmpty(PODetail.Replenishment))
                    {
                        PODetail.Replenishment = "N";
                    }
                }
            }
            _context.SubmitChanges();


            ////if (!bHaveReplenishment)
            ////{
            //PH.POPC.UI.NewPO.InputReplenishmentsForm frmR = new PH.POPC.UI.NewPO.InputReplenishmentsForm(hs1);
            //bHaveReplenishment = (frmR.ShowDialog() == DialogResult.OK);
            ////}

            //if (!bHaveReplenishment) return false;



            #endregion


            //由David注释以下代码, 取消Class Code选择功能
            //#region Class code

            //Boolean bHaveClassCode = true;
            //List<POHeader> hs = new List<POHeader>();
            //foreach (var h in Headers)
            //{
            //    h.CurrentDataContext = this._context;
            //    foreach (var item in h.PODetails)
            //    {
            //        if (string.IsNullOrEmpty(item.ClassCode))
            //        {
            //            item.CurrentDataContext = this._context;
            //            hs.Add(h);
            //            bHaveClassCode = false;
            //            //PH.POPC.UI.NewPO.InputItemClassCodeForm form = new PH.POPC.UI.NewPO.InputItemClassCodeForm(h);
            //            //bHaveClassCode = (form.ShowDialog() == DialogResult.OK);
            //            break;
            //        }
            //        //else
            //        //    bHaveClassCode = true;
            //    }
            //}
            //if (!bHaveClassCode)
            //{
            //    PH.POPC.UI.NewPO.InputItemsClassCodeForm form = new PH.POPC.UI.NewPO.InputItemsClassCodeForm(hs);
            //    bHaveClassCode = (form.ShowDialog() == DialogResult.OK);
            //}

            //if (!bHaveClassCode) return false;
            //#endregion

            #region Gmt Colr

            Boolean bHaveGmtColor = true;
            List<POHeader> hs = new List<POHeader>();
            hs.Clear();
            foreach (var h in Headers)
            {
                h.CurrentDataContext = this._context;
                bHaveGmtColor = true;
                foreach (var d in h.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        if (string.IsNullOrEmpty(c.GarmentColor))
                        {
                            c.CurrentDataContext = this._context;
                            hs.Add(h);
                            bHaveGmtColor = false;
                            //PH.POPC.UI.NewPO.InputGmtColorForm form = new PH.POPC.UI.NewPO.InputGmtColorForm(h);
                            //bHaveGmtColor = (form.ShowDialog() == DialogResult.OK);
                            //return bHaveGmtColor;
                            break;
                        }
                        //else
                        //    bHaveGmtColor = true;
                    }
                    if (!bHaveGmtColor) break;
                }
            }
            if (hs.Count != 0)
            {
                PH.POPC.UI.NewPO.InputGmtColorsForm form = new PH.POPC.UI.NewPO.InputGmtColorsForm(hs);
                bHaveGmtColor = (form.ShowDialog() == DialogResult.OK);
            }
            return bHaveGmtColor;
            #endregion



        }
        private string GetNotExitPOs()
        {
            string pos = "";
            foreach (var item in this.jobMultiPOReport1.PONOs)
            {
                var aa = from a in this.Headers
                         where a.PONO == item
                         select a;

                if (aa.Count() == 0)
                    pos += item + ", ";

            }
            pos = pos.TrimEnd();
            return pos;
        }

        public IEnumerable<PH.POPC.BO.POHeader> Headers { get; set; }
        PH.POPC.BO.POPCDataContext _context;
        private void GetHeaders(string company, string[] pos)
        {
            _context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            _context.CommandTimeout = 1000;
            //var aa = from c in _context.POHeaders
            //         where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == company && pos.Contains(c.PONO))
            //         group c by new { c.PONO, c.Company } into newGroup
            //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };


            //Headers = from xx in _context.POHeaders
            //          from yy in aa
            //          where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
            //          (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
            //          select xx;

            Headers = from xx in _context.POHeaders
                      where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == company && pos.Contains(xx.PONO) && (xx.VersionFlag ?? false)
                      orderby xx.PONO
                      select xx;
            //foreach (var item in Headers)
            //{
            //    item.EndCustCode = "SALL";
            //    item.OrderClass = 4;
            //}
        }

        #region Test report

        private void btnTest_Click(object sender, EventArgs e)
        {
            //LoadImages();
            //return;
            //GetHeaders(this.jobPOReport1.CONO, this.jobPOReport1.PONO);
            //DevExpress.XtraReports.UI.XtraReport report = CreateReport();

            //report.DataSource = Headers;
            //report.ShowPreviewDialog();
        }


        #endregion

    }
}
