using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;


namespace PH.SPC.UI
{
   public partial class StyleBOMListForm : PH.UI.UI2.ChildListForm
    {

       private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn12;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;

       public StyleBOMListForm()
        {
            InitializeComponent();
            this.CanDelete = true;
            this.EditorTypeName = typeof(StyleBOMDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

       public StyleBOMListForm(Style style)
        {
            InitializeComponent();
            this.DataSource = style.StyleBom;
            this.EditorTypeName = typeof(StyleBOMDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }


       private void InitializeComponent()
       {
           this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn12 = new DevExpress.XtraGrid.Columns.GridColumn();
           ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
           ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
           this.SuspendLayout();
           // 
           // gridControl1
           // 
           this.gridControl1.EmbeddedNavigator.Name = "";
           this.gridControl1.Size = new System.Drawing.Size(926, 441);
           // 
           // gridView1
           // 
           this.gridView1.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
           this.gridView1.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
           this.gridView1.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
           this.gridView1.Appearance.EvenRow.Options.UseBackColor = true;
           this.gridView1.AppearancePrint.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
           this.gridView1.AppearancePrint.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
           this.gridView1.AppearancePrint.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
           this.gridView1.AppearancePrint.EvenRow.Options.UseBackColor = true;
           this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn10,
            this.gridColumn11,
            this.gridColumn12});
           this.gridView1.OptionsDetail.EnableMasterViewMode = false;
           this.gridView1.OptionsPrint.AutoWidth = false;
           this.gridView1.OptionsPrint.EnableAppearanceEvenRow = true;
           this.gridView1.OptionsPrint.UsePrintStyles = true;
           this.gridView1.OptionsView.ColumnAutoWidth = false;
           this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
           // 
           // gridColumn1
           // 
           this.gridColumn1.Caption = "色號";
           this.gridColumn1.FieldName = "ColorID";
           this.gridColumn1.Name = "gridColumn1";
           this.gridColumn1.Visible = true;
           this.gridColumn1.VisibleIndex = 0;
           // 
           // gridColumn2
           // 
           this.gridColumn2.Caption = "物料大類";
           this.gridColumn2.FieldName = "MaterielGroup1";
           this.gridColumn2.Name = "gridColumn2";
           this.gridColumn2.Visible = true;
           this.gridColumn2.VisibleIndex = 1;
           // 
           // gridColumn3
           // 
           this.gridColumn3.Caption = "物料小類";
           this.gridColumn3.FieldName = "MaterielGroup2";
           this.gridColumn3.Name = "gridColumn3";
           this.gridColumn3.Visible = true;
           this.gridColumn3.VisibleIndex = 2;
           // 
           // gridColumn4
           // 
           this.gridColumn4.Caption = "使用位置";
           this.gridColumn4.FieldName = "MaterielGroup3";
           this.gridColumn4.Name = "gridColumn4";
           this.gridColumn4.Visible = true;
           this.gridColumn4.VisibleIndex = 3;
           // 
           // gridColumn5
           // 
           this.gridColumn5.Caption = "均碼用料";
           this.gridColumn5.FieldName = "MaterielName1";
           this.gridColumn5.Name = "gridColumn5";
           this.gridColumn5.Visible = true;
           this.gridColumn5.VisibleIndex = 4;
           // 
           // gridColumn6
           // 
           this.gridColumn6.Caption = "均碼布封";
           this.gridColumn6.FieldName = "MaterielName11";
           this.gridColumn6.Name = "gridColumn6";
           this.gridColumn6.Visible = true;
           this.gridColumn6.VisibleIndex = 5;
           // 
           // gridColumn7
           // 
           this.gridColumn7.Caption = "普碼用料";
           this.gridColumn7.FieldName = "MaterielName2";
           this.gridColumn7.Name = "gridColumn7";
           this.gridColumn7.Visible = true;
           this.gridColumn7.VisibleIndex = 6;
           // 
           // gridColumn8
           // 
           this.gridColumn8.Caption = "普碼布封";
           this.gridColumn8.FieldName = "MaterielName12";
           this.gridColumn8.Name = "gridColumn8";
           this.gridColumn8.Visible = true;
           this.gridColumn8.VisibleIndex = 7;
           // 
           // gridColumn9
           // 
           this.gridColumn9.Caption = "大碼用料";
           this.gridColumn9.FieldName = "MaterielName3";
           this.gridColumn9.Name = "gridColumn9";
           this.gridColumn9.Visible = true;
           this.gridColumn9.VisibleIndex = 8;
           // 
           // gridColumn10
           // 
           this.gridColumn10.Caption = "大碼布封";
           this.gridColumn10.FieldName = "MaterielName13";
           this.gridColumn10.Name = "gridColumn10";
           this.gridColumn10.Visible = true;
           this.gridColumn10.VisibleIndex = 9;
           // 
           // gridColumn11
           // 
           this.gridColumn11.Caption = "超碼用料";
           this.gridColumn11.FieldName = "MaterielName4";
           this.gridColumn11.Name = "gridColumn11";
           this.gridColumn11.Visible = true;
           this.gridColumn11.VisibleIndex = 10;
           // 
           // gridColumn12
           // 
           this.gridColumn12.Caption = "超碼布封";
           this.gridColumn12.FieldName = "MaterielName14";
           this.gridColumn12.Name = "gridColumn12";
           this.gridColumn12.Visible = true;
           this.gridColumn12.VisibleIndex = 11;
           // 
           // StyleBOMListForm
           // 
           this.Name = "StyleBOMListForm";
           this.Size = new System.Drawing.Size(926, 441);
           ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
           ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
           this.ResumeLayout(false);

       }
   }
}
