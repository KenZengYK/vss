using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class PMIDcListForm : DetailListForm
    {
        public PMIDcListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(TMIDcDetailForm).FullName;
        }

        private void PMIDcListForm_Load(object sender, EventArgs e)
        {
            //在此設置DataSource和context。
            PH.MIDc.BO.MIDcDataContext context = new PH.MIDc.BO.MIDcDataContext();
            this.DataContext = context;
            this.AllowGridEdit = true;
            this.objListGridView.OptionsBehavior.Editable = true;
            //this.IsCopyAsNew = false;
            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.objListGridView.Columns)
            {
                col.OptionsColumn.AllowEdit = true;
                if (col.FieldName == "Selected")
                    col.OptionsColumn.ReadOnly = false;
                else
                    col.OptionsColumn.ReadOnly = true;

            }
        }

        private void InitializeComponent()
        {
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.Size = new System.Drawing.Size(1098, 495);
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Enabled = false;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // PMIDcListForm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.Name = "PMIDcListForm";
            this.Load += new System.EventHandler(this.PMIDcListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }
     
    }
}
