using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
   public partial class StyleSampleProgressSheetListForm : PH.UI.UI2.ChildListForm
    {

       private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
       private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;

       public StyleSampleProgressSheetListForm()
        {
            InitializeComponent();
            this.CanDelete = true;
            this.EditorTypeName = typeof(StyleSampleProgressSheetDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

       public StyleSampleProgressSheetListForm(Style style)
        {
            InitializeComponent();
            this.DataSource = style.StyleSampleProgressSheet;
            this.EditorTypeName = typeof(StyleSampleProgressSheetDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }


       private void InitializeComponent()
       {
           this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
           this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
           ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
           ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
           this.SuspendLayout();
           // 
           // gridControl1
           // 
           this.gridControl1.EmbeddedNavigator.Name = "";
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
            this.gridColumn4});
           this.gridView1.OptionsDetail.EnableMasterViewMode = false;
           this.gridView1.OptionsPrint.AutoWidth = false;
           this.gridView1.OptionsPrint.EnableAppearanceEvenRow = true;
           this.gridView1.OptionsPrint.UsePrintStyles = true;
           this.gridView1.OptionsView.ColumnAutoWidth = false;
           this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
           // 
           // gridColumn1
           // 
           this.gridColumn1.Caption = "Wk/Day";
           this.gridColumn1.FieldName = "WkDay";
           this.gridColumn1.Name = "gridColumn1";
           this.gridColumn1.Visible = true;
           this.gridColumn1.VisibleIndex = 0;
           // 
           // gridColumn2
           // 
           this.gridColumn2.Caption = "SAMPLE  STATUS";
           this.gridColumn2.FieldName = "Statue";
           this.gridColumn2.Name = "gridColumn2";
           this.gridColumn2.Visible = true;
           this.gridColumn2.VisibleIndex = 1;
           this.gridColumn2.Width = 128;
           // 
           // gridColumn3
           // 
           this.gridColumn3.Caption = "REMARK";
           this.gridColumn3.FieldName = "Remark";
           this.gridColumn3.Name = "gridColumn3";
           this.gridColumn3.Visible = true;
           this.gridColumn3.VisibleIndex = 2;
           // 
           // gridColumn4
           // 
           this.gridColumn4.Caption = "ACTIONS TO BE TAKEN";
           this.gridColumn4.FieldName = "Actions";
           this.gridColumn4.Name = "gridColumn4";
           this.gridColumn4.Visible = true;
           this.gridColumn4.VisibleIndex = 3;
           this.gridColumn4.Width = 156;
           // 
           // frmStyleSampleProgressSheetList
           // 
           this.Name = "frmStyleSampleProgressSheetList";
           ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
           ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
           this.ResumeLayout(false);

       }
   }
}
