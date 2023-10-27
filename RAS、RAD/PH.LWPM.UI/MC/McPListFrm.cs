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
using DevExpress.XtraBars;
namespace PH.LWPM.UI.MC
{
    public partial class McPListFrm : ListForm
    {
        int TotalCount;
        int[] ary = new int[100];

        public string ParaMFWF;
        private string MenuName;
        private string _MCParam;
        public string CurMenuParam;
        public string ReadOnlyParam;
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

        public McPListFrm()
        {
            InitializeComponent();
        }
        public McPListFrm(string MCParam, string MName, string AReadOnlyParam)
        {
            //McClass.MCCaption = MCParam as string;
            ParaMFWF = "MC";
            this._MCParam = MCParam;
            CurMenuParam = MCParam;
            this.MenuName = MName;
            this.ReadOnlyParam = AReadOnlyParam;
            InitializeComponent();
            this.iwfplist = new MCPList();
            this.ipubliclibrary = new PublicLibrary();
        }
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
            this.barBtnAddNew.Visibility = this.ReadOnlyParam == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;

            PH.LWPM.BO.MachineList Context = new PH.LWPM.BO.MachineList();
            List<PH.LWPM.BO.Machine> li = new List<Machine>();
            this.DataContext = Context.CurrentDataContext;
            string SqlStr;

