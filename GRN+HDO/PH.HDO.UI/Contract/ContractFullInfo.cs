using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.HDO.UI.Report;
using System.Threading;
using PH.Platform.AuthMgr.BO;
using DevExpress.XtraBars;

namespace PH.HDO.UI.Contract
{
    public partial class ContractFullInfo : ListForm
    {

        private bool HasAuth = false;
        public ContractFullInfo()
        {
            InitializeComponent();
        }

        //public override void DataBind()
        //{
            
        //    HDODataContext hdoctx = ContextBuilder.CreateContext<HDODataContext>();
        //    this.DataContext = hdoctx;
        //    this.BindingSource.DataSource = hdoctx.ContractFulls;
        //   // this.EditorTypeName = typeof(ContractDetail).FullName;
        //    base.DataBind();
        //}

        private void  GetAuthority()
        {
            bool _hasauth = false;
            Auth_User _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
            if (_user.IsAdministrator)
                _hasauth = true;
            else
            {
                foreach (Auth_UserRole aur in _user.Auth_UserRole)
                {
                    if (aur.Auth_Role.RoleName == "Custom Contract Maitainer")
                    {
                        _hasauth = true;
                    }

                }
            }
            HasAuth = _hasauth;
        }

        private void SetEnable()
        {
           // bool _hasauth = HasAuthority();
            spbImport.Enabled = HasAuth;
            spbUpdate.Enabled = HasAuth;
          //  sbtnUpdateItem.Enabled = HasAuth;
            this.barBtnAddNew.Enabled = HasAuth;
            this.barBtnOpen.Enabled = HasAuth;
            this.barBtnDel.Enabled = HasAuth;
            this.barBtnFind.Visibility = BarItemVisibility.Never;

        
        }
        public override void DataBind()
        {
            this.NeedCheckPermission = false;
            base.DataBind();
            GetAuthority();
            HDODataContext context = PH.Platform.BO.ContextBuilder.CreateContext<HDODataContext>();// PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            //this.DataSource = (from m in context.ContractFulls select m).Take(0);
            //this.DataSource = context.ContractFulls.Take(0);
            this.BindingSource.DataSource = context.ContractFulls.Take(0);

            PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            param.BoType = typeof(ContractFull);
            param.WarnRecord = 1000;
            param.DataContext = context;
            this.EditorTypeName = typeof(ContractFullDetail).FullName;
            SetEnable();

           
          //  param.FixedWherePart = Flag == "A" ? "QCRoleCode='MobileQC_MQA'" : "QCRoleCode='MobileQC_MQC'";

            this.StartEnquiry(param);
            this.barBtnFind.Visibility = BarItemVisibility.Never;
        }

        DataQueryParameter CurParam;
        protected override void OnClickFind()
        {           
            string ss = this.QueryParameter.QueryText;
            base.OnClickFind();
            CurParam = this.QueryParameter;
            SetEnable();
         
        }

        protected override void OnClickDelete()
        {
            Dictionary<int,ContractFull> _dict =this.GetCheckData<ContractFull>();
            if (_dict.Count == 0)
            {
                MessageBox.Show("請選擇需要刪除的數據!");
                return;
            }
            DialogResult dlg = MessageBox.Show("確定刪除所選擇的數據嗎?", "", MessageBoxButtons.OKCancel);
            if (dlg == DialogResult.OK)
            {

                HDODataContext hdoctx = this.DataContext as HDODataContext;
                foreach (KeyValuePair<int, ContractFull> kvp in _dict)
                {
                    hdoctx.ContractFulls.DeleteOnSubmit(kvp.Value);
                    this.BindingSource.Remove(kvp.Value);

                    //同時刪除中間表資料，防止刪除合同資料后無法再次導入
                    ContractFull ctf = kvp.Value;
                    int _grnno = ctf.GrnNo.GetValueOrDefault();
                    string _suppref = ctf.SuppRef;

                    IEnumerable<GrnImported> _imports = from c in hdoctx.GrnImporteds where c.GRNO59 == _grnno && c.ITEM59 == _suppref select c;
                    hdoctx.GrnImporteds.DeleteAllOnSubmit(_imports);

                }

                hdoctx.SubmitChanges();

            
            }
          
        }



        void ShowLoading()
        {
            LodingForm frm = new LodingForm();
            frm.StartPosition = FormStartPosition.CenterScreen;
            frm.ShowDialog();
        }

