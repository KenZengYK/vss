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
    public partial class MasterAnalyzListForm2 : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        private CheckRptCondition2 CurCC; 
        #endregion

        public MasterAnalyzListForm2()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
            CurCC = new CheckRptCondition2();
        }

        public override void DataBind()
        {
            base.DataBind();

           

            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(SP_QC_MasterAnalyz);
        }

        protected override void OnClickFind()
        {
            if (CurCC == null )
            {
                CurCC = new CheckRptCondition2();

                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                this.DataContext = context;
            }

            if (CurCC.ShowDialog()== DialogResult.OK)
            {
                this.BindingSource.DataSource = null;
                
                List<SP_QC_MasterAnalyz> _lst = SqlDataHelper.EXECSP_QC_MasterAnalyze2(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                this.BindingSource.DataSource = _lst;               
   
            }

        }

        private void barbut_PrintOPT_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurCC == null || this.BindingSource.Count==0)
                return;
            
            //rptQC_MasterAnalyzeOPT2 rpt = new rptQC_MasterAnalyzeOPT2(CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate);
            //rptQC_MasterAnalyzeOPT2 rpt = new rptQC_MasterAnalyzeOPT2(this.BindingSource.DataSource,CurCC.Factory, CurCC.WorkShop, CurCC.Customer, CurCC.Style, CurCC.Project, CurCC.Line, CurCC.FromDate, CurCC.ToDate,CurCC.SortByFpy);
            //rpt.ShowPreviewDialog();
        }



    }
}