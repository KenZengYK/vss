/*    
*  
* Copyright (c) 2009 PeiHeng   
*  
* CreateDate: 2009-8-27 16:14:17
* $Archive: /PH/PH.MobileQC/PH.MobileQC.UI/SP_QC_MasterAnalyzListForm.cs $   
* $Author: Admin $  
* $Date: 2009-8-27 16:14:17 $   
* $Revision: 0 $   
*/ 
 
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq; 
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class MasterAnalyzListForm_Comp : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        private CheckRptCondition CurCC;
        #endregion

        public MasterAnalyzListForm_Comp()
        {
            InitializeComponent();

       
        }

        public MasterAnalyzListForm_Comp(string type)
        {
            InitializeComponent();

            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;

            if (type == "WF")
            {
                this.barbut_PrintOPT.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barbut_PrintWF.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            }
            else
            {
                this.barbut_PrintOPT.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                this.barbut_PrintWF.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
        }

        public override void DataBind()
        {
            base.DataBind();

          //  MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);
            //MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(SP_QC_MasterAnalyz);
        }

        protected override void OnClickFind()
        {
            if (CurCC == null )
            {
                CurCC = new CheckRptCondition();

                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                this.DataContext = context;
            }

            if (CurCC.ShowDialog(this) == DialogResult.OK)
            {

                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = SqlDataHelper.EXECSP_QC_MasterAnalyze_Comp(CurCC.Line, CurCC.Project, CurCC.Style, CurCC.QN, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);

            }

        }

        private void barbut_PrintOPT_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurCC == null || this.BindingSource.Count==0)
                return;

            rptQC_MasterAnalyzeComp rpt = new rptQC_MasterAnalyzeComp(CurCC.Line,
                                                              CurCC.Project,
                                                              CurCC.Style,
                                                              CurCC.WO,
                                                              CurCC.WOC,
                                                              CurCC.QN,
                                                              CurCC.FactQCTimeFrom,//.FromDate ,
                                                              CurCC.FactQCTimeTo,//.ToDate
                                                              CurCC.QNQty
                                                              );
            rpt.ShowPreviewDialog();
        }

        private void barbut_PrintWF_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurCC == null || this.BindingSource.Count == 0)
                return;

            rptQC_MasterAnalyzeWF rpt = new rptQC_MasterAnalyzeWF(CurCC.Line,
                                                                 CurCC.Project,
                                                                 CurCC.Style,
                                                                 CurCC.WO,
                                                                 CurCC.WOC,
                                                                 CurCC.QN,
                                                                 CurCC.FactQCTimeFrom,//.FromDate ,
                                                                 CurCC.FactQCTimeTo,//.ToDate
                                                                 CurCC.QNQty
                                                                 );
            rpt.ShowPreviewDialog();
        }

    }
}