        private void sbtnMiddle_Click(object sender, EventArgs e)
        {
            FrmMiddle frm = new FrmMiddle();
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {
                //執行導入
                Thread t = new Thread(new ThreadStart(ShowLoading));
                t.Start();

                try
                {

                    PH.HDO.BO.Command commd = new PH.HDO.BO.Command();
                    string _p1 = "P1", _p3 = "HK", _p4 = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    int _p2 = 1;
                    string sql = string.Format("exec dbo.[Proc_GRNHDO_Packing] '{0}',{1},'{2}','{3}'", _p1, _p2, _p3, _p4);
                    this.DataContext.CommandTimeout = 60000;
                    List<ContractFull> _lst = DataContext.ExecuteQuery<ContractFull>(sql).ToList();
                    foreach (ContractFull ctf in _lst)
                    {
                        ctf.TotalCost = ctf.Cost;
                        ctf.BG_WeightAct = ctf.Weight;
                    }
                    this.DataContext.SubmitChanges();
                    this.DataSource = _lst;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("導入資料失敗,相關信息如下:" + ex.Message);
                }
                finally
                {
                    t.Abort();
                }
            }
            if (dgr == DialogResult.Yes)
            {
                //執行查詢
                this.OnClickFind();
            }     
        }
        
        private void spbImport_Click(object sender, EventArgs e)
        {

            Thread t = new Thread(new ThreadStart(ShowLoading));
            t.Start();

            try
            {

                PH.HDO.BO.Command commd = new PH.HDO.BO.Command();
                string _p1 = "P1", _p3 = "HK", _p4 = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                int _p2 = 1;
                string sql = string.Format("exec dbo.[Proc_GRNHDO_Packing] '{0}',{1},'{2}','{3}'", _p1, _p2, _p3, _p4);
                this.DataContext.CommandTimeout = 60000;
                List<ContractFull> _lst = DataContext.ExecuteQuery<ContractFull>(sql).ToList();
                foreach (ContractFull ctf in _lst)
                {
                    ctf.TotalCost = ctf.Cost;
                    ctf.BG_WeightAct = ctf.Weight;
                }
                this.DataContext.SubmitChanges();
                this.DataSource = _lst;
            }
            catch (Exception ex)
            {
                MessageBox.Show("導入資料失敗,相關信息如下:" + ex.Message);
            }
            finally
            {
                t.Abort();
            }

        }

        public string CurContractNo, CurBgno;
        public decimal CurWeight = 0,Weight_Cal =0;
        public DateTime? CurBG_Date;


        private void spbUpdate_Click(object sender, EventArgs e)
        {

            Dictionary<int,ContractFull> _dict = this.GetCheckData<ContractFull>();

            if (_dict.Count == 0)
            {
                MessageBox.Show("請選擇需要修改的數據!");
                return;
            }
            //選擇需要修改的物料的理論總重
            decimal _totalweight = 0;
            foreach (ContractFull cfu in _dict.Values)
            {
                _totalweight += cfu.Weight.GetValueOrDefault();
            }
            Weight_Cal = _totalweight;
            string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            FrmUpdateContract frm = new FrmUpdateContract(this);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {

                HDODataContext hdoctx = this.DataContext as HDODataContext;
                DateTime _now = DateTime.Now;
                for (int i = 0; i < _dict.Count; i++)
                {
                    ContractFull ctf =_dict.ElementAt(i).Value as ContractFull;
                   
                    if (ctf != null)
                    {
                        if (!string.IsNullOrEmpty(CurContractNo))
                            ctf.ContractNo = CurContractNo;

                        if (!string.IsNullOrEmpty(CurBgno))
                            ctf.BG_No = CurBgno;

                        if (!ctf.TotalCost.HasValue)
                            ctf.TotalCost = ctf.Cost;
                        if (CurBG_Date.HasValue)
                            ctf.BG_Date = CurBG_Date.GetValueOrDefault();


                        //查找并更新項號
                        if (!string.IsNullOrEmpty(CurContractNo))
                        {
                            var _item = (from cc in hdoctx.ContractInfos
                                         join dd in hdoctx.ContractItems on cc.CraId equals dd.CraId
                                         where cc.ContractNo == CurContractNo && dd.HSCode == ctf.HSCode
                                         select new { dd.BG_Item }).FirstOrDefault();
                            ctf.ItemNo = _item != null ? _item.BG_Item : "";
                        }

                        //重新計算重量
                        if (CurWeight > 0)
                        {
                            decimal _weight = decimal.Round(ctf.Weight.GetValueOrDefault() * CurWeight / _totalweight, 2);
                            int _qty = ctf.WeightHsCode.HasValue ? int.Parse(decimal.Floor(_weight / ctf.WeightHsCode.GetValueOrDefault()).ToString()) : 0;

                          //  ctf.BG_Qty = _qty; 數量不需要更改
                            ctf.BG_WeightAct = _weight; //報關重量
                            //WeightHsCode

                        }

                        ctf.UpdateBy = _user;
                        ctf.Updated = _now;
                        ctf.CheckFlag = false;
                    }
                }

                this.DataContext.SubmitChanges();
            }

        }

        