            if (this._MCParam == "ALL") //不包括Dead Store Room中所有衣車
            {
                SqlStr = "IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null)";
                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "Fixture") //由David加入2020-04-27
            {
                SqlStr = "IsFix=1 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null)";
                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "IsDeployment") //由david加入 2020-04-02
            {
                SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection = 0 and (Class not like 'Mc-Dead Stock Room' or class is null)";
                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "M/C-Core Production") //Direct production Ws 由David增加2018-08-22
            {
                //SqlStr = "isfix=0 and isprojection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and MCPartEn = 'Sewing Direct M/C Cost' and Line not like '%M&R Ws%' and Line not like '%TSS%' and line not like '%M/C Store House%'";
                SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and ((Line like 'T%' and Line not like 'TSS%') or Line like 'F%' or line like 'E%')";
                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "Indirect&Non") //Indirect production Ws 由David增加 2018-08-23
            {
                if (this.MenuName == "M&R Ws")
                {
                    SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and (MCPartEn <> 'Sewing Direct M/C Cost' or MCPartEn is null) and Line like '%M&R Ws%'  ";
                    this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
                }
                else if (this.MenuName == "Non-Direct") //Other Ws
                {
                    //SqlStr = "isfix=0 and isprojection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and (MCPartEn <> 'Sewing Direct M/C Cost' or MCPartEn is null) and Line not like '%M&R Ws%'";
                    SqlStr = "IsDeployment = 0 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null)";
                    this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
                }
            }
            else if (this._MCParam == "M&R Ws")
            {
                //SqlStr = string.Format("isfix=0 and isprojection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and MCPartEn='Sewing Direct M/C Cost' and Line like '%{0}%'", this._MCParam);
                SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and Line like '%M&R Ws%'";
                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "TSS")
            {
                //SqlStr = string.Format("isfix=0 and isprojection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and MCPartEn='Sewing Direct M/C Cost' and Line like '%{0}%'", this._MCParam);
                SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and Line like '%TSS%'";
                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "M/C Store House")
            {
                //SqlStr = string.Format("isfix=0 and isprojection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and MCPartEn='Sewing Direct M/C Cost' and Line like '%{0}%' and Line not like 'M/C Store House%(NOU)%' ", this._MCParam);
                SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and Line like 'M/C Store House%' and Line not like '%NOU%'";

                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "M/C Store House%(NOU)")
            {
                //SqlStr = string.Format("isfix=0 and isprojection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and MCPartEn='Sewing Direct M/C Cost' and Line like '%{0}%'", this._MCParam);
                SqlStr = "IsDeployment = 1 and IsFix=0 and IsProjection=0 and (Class not like 'Mc-Dead Stock Room' or class is null) and Line like 'M/C Store House%(NOU)%'";

                this.BindingSource.DataSource = Context.GetDataByCondition(SqlStr);
            }
            else if (this._MCParam == "Heavy") //8/30 add
            {
                this.BindingSource.DataSource = Context.GetDataByCondition(" IsFix =1 and isprojection=0");
            }
            else if (this._MCParam == "Mc-Dead Stock Room") //由David加入 2018-08-22
            {
                if (this.MenuName == "WriteOff")
                {
                    this.barBtnWriteOff.Visibility = BarItemVisibility.Never;
                    this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and isprojection=0 and Class='{0}' and IsWriteOff=1 ", this._MCParam));
                }
                else
                {
                    this.barBtnWriteOff.Visibility = BarItemVisibility.Always;
                    this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and isprojection=0 and Class='{0}' and isnull(IsWriteOff, 0)=0 ", this._MCParam));
                }
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

                //if (this.MenuName.Trim() == "Mc-Dead Stock Room")
                //{
                //    //this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("Line not like '%M&R%' and Class='{0}' ", this.MenuName));
                //    this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and isprojection=0 and Class='{0}' ", this.MenuName));
                //}
                //else
                //{
                // C
                string strMenuName = ipubliclibrary.getSelectIndex("RAPMenuID", LangType.En, "", this.MenuID.ToString(), this.DataContext);
                if (strMenuName != null)
                {
                    String[] strName = strMenuName.Split(';');
                    String[] strMCPart = ipubliclibrary.getItems("MCPart", strName, this.DataContext);
                    if (this.MenuID.ToString() == "1873") //這個Menu都變成目錄了，不知道之前這個是做什麽用的？ David 2018-08-22
                    {
                        //li = Context.GetDataByCondition(string.Format("isrelated=1 and Line not like '%M&R%'  ")).ToList();
                        li = Context.GetDataByCondition(string.Format("isfix=0 and isprojection=0 and isrelated=1 and class!='Mc-Dead Stock Room'")).ToList();
                    }
                    else
                    {
                        //li = Context.GetDataByCondition(string.Format("Line not like '%M&R%'  ")).ToList();
                        li = Context.GetDataByCondition(string.Format("isfix=0 and isprojection=0 and class!='Mc-Dead Stock Room'")).ToList();

                    }
                    li = li.Where(p => strMCPart.Contains(p.MCPartEn)).ToList();
                    this.BindingSource.DataSource = li;//Context.GetDataByCondition(string.Format("Line not like '%M&R%' and MCPartEn='{0}' ", this.MenuName));

                }
                else
                {
                    //add by joseph 2013/11/15
                    this.BindingSource.DataSource = Context.GetDataByCondition(string.Format("isfix=0 and isprojection=0 and Line like '{0}' ", this._MCParam + "%"));
                }


                //}
                //}

            }
            base.DataBind();
            this.EditorTypeName = typeof(McChildFrm).FullName;
        }
        private void barBtnMcBrand_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MachineFilter mf = new MachineFilter();
            mf.c_opt_summary.Visible = true;
            mf.Context = this.DataContext as RAPLQDataContext;
            if (mf.ShowDialog() == DialogResult.OK)
            {
                Report.MachineRpt rpt = new PH.LWPM.UI.MC.Report.MachineRpt(mf.T_Factory.Text, mf.L_MCType.Text.ToString().Trim(), mf.T_Location.Text, mf.T_wsss.Text.Trim(), mf.T_mcid.Text, mf.SummaryFlg, this.GetTypeTitle);
                rpt.ShowPreviewDialog();
            }
        }

        private void barBtnMachine_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MachineFilter mf = new MachineFilter();
            mf.Context = this.DataContext as RAPLQDataContext;
            if (mf.ShowDialog() == DialogResult.OK)
            {
                Report.McBrandReport rpt = new PH.LWPM.UI.MC.Report.McBrandReport(mf.T_Factory.Text, mf.L_MCType.Text.ToString().Trim(), mf.T_Location.Text, mf.T_wsss.Text.Trim(), mf.T_mcid.Text.Trim(), this.DataContext as RAPLQDataContext);
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
                Report.MachinePoolRpt rpt = new PH.LWPM.UI.MC.Report.MachinePoolRpt(dt, tm, mf.T_Factory.Text, mf.T_Location.Text, mf.L_MCType.Text.ToString().Trim(), mf.T_mcid.Text.Trim(), mf.T_Class.Text.Trim(), mf.T_wsss.Text.Trim(), mf.textLine.Text.Trim());
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
                    Report.MCDeptSummaryForChineseReport mcd = new PH.LWPM.UI.MC.Report.MCDeptSummaryForChineseReport(mc.T_factory.Text.Trim());
                    mcd.ShowPreviewDialog();
                }
                else if (mc.rbChineseType.Checked == true && mc.T_factory.Text.Trim() != "")
                {
                    Report.MCTypeSummaryForChineseReport mct = new PH.LWPM.UI.MC.Report.MCTypeSummaryForChineseReport(mc.T_factory.Text.Trim());
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
                
                //Class != null時，會引發報錯問題
                if (_curmh != null && _curmh.Class != null) //if (_curmh != null )
                {
                    barScrap.Enabled = !_curmh.Class.Contains("Dead Stock Room");
                    barRestore.Enabled = _curmh.Class.Contains("Dead Stock Room");
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

        private void barBtnWriteOff_ItemClick(object sender, ItemClickEventArgs e)
        {
            Machine obj = this.BindingSource.Current as Machine;
            if (obj == null) return;

            obj.IsWriteOff = true;
            obj.WriteOffDate = DateTime.Now;
            obj.Save();
            (this.DataContext as RAPLQDataContext).SubmitChanges();

            this.DataBind();
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
