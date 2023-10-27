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
    public partial class PONewReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public PONewReport()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            _region = "SL";
            this.jobNewPOReport1.JobHandle += new PH.POPC.BO.BackEndEventHandler(jobNewPOReport1_JobHandle);

            //this.btnTest.Visible = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID == "Peter";
            this.btnTestAutoEmail.Visible = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower() == "chandlerxiao";

        }
        void jobNewPOReport1_JobHandle(object sender, PH.POPC.BO.BackEndEventArgs e)
        {
            Print();
        }

        string _region;//KB,SL,HK
        //public PONewReport(string region)
        //{
        //    InitializeComponent(); 
        //    this._region = region;
        //} 

        //Xsj:為打印海關PO而添加以下代碼------------------------ 
        public PONewReport(string region)
        {
            InitializeComponent();
            if (region.ToUpper() == "HSCODE")
            {
                this.jobNewPOReport1.IsPrintPOForHS = true;
            }
            else
            {
                this._region = region;
            }
        }
        //------------------------------------------------------

        private void btnPrint_Click(object sender, EventArgs e)
        {
            Print();
        }
        private void Print()
        {
            this.jobNewPOReport1.Area = _region;

            string cono = this.jobNewPOReport1.CONO;
            string pono = this.jobNewPOReport1.PONO;
            if (string.IsNullOrEmpty(pono))
            {
                MessageBox.Show("Please input a PO No#.");
                return;
            }
            if (!CheckClassCodeHaveValue())
            {
                return;
            }

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.POPC.BackEnd.dll";　//當前dll全名
            data.ClassFullName = "PH.POPC.BackEnd.JobPOReport";//報表全名
            data.JobName = string.Format("PO Report-{0}", pono);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.RunServer = "SL";
            data.Parameter = this.jobNewPOReport1.GetParameter();
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }
        private void btnPrintReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Print();
        }
        private bool CheckClassCodeHaveValue()
        {
            GetHeaders(this.jobNewPOReport1.CONO, this.jobNewPOReport1.PONO);
            if (Headers.Count() == 0)
            {
                MessageBox.Show(string.Format("Please PO [{0}] not exists!", this.jobNewPOReport1.PONO));
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
                        //if (c.MIDcDetail != null && c.MIDcDetail.Status == "Drop")
                        //Xsj20160630:添加Drop-RMB狀態，不允許出PO。
                        //if (c.MIDcDetail != null && (c.MIDcDetail.Status == "Drop" || c.MIDcDetail.Status == "Drop-RMB"))


                        //MIDc中沒有的物料，狀態為：Drop、Drop-RMB、Stop的物料，不允許出PO  由David修改2019-09-18
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
                MessageBox.Show(string.Format("Some PO [{0}]'s material has been dropped by MIDc, please contact MIDc!\r\n{1}", this.jobNewPOReport1.PONO, dropMatType));
                return false;
            }

            #endregion

            #region Replenishment

            //取消PO Detail Replenishment栏位让用户选择，自动设置为：N (Normal),  由David改写以下代码 2022-06-10
            foreach (var h in Headers)
            {
                foreach (var PODetail in h.PODetails)
                {
                    if (string.IsNullOrEmpty(PODetail.Replenishment))
                    {
                        PODetail.Replenishment = "N";
                    }
                }
            }
            _context.SubmitChanges();


            //bool bHaveReplenishment = false;
            //foreach (var h in Headers)
            //{
            //    h.CurrentDataContext = this._context;
            //    foreach (var item in h.PODetails)
            //    {
            //        //if (string.IsNullOrEmpty(item.Replenishment))
            //        //{
            //        //    item.CurrentDataContext = this._context;
            //        PH.POPC.UI.NewPO.InputReplenishmentForm form = new PH.POPC.UI.NewPO.InputReplenishmentForm(h);
            //        bHaveReplenishment = (form.ShowDialog() == DialogResult.OK);
            //        break;
            //        //        }
            //        //        else
            //        //            bHaveReplenishment = true;
            //    }
            //}
            //if (!bHaveReplenishment) return false;
            #endregion


            //由David注释以下代码, 取消Class Code选择功能 2022-06-10
            //#region Class code

            //Boolean bHaveClassCode = false;
            //foreach (var h in Headers)
            //{
            //    h.CurrentDataContext = this._context;
            //    foreach (var item in h.PODetails)
            //    {
            //        if (string.IsNullOrEmpty(item.ClassCode))
            //        {
            //            item.CurrentDataContext = this._context;
            //            PH.POPC.UI.NewPO.InputItemClassCodeForm form = new PH.POPC.UI.NewPO.InputItemClassCodeForm(h);
            //            bHaveClassCode = (form.ShowDialog() == DialogResult.OK);
            //            break;
            //        }
            //        else
            //            bHaveClassCode = true;
            //    }
            //}
            //if (!bHaveClassCode) return false;
            //#endregion

            #region Gmt Colr

            Boolean bHaveGmtColor = false;
            foreach (var h in Headers)
            {
                h.CurrentDataContext = this._context;
                foreach (var d in h.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        if (string.IsNullOrEmpty(c.GarmentColor))
                        {
                            c.CurrentDataContext = this._context;
                            PH.POPC.UI.NewPO.InputGmtColorForm form = new PH.POPC.UI.NewPO.InputGmtColorForm(h);
                            bHaveGmtColor = (form.ShowDialog() == DialogResult.OK);
                            return bHaveGmtColor;
                            //break;
                        }
                        else
                            bHaveGmtColor = true;
                    }
                    if (!bHaveGmtColor) break;
                }
            }
            return bHaveGmtColor;
            //if (!bHaveGmtColor) return false;

            #endregion

        }


        public IEnumerable<PH.POPC.BO.POHeader> Headers { get; set; }
        PH.POPC.BO.POPCDataContext _context;
        private void GetHeaders(string company, string pono)
        {
            _context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            _context.CommandTimeout = 1000;
            var aa = from c in _context.POHeaders
                     where (c.POType == (int)PH.POPC.BO.POType.PO && c.Company == company && c.PONO == pono)
                     //where (c.Company == company && c.PONO == pono)
                     group c by new { c.PONO, c.Company } into newGroup
                     select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };


            Headers = from xx in _context.POHeaders
                      from yy in aa
                      where (xx.POType == (int)PH.POPC.BO.POType.PO) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
                          //where  xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO &&
                      (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
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

        private void btnTestAutoEmail_Click(object sender, EventArgs e)
        {
            //PH.POPC.BackEnd.Job.JobAutoEmail2Supp job = new PH.POPC.BackEnd.Job.JobAutoEmail2Supp(); 
            //job.BackEndJob(null);
        }

        #endregion



    }
}
