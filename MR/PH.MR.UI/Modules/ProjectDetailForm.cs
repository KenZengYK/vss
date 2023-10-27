using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views.BandedGrid;
using PH.MR.BO;


namespace PH.MR.UI
{

    public partial class ProjectDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        #region//properties
        private  List<MRCACAction> _MRCACs;
        private ProjectList CurProjectList
        {
            get { return this.BindingSource.Current as ProjectList; }
        }

        #endregion

        public ProjectDetailForm()
        {
            InitializeComponent();             
        }        
        
        protected override void OnClickSave()
        {
            SaveCurData(); 
        }

        protected override void OnClickSaveAndReturn()
        {
            SaveCurData();
            base.ReturnToPrevForm();
        }

        public override void DataBind()
        { 

            this.tedCompany.Text = this.CurProjectList.Company;
            this.tedProjectNO.Text = this.CurProjectList.Project;

            if (this.CurProjectList != null)
            {
                _MRCACs = MR_ActionDataController.Getdata(this.CurProjectList.Company, this.CurProjectList.Project);
                this.gridControl1.DataSource = _MRCACs;
                if (_MRCACs.Count > 0)
                    tedFinalVersion.Text = _MRCACs[0].VERSION.ToString();
            }
        }       
      
        private void SaveCurData()
        {             
            string sSQLUPDATE;
            string FUSER = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            foreach (MRCACAction ca in this._MRCACs) 
            {
                if (ca.IsDirty)
                {
                    try
                    {
                        sSQLUPDATE = String.Format("exec SP_MR_ACTION_UPDATE '{0}','{1}',{2},'{3}','{4}','{5}','{6}','{7}','{8}'",
                                    ca.CONO, ca.PROJECT, ca.VERSION, ca.MATD.Trim(), ca.CSTL, ca.PCOL, ca.PSIZ, FUSER, ca.Actions);
                        PH.MR.BO.DB.GetDataByPage_SQL2000(sSQLUPDATE);
                        MessageBox.Show("Save Success!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    catch 
                    {
                        MessageBox.Show("Save Fail!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }

            }
        }        

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "Diff")
            {
                if (Convert.ToInt32((bandedGridView1.GetRowCellValue(e.RowHandle, bandedGridView1.Columns["Diff"]))) > 0)
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }
            }
        }

        private void bti_ExpandAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (bandedGridView1 != null)
                bandedGridView1.ExpandAllGroups();

        }

        private void bti_CollapseAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (bandedGridView1 != null)
                bandedGridView1.CollapseAllGroups();

        }

        private void bti_print_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ActionReport1 anRep = new ActionReport1();
            anRep.DataSource = _MRCACs;
            anRep.ShowPreviewDialog(); 
        }

         
               
    }

    
}

