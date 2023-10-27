using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraBars;

namespace PH.FabricInspection.UI.BraCup
{
    public partial class BraCupDefectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BraCupDefectListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            SetupDefectChoice();
            this.AllowGridEdit = true;

            barBtnAddNew.Visibility = BarItemVisibility.Never;
            //this.EditorTypeName = typeof(AccessoryDefectDetailForm).FullName;
        }

        void SetupDefectChoice()
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            List<PHQCDefect> DefectCodeList = db.PHQCDefects.OrderByDescending(p => p.Frequency).ThenBy(p => p.PHDefectCode).ToList();
            GridColumn ccolPHDefectCode = new GridColumn();
            ccolPHDefectCode.Name = "colPHDefectCode";
            ccolPHDefectCode.FieldName = "PHDefectCode";
            ccolPHDefectCode.Caption = "Defect Code";
            ccolPHDefectCode.Width = 90;
            ccolPHDefectCode.AppearanceCell.Options.UseFont = true;
            ccolPHDefectCode.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F);
            ccolPHDefectCode.OptionsColumn.AllowEdit = false;
            ccolPHDefectCode.VisibleIndex = 0;
            ccolPHDefectCode.Visible = true;

            GridColumn ccolFrequency = new GridColumn();
            ccolFrequency.Name = "colFrequency";
            ccolFrequency.FieldName = "Frequency";
            ccolFrequency.Caption = "Frequency";
            ccolFrequency.Width = 70;
            ccolFrequency.AppearanceCell.Options.UseFont = true;
            ccolFrequency.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F);
            ccolFrequency.OptionsColumn.AllowEdit = false;
            ccolFrequency.VisibleIndex = 1;
            ccolFrequency.Visible = true;

            GridColumn ccolDefectEnglishName = new GridColumn();
            ccolDefectEnglishName.Name = "colDefectEnglishName";
            ccolDefectEnglishName.FieldName = "DefectEnglishName";
            ccolDefectEnglishName.Caption = "Defect Name (EN)";
            ccolDefectEnglishName.Width = 120;
            ccolDefectEnglishName.AppearanceCell.Options.UseFont = true;
            ccolDefectEnglishName.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F);
            ccolDefectEnglishName.OptionsColumn.AllowEdit = false;
            ccolDefectEnglishName.VisibleIndex = 2;
            ccolDefectEnglishName.Visible = true;

            GridColumn ccolDefectChineseName = new GridColumn();
            ccolDefectChineseName.Name = "colDefectChineseName";
            ccolDefectChineseName.FieldName = "DefectChineseName";
            ccolDefectChineseName.Caption = "Defect Name (CN)";
            ccolDefectChineseName.Width = 120;
            ccolDefectChineseName.AppearanceCell.Options.UseFont = true;
            ccolDefectChineseName.AppearanceCell.Font = new System.Drawing.Font("Tahoma", 9F);
            ccolDefectChineseName.OptionsColumn.AllowEdit = false;
            ccolDefectChineseName.VisibleIndex = 3;
            ccolDefectChineseName.Visible = true;

            GridColumn ccolDefectThaiName = new GridColumn();
            ccolDefectThaiName.Name = "colDefectThaiName";
            ccolDefectThaiName.FieldName = "DefectThaiName";
            ccolDefectThaiName.Caption = "Defect Name (BD)";
            ccolDefectThaiName.Width = 120;
            ccolDefectThaiName.AppearanceCell.Options.UseFont = true;
            ccolDefectThaiName.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F);
            ccolDefectThaiName.OptionsColumn.AllowEdit = false;
            ccolDefectThaiName.VisibleIndex = 4;
            ccolDefectThaiName.Visible = true;

            repositoryItemGridLookUpEdit1View.Columns.Clear();
            repositoryItemGridLookUpEdit1View.Columns.Add(ccolPHDefectCode);
            repositoryItemGridLookUpEdit1View.Columns.Add(ccolFrequency);
            repositoryItemGridLookUpEdit1View.Columns.Add(ccolDefectEnglishName);
            repositoryItemGridLookUpEdit1View.Columns.Add(ccolDefectChineseName);
            repositoryItemGridLookUpEdit1View.Columns.Add(ccolDefectThaiName);

            this.repositoryItemGridLookUpEdit_InputDefect.DisplayMember = "PHDefectCode";
            this.repositoryItemGridLookUpEdit_InputDefect.NullText = "";
            this.repositoryItemGridLookUpEdit_InputDefect.ValueMember = "PHDefectCode";

            repositoryItemGridLookUpEdit_InputDefect.DataSource = DefectCodeList;
        }

        public override void SaveData()
        {
            this.objListGridView.PostEditor();
            this.BindingSource.EndEdit();
            base.SaveData();
        }



    }
}
