using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

using PH.LWPM.BO;
using PH.LWPM.UI.WF;
using PH.LWPM.UI.Repository;
using PH.LWPM.UI.IRepository;
using DevExpress.Data;
using DevExpress.XtraPrinting;
using System.Reflection;
using PH.LWPM.UI.MC.Report;
using DevExpress.XtraBars;
namespace PH.LWPM.UI.MC
{
    public partial class McPListFrm_Projection : ListForm
    {
        int TotalCount;
        int[] ary = new int[100];

        public string ParaMFWF;
        private string MenuName;
        //private string _MCParam;
        internal string ReadOnlyParam;
        internal string HWCatetoryCode;
        internal string HWGroupCode;

        public string CurMenuParam;
        public string DesFactory, DestId;
        MCFilter mc = new MCFilter();

        private IMFPList iwfplist;
        private IPublicLibrary ipubliclibrary;
        public string GetTypeTitle
        {
            get
            {
                return this.MenuName.Trim();
                //switch (McClass.MCCaption)
                //{
                //    case "McCoreProduction":
                //        return "Mc-Core Production(WS/SS)";

                //    case "McOtherProduction":
                //        return "Mc-Other Production(WS)";

                //    case "McPreProduction":
                //        return "Mc-Pre Production(WS)";

                //    case "McPregnancy":
                //        return "Mc-Pregnancy(WS)";

                //    case "McStockRoom":
                //        return "Mc-Dead Stock Room";

                //    case "McMechanicRoom":
                //        return "Mc-Mechanic Room";
                //    default: return string.Empty;
                //}
            }
        }

        public McPListFrm_Projection()
        {
            InitializeComponent();
        }

        public McPListFrm_Projection(string MCParam, string AReadOnly)
            : this()
        {
            ParaMFWF = "MC";
            //this._MCParam = MCParam;
            CurMenuParam = MCParam;
            this.MenuName = MCParam;
            this.ReadOnlyParam = AReadOnly;

            //InitializeComponent();
            this.iwfplist = new MCPList();
            this.ipubliclibrary = new PublicLibrary();
        }

        public McPListFrm_Projection(string MCParam, string AReadOnly, string AHWCatetoryCode, string AHWGroupCode)
            : this(MCParam, AReadOnly)
        {
            HWCatetoryCode = AHWCatetoryCode;
            HWGroupCode = AHWGroupCode;
        }

        //public McPListFrm_Projection(string MCParam, string MName)//, string AReadOnly)
        //{
        //    //McClass.MCCaption = MCParam as string;
        //    ParaMFWF = "MC";
        //    this._MCParam = MCParam;
        //    CurMenuParam = MCParam;
        //    this.MenuName = MName;
        //    //this.ReadOnlyParam = AReadOnly;

