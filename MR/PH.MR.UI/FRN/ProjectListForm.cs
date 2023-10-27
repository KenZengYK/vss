using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.RWO.BO;
using System.Data.SqlClient;
using System.Collections;
using PH.Platform.AuthMgr.BO;
using PH.MR.UI.Report;
using PH.Platform.Misc.BO;
using PH.Platform.Common;
using System.Xml.Linq;

namespace PH.MR.UI.FRN
{
    public partial class ProjectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ProjectListForm()
        {
            InitializeComponent();
        }


        DevExpress.XtraBars.BarItemVisibility IsVisiblity = DevExpress.XtraBars.BarItemVisibility.Never;

        public override void DataBind()
        {

            PH.MR.BO.MRDataContext mdc = ContextBuilder.CreateContext<MRDataContext>();
            this.DataContext = mdc;
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.MR.BO.FRN_MasterInfo);
            param.View = this.objListGridView;
            param.WarnRecord = 100;
            this.StartEnquiry(param);
            this.EditorTypeName = typeof(ProjectDetailForm).FullName;

           // this.btnGetMR.Visibility = IsVisiblity;
            base.DataBind();
        }

        protected override void OnClickAddNew()
        {
            base.OnClickAddNew();
        }



        //public string ProjNo;
        //public DialogResult Dgr = DialogResult.None;


        private void ClearFRNData(string prjno)
        {

            MRDataContext mrc = this.DataContext as MRDataContext;
            IEnumerable masterinfo = mrc.FRN_MasterInfos.Where(p => p.ProjectNo == prjno).AsEnumerable();

            foreach (FRN_MasterInfo mas in masterinfo)
            {
                mrc.FRN_DetailInfos.DeleteAllOnSubmit(mas.FRN_DetailInfos);
            }
            mrc.SubmitChanges();
        }
        private void btnGetMR_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //FrmProjectSelect fps = new FrmProjectSelect();
            //fps.StartPosition = FormStartPosition.CenterParent;
            //fps.ParentObj = this;
            //Dgr = DialogResult.None;
            //DialogResult dr = fps.ShowDialog();
            //if (Dgr == DialogResult.OK)
            //{
            //   if (IsProjExist)
            //     this.ClearFRNData(ProjNo);

            //   this.ImportFRN(ProjNo);
            //}

            FrmProjectSelect frm = new FrmProjectSelect();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string projectNo = frm.ProjectNo;
                if (IsExist(projectNo))
                {
                    if (MessageBox.Show(string.Format("Project No.{0} has existed, impoert again?", projectNo), "Warning", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
                    {
                        return;
                    }
                    this.ClearFRNData(projectNo);
                }
                this.ImportFRN(projectNo);
            }
        }


        List<PH.MR.BO.MRReport> lstPart1;
        List<WorkOrderColor> lstPart2;
        List<FRN_MasterInfo> lstmaster = new List<FRN_MasterInfo>();
        List<FRN_DetailInfo> lstdetail = new List<FRN_DetailInfo>();
        bool IsProjExist = false;
        string ConnStr = string.Empty;

        FRN_MasterInfo CurrentMaster;
        public bool IsExist(string projno)
        {
            MRDataContext mrd = this.DataContext as MRDataContext;
            //mrd.Connection.ConnectionString


            //ConnStr = mrd.Connection.ConnectionString;
            //ConnStr = @"Data Source=10.2.1.10\sqlserver2005;Initial Catalog=PH.MR;User ID=ituser;PWD=itsystem@2009";
            FRNMsterHelper mhelper = new FRNMsterHelper();
            ConnStr = mhelper.GetMRDBConnection();
            IsProjExist = false;

            if (mrd.FRN_MasterInfos != null)
            {
                CurrentMaster = (from cc in mrd.FRN_MasterInfos where cc.ProjectNo == projno select cc).FirstOrDefault();

                if (CurrentMaster != null)
                    IsProjExist = true;
            }
            return IsProjExist;

        }

        private void ImportFRN(string projno)
        {

            int icount = 0;
            MRDataContext MRD = this.DataContext as MRDataContext;

            lstPart1 = ReportHelper.GetMRDetailData_FRN("P1", projno);
            lstPart2 = ReportHelper.GetRWOData("P1", projno);


            DataTable dtpur = new DataTable();
            dtpur = this.GetPurchaseYY(projno);

            FRN_MasterInfo master;
            if (!IsProjExist)
            {

                master = new FRN_MasterInfo();
                foreach (WorkOrderColor woc in lstPart2)
                {
                    master.ProjectNo = woc.ProjectNo.Trim();
                    master.SaleOrder = woc.SalesOrderNo;
                    master.ConfirmDate = woc.WorkOrder.Project.SoIssueDate;
                    master.MasterID = Guid.NewGuid();
                    master.FRNDate = DateTime.Now;
                    icount = 1;
                    MRD.FRN_MasterInfos.InsertOnSubmit(master);
                    break;

                }
            }
            else
            {
                master = CurrentMaster;
            }
           

            //if (icount == 0)
            //    return;

            foreach (PH.MR.BO.MRReport mrr in lstPart1)
            {

                FRN_DetailInfo detail = new FRN_DetailInfo();
                detail.MasterID = master.MasterID;

                detail.DetailID = Guid.NewGuid();
                detail.ProjectNo = mrr.CUSO.Trim();
                detail.ColorCode = mrr.PCOL;
                detail.WorkOrder = mrr.WORD;

                WorkOrderColor worc = lstPart2.Find(
                    delegate(WorkOrderColor woc)
                    {
                        return woc.ProjectNo == mrr.CUSO && woc.WorkOrderNo == mrr.WORD.Trim() && woc.ColorCode == mrr.PCOL;
                    });
                if (worc != null)
                {
                    detail.ItemCode = mrr.CSTL.Trim();
                    detail.StyleNo = mrr.STYLNO.Trim();
                    detail.SupplierItem = mrr.VCAT.Trim();
                    detail.Ex_FtyDate = worc.WorkOrder.LCLExFtyShipCompleted;
                    detail.DeliveryDate = worc.WorkOrder.DeliveryShipCompleted;
                    detail.Color_Qty = worc.TotalQty;
                    detail.WO_Qty = worc.WorkOrder.Qty;
                    detail.Original_YY = mrr.CORQ > 0 ? decimal.Parse(mrr.CORQ.ToString()) : 0;
                    if (dtpur != null && dtpur.Rows.Count > 0)
                    {
                        string _material = detail.ItemCode.Substring(0, 3) + "-" + detail.ItemCode;
                        string filter = @"projectno='{0}' and workorderno='{1}' and materialcode='{2}' and colorcode='{3}'";

                        filter = string.Format(filter, projno, worc.WorkOrderNo, _material, detail.ColorCode);
                        DataRow[] drw = dtpur.Select(filter);

                        if (drw.Length > 0)
                        {
                            detail.FRN_YY = drw[0]["purchaseYY"] != null ? decimal.Parse(drw[0]["purchaseYY"].ToString()) : 0;
                            detail.Wastage_Per = drw[0]["wastage"] != null ? decimal.Parse(drw[0]["wastage"].ToString()) : 0;
                        }

                    }

                    MRD.FRN_DetailInfos.InsertOnSubmit(detail);

                }
                master.FRN_DetailInfos.Add(detail);          
            }
            MRD.SubmitChanges();

            this.BindingSource.DataSource = MRD.FRN_MasterInfos.Where(p => p.ProjectNo == projno);

        }

        //PeterZHou
        //public override void ProcessFunctionRight()
        //{
        //    base.ProcessFunctionRight();
        //    IList<Auth_FunRight> lstfunc = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID) ;


        //    if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
        //    {
        //        IsVisiblity = DevExpress.XtraBars.BarItemVisibility.Always;
        //        //this.btnGetMR.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        //    }
        //    else
        //    {
        //        foreach (Auth_FunRight fr in lstfunc)
        //        {
        //            if (fr.FunRight.ToLower() == "importfrn")
        //            {
        //                //this.btnGetMR.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        //                IsVisiblity = DevExpress.XtraBars.BarItemVisibility.Always;
        //                break;
        //            }
        //        }
        //    }

        //    this.btnGetMR.Visibility = IsVisiblity;


        //}

        private DataTable GetPurchaseYY(string projno)
        {

            try
            {
                MRDataContext mdc = this.DataContext as MRDataContext;
                string connstr = mdc.Connection.ConnectionString;
                SqlConnection conn = new SqlConnection(ConnStr);
                // conn.ConnectionTimeout = 1000;
                SqlCommand cmd = new SqlCommand("[PHGDB].dbo.cut_purchaseYY", conn);
                cmd.CommandTimeout = 100000;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                SqlParameter projid = new SqlParameter("@projectno", SqlDbType.NVarChar);
                projid.Value = projno;
                sda.SelectCommand.Parameters.Add(projid);
                sda.SelectCommand.CommandType = CommandType.StoredProcedure;

                DataTable dt = new DataTable("dt_yy");
                sda.Fill(dt);
                return dt;
            }
            catch (System.Data.SqlClient.SqlException e)
            {
                throw e;

            }
            catch (Exception ex)
            {
                throw ex;
            }

            //conn.Open();

            //SqlCommand cmd = new SqlCommand(SqlCmd, conn);
            //cmd.e.ExecuteNonQuery();
            //conn.Close();

        }
        private void GetMRData(string projectNo)
        {
            List<PH.MR.BO.MRReport> mrs = ReportHelper.GetMRDetailData_FRN("P1", projectNo);
            //MRReport mro = new MRReport();
            /*
            mro.CUSO; //project no
            mro.WORD //work order
            mro.PCOL; //color code
            mro.ORDN; //so number;
             
            mro.STYLNO; //style 
          
           
            mro.CSTL;//item code;
            mro.VCAT; //supplier item ref;
           
            mro.CORQ; //original YY
            */

            ////  get data from RWO

            List<PH.RWO.BO.WorkOrderColor> wocs = ReportHelper.GetRWOData("P1", projectNo);
            // PH.RWO.BO.WorkOrderColor woc;


            //woc.ProjectNo
            //woc.WorkOrderNo  
            //woc.ColorCode --> Color

            //woc.WorkOrder.Project.SoIssueDate --> Order Confrim date
            //woc.WorkOrder.LCLExFtyShipCompleted  --> Ex-fty date
            //woc.WorkOrder.DeliveryShipCompleted  --> Delivery date
            //woc.TotalQty --> Color's Qty
            //woc.WorkOrder.Qty  -->WO's Qty


        }

        public string SelectProj;
        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmPrintForm pf = new FrmPrintForm();
            pf.MRDC = this.DataContext as MRDataContext;
            pf.StartPosition = FormStartPosition.CenterParent;
            pf.ParenttObj = this;

            if (this.objListGridView.RowCount > 0)
            {
                FRN_MasterInfo _obj = objListGridView.GetRow(objListGridView.FocusedRowHandle) as FRN_MasterInfo;
                SelectProj = _obj.ProjectNo;
            }


            if (pf.ShowDialog() == DialogResult.OK)
            {
                PH.MR.UI.Report.RptFRN rptf = new PH.MR.UI.Report.RptFRN();
                SetFRNReportData(rptf);
                rptf.ShowPreviewDialog();
            }
        }

        public string CurrentProject;

        private void SetFRNReportData(RptFRN objrpt)
        { 
           MRDataContext mrdc =this.DataContext as MRDataContext;
           FRN_MasterInfo mast = mrdc.FRN_MasterInfos.Where(p=>p.ProjectNo== CurrentProject).FirstOrDefault();
           if (mast != null)
           {
               objrpt.HeadData.ProjectNo = mast.ProjectNo.Trim();
               objrpt.HeadData.SaleOrder = mast.SaleOrder.Trim();
               objrpt.HeadData.FRNDate = mast.FRNDate.GetValueOrDefault().ToShortDateString();
               objrpt.HeadData.ConfirmDate = mast.ConfirmDate.GetValueOrDefault().ToShortDateString();
               objrpt.HeadData.PlanMasterDate =mast.PlanMasterDate!=null?mast.PlanMasterDate.GetValueOrDefault().ToShortDateString():"";
               objrpt.HeadData.FRNNO = mast.FRNNO != null ? mast.FRNNO.Trim() : "";
               objrpt.HeadData.OAManager = mast.OAManager != null ? mast.OAManager.Trim() : "";
               objrpt.HeadData.Reson = mast.Reson!=null?mast.Reson.Trim():"" ;

               objrpt.HeadData.MarkerManager = mast.MarkerManager != null ? mast.MarkerManager.Trim() : "";
               objrpt.HeadData.PreparedBy = mast.PreparedBy != null ? mast.PreparedBy.Trim() : "";

               Misc_DataDictionaryList mdd = new Misc_DataDictionaryList();

               string _datacode = mast.Method != null ? mast.Method.GetValueOrDefault().ToString() : "";

               List<Misc_DataDictionary> _codes = mdd.GetDataByCondition(" DataType='PH.FRN.SortMethod' and datacode='" + mast.Method.GetValueOrDefault() + "'").ToList();
               if (_codes != null&&_codes.Count()>0)
               {
                   Misc_DataDictionary mdic =_codes.First();
                   objrpt.HeadData.Method = mdic.DataName;
               }
               else
                   objrpt.HeadData.Method = "";


               List<FRN_DetailInfo> lstdetail = new List<FRN_DetailInfo>();
               foreach (FRN_DetailInfo detail in mast.FRN_DetailInfos)
               {
                   lstdetail.Add(detail);
               }
               objrpt.DetailData = lstdetail;

           }

        }


        //private string GetMRDBConnection()
        //{

        //    string _str = string.Empty;
        //    MRDataContext mrd1 = this.DataContext as MRDataContext;
        //    string sqlstr = "select BOConnectionString from [PH.Platform.AuthMgr].dbo.auth_file where filename='PH.MR.BO.dll'";           
        //    DataTable db = mrd1.ExecuteDataTable(sqlstr, "Auth_File");

        //    if (db != null && db.Rows.Count > 0)
        //    {

        //        //Type.GetType("dd")
        //        //Auth_File af = AuthFile.Single<Auth_File>();
        //        string boconnection = db.Rows[0]["boconnectionstring"] != null ? db.Rows[0]["boconnectionstring"].ToString() : "";

        //        if (String.IsNullOrEmpty(boconnection))
        //        {
        //            // MessageBox.Show("BO的數據庫連接串配置為空,請開發員檢查Auth_File中," + assname + "的配置是否正確!", "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error);

        //            string errmsg = "PH.MR.BO的數據庫連接串配置為空,請開發員檢查配置是否正確!";           
        //            throw new Exception(errmsg);

        //        }
        //        _str = @"Data Source={0};Initial Catalog=PH.MR;User ID={1};pwd={2}";
        //        //StringEncryptHelper seh = new StringEncryptHelper();

        //        //將得到的BOConnectiongString進行解密
        //        string strconn = StringEncryptHelper.DecryptDES(boconnection);
        //        string[] strsplit = { "Initial Catalog=", "User ID=", "Password=" };
        //        string[] str = strconn.Split(strsplit, StringSplitOptions.None);
        //       //string _database = str[1];
        //       string _userid = str[2];
        //       string _password = str[3];

        //        string filepath = System.AppDomain.CurrentDomain.BaseDirectory + "PH.Platform.AuthMgr.UI.dll.config";
        //        XDocument doc = XDocument.Load(filepath);
        //        string node = string.Empty;

        //        //從配置文件PH.Platform.AuthMgr.UI.dll.config中取得datasource信息
        //        string _datasource = (from d in doc.Descendants("add")
        //                       where d.Attribute("key").Value == "DataSource"
        //                       select new
        //                       {
        //                           value = d.Attribute("value").Value
        //                       }).FirstOrDefault().value;

        //        _str = string.Format(_str, _datasource, _userid, _password);

        //    }

        //    return _str;
        //}
    }
}
