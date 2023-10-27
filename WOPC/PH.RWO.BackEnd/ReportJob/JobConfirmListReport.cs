using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.ReportJob
{
    public partial class JobConfirmListReport : UserControl, PH.Platform.BackEnd.BO.IServerReport, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobConfirmListReport()
        {
            InitializeComponent();
            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            PH.RWO.BO.CustomerCodeList list = new CustomerCodeList();
            this.editCust.Properties.Items.Add("");
            var custs = list.GetDistinctCustomers();
            foreach (string item in custs)
            {
                this.editCust.Properties.Items.Add(item);
            }
        }

        #region IServerReport Members
        string _currentUser;
        string _customerCode;
        string _reportType;//WO,RWO,RWOII
        DateTime _exftyFrom;
        DateTime _exftyTo;
        string _param;


        bool _isSL;
        public string CustomerCode
        {
            get { return this.editCust.Text; }
        }
        public string CurrentUser
        {
            get { return this.editUser.Text; }
        }
        public string ReportType
        {
            get { return this.lblReportType.Text; }
        }
        public DateTime ExftyFrom
        {
            get { return this.editExfty1.DateTime; }
        }
        public DateTime ExftyTo
        {
            get { return this.editExfty2.DateTime; }
        }
        public void GetValues(string parameters)
        {
            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            _isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._customerCode = ss[0];
            this._currentUser = ss[1].Trim();
            this._reportType = ss[2];
            this._exftyFrom = Convert.ToDateTime(ss[3]);
            this._exftyTo = Convert.ToDateTime(ss[4]);
        }
        public int CheckDataSource(string parameters)
        {
            return -1;
        }
        public DevExpress.XtraReports.UI.XtraReport CreateReport(string parameters)
        {
            GetValues(parameters);

            DevExpress.XtraReports.UI.XtraReport r;
            switch (this._reportType)
            {
                case "WO":
                    if (_isSL)
                        r = new PH.RWO.BackEnd.WOProcessingReport();
                    else
                        r = new PH.RWO.BackEnd.KB.WOProcessingReport();
                    break;
                case "RWO":
                    if (_isSL)
                        r = new PH.RWO.BackEnd.RWOProcessingReport();
                    else
                        r = new PH.RWO.BackEnd.KB.RWOProcessingReport();
                    break;
                case "RWOII":
                    r = new PH.RWO.BackEnd.RWOII.RWOProcessingReport();
                    break;
                default:
                    r = new DevExpress.XtraReports.UI.XtraReport();
                    break;
            }
            return r;

        }

        public object GetReportDataSource(string parameters)
        {
            PH.RWO.BO.RWOSOPCDataContext dataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            dataContext.CommandTimeout = 1000;
            switch (this._reportType)
            {
                #region WO
                case "WO":
                    List<View_WOConfirm> wolist;

                    #region OA
                    //select *  from dbo.View_WOConfirm  v 
                    //where dbo.fn_IifContain(v.Users,@UserName)=1 and isnull(v.OAConfirm,'')=''  and v.[Current]=0 and v.IsRwo=0
                    var woOA = from v in dataContext.View_WOConfirms
                               where (v.OAConfirm ?? "") == "" && v.Current == 0 && !v.IsRWO

                               && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                               && (this._exftyFrom == DateTime.MinValue
                                  //|| (v.CustomerCode == "TAMA" && v.ShipMode.ToUpper().Contains("BOAT") && v.FCLExFtyShipCompleted >= this._exftyFrom && v.FCLExFtyShipCompleted <= this._exftyTo)
                                  || (v.LCLExFtyShipCompleted >= this._exftyFrom && v.LCLExFtyShipCompleted <= this._exftyTo)
                                  )
                               select v;
                    wolist = woOA.ToList<View_WOConfirm>();
                    foreach (var a in wolist)
                    {
                        a.ProcessingType = ConfirmProcessingType.OA;
                    }
                    #endregion
                    #region PPC
                    //select *  from dbo.View_WOConfirm  a 
                    //where dbo.fn_IifContain(a.Users,@UserName)=1 and isnull(a.OAConfirm,'')<>''  and a.[Current]=1 and a.IsRwo=0
                    // and (
                    //         (isnull(a.ActionStatus,1)<>-1 and isnull(a.PPCConfirm,'')='')
                    //      or (isnull(a.ActionStatus,1)=-1 and isnull(a.PPCConfirm,'')<>'')
                    //      )
                    var woPPC = from v in dataContext.View_WOConfirms
                                where (v.OAConfirm ?? "") != "" && v.Current == 1 && !v.IsRWO
                                && (
                                      ((v.ActionStatus ?? 1) != -1 && (v.PPCConfirm ?? "") == "")
                                   || ((v.ActionStatus ?? 1) == -1 && (v.PPCConfirm ?? "") != "")
                                   )

                                && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                && (this._exftyFrom == DateTime.MinValue
                                   //|| (v.CustomerCode == "TAMA" && v.ShipMode.ToUpper().Contains("BOAT")
                                   //    && v.FCLExFtyShipCompleted >= this._exftyFrom && v.FCLExFtyShipCompleted <= this._exftyTo)
                                   || (v.LCLExFtyShipCompleted >= this._exftyFrom && v.LCLExFtyShipCompleted <= this._exftyTo)
                                   )
                                select v;
                    foreach (var a in woPPC)
                    {
                        a.ProcessingType = ConfirmProcessingType.PPC;
                        wolist.Add(a);
                    }
                    #endregion
                    #region TOP
                    //select *  from dbo.View_WOConfirm  b 
                    //where dbo.fn_IifContain(b.Users,@UserName)=1 and isnull(b.OAConfirm,'')<>'' and isnull(b.PPCConfirm,'')<>'' and b.[Current]=2 and b.IsRwo=0
                    // and (
                    //         (isnull(b.ActionStatus,1)<>-1 and isnull(b.TopConfirm,'')='' )
                    //      or (isnull(b.ActionStatus,1)=-1 and isnull(b.TopConfirm,'')<>'')
                    //      )
                    var woTOP = from v in dataContext.View_WOConfirms
                                where (v.OAConfirm ?? "") != "" && (v.PPCConfirm ?? "") != "" && v.Current == 2 && !v.IsRWO
                                && (
                                      ((v.ActionStatus ?? 1) != -1 && (v.TopConfirm ?? "") == "")
                                   || ((v.ActionStatus ?? 1) == -1 && (v.TopConfirm ?? "") != "")
                                   )

                                && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                && (this._exftyFrom == DateTime.MinValue
                                   //|| (v.CustomerCode == "TAMA" && v.ShipMode.ToUpper().Contains("BOAT")
                                   //    && v.FCLExFtyShipCompleted >= this._exftyFrom && v.FCLExFtyShipCompleted <= this._exftyTo)
                                   || (v.LCLExFtyShipCompleted >= this._exftyFrom && v.LCLExFtyShipCompleted <= this._exftyTo)
                                   )
                                select v;
                    foreach (var a in woTOP)
                    {
                        a.ProcessingType = ConfirmProcessingType.TOP;
                        wolist.Add(a);
                    }
                    #endregion
                    #region Header
                    //select *  from dbo.View_WOConfirm  c 
                    //where dbo.fn_IifContain(c.Users,@UserName)=1 and isnull(c.OAConfirm,'')<>'' and isnull(c.PPCConfirm,'')<>'' and isnull(c.TopConfirm,'')<>'' and c.[Current]=3 and c.IsRwo=0
                    // and (
                    //         (isnull(c.ActionStatus,1)<>-1 and isnull(c.HeaderConfirm,'')='' )
                    //      or (isnull(c.ActionStatus,1)=-1 and isnull(c.HeaderConfirm,'')<>'')
                    //      )
                    var woHeader = from v in dataContext.View_WOConfirms
                                   where (v.OAConfirm ?? "") != "" && (v.PPCConfirm ?? "") != "" && (v.TopConfirm ?? "") != "" && v.Current == 3 && !v.IsRWO
                                   && (
                                         ((v.ActionStatus ?? 1) != -1 && (v.HeaderConfirm ?? "") == "")
                                      || ((v.ActionStatus ?? 1) == -1 && (v.HeaderConfirm ?? "") != "")
                                      )

                                   && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                   && (this._exftyFrom == DateTime.MinValue
                                      //|| (v.CustomerCode == "TAMA" && v.ShipMode.ToUpper().Contains("BOAT")
                                      //    && v.FCLExFtyShipCompleted >= this._exftyFrom && v.FCLExFtyShipCompleted <= this._exftyTo)
                                      || (v.LCLExFtyShipCompleted >= this._exftyFrom && v.LCLExFtyShipCompleted <= this._exftyTo)
                                      )
                                   select v;
                    foreach (var a in woHeader)
                    {
                        a.ProcessingType = ConfirmProcessingType.Header;
                        wolist.Add(a);
                    }
                    #endregion

                    #region no use

                    //IList<View_WOConfirm> wolist = PH.RWO.BO.RWOLogic.GetItemsForListing<View_WOConfirm>(string.Format("exec sp_WOConfirmList '{0}'", this._currentUser), dataContext);
                    //for (int i = wolist.Count - 1; i >= 0; i--)
                    //{
                    //    bool needRemove = false;
                    //    View_WOConfirm w = wolist[i];
                    //    if (!string.IsNullOrEmpty(this._customerCode))
                    //        needRemove = (w.CustomerCode != this._customerCode);
                    //    if (this._exftyFrom != DateTime.MinValue)
                    //    {
                    //        needRemove = !(w.ExFtyDate >= this._exftyFrom && w.ExFtyDate <= this._exftyTo);
                    //    }
                    //    if (needRemove)
                    //        wolist.RemoveAt(i);
                    //}
                    #endregion

                    return wolist;
                #endregion
                #region RWO

                case "RWO":
                    List<View_RWOConfirm> rwolist;

                    #region OA
                    //select *  from dbo.View_RWOConfirm  v 
                    //where dbo.fn_IifContain(v.Users,@UserName)=1 and isnull(v.OAConfirm,'')=''  and v.[Current]=0 and v.IsRwo=1
                    var rwoOA = from v in dataContext.View_RWOConfirms
                                where (v.OAConfirm ?? "") == "" && v.Current == 0 && v.IsRWO

                                && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                && (this._exftyFrom == DateTime.MinValue
                                   //|| (v.CustomerCode == "TAMA" && v.FCLExFtyDate >= this._exftyFrom && v.FCLExFtyDate <= this._exftyTo)
                                   || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                   )
                                select v;
                    rwolist = rwoOA.ToList<View_RWOConfirm>();
                    foreach (var a in rwolist)
                    {
                        a.ProcessingType = ConfirmProcessingType.OA;
                    }
                    #endregion
                    #region PPC
                    //select *  from dbo.View_RWOConfirm  a 
                    //where dbo.fn_IifContain(a.Users,@UserName)=1 and isnull(a.OAConfirm,'')<>''  and a.[Current]=1  and a.IsRwo=1
                    // and (
                    //         (isnull(a.ActionStatus,1)<>-1 and isnull(a.PPCConfirm,'')='')
                    //      or (isnull(a.ActionStatus,1)=-1 and isnull(a.PPCConfirm,'')<>'')
                    //      )
                    var rwoPPC = from v in dataContext.View_RWOConfirms
                                 where (v.OAConfirm ?? "") != "" && v.Current == 1 && v.IsRWO
                                 && (
                                       ((v.ActionStatus ?? 1) != -1 && (v.PPCConfirm ?? "") == "")
                                    || ((v.ActionStatus ?? 1) == -1 && (v.PPCConfirm ?? "") != "")
                                    )

                                && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                && (this._exftyFrom == DateTime.MinValue
                                   //|| (v.CustomerCode == "TAMA" && v.FCLExFtyDate >= this._exftyFrom && v.FCLExFtyDate <= this._exftyTo)
                                   || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                   )
                                 select v;
                    foreach (var a in rwoPPC)
                    {
                        a.ProcessingType = ConfirmProcessingType.PPC;
                        rwolist.Add(a);
                    }
                    #endregion
                    #region TOP
                    //select *  from dbo.View_RWOConfirm  b 
                    //where dbo.fn_IifContain(b.Users,@UserName)=1 and isnull(b.OAConfirm,'')<>'' and isnull(b.PPCConfirm,'')<>'' and b.[Current]=2  and b.IsRwo=1
                    // and (
                    //         (isnull(b.ActionStatus,1)<>-1 and isnull(b.TopConfirm,'')='' )
                    //      or (isnull(b.ActionStatus,1)=-1 and isnull(b.TopConfirm,'')<>'')
                    //      )
                    var rwoTOP = from v in dataContext.View_RWOConfirms
                                 where (v.OAConfirm ?? "") != "" && (v.PPCConfirm ?? "") != "" && v.Current == 2 && v.IsRWO
                                 && (
                                       ((v.ActionStatus ?? 1) != -1 && (v.TopConfirm ?? "") == "")
                                    || ((v.ActionStatus ?? 1) == -1 && (v.TopConfirm ?? "") != "")
                                    )

                                && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                && (this._exftyFrom == DateTime.MinValue
                                   //|| (v.CustomerCode == "TAMA" && v.FCLExFtyDate >= this._exftyFrom && v.FCLExFtyDate <= this._exftyTo)
                                   || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                   )
                                 select v;
                    foreach (var a in rwoTOP)
                    {
                        a.ProcessingType = ConfirmProcessingType.TOP;
                        rwolist.Add(a);
                    }
                    #endregion
                    #region Header
                    //select *  from dbo.View_RWOConfirm  c 
                    //where dbo.fn_IifContain(c.Users,@UserName)=1 and isnull(c.OAConfirm,'')<>'' and isnull(c.PPCConfirm,'')<>'' and isnull(c.TopConfirm,'')<>'' and c.[Current]=3  and c.IsRwo=1
                    // and (
                    //         (isnull(c.ActionStatus,1)<>-1 and isnull(c.HeaderConfirm,'')='' )
                    //      or (isnull(c.ActionStatus,1)=-1 and isnull(c.HeaderConfirm,'')<>'')
                    //      )
                    var rwoHeader = from v in dataContext.View_RWOConfirms
                                    where (v.OAConfirm ?? "") != "" && (v.PPCConfirm ?? "") != "" && (v.TopConfirm ?? "") != "" && v.Current == 3 && v.IsRWO
                                    && (
                                          ((v.ActionStatus ?? 1) != -1 && (v.HeaderConfirm ?? "") == "")
                                       || ((v.ActionStatus ?? 1) == -1 && (v.HeaderConfirm ?? "") != "")
                                       )

                                && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                && (this._exftyFrom == DateTime.MinValue
                                   //|| (v.CustomerCode == "TAMA" && v.FCLExFtyDate >= this._exftyFrom && v.FCLExFtyDate <= this._exftyTo)
                                   || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                   )
                                    select v;
                    foreach (var a in rwoHeader)
                    {
                        a.ProcessingType = ConfirmProcessingType.Header;
                        rwolist.Add(a);
                    }
                    #endregion

                    #region no use

                    //IList<View_RWOConfirm> rwolist = PH.RWO.BO.RWOLogic.GetItemsForListing<View_RWOConfirm>(string.Format("exec sp_RWOConfirmList '{0}'", this._currentUser), dataContext);
                    //for (int i = rwolist.Count - 1; i >= 0; i--)
                    //{
                    //    bool needRemove = false;
                    //    View_RWOConfirm w = rwolist[i];
                    //    if (!string.IsNullOrEmpty(this._customerCode))
                    //        needRemove = (w.CustomerCode != this._customerCode);
                    //    if (this._exftyFrom != DateTime.MinValue)
                    //    {
                    //        needRemove = !(w.ExFtyDate >= this._exftyFrom && w.ExFtyDate <= this._exftyTo);
                    //    }
                    //    if (needRemove)
                    //        rwolist.RemoveAt(i);
                    //}
                    #endregion

                    return rwolist;
                #endregion
                #region RWOII

                case "RWOII":
                    List<View_RWOIIConfirm> rwo2list;

                    #region OA
                    //select *  from dbo.View_RWOIIConfirm  v 
                    //where dbo.fn_IifContain(v.Users,@UserName)=1 and isnull(v.OAConfirm,'')=''  and v.[Current]=0
                    var rwo2OA = from v in dataContext.View_RWOIIConfirms
                                 where (v.OAConfirm ?? "") == "" && v.Current == 0

                                 && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                 && (this._exftyFrom == DateTime.MinValue
                                    || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                    )
                                 select v;
                    rwo2list = rwo2OA.ToList<View_RWOIIConfirm>();
                    foreach (var a in rwo2list)
                    {
                        a.ProcessingType = ConfirmProcessingType.OA;
                    }
                    #endregion
                    #region PPC
                    //select *  from dbo.View_RWOIIConfirm  a 
                    //where dbo.fn_IifContain(a.Users,@UserName)=1 and isnull(a.OAConfirm,'')<>''  and a.[Current]=1 
                    // and (
                    //         (isnull(a.ActionStatus,1)<>-1 and isnull(a.PPCConfirm,'')='')
                    //      or (isnull(a.ActionStatus,1)=-1 and isnull(a.PPCConfirm,'')<>'')
                    //      )
                    var rwo2PPC = from v in dataContext.View_RWOIIConfirms
                                  where (v.OAConfirm ?? "") != "" && v.Current == 1
                                  && (
                                        ((v.ActionStatus ?? 1) != -1 && (v.PPCConfirm ?? "") == "")
                                     || ((v.ActionStatus ?? 1) == -1 && (v.PPCConfirm ?? "") != "")
                                     )

                                 && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                 && (this._exftyFrom == DateTime.MinValue
                                    || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                    )
                                  select v;
                    foreach (var a in rwo2PPC)
                    {
                        a.ProcessingType = ConfirmProcessingType.PPC;
                        rwo2list.Add(a);
                    }
                    #endregion
                    #region TOP
                    //select *  from dbo.View_RWOIIConfirm  b 
                    //where dbo.fn_IifContain(b.Users,@UserName)=1 and isnull(b.OAConfirm,'')<>'' and isnull(b.PPCConfirm,'')<>'' and b.[Current]=2
                    // and (
                    //         (isnull(b.ActionStatus,1)<>-1 and isnull(b.TopConfirm,'')='' )
                    //      or (isnull(b.ActionStatus,1)=-1 and isnull(b.TopConfirm,'')<>'')
                    //      )
                    var rwo2TOP = from v in dataContext.View_RWOIIConfirms
                                  where (v.OAConfirm ?? "") != "" && (v.PPCConfirm ?? "") != "" && v.Current == 2
                                  && (
                                        ((v.ActionStatus ?? 1) != -1 && (v.TopConfirm ?? "") == "")
                                     || ((v.ActionStatus ?? 1) == -1 && (v.TopConfirm ?? "") != "")
                                     )

                                 && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                 && (this._exftyFrom == DateTime.MinValue
                                    || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                    )
                                  select v;
                    foreach (var a in rwo2TOP)
                    {
                        a.ProcessingType = ConfirmProcessingType.TOP;
                        rwo2list.Add(a);
                    }
                    #endregion
                    #region Header
                    //select *  from dbo.View_RWOIIConfirm  c 
                    //where dbo.fn_IifContain(c.Users,@UserName)=1 and isnull(c.OAConfirm,'')<>'' and isnull(c.PPCConfirm,'')<>'' and isnull(c.TopConfirm,'')<>'' and c.[Current]=3
                    // and (
                    //         (isnull(c.ActionStatus,1)<>-1 and isnull(c.HeaderConfirm,'')='' )
                    //      or (isnull(c.ActionStatus,1)=-1 and isnull(c.HeaderConfirm,'')<>'')
                    //      )
                    var rwo2Header = from v in dataContext.View_RWOIIConfirms
                                     where (v.OAConfirm ?? "") != "" && (v.PPCConfirm ?? "") != "" && (v.TopConfirm ?? "") != "" && v.Current == 3
                                     && (
                                           ((v.ActionStatus ?? 1) != -1 && (v.HeaderConfirm ?? "") == "")
                                        || ((v.ActionStatus ?? 1) == -1 && (v.HeaderConfirm ?? "") != "")
                                        )

                                 && (this._customerCode == "" || v.CustomerCode == this._customerCode)
                                 && (this._exftyFrom == DateTime.MinValue
                                    || (v.LCLExFtyDate >= this._exftyFrom && v.LCLExFtyDate <= this._exftyTo)
                                    )
                                     select v;
                    foreach (var a in rwo2Header)
                    {
                        a.ProcessingType = ConfirmProcessingType.Header;
                        rwo2list.Add(a);
                    }
                    #endregion

                    #region no use

                    //case "RWOII":
                    //    IList<View_RWOIIConfirm> rwo2list = PH.RWO.BO.RWOLogic.GetItemsForListing<View_RWOIIConfirm>(string.Format("exec sp_RWOIIConfirmList '{0}'", this._currentUser), dataContext);
                    //    for (int i = rwo2list.Count - 1; i >= 0; i--)
                    //    {
                    //        bool needRemove = false;
                    //        View_RWOIIConfirm w = rwo2list[i];
                    //        if (!string.IsNullOrEmpty(this._customerCode))
                    //            needRemove = (w.CustomerCode != this._customerCode);
                    //        if (this._exftyFrom != DateTime.MinValue)
                    //        {
                    //            needRemove = !(w.ExFtyDate >= this._exftyFrom && w.ExFtyDate <= this._exftyTo);
                    //        }
                    //        if (needRemove)
                    //            rwo2list.RemoveAt(i);
                    //    }
                    #endregion

                    return rwo2list;
                #endregion
                default:
                    break;
            }

            return null;
        }

        #endregion

        #region IParameterSetControl Members

        public string GetParameter()
        {
            DateTime dt1 = this.ExftyFrom;
            DateTime dt2 = this.ExftyTo;
            if (dt1 == DateTime.MinValue) dt1 = dt2;
            if (dt2 == DateTime.MinValue) dt2 = dt1;
            string s = string.Format("{0};{1};{2};{3:yyyy-MM-dd};{4:yyyy-MM-dd}", this.CustomerCode, this.CurrentUser, this.ReportType, dt1, dt2);//執行數據源時候需要使用的參數
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobConfirmListReport ctl = new JobConfirmListReport();
            //ctl.editCust.EditValue = parameters;

            return ctl;
        }

        #endregion

        private void editCust_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (e.Button.Index == 1)
            {
                using (SelectCustomerForm frm = new SelectCustomerForm())
                {
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        this.editCust.EditValue = frm.Customer;
                    }
                }
            }
        }
    }
}