        List<ContractFull> ConntractList = new List<ContractFull>();
        public string StartTime = "", EndTime = "", StartContract = "", EndContract = "";
        public int RptType = 0;
        
        private void spbPrint_Click(object sender, EventArgs e)
        {
            FrmContracPrint frm = new FrmContracPrint(this);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dlg = frm.ShowDialog();

            if (dlg == DialogResult.OK)
            {
                HDODataContext ctx = this.DataContext as HDODataContext;
                string querystr ="select * from contractfull where 1=1";
                if (!string.IsNullOrEmpty(StartTime) && !string.IsNullOrEmpty(EndTime))
                    querystr = querystr + " and created between '" + StartTime + "' and '" + EndTime + "'";
                if (!string.IsNullOrEmpty(StartContract) && !string.IsNullOrEmpty(EndContract))
                    querystr = querystr + " and contractno>='" + StartContract + "' and contractno<='" + EndContract + "'";

                ConntractList = ctx.ExecuteQuery<ContractFull>(querystr).ToList();
                if (RptType == 1)
                {
                    HSCodePackingDetailReport rpt = new HSCodePackingDetailReport();
                    rpt.DataSource = ConntractList;
                    rpt.ShowPreview();
                }
                else
                {
                    HSCodePackingSummaryReport rpt = new HSCodePackingSummaryReport();
                    rpt.DataSource = ConntractList;
                    rpt.ShowPreview();
                }
                //_woSamples = from c in ctx.ContractFulls
                //             where c.Company == "P1"
                //                 && (string.IsNullOrEmpty(StartTime) || c.SalesOrderNo == so)
                //                 && (string.IsNullOrEmpty(project) || c.WorkOrderSKU.WorkOrderColor.WorkOrder.Project.ProjectNo == project)
                //                 && (string.IsNullOrEmpty(customer) || c.WorkOrderSKU.WorkOrderColor.WorkOrder.Project.Customer == customer)
                //                 && (string.IsNullOrEmpty(wo) || c.WorkOrderNo == wo)

                //             orderby c.SalesOrderNo, c.WorkOrderNo
                //             select c;
            }
        }




        public List<int> ContractSelect =new List<int>();
        private void simpleButton1_Click(object sender, EventArgs e)
        {
            FrmContractSelect frm = new FrmContractSelect(this);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dlg = frm.ShowDialog();

            if (dlg == DialogResult.OK)
            {
                 HDODataContext ctx = this.DataContext as HDODataContext;
                 if (ContractSelect.Count > 0)
                 {
                      string _user =PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                     DateTime _now =DateTime.Now;
                     var _contractitems = ctx.ContractItems.Where(p => ContractSelect.Contains(p.CraId));
                     foreach (ContractItem cti in _contractitems)
                     {
                         string _itemno = cti.BG_Item;
                         var _contracts = ctx.ContractFulls.Where(p => p.ContractNo == cti.ContractInfo.ContractNo && p.HSCode == cti.HSCode);
                         foreach (ContractFull ctf in _contracts)
                         {
                             ctf.ItemNo = _itemno;
                             ctf.Updated = _now;
                             ctf.UpdateBy = _user;
                         }

                     }
                     ctx.SubmitChanges();
                     MessageBox.Show("更新成功!");
                 }
                 else
                     MessageBox.Show("沒有選擇更新任何合同資料!");
            }
        }

        private void GuideButton_Click(object sender, EventArgs e)
        {
            FrmGuide frm = new FrmGuide();
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dlg = frm.ShowDialog();
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {

        }


         
         
         
         
         
    }
}
