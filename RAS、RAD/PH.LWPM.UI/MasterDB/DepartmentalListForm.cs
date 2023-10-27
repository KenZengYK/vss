using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.LWPM.UI.WF.Report;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;

namespace PH.LWPM.UI.MasterDB
{
    public partial class DepartmentalListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public DepartmentalListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).DepartalSorts.OrderBy(p => p.SeqNo);
            this.FormState = PH.Platform.BO.Interface.WorkMode.Read;

            //用BO權限，控制是否可以編輯Grid
            this.AllowGridEdit = barBtnAddNew.Enabled;

            this.objListGridView.ActiveFilter.Clear();
            this.objListGridView.ActiveFilterString = "[Active] = True";

            PrepareData();
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //DepartmentalReport rptDepartmental = new DepartmentalReport(this.objListGridView.FilteredList());
            // rptDepartmental.ShowPreview();

            DepartmentalPrintSetupForm frmDeptPrintSetup = new DepartmentalPrintSetupForm();
            if (frmDeptPrintSetup.ShowDialog() == DialogResult.Cancel) return;

            DepartmentalReport rptDepartmental = null;

            //if (frmDeptPrintSetup.CheckHK) //HK Head Office
            //{
            //    var HKHeadOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.HKOFFICE ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in HKHeadOffLists)
            //    {
            //        obj.GroupField = "HK - Head Off. cost";
            //        obj.GroupSortID = 1;
            //    }
            //    DepartmentalReport rptHK = new DepartmentalReport(HKHeadOffLists);
            //    rptHK.CreateDocument();
            //    rptDepartmental = rptHK;
            //}

            //if (frmDeptPrintSetup.CheckSL) //SL Office + SL Fty
            //{
            //    var SLOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.SLSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in SLOffLists)
            //    {
            //        obj.GroupField = "SL - Head Off. cost";
            //        obj.GroupSortID = 1;
            //    }

            //    var SLFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.SLMAIN ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in SLFtyLists)
            //    {
            //        obj.GroupField = "SL - Fty cost";
            //        obj.GroupSortID = 2;
            //    }

            //    SLOffLists.AddRange(SLFtyLists);

            //    DepartmentalReport rptSL = new DepartmentalReport(SLOffLists);
            //    rptSL.CreateDocument();

            //    if (rptDepartmental == null)
            //    {
            //        rptDepartmental = rptSL;
            //    }
            //    else
            //    {
            //        rptDepartmental.Pages.AddRange(rptSL.Pages);
            //    }
            //}

            //if (frmDeptPrintSetup.CheckRX) //RX Office + RX Fty
            //{
            //    var RXOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.GGSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in RXOffLists)
            //    {
            //        obj.GroupField = "RX - Head Off. cost";
            //        obj.GroupSortID = 1;
            //    }

            //    var RXFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.RXFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in RXFtyLists)
            //    {
            //        obj.GroupField = "RX - Fty cost";
            //        obj.GroupSortID = 2;
            //    }
            //    RXOffLists.AddRange(RXFtyLists);
            //    DepartmentalReport rptDeptRX = new DepartmentalReport(RXOffLists);
            //    rptDeptRX.CreateDocument();

            //    if (rptDepartmental == null)
            //    {
            //        rptDepartmental = rptDeptRX;
            //    }
            //    else
            //    {
            //        rptDepartmental.Pages.AddRange(rptDeptRX.Pages);
            //    }
            //}

            ////if (frmDeptPrintSetup.CheckGG) //GG Fty
            ////{
            ////    var GGFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.GGFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            ////    foreach (var obj in GGFtyLists)
            ////    {
            ////        obj.GroupField = "GG - Fty cost";
            ////        obj.GroupSortID = 1;
            ////    }
            ////    DepartmentalReport rptGG = new DepartmentalReport(GGFtyLists);
            ////    rptGG.CreateDocument();
            ////    if (rptDepartmental == null)
            ////    {
            ////        rptDepartmental = rptGG;
            ////    }
            ////    else
            ////    {
            ////        rptDepartmental.Pages.AddRange(rptGG.Pages);
            ////    }
            ////}

            //if (frmDeptPrintSetup.CheckCL) //CL Office + CL Fty
            //{
            //    var CLOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.CGSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in CLOffLists)
            //    {
            //        obj.GroupField = "CL - Head Off. cost";
            //        obj.GroupSortID = 1;
            //    }

            //    var CLFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.CGFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
            //    foreach (var obj in CLFtyLists)
            //    {
            //        obj.GroupField = "CL - Fty cost";
            //        obj.GroupSortID = 2;
            //    }
            //    CLOffLists.AddRange(CLFtyLists);
            //    DepartmentalReport rptCL = new DepartmentalReport(CLOffLists);
            //    rptCL.CreateDocument();

            //    if (rptDepartmental == null)
            //    {
            //        rptDepartmental = rptCL;
            //    }
            //    else
            //    {
            //        rptDepartmental.Pages.AddRange(rptCL.Pages);
            //    }
            //}

            //if (rptDepartmental == null) return;
            //rptDepartmental.PrintingSystem.ContinuousPageNumbering = false;
            //rptDepartmental.ShowPreview();
            bool CheckAll = false;

            string Fty = "";
            int ChooseCount = 0;
            if (frmDeptPrintSetup.CheckHK) 
            {
                ChooseCount++;
                Fty = "HK";
            }


            if (frmDeptPrintSetup.CheckSL)
            {
                ChooseCount++;
                Fty = Fty==""?"SL": Fty +"|" +"SL";
            }

            if (frmDeptPrintSetup.CheckRX)
            {
                ChooseCount++;
                Fty = Fty == "" ? "RX" : Fty + "|" + "RX";
            }

            if (frmDeptPrintSetup.CheckCL)
            {
                ChooseCount++;
                Fty = Fty == "" ? "CL" : Fty + "|" + "CL";

                if (ChooseCount == 4) 
                {
                    Fty = "All";
                }

            }

            Fty = Fty + " region";

            if (ChooseCount == 1)
            {
                if (frmDeptPrintSetup.CheckHK) //HK Head Office
                {
                    var HKHeadOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.HKOFFICE ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in HKHeadOffLists)
                    {
                        obj.GroupField = "HK - HQ cost";
                        obj.GroupSortID = 1;
                    }
                    DepartmentalReport rptHK = new DepartmentalReport(HKHeadOffLists, Fty);
                    rptHK.CreateDocument();
                    rptDepartmental = rptHK;
                }

                if (frmDeptPrintSetup.CheckSL) //SL Office + SL Fty
                {
                    var SLOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.SLSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in SLOffLists)
                    {
                        obj.GroupField = "SL - HQ cost";
                        obj.GroupSortID = 1;
                    }

                    var SLFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.SLMAIN ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in SLFtyLists)
                    {
                        obj.GroupField = "SL - Fty cost";
                        obj.GroupSortID = 2;
                    }

                    SLOffLists.AddRange(SLFtyLists);

                    DepartmentalReport rptSL = new DepartmentalReport(SLOffLists, Fty);
                    rptSL.CreateDocument();

                    if (rptDepartmental == null)
                    {
                        rptDepartmental = rptSL;
                    }
                    else
                    {
                        rptDepartmental.Pages.AddRange(rptSL.Pages);
                    }
                }

                if (frmDeptPrintSetup.CheckRX) //RX Office + RX Fty
                {
                    var RXOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.GGSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in RXOffLists)
                    {
                        obj.GroupField = "RX - HQ cost";
                        obj.GroupSortID = 1;
                    }

                    var RXFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.RXFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in RXFtyLists)
                    {
                        obj.GroupField = "RX - Fty cost";
                        obj.GroupSortID = 2;
                    }
                    RXOffLists.AddRange(RXFtyLists);
                    DepartmentalReport rptDeptRX = new DepartmentalReport(RXOffLists, Fty);
                    rptDeptRX.CreateDocument();

                    if (rptDepartmental == null)
                    {
                        rptDepartmental = rptDeptRX;
                    }
                    else
                    {
                        rptDepartmental.Pages.AddRange(rptDeptRX.Pages);
                    }
                }


                if (frmDeptPrintSetup.CheckCL) //CL Office + CL Fty
                {
                    var CLOffLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.CGSALES ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in CLOffLists)
                    {
                        obj.GroupField = "CL - HQ cost";
                        obj.GroupSortID = 1;
                    }

                    var CLFtyLists = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true && (p.CGFACT ?? false == true)).OrderBy(p => p.SeqNo).ToList();
                    foreach (var obj in CLFtyLists)
                    {
                        obj.GroupField = "CL - Fty cost";
                        obj.GroupSortID = 2;
                    }
                    CLOffLists.AddRange(CLFtyLists);
                    DepartmentalReport rptCL = new DepartmentalReport(CLOffLists, Fty);
                    rptCL.CreateDocument();

                    if (rptDepartmental == null)
                    {
                        rptDepartmental = rptCL;
                    }
                    else
                    {
                        rptDepartmental.Pages.AddRange(rptCL.Pages);
                    }
                }

                if (rptDepartmental == null) return;
               // rptDepartmental.PrintingSystem.ContinuousPageNumbering = false;
                rptDepartmental.ShowPreview();


            }
            else 
            {
                //rptDepartmental.Pages.AddRange(rptSL.Pages);
                var Alist = this.GetNewDataContext().DepartalSorts.Where(p => p.Active == true &&
              (

                (frmDeptPrintSetup.CheckHK && (p.HKOFFICE ?? false == frmDeptPrintSetup.CheckHK))
                ||
                (

                   (frmDeptPrintSetup.CheckSL &&
                       ((p.SLSALES ?? false == frmDeptPrintSetup.CheckSL) ||
                       (p.SLMAIN ?? false == frmDeptPrintSetup.CheckSL))
                   )
                )

                ||
                (frmDeptPrintSetup.CheckRX &&
                   (
                       (p.GGSALES ?? false == frmDeptPrintSetup.CheckRX) ||
                       (p.RXFACT ?? false == frmDeptPrintSetup.CheckRX)
                   )
                )
                ||
                (frmDeptPrintSetup.CheckCL &&
                   (
                       (p.CGSALES ?? false == frmDeptPrintSetup.CheckCL) ||
                       (p.CGFACT ?? false == frmDeptPrintSetup.CheckCL)
                   )
                )


               )

              ).OrderBy(p => p.SeqNo).ToList();


                DepartmentalReport rptCL = new DepartmentalReport(Alist, Fty);
                rptCL.GroupHeader1.Visible = false;

                rptCL.CreateDocument();

                if (rptDepartmental == null)
                {
                    rptDepartmental = rptCL;
                }
                else
                {
                    rptDepartmental.Pages.AddRange(rptCL.Pages);
                }

                if (rptDepartmental == null) return;
                rptDepartmental.PrintingSystem.ContinuousPageNumbering = false;
                rptDepartmental.ShowPreview();

            }



            //var Alist = this.GetNewDataContext().DepartalSorts.Where(p => 1 == 2).OrderBy(p => p.SeqNo).ToList();
           

           

            //DepartmentalReport rpt = new DepartmentalReport(Alist);
            //rpt.CreateDocument();
            //rpt.ShowPreview();
           
          
        }

        void PrepareData()
        {
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;

            this.rcbDepart.Properties.Items.Clear();
            this.rcbDepart.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "DPTUS").Select(p => p.Name).ToList());

            this.rcbSection.Properties.Items.Clear();
            this.rcbSection.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "WorkShopNew").Select(p => p.Name).ToList());

            this.rcbTeam.Properties.Items.Clear();
            this.rcbTeam.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "WFWhere_1_Team").Select(p => p.Name).ToList());

            this.rcbClass.Properties.Items.Clear();
            this.rcbClass.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "WFWhere_2_class").Select(p => p.Name).ToList());

            this.rcbDivision.Properties.Items.Clear();
            this.rcbDivision.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "Division").Select(p => p.Name).ToList());

            //this.rcbLocation.Properties.Items.Clear();
            //this.rcbLocation.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "cbbDeptLocation").Select(p => p.Name).ToList());
        }


        public RAPLQDataContext GetNewDataContext()
        {
            return ContextBuilder.CreateContext<RAPLQDataContext>();
        }

        private void rcbDepart_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        //网格中的下拉框编辑框，下拉框没有显示出来时，不允许鼠标滚轮滚动 (不允许在网格单元格中直接滚动)
        void DisableMouseWheelComboBoxEditInGridViewCell(DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            if (this.objListGridView.ActiveEditor is ComboBoxEdit)
            {
                e.Handled = !(this.objListGridView.ActiveEditor as ComboBoxEdit).IsPopupOpen;
            }
        }

        private void objListGridView_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
           this.objListGridView.SetRowCellValue(e.RowHandle, "Active", true);
        }

        protected override void OnClickAddNew()
        {
            base.OnClickAddNew();

            DepartalSort obj = this.BindingSource.Current as DepartalSort;
            obj.Active = true;

            //由於受到平臺中的控制，此句必須要有，否則在網格中新增記錄時，如果是由新增按鈕新增記錄，移動行後不能正常保存，Add by David 2020-03-18
            this.IfClickAdd = false;
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<DepartalSort> lists = objListGridView.FilteredList().Cast<DepartalSort>();
                switch (item.FieldName)
                {
                    case "Deptmental_EN":
                        e.TotalValue = lists.Select(p => p.Deptmental_EN).Distinct().Count();
                        break;

                    case "Departalment_chn":
                        e.TotalValue = lists.Select(p => p.Departalment_chn).Distinct().Count();
                        break;                  
                }

            }
        }


    }
}
