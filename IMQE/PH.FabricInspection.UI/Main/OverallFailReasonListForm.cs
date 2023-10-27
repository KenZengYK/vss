using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using DevExpress.XtraBars;

namespace PH.FabricInspection.UI.Main
{
    public partial class OverallFailReasonListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public OverallFailReasonListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            //this.DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            //PHPlatformMiscDataContext dictDB = (this.DataContext as PHPlatformMiscDataContext);
            //var OverallFailReasonList = dictDB.Misc_DataDictionaries.
            //    Where(p => p.DataType == "PH.Fabric.OverallFailReason").OrderBy(p => p.DataCode);

            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (DataContext as FabricInspectionDataContext).OverallFailReasons.OrderBy(p => p.SeqNo);
            this.AllowGridEdit = true;

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
        }

        //private void objListGridView_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        //{
        //    //this.objListGridView.SetRowCellValue(e.RowHandle, this.colDataType, "PH.Fabric.OverallFailReason");
        //    //this.objListGridView.SetRowCellValue(e.RowHandle, this.colDocID, Guid.NewGuid());
        //}

        private void repositoryItemButtonEdit_Defect_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectDefectForm frmDefect = new SelectDefectForm();
            if (frmDefect.ShowDialog() == DialogResult.OK)
            {
                OverallFailReason obj = this.BindingSource.Current as OverallFailReason;
                obj.ReasonCode = frmDefect.DefectCode;
                //obj.ReasonNameEN = frmDefect.DefectEnglishName;
                //obj.ReasonNameCN = frmDefect.DefectChineseName;
                //obj.RemarkEN = frmDefect.DefectEnglishRemark;
                //obj.RemarkCN = frmDefect.DefectChindeseRemark;

                this.objListGridView.CloseEditor();
                this.BindingSource.EndEdit();
                this.objListGridView.UpdateCurrentRow();
            }
        }

    }
}