        //    InitializeComponent();
        //    this.iwfplist = new MCPList();
        //    this.ipubliclibrary = new PublicLibrary();
        //}


        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            Dictionary<int, DevExpress.XtraBars.BarButtonItem> dic = new Dictionary<int, DevExpress.XtraBars.BarButtonItem>()
            {
                {0,barButtonItemConfirm1},
                {1,barButtonItemConfirm2}
            };
            ClsRight.GetUserRight(this.MenuID, "Confirm", dic, "RAPMC");

        }
        public override void DataBind()
        {
            PH.LWPM.BO.MachineList Context = new PH.LWPM.BO.MachineList();
            //List<PH.LWPM.BO.Machine> li = new List<Machine>();
            IEnumerable<Machine> li;
            this.DataContext = Context.CurrentDataContext;
            string SqlStr;

            if (this.MenuName == "Heavy")
            {
                SqlStr = "IsProjection = 1 and IsFix = 1";
                li = Context.GetDataByCondition(SqlStr);
                if (!string.IsNullOrEmpty(this.HWCatetoryCode))
                {
                    SqlStr += string.Format(" and exists (select 1 from BaseCode where Type = 'McGroup' and HSCode = '{0}' and Lang = MachineClass)", this.HWCatetoryCode);
                    li = Context.GetDataByCondition(SqlStr);
                }
                if (!string.IsNullOrEmpty(this.HWGroupCode))
                {
                    li = li.Where(p => p.MachineClass == this.HWGroupCode);
                }
            }
            else
            {
                //當MenuName <> "Heavy"時，HWCategoryCode代表MCPart (Cost)，此時沒有HWGroupCode參數
                SqlStr = "IsProjection = 1 and IsFix = 0";
                li = Context.GetDataByCondition(SqlStr);

                if (!string.IsNullOrEmpty(this.HWCatetoryCode))
                {
                    BaseCode obj = (this.DataContext as RAPLQDataContext).BaseCodes.FirstOrDefault(p => p.Type == "McPart" && p.Code == this.HWCatetoryCode);
                    if (obj != null && !string.IsNullOrEmpty(obj.Name))
                    {
                        SqlStr += string.Format(" and McPartEn = '{0}'", obj.Name);
                    }
                    else
                    {
                        SqlStr += " and 1 <> 1";
                    }
                }

                li = Context.GetDataByCondition(SqlStr);


                //SqlStr = "IsProjection = 1 and IsFix = 0";
                //li = Context.GetDataByCondition(SqlStr);

                //if (!string.IsNullOrEmpty(this.HWCatetoryCode))
                //{
                //    SqlStr += string.Format(" and exists (select 1 from BaseCode where Type = 'McGroup' and HSCode = '{0}' and Lang = MachineClass)", this.HWCatetoryCode);
                //    li = Context.GetDataByCondition(SqlStr);
                //}
                //if (!string.IsNullOrEmpty(this.HWGroupCode))
                //{
                //    li = li.Where(p => p.MachineClass == this.HWGroupCode);
                //}
            }

            this.BindingSource.DataSource = li;
            /*            
             if (this.MenuName == "ALL")
             {
                 this.BindingSource.DataSource = Context.GetDataByCondition("isfix=0 and Class not like 'Mc-Dead Stock Room' or class is null");
             }
             else
             {
                 if (this._MCParam == "M&R Ws")
                 {
                     this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and Line like '{1}' ", GetTypeTitle, this._MCParam + "%"));
                 }
                 else if (this._MCParam == "TSS")
                 {
                     this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and Line like '{1}' ", GetTypeTitle, this._MCParam + "%"));
                 }
                 else if (this._MCParam == "M/C Store House")
                 {
                     this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and Line like '{1}' and Line not like 'M/C Store House%(NOU)%' ", GetTypeTitle, this._MCParam + "%"));
                 }
                 else if (this._MCParam == "M/C Store House%(NOU)")

                 {
                     this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and Line like '{1}' ", GetTypeTitle, this._MCParam + "%"));
                 }
                 else if (this._MCParam == "Heavy") //8/30 add
                 {
                     this.BindingSource.DataSource = Context.GetDataByCondition(" IsFix =1 ");
                
                 }
                 else
                 {
                     if (GetTypeTitle.Trim() == "Mc-Pre Production(WS)")
                     {
                         // B
                         this.MenuName = "Production Indirect M/C Cost";
                     }
                     if (this.MenuName.Trim() == "Mc-Core Production(WS/SS)")
                     {
                         //A
                         this.MenuName = "Sewing Direct M/C Cost";
                     }
                     if (this.MenuName.Trim() == "Mc-Dead Stock Room")
                     {
                         this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and Class='{0}' ", this.MenuName));
                     }
                     else
                     {
                         // C
                         string strMenuName = ipubliclibrary.getSelectIndex("RAPMenuID", LangType.En, "", this.MenuID.ToString(), this.DataContext);
                         if (strMenuName != null)
                         {
                             String[] strName = strMenuName.Split(';');
                             String[] strMCPart = ipubliclibrary.getItems("MCPart", strName, this.DataContext);
                             if (this.MenuID.ToString() == "1873")
                             {
                                 //li = Context.GetDataByCondition(string.Format("isrelated=1 and Line not like '%M&R%'  ")).ToList();
                                 li = Context.GetDataByCondition(string.Format("isfix=0 and isrelated=1 and class!='Mc-Dead Stock Room'")).ToList();
                             }
                             else
                             {
                                 //li = Context.GetDataByCondition(string.Format("Line not like '%M&R%'  ")).ToList();
                                 li = Context.GetDataByCondition(string.Format("isfix=0 and class!='Mc-Dead Stock Room'")).ToList();

                             }
                             li = li.Where(p => strMCPart.Contains(p.MCPartEn)).ToList();
                             this.BindingSource.DataSource = li;//Context.GetDataByCondition(string.Format("Line not like '%M&R%' and MCPartEn='{0}' ", this.MenuName));

                         }
                         else
                         {
                             //add by joseph 2013/11/15
                             this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and Line like '{0}' ", this._MCParam + "%"));
                         }


                     }
                     //}
                 }
             }
             * */

            base.DataBind();
            this.EditorTypeName = typeof(McChildFrm_Projection).FullName;

            this.barBtnAddNew.Visibility = this.ReadOnlyParam == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;
        }
        private void barBtnMcBrand_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MachineFilter mf = new MachineFilter();
            mf.c_opt_summary.Visible = true;
            mf.Context = this.DataContext as RAPLQDataContext;
            if (mf.ShowDialog() == DialogResult.OK)
            {
                MachineRpt rpt = new MachineRpt(mf.T_Factory.Text, mf.L_MCType.Text.ToString().Trim(), mf.T_Location.Text, mf.T_wsss.Text.Trim(), mf.T_mcid.Text, mf.SummaryFlg, this.GetTypeTitle);
                rpt.ShowPreviewDialog();
            }
        }

        private void barBtnMachine_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MachineFilter mf = new MachineFilter();
            mf.Context = this.DataContext as RAPLQDataContext;
            if (mf.ShowDialog() == DialogResult.OK)
            {
                McBrandReport rpt = new McBrandReport(mf.T_Factory.Text, mf.L_MCType.Text.ToString().Trim(), mf.T_Location.Text, mf.T_wsss.Text.Trim(), mf.T_mcid.Text.Trim(), this.DataContext as RAPLQDataContext);
                rpt.ShowPreviewDialog();
            }
        }

        private void PListFrm_Load(object sender, EventArgs e)
        {


        }

        private void barMachinePool_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MachineFilter mf = new MachineFilter();
            mf.labelGroup.Visible = true;
            mf.T_Class.Visible = true;
            mf.textLine.Visible = true;
            mf.labeltext.Visible = true;
            int dt = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            string tm = DateTime.Now.ToString("HHmmssfff");
            mf.Context = this.DataContext as RAPLQDataContext;
            if (mf.ShowDialog() == DialogResult.OK)
            {
                MachinePoolRpt rpt = new MachinePoolRpt(dt, tm, mf.T_Factory.Text, mf.T_Location.Text, mf.L_MCType.Text.ToString().Trim(), mf.T_mcid.Text.Trim(), mf.T_Class.Text.Trim(), mf.T_wsss.Text.Trim(), mf.textLine.Text.Trim());
                rpt.ShowPreviewDialog();
            }
        }

        private void barSummaryReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            mc.Context = this.DataContext as RAPLQDataContext;

            if (mc.ShowDialog() == DialogResult.OK)
            {

                if (mc.rbChineseDept.Checked == true && mc.T_factory.Text.Trim() != "")
                {
                    MCDeptSummaryForChineseReport mcd = new MCDeptSummaryForChineseReport(mc.T_factory.Text.Trim());
                    mcd.ShowPreviewDialog();
                }
                else if (mc.rbChineseType.Checked == true && mc.T_factory.Text.Trim() != "")
                {
                    MCTypeSummaryForChineseReport mct = new MCTypeSummaryForChineseReport(mc.T_factory.Text.Trim());
                    mct.ShowPreviewDialog();
                }

            }

        }

        private void barButtonItemConfirm1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            iwfplist.Confirm(Barbtitem.ImmHead, this.BindingSource, this.DataContext);
        }

        private void barButtonItemConfirm2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            iwfplist.Confirm(Barbtitem.BedHead, this.BindingSource, this.DataContext);
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            if (e.SummaryProcess == CustomSummaryProcess.Start)
            {
                TotalCount = 0;


            }
            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                if (e.FieldValue != null)
                {
                    TotalCount++;
                }
            }
            if (e.IsGroupSummary)
            {

                if (e.GroupLevel == 0)
                {
                    e.TotalValue = string.Format("   - [ # of M/C: {0} ]", TotalCount);
                    ary[0] = TotalCount;
                }

                for (int i = 1; i < objListGridView.GroupCount; i++)
                {
                    DevExpress.XtraGrid.GridGroupSummaryItem t = e.Item as DevExpress.XtraGrid.GridGroupSummaryItem;
                    if (e.GroupLevel == i)
                    {
                        e.TotalValue = string.Format("   - [ # of M/C: {0} ]", TotalCount);
                        //ary[i] = TotalCount;
                    }
                }
            }
        }

        private void objListGridView_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (IfClickAdd)
                return;

            if (e.FocusedRowHandle >= 0)
            {
                Machine _curmh = objListGridView.GetRow(e.FocusedRowHandle) as Machine;
                if (_curmh != null)
                {
                    //barScrap.Enabled = !_curmh.Class.Contains("Dead Stock Room");
                    //barRestore.Enabled = _curmh.Class.Contains("Dead Stock Room");                
                }
            }
        }

        private void barScrap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (objListGridView.FocusedRowHandle >= 0)
            {
                Machine _curmh = objListGridView.GetRow(objListGridView.FocusedRowHandle) as Machine;
                if (_curmh != null)
                {
                    _curmh.Class = "Mc-Dead Stock Room";
                    (this.DataContext as RAPLQDataContext).SubmitChanges();
                    barRestore.Enabled = true;
                    barScrap.Enabled = false;
                }
            }
        }

        private void barRestore_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (objListGridView.FocusedRowHandle >= 0)
            {
                Machine _curmh = objListGridView.GetRow(objListGridView.FocusedRowHandle) as Machine;
                if (_curmh != null)
                {
                    _curmh.Class = "";
                    (this.DataContext as RAPLQDataContext).SubmitChanges();
                    barRestore.Enabled = false;
                    barScrap.Enabled = true;
                }
            }
        }

        private void btnCopy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            int _idx = this.objListGridView.FocusedRowHandle;
            if (_idx >= 0)
            {
                PH.LWPM.BO.Machine _curobj = objListGridView.GetRow(_idx) as PH.LWPM.BO.Machine;

                RAPLQDataContext _ctx = this.DataContext as RAPLQDataContext;
                FrmCopyMc _frm = new FrmCopyMc(_ctx, _curobj.Factory, this);
                _frm.StartPosition = FormStartPosition.CenterScreen;
                DialogResult _dlg = _frm.ShowDialog();
                if (_dlg == DialogResult.OK)
                {
                    PH.LWPM.BO.Machine _newobj = new PH.LWPM.BO.Machine();
                    _newobj.Factory = DesFactory;
                    _newobj.Id = DestId;
                    //BoPropertyName = _curobj.GetType().GetProperty("FieldName").GetValue(_obj, null).ToString();
                    PropertyInfo[] ss = _curobj.GetType().GetProperties();
                    for (int j = 0; j < ss.Length; j++)
                    {
                        string _pname = ss[j].Name;
                        //_obj.GetType().GetProperty("Caption").SetValue(_obj, bolan2.Text, null);               
                        if (_pname != "Factory" && _pname != "Id" && _pname != "MachineImg")
                        {

                            PropertyInfo pi = _curobj.GetType().GetProperty(_pname);
                            MethodInfo mi = pi.GetSetMethod();
                            if (mi != null)
                            {
                                object _value = _curobj.GetType().GetProperty(_pname).GetValue(_curobj, null);
                                _newobj.GetType().GetProperty(_pname).SetValue(_newobj, _value, null);
                            }
                        }
                    }
                    _ctx.Machines.InsertOnSubmit(_newobj);

                    //MachineImg mg = new MachineImg();
                    //mg.Id = DestId;
                    //if (_curobj.MachineImg.Mcimg != null) mg.Mcimg = DBAccess.ImageToByteArray(P1.Image);
                    //(this.DataContext as RAPLQDataContext).MachineImgs.InsertOnSubmit(mg);
                    (this.DataContext as RAPLQDataContext).SubmitChanges();
                    // AddnewFlg = false;


                    _ctx.SubmitChanges();
                    this.DataBind();

                    this.objListGridView.ExpandAllGroups();
                }
            }
            else
            {
                MessageBox.Show("Please select a row to copy!");
            }
        }

        //private void btnExcel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    XlsExportOptions xo =new XlsExportOptions(true,false);


        //    //string path = "d:\\test.xls";
        //    //try
        //    //{
        //    //    int i=0;
        //    //    for (; i < this.objListGridView.RowCount; i++)
        //    //    {
        //    //        DataRow dr=this.objListGridView.getg
        //    //        //if (dr.GetChildRows("").Count>0)
        //    //        //    dr.

        //    //    }
        //    //        objListGridView.ExportToXls(path, xo);
        //    //}
        //    //catch
        //    //{
        //    //    objListGridView.ExportToExcelOld(path);
        //    //}


        //    string path = "d:\\test.xml";
        //    try
        //    {          
        //        for (int i=0; i < this.objListGridView.RowCount; i++)
        //        {
        //            objListGridView.ExpandGroupRow(i);

        //        }


        //       // objListGridView.ExpandGroupRow(1,
        //            //.ExpandAllGroups();
        //    }
        //    catch
        //    {
        //       // objListGridView.ExportToExcelOld(path);
        //    }


        //}



    }
}
