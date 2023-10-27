using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
   public partial class StyleProduceRemarkListForm : PH.UI.UI2.ChildListForm
   {
       private DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView advBandedGridView1;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn1;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn2;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn3;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn4;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn5;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn6;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn7;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn8;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn9;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn10;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn13;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn14;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn15;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn16;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn17;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn18;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn19;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn20;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn21;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn22;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn23;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn24;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn25;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn26;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn27;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
       private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn6;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn7;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn8;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn9;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn10;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn11;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn12;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn13;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn15;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn14;
       private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
       private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn28;

       public StyleProduceRemarkListForm()
        {
            InitializeComponent();
            this.CanDelete = true;
            this.EditorTypeName = typeof(StyleProduceRemarkDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

       public StyleProduceRemarkListForm(StyleSort styleSort)
        {
            InitializeComponent();
            this.DataSource = styleSort.StyleProduceRemark;
            this.EditorTypeName = typeof(StyleProduceRemarkDetailForm).FullName;
            this.gridView1.OptionsBehavior.Editable = false;
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

       private void InitializeComponent()
       {
           this.advBandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.AdvBandedGridView();
           this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn6 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn7 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn8 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn9 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn10 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn13 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn14 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn15 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn16 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn17 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn18 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn19 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn6 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn7 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn20 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn21 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn8 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn22 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn23 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn10 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn11 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn24 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn25 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn12 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn13 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn26 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridColumn27 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn14 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn15 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
           this.gridColumn28 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.bandedGridColumn9 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
           this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
           ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
           ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
           ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).BeginInit();
           ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
           ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
           this.SuspendLayout();
           // 
           // gridControl1
           // 
           this.gridControl1.EmbeddedNavigator.Name = "";
           this.gridControl1.MainView = this.advBandedGridView1;
           this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1});
           this.gridControl1.Size = new System.Drawing.Size(786, 477);
           this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.advBandedGridView1});
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
           this.gridView1.OptionsPrint.AutoWidth = false;
           this.gridView1.OptionsPrint.EnableAppearanceEvenRow = true;
           this.gridView1.OptionsPrint.UsePrintStyles = true;
           this.gridView1.OptionsView.ColumnAutoWidth = false;
           this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
           // 
           // advBandedGridView1
           // 
           this.advBandedGridView1.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
           this.advBandedGridView1.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
           this.advBandedGridView1.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
           this.advBandedGridView1.Appearance.EvenRow.Options.UseBackColor = true;
           this.advBandedGridView1.AppearancePrint.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
           this.advBandedGridView1.AppearancePrint.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
           this.advBandedGridView1.AppearancePrint.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
           this.advBandedGridView1.AppearancePrint.EvenRow.Options.UseBackColor = true;
           this.advBandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand9,
            this.gridBand7,
            this.gridBand10,
            this.gridBand8,
            this.gridBand11});
           this.advBandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn10,
            this.gridColumn13,
            this.gridColumn14,
            this.gridColumn15,
            this.bandedGridColumn3,
            this.gridColumn16,
            this.gridColumn17,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.gridColumn18,
            this.gridColumn19,
            this.bandedGridColumn6,
            this.bandedGridColumn7,
            this.gridColumn20,
            this.gridColumn21,
            this.bandedGridColumn8,
            this.bandedGridColumn9,
            this.gridColumn22,
            this.gridColumn23,
            this.bandedGridColumn10,
            this.bandedGridColumn11,
            this.gridColumn24,
            this.gridColumn25,
            this.bandedGridColumn12,
            this.bandedGridColumn13,
            this.gridColumn26,
            this.gridColumn27,
            this.bandedGridColumn15,
            this.bandedGridColumn14,
            this.gridColumn28});
           this.advBandedGridView1.GridControl = this.gridControl1;
           this.advBandedGridView1.Name = "advBandedGridView1";
           this.advBandedGridView1.OptionsDetail.EnableMasterViewMode = false;
           this.advBandedGridView1.OptionsPrint.AutoWidth = false;
           this.advBandedGridView1.OptionsPrint.EnableAppearanceEvenRow = true;
           this.advBandedGridView1.OptionsPrint.UsePrintStyles = true;
           this.advBandedGridView1.OptionsView.EnableAppearanceEvenRow = true;
           // 
           // gridBand1
           // 
           this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand1.Caption = "基本要求";
           this.gridBand1.Columns.Add(this.gridColumn1);
           this.gridBand1.Columns.Add(this.gridColumn2);
           this.gridBand1.Columns.Add(this.gridColumn3);
           this.gridBand1.Columns.Add(this.gridColumn4);
           this.gridBand1.Name = "gridBand1";
           this.gridBand1.RowCount = 2;
           this.gridBand1.Width = 333;
           // 
           // gridColumn1
           // 
           this.gridColumn1.Caption = "客戶要求";
           this.gridColumn1.FieldName = "BasicCustomer";
           this.gridColumn1.Name = "gridColumn1";
           this.gridColumn1.Visible = true;
           // 
           // gridColumn2
           // 
           this.gridColumn2.Caption = "辦房意見";
           this.gridColumn2.FieldName = "BasicSampleRoom";
           this.gridColumn2.Name = "gridColumn2";
           this.gridColumn2.Visible = true;
           // 
           // gridColumn3
           // 
           this.gridColumn3.Caption = "更新人";
           this.gridColumn3.FieldName = "BasicUpateDate";
           this.gridColumn3.Name = "gridColumn3";
           this.gridColumn3.Visible = true;
           // 
           // gridColumn4
           // 
           this.gridColumn4.Caption = "更新日期";
           this.gridColumn4.ColumnEdit = this.repositoryItemDateEdit1;
           this.gridColumn4.FieldName = "BasicUpdatePerson";
           this.gridColumn4.Name = "gridColumn4";
           this.gridColumn4.Visible = true;
           this.gridColumn4.Width = 108;
           // 
           // gridBand2
           // 
           this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand2.Caption = "紙樣要求";
           this.gridBand2.Columns.Add(this.gridColumn5);
           this.gridBand2.Columns.Add(this.gridColumn6);
           this.gridBand2.Columns.Add(this.bandedGridColumn1);
           this.gridBand2.Columns.Add(this.bandedGridColumn2);
           this.gridBand2.Name = "gridBand2";
           this.gridBand2.RowCount = 2;
           this.gridBand2.Width = 367;
           // 
           // gridColumn5
           // 
           this.gridColumn5.Caption = "客戶要求";
           this.gridColumn5.FieldName = "PaperCustomer";
           this.gridColumn5.Name = "gridColumn5";
           this.gridColumn5.Visible = true;
           this.gridColumn5.Width = 111;
           // 
           // gridColumn6
           // 
           this.gridColumn6.Caption = "辦房意見";
           this.gridColumn6.FieldName = "PaperSampleRoom";
           this.gridColumn6.Name = "gridColumn6";
           this.gridColumn6.Visible = true;
           this.gridColumn6.Width = 106;
           // 
           // bandedGridColumn1
           // 
           this.bandedGridColumn1.Caption = "更新日期";
           this.bandedGridColumn1.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn1.FieldName = "PaperUpdateDate";
           this.bandedGridColumn1.Name = "bandedGridColumn1";
           this.bandedGridColumn1.Visible = true;
           // 
           // bandedGridColumn2
           // 
           this.bandedGridColumn2.Caption = "更新人";
           this.bandedGridColumn2.FieldName = "PaperUpdatePerson";
           this.bandedGridColumn2.Name = "bandedGridColumn2";
           this.bandedGridColumn2.Visible = true;
           // 
           // gridBand3
           // 
           this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand3.Caption = "裁剪要求";
           this.gridBand3.Columns.Add(this.gridColumn7);
           this.gridBand3.Columns.Add(this.gridColumn8);
           this.gridBand3.Columns.Add(this.gridColumn9);
           this.gridBand3.Columns.Add(this.gridColumn10);
           this.gridBand3.Name = "gridBand3";
           this.gridBand3.RowCount = 2;
           this.gridBand3.Width = 322;
           // 
           // gridColumn7
           // 
           this.gridColumn7.Caption = "客人要求";
           this.gridColumn7.FieldName = "CuttingCustomer";
           this.gridColumn7.Name = "gridColumn7";
           this.gridColumn7.Visible = true;
           this.gridColumn7.Width = 81;
           // 
           // gridColumn8
           // 
           this.gridColumn8.Caption = "辦房意見";
           this.gridColumn8.FieldName = "CuttingSampleRoom";
           this.gridColumn8.Name = "gridColumn8";
           this.gridColumn8.Visible = true;
           this.gridColumn8.Width = 82;
           // 
           // gridColumn9
           // 
           this.gridColumn9.Caption = "更新日期";
           this.gridColumn9.ColumnEdit = this.repositoryItemDateEdit1;
           this.gridColumn9.FieldName = "CuttingUpdateDate";
           this.gridColumn9.Name = "gridColumn9";
           this.gridColumn9.Visible = true;
           this.gridColumn9.Width = 79;
           // 
           // gridColumn10
           // 
           this.gridColumn10.Caption = "更新人";
           this.gridColumn10.FieldName = "CuttingUpdatePerson";
           this.gridColumn10.Name = "gridColumn10";
           this.gridColumn10.Visible = true;
           this.gridColumn10.Width = 80;
           // 
           // gridBand4
           // 
           this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand4.Caption = "車縫要求";
           this.gridBand4.Columns.Add(this.gridColumn13);
           this.gridBand4.Columns.Add(this.gridColumn14);
           this.gridBand4.Columns.Add(this.gridColumn15);
           this.gridBand4.Columns.Add(this.bandedGridColumn3);
           this.gridBand4.Name = "gridBand4";
           this.gridBand4.RowCount = 2;
           this.gridBand4.Width = 387;
           // 
           // gridColumn13
           // 
           this.gridColumn13.Caption = "客戶要求";
           this.gridColumn13.FieldName = "SeamCustomer";
           this.gridColumn13.Name = "gridColumn13";
           this.gridColumn13.Visible = true;
           this.gridColumn13.Width = 106;
           // 
           // gridColumn14
           // 
           this.gridColumn14.Caption = "辦房意見";
           this.gridColumn14.FieldName = "SeamSampleRoom";
           this.gridColumn14.Name = "gridColumn14";
           this.gridColumn14.Visible = true;
           this.gridColumn14.Width = 103;
           // 
           // gridColumn15
           // 
           this.gridColumn15.Caption = "更新日期";
           this.gridColumn15.ColumnEdit = this.repositoryItemDateEdit1;
           this.gridColumn15.FieldName = "SeamUpdateDate";
           this.gridColumn15.Name = "gridColumn15";
           this.gridColumn15.Visible = true;
           this.gridColumn15.Width = 103;
           // 
           // bandedGridColumn3
           // 
           this.bandedGridColumn3.Caption = "更新人";
           this.bandedGridColumn3.FieldName = "SeamUpdatePerson";
           this.bandedGridColumn3.Name = "bandedGridColumn3";
           this.bandedGridColumn3.Visible = true;
           // 
           // gridBand5
           // 
           this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand5.Caption = "機修要求";
           this.gridBand5.Columns.Add(this.gridColumn16);
           this.gridBand5.Columns.Add(this.gridColumn17);
           this.gridBand5.Columns.Add(this.bandedGridColumn4);
           this.gridBand5.Columns.Add(this.bandedGridColumn5);
           this.gridBand5.Name = "gridBand5";
           this.gridBand5.RowCount = 2;
           this.gridBand5.Width = 359;
           // 
           // gridColumn16
           // 
           this.gridColumn16.Caption = "客戶要求";
           this.gridColumn16.FieldName = "MachineMendCustomer";
           this.gridColumn16.Name = "gridColumn16";
           this.gridColumn16.Visible = true;
           this.gridColumn16.Width = 106;
           // 
           // gridColumn17
           // 
           this.gridColumn17.Caption = "辦房意見";
           this.gridColumn17.FieldName = "MachineMendSampleRoom";
           this.gridColumn17.Name = "gridColumn17";
           this.gridColumn17.Visible = true;
           this.gridColumn17.Width = 103;
           // 
           // bandedGridColumn4
           // 
           this.bandedGridColumn4.Caption = "更新日期";
           this.bandedGridColumn4.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn4.FieldName = "MachineMendUpdateDate";
           this.bandedGridColumn4.Name = "bandedGridColumn4";
           this.bandedGridColumn4.Visible = true;
           // 
           // bandedGridColumn5
           // 
           this.bandedGridColumn5.Caption = "更新人";
           this.bandedGridColumn5.FieldName = "MachineMendUpdatePerson";
           this.bandedGridColumn5.Name = "bandedGridColumn5";
           this.bandedGridColumn5.Visible = true;
           // 
           // gridBand6
           // 
           this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand6.Caption = "IE方面";
           this.gridBand6.Columns.Add(this.gridColumn18);
           this.gridBand6.Columns.Add(this.gridColumn19);
           this.gridBand6.Columns.Add(this.bandedGridColumn6);
           this.gridBand6.Columns.Add(this.bandedGridColumn7);
           this.gridBand6.Name = "gridBand6";
           this.gridBand6.RowCount = 2;
           this.gridBand6.Width = 337;
           // 
           // gridColumn18
           // 
           this.gridColumn18.Caption = "客戶要求";
           this.gridColumn18.FieldName = "IeCustomer";
           this.gridColumn18.Name = "gridColumn18";
           this.gridColumn18.Visible = true;
           this.gridColumn18.Width = 92;
           // 
           // gridColumn19
           // 
           this.gridColumn19.Caption = "辦房意見";
           this.gridColumn19.FieldName = "IeSampleRoom";
           this.gridColumn19.Name = "gridColumn19";
           this.gridColumn19.Visible = true;
           this.gridColumn19.Width = 95;
           // 
           // bandedGridColumn6
           // 
           this.bandedGridColumn6.Caption = "更新日期";
           this.bandedGridColumn6.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn6.FieldName = "IeUpdateDate";
           this.bandedGridColumn6.Name = "bandedGridColumn6";
           this.bandedGridColumn6.Visible = true;
           // 
           // bandedGridColumn7
           // 
           this.bandedGridColumn7.Caption = "更新人";
           this.bandedGridColumn7.FieldName = "IeUpdatePerson";
           this.bandedGridColumn7.Name = "bandedGridColumn7";
           this.bandedGridColumn7.Visible = true;
           // 
           // gridBand9
           // 
           this.gridBand9.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand9.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand9.Caption = "質檢方面";
           this.gridBand9.Columns.Add(this.gridColumn20);
           this.gridBand9.Columns.Add(this.gridColumn21);
           this.gridBand9.Columns.Add(this.bandedGridColumn8);
           this.gridBand9.Name = "gridBand9";
           this.gridBand9.RowCount = 2;
           this.gridBand9.Width = 297;
           // 
           // gridColumn20
           // 
           this.gridColumn20.Caption = "客戶要求";
           this.gridColumn20.FieldName = "QCCustomer";
           this.gridColumn20.Name = "gridColumn20";
           this.gridColumn20.Visible = true;
           this.gridColumn20.Width = 114;
           // 
           // gridColumn21
           // 
           this.gridColumn21.Caption = "辦房意見";
           this.gridColumn21.FieldName = "QCSampleRoom";
           this.gridColumn21.Name = "gridColumn21";
           this.gridColumn21.Visible = true;
           this.gridColumn21.Width = 108;
           // 
           // bandedGridColumn8
           // 
           this.bandedGridColumn8.Caption = "更新日期";
           this.bandedGridColumn8.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn8.FieldName = "QCUpdateDate";
           this.bandedGridColumn8.Name = "bandedGridColumn8";
           this.bandedGridColumn8.Visible = true;
           // 
           // gridBand7
           // 
           this.gridBand7.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand7.Caption = "洗水方面";
           this.gridBand7.Columns.Add(this.gridColumn22);
           this.gridBand7.Columns.Add(this.gridColumn23);
           this.gridBand7.Columns.Add(this.bandedGridColumn10);
           this.gridBand7.Columns.Add(this.bandedGridColumn11);
           this.gridBand7.Name = "gridBand7";
           this.gridBand7.RowCount = 2;
           this.gridBand7.Width = 364;
           // 
           // gridColumn22
           // 
           this.gridColumn22.Caption = "客戶要求";
           this.gridColumn22.FieldName = "WashCustomer";
           this.gridColumn22.Name = "gridColumn22";
           this.gridColumn22.Visible = true;
           this.gridColumn22.Width = 105;
           // 
           // gridColumn23
           // 
           this.gridColumn23.Caption = "辦房意見";
           this.gridColumn23.FieldName = "WashSampleRoom";
           this.gridColumn23.Name = "gridColumn23";
           this.gridColumn23.Visible = true;
           this.gridColumn23.Width = 109;
           // 
           // bandedGridColumn10
           // 
           this.bandedGridColumn10.Caption = "更新日期";
           this.bandedGridColumn10.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn10.FieldName = "WashUpdateDate";
           this.bandedGridColumn10.Name = "bandedGridColumn10";
           this.bandedGridColumn10.Visible = true;
           // 
           // bandedGridColumn11
           // 
           this.bandedGridColumn11.Caption = "更新人";
           this.bandedGridColumn11.FieldName = "WashUpdatePerson";
           this.bandedGridColumn11.Name = "bandedGridColumn11";
           this.bandedGridColumn11.Visible = true;
           // 
           // gridBand10
           // 
           this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand10.Caption = "其他";
           this.gridBand10.Columns.Add(this.gridColumn24);
           this.gridBand10.Columns.Add(this.gridColumn25);
           this.gridBand10.Columns.Add(this.bandedGridColumn12);
           this.gridBand10.Columns.Add(this.bandedGridColumn13);
           this.gridBand10.Name = "gridBand10";
           this.gridBand10.RowCount = 2;
           this.gridBand10.Width = 300;
           // 
           // gridColumn24
           // 
           this.gridColumn24.Caption = "客戶要求";
           this.gridColumn24.FieldName = "OtherCustomer";
           this.gridColumn24.Name = "gridColumn24";
           this.gridColumn24.Visible = true;
           // 
           // gridColumn25
           // 
           this.gridColumn25.Caption = "辦房意見";
           this.gridColumn25.FieldName = "OtherSampleRoom";
           this.gridColumn25.Name = "gridColumn25";
           this.gridColumn25.Visible = true;
           // 
           // bandedGridColumn12
           // 
           this.bandedGridColumn12.Caption = "更新日期";
           this.bandedGridColumn12.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn12.FieldName = "OtherUpdateDate";
           this.bandedGridColumn12.Name = "bandedGridColumn12";
           this.bandedGridColumn12.Visible = true;
           // 
           // bandedGridColumn13
           // 
           this.bandedGridColumn13.Caption = "更新人";
           this.bandedGridColumn13.FieldName = "OtherUpdatePerson";
           this.bandedGridColumn13.Name = "bandedGridColumn13";
           this.bandedGridColumn13.Visible = true;
           // 
           // gridBand8
           // 
           this.gridBand8.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand8.Caption = "報價要求";
           this.gridBand8.Columns.Add(this.gridColumn26);
           this.gridBand8.Columns.Add(this.gridColumn27);
           this.gridBand8.Columns.Add(this.bandedGridColumn14);
           this.gridBand8.Columns.Add(this.bandedGridColumn15);
           this.gridBand8.Name = "gridBand8";
           this.gridBand8.RowCount = 2;
           this.gridBand8.Width = 300;
           // 
           // gridColumn26
           // 
           this.gridColumn26.Caption = "客戶要求";
           this.gridColumn26.FieldName = "QuotationCustomer";
           this.gridColumn26.Name = "gridColumn26";
           this.gridColumn26.Visible = true;
           // 
           // gridColumn27
           // 
           this.gridColumn27.Caption = "辦房意見";
           this.gridColumn27.FieldName = "QuotationSampleRoom";
           this.gridColumn27.Name = "gridColumn27";
           this.gridColumn27.Visible = true;
           // 
           // bandedGridColumn14
           // 
           this.bandedGridColumn14.Caption = "更新人";
           this.bandedGridColumn14.FieldName = "QuotationUpdatePerson";
           this.bandedGridColumn14.Name = "bandedGridColumn14";
           this.bandedGridColumn14.Visible = true;
           // 
           // bandedGridColumn15
           // 
           this.bandedGridColumn15.Caption = "更新日期";
           this.bandedGridColumn15.ColumnEdit = this.repositoryItemDateEdit1;
           this.bandedGridColumn15.FieldName = "QuotationUpdateDate";
           this.bandedGridColumn15.Name = "bandedGridColumn15";
           this.bandedGridColumn15.Visible = true;
           // 
           // gridBand11
           // 
           this.gridBand11.AppearanceHeader.Options.UseTextOptions = true;
           this.gridBand11.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
           this.gridBand11.Caption = "上次未審核原因";
           this.gridBand11.Columns.Add(this.gridColumn28);
           this.gridBand11.Name = "gridBand11";
           this.gridBand11.RowCount = 2;
           this.gridBand11.Width = 124;
           // 
           // gridColumn28
           // 
           this.gridColumn28.Caption = "上次未批核之原因";
           this.gridColumn28.FieldName = "RejectReason";
           this.gridColumn28.Name = "gridColumn28";
           this.gridColumn28.Visible = true;
           this.gridColumn28.Width = 124;
           // 
           // bandedGridColumn9
           // 
           this.bandedGridColumn9.Caption = "更新人";
           this.bandedGridColumn9.FieldName = "QCUpdatePerson";
           this.bandedGridColumn9.Name = "bandedGridColumn9";
           this.bandedGridColumn9.Visible = true;
           // 
           // repositoryItemDateEdit1
           // 
           this.repositoryItemDateEdit1.AutoHeight = false;
           this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
           this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
           this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
           // 
           // StyleProduceRemarkListForm
           // 
           this.Name = "StyleProduceRemarkListForm";
           this.Size = new System.Drawing.Size(786, 477);
           ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
           ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
           ((System.ComponentModel.ISupportInitialize)(this.advBandedGridView1)).EndInit();
           ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
           ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
           this.ResumeLayout(false);

       }
   }
}
