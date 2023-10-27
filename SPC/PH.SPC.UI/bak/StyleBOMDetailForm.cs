using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleBOMDetailForm : PH.UI.UI2.ChildDetailForm
    {
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit txtStyleID;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtSampleOrderID;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.TextEdit textEdit6;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.TextEdit textEdit7;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.TextEdit txtAMaterielName;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.LabelControl labelControl10;
        private DevExpress.XtraEditors.TextEdit textEdit9;
        private DevExpress.XtraEditors.LabelControl labelControl9;
        private DevExpress.XtraEditors.TextEdit textEdit11;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.TextEdit textEdit12;
        private DevExpress.XtraEditors.LabelControl labelControl12;
        private DevExpress.XtraEditors.TextEdit textEdit13;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.TextEdit txtAMaterielName1;
        private DevExpress.XtraEditors.LabelControl labelControl14;
        private DevExpress.XtraEditors.LabelControl labelControl15;
        private DevExpress.XtraEditors.LookUpEdit edtMaterielGroup1;
        private DevExpress.XtraEditors.LookUpEdit edtMaterielGroup2;
        private DevExpress.XtraEditors.LookUpEdit edtMaterielGroup3;
        private DevExpress.XtraEditors.TextEdit txtColorID;

        public StyleBOMDetailForm()
        {
            InitializeComponent();
        }

        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            //this.txtSampleOrderID.DataBindings.Add("Text", this.BindingSource, "SampleOrderID");
            //this.txtStyleID.DataBindings.Add("Text", this.BindingSource, "Style");
            //this.txtMaterielGroup3.DataBindings.Add("Text", this.BindingSource, "MaterielGroup3");
            //this.txtMaterielGroup2.DataBindings.Add("Text", this.BindingSource, "MaterielGroup2");
            //this.txtMaterielGroup1.DataBindings.Add("Text", this.BindingSource, "MaterielGroup1");
            //this.txtColorID.DataBindings.Add("Text", this.BindingSource, "ColorID");

            List<MaterielClass> list = MaterielClass.GetAllMaterielClasss(OODBController.DB);
            List<MaterielClass> saveList = new List<MaterielClass>();
            List<string> bigClassList = new List<string>();
            foreach (MaterielClass obj in list)
            {
                if (!bigClassList.Contains(obj.MaterielBigClass))
                {
                    bigClassList.Add(obj.MaterielBigClass);
                    saveList.Add(obj);
                }
            }
            this.edtMaterielGroup1.Properties.DataSource = saveList;
            edtMaterielGroup1.Properties.DisplayMember = "MaterielBigClass";
            edtMaterielGroup1.Properties.ValueMember = "MaterielBigClass";

            StyleBOM styleBOM = (StyleBOM)this.BindingSource.Current;

            //edtMaterielGroup2.Properties.DataSource = OODBController.DB.GetAll(new MaterielClassQuery(styleBOM.MaterielGroup1));
            //edtMaterielGroup2.Properties.DisplayMember = "MaterielSmallClass";
            //edtMaterielGroup2.Properties.ValueMember = "MaterielSmallClass";

            //edtMaterielGroup3.Properties.DataSource = OODBController.DB.GetAll(new MaterielClassQuery(styleBOM.MaterielGroup1, styleBOM.MaterielGroup2));
            //edtMaterielGroup3.Properties.DisplayMember = "MaterielUsePlace";
            //edtMaterielGroup3.Properties.ValueMember = "MaterielUsePlace";

            FilterMaterielGroup2(styleBOM.MaterielGroup1);
            FilterMaterialGroup3(styleBOM.MaterielGroup1, styleBOM.MaterielGroup2);
        }

        private void InitializeComponent()
        {
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtColorID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtStyleID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtSampleOrderID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit6 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit7 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.txtAMaterielName = new DevExpress.XtraEditors.TextEdit();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl10 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit9 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit11 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit12 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl12 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit13 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.txtAMaterielName1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl14 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl15 = new DevExpress.XtraEditors.LabelControl();
            this.edtMaterielGroup1 = new DevExpress.XtraEditors.LookUpEdit();
            this.edtMaterielGroup2 = new DevExpress.XtraEditors.LookUpEdit();
            this.edtMaterielGroup3 = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyleID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleOrderID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit6.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit7.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAMaterielName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit9.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit11.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit12.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit13.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAMaterielName1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaterielGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaterielGroup2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaterielGroup3.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(73, 56);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(28, 13);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "色號:";
            // 
            // txtColorID
            // 
            this.txtColorID.Location = new System.Drawing.Point(107, 53);
            this.txtColorID.Name = "txtColorID";
            this.txtColorID.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtColorID.Size = new System.Drawing.Size(88, 20);
            this.txtColorID.TabIndex = 1;
            this.txtColorID.Tag = "ColorID";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(342, 13);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(28, 13);
            this.labelControl2.TabIndex = 11;
            this.labelControl2.Text = "款號:";
            // 
            // txtStyleID
            // 
            this.txtStyleID.Location = new System.Drawing.Point(388, 10);
            this.txtStyleID.Name = "txtStyleID";
            this.txtStyleID.Properties.ReadOnly = true;
            this.txtStyleID.Size = new System.Drawing.Size(88, 20);
            this.txtStyleID.TabIndex = 10;
            this.txtStyleID.Tag = "Style.StyleID";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(191, 13);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(40, 13);
            this.labelControl3.TabIndex = 9;
            this.labelControl3.Text = "辦單號:";
            // 
            // txtSampleOrderID
            // 
            this.txtSampleOrderID.Location = new System.Drawing.Point(237, 10);
            this.txtSampleOrderID.Name = "txtSampleOrderID";
            this.txtSampleOrderID.Properties.ReadOnly = true;
            this.txtSampleOrderID.Size = new System.Drawing.Size(88, 20);
            this.txtSampleOrderID.TabIndex = 8;
            this.txtSampleOrderID.Tag = "SampleOrder.SampleOrderID";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(49, 109);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(52, 13);
            this.labelControl4.TabIndex = 12;
            this.labelControl4.Text = "物料小類:";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(49, 83);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(52, 13);
            this.labelControl5.TabIndex = 14;
            this.labelControl5.Text = "物料大類:";
            // 
            // textEdit6
            // 
            this.textEdit6.Location = new System.Drawing.Point(499, 105);
            this.textEdit6.Name = "textEdit6";
            this.textEdit6.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit6.Size = new System.Drawing.Size(88, 20);
            this.textEdit6.TabIndex = 17;
            this.textEdit6.Tag = "MaterielName13";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(437, 108);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(52, 13);
            this.labelControl6.TabIndex = 16;
            this.labelControl6.Text = "大碼布封:";
            // 
            // textEdit7
            // 
            this.textEdit7.Location = new System.Drawing.Point(303, 78);
            this.textEdit7.Name = "textEdit7";
            this.textEdit7.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit7.Size = new System.Drawing.Size(88, 20);
            this.textEdit7.TabIndex = 19;
            this.textEdit7.Tag = "MaterielName2";
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(245, 81);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(52, 13);
            this.labelControl7.TabIndex = 18;
            this.labelControl7.Text = "普碼用料:";
            // 
            // txtAMaterielName
            // 
            this.txtAMaterielName.Location = new System.Drawing.Point(303, 51);
            this.txtAMaterielName.Name = "txtAMaterielName";
            this.txtAMaterielName.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtAMaterielName.Size = new System.Drawing.Size(88, 20);
            this.txtAMaterielName.TabIndex = 21;
            this.txtAMaterielName.Tag = "MaterielName1";
            // 
            // labelControl8
            // 
            this.labelControl8.Location = new System.Drawing.Point(245, 54);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(52, 13);
            this.labelControl8.TabIndex = 20;
            this.labelControl8.Text = "均碼用料:";
            // 
            // labelControl10
            // 
            this.labelControl10.Location = new System.Drawing.Point(49, 139);
            this.labelControl10.Name = "labelControl10";
            this.labelControl10.Size = new System.Drawing.Size(52, 13);
            this.labelControl10.TabIndex = 24;
            this.labelControl10.Text = "使用位置:";
            // 
            // textEdit9
            // 
            this.textEdit9.Location = new System.Drawing.Point(499, 78);
            this.textEdit9.Name = "textEdit9";
            this.textEdit9.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit9.Size = new System.Drawing.Size(88, 20);
            this.textEdit9.TabIndex = 27;
            this.textEdit9.Tag = "MaterielName12";
            // 
            // labelControl9
            // 
            this.labelControl9.Location = new System.Drawing.Point(437, 81);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(52, 13);
            this.labelControl9.TabIndex = 26;
            this.labelControl9.Text = "普碼布封:";
            // 
            // textEdit11
            // 
            this.textEdit11.Location = new System.Drawing.Point(303, 105);
            this.textEdit11.Name = "textEdit11";
            this.textEdit11.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit11.Size = new System.Drawing.Size(88, 20);
            this.textEdit11.TabIndex = 29;
            this.textEdit11.Tag = "MaterielName3";
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(245, 108);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(52, 13);
            this.labelControl11.TabIndex = 28;
            this.labelControl11.Text = "大碼用料:";
            // 
            // textEdit12
            // 
            this.textEdit12.Location = new System.Drawing.Point(303, 132);
            this.textEdit12.Name = "textEdit12";
            this.textEdit12.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit12.Size = new System.Drawing.Size(88, 20);
            this.textEdit12.TabIndex = 33;
            this.textEdit12.Tag = "MaterielName4";
            // 
            // labelControl12
            // 
            this.labelControl12.Location = new System.Drawing.Point(245, 135);
            this.labelControl12.Name = "labelControl12";
            this.labelControl12.Size = new System.Drawing.Size(52, 13);
            this.labelControl12.TabIndex = 32;
            this.labelControl12.Text = "超碼用料:";
            // 
            // textEdit13
            // 
            this.textEdit13.Location = new System.Drawing.Point(499, 132);
            this.textEdit13.Name = "textEdit13";
            this.textEdit13.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit13.Size = new System.Drawing.Size(88, 20);
            this.textEdit13.TabIndex = 31;
            this.textEdit13.Tag = "MaterielName14";
            // 
            // labelControl13
            // 
            this.labelControl13.Location = new System.Drawing.Point(437, 135);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(52, 13);
            this.labelControl13.TabIndex = 30;
            this.labelControl13.Text = "超碼布封:";
            // 
            // txtAMaterielName1
            // 
            this.txtAMaterielName1.Location = new System.Drawing.Point(499, 51);
            this.txtAMaterielName1.Name = "txtAMaterielName1";
            this.txtAMaterielName1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtAMaterielName1.Size = new System.Drawing.Size(88, 20);
            this.txtAMaterielName1.TabIndex = 35;
            this.txtAMaterielName1.Tag = "MaterielName11";
            // 
            // labelControl14
            // 
            this.labelControl14.Location = new System.Drawing.Point(437, 54);
            this.labelControl14.Name = "labelControl14";
            this.labelControl14.Size = new System.Drawing.Size(52, 13);
            this.labelControl14.TabIndex = 34;
            this.labelControl14.Text = "均碼布封:";
            // 
            // labelControl15
            // 
            this.labelControl15.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl15.Appearance.Options.UseFont = true;
            this.labelControl15.Location = new System.Drawing.Point(16, 13);
            this.labelControl15.Name = "labelControl15";
            this.labelControl15.Size = new System.Drawing.Size(145, 14);
            this.labelControl15.TabIndex = 37;
            this.labelControl15.Text = "Style--新樣板物料明細表";
            // 
            // edtMaterielGroup1
            // 
            this.edtMaterielGroup1.Location = new System.Drawing.Point(107, 80);
            this.edtMaterielGroup1.Name = "edtMaterielGroup1";
            this.edtMaterielGroup1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtMaterielGroup1.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterielBigClass", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtMaterielGroup1.Properties.NullText = "";
            this.edtMaterielGroup1.Properties.PopupWidth = 100;
            this.edtMaterielGroup1.Properties.ShowHeader = false;
            this.edtMaterielGroup1.Size = new System.Drawing.Size(88, 20);
            this.edtMaterielGroup1.TabIndex = 39;
            this.edtMaterielGroup1.Tag = "MaterielGroup1";
            this.edtMaterielGroup1.EditValueChanged += new System.EventHandler(this.edtMaterielGroup1_EditValueChanged);
            // 
            // edtMaterielGroup2
            // 
            this.edtMaterielGroup2.Location = new System.Drawing.Point(107, 106);
            this.edtMaterielGroup2.Name = "edtMaterielGroup2";
            this.edtMaterielGroup2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtMaterielGroup2.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterielSmallClass", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtMaterielGroup2.Properties.NullText = "";
            this.edtMaterielGroup2.Properties.PopupWidth = 100;
            this.edtMaterielGroup2.Properties.ShowHeader = false;
            this.edtMaterielGroup2.Size = new System.Drawing.Size(88, 20);
            this.edtMaterielGroup2.TabIndex = 40;
            this.edtMaterielGroup2.Tag = "MaterielGroup2";
            this.edtMaterielGroup2.EditValueChanged += new System.EventHandler(this.edtMaterielGroup2_EditValueChanged);
            // 
            // edtMaterielGroup3
            // 
            this.edtMaterielGroup3.Location = new System.Drawing.Point(107, 132);
            this.edtMaterielGroup3.Name = "edtMaterielGroup3";
            this.edtMaterielGroup3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtMaterielGroup3.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterielUsePlace", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtMaterielGroup3.Properties.NullText = "";
            this.edtMaterielGroup3.Properties.PopupWidth = 100;
            this.edtMaterielGroup3.Properties.ShowHeader = false;
            this.edtMaterielGroup3.Size = new System.Drawing.Size(88, 20);
            this.edtMaterielGroup3.TabIndex = 41;
            this.edtMaterielGroup3.Tag = "MaterielGroup3";
            // 
            // StyleBOMDetailForm
            // 
            this.Controls.Add(this.edtMaterielGroup3);
            this.Controls.Add(this.edtMaterielGroup2);
            this.Controls.Add(this.edtMaterielGroup1);
            this.Controls.Add(this.labelControl15);
            this.Controls.Add(this.txtAMaterielName1);
            this.Controls.Add(this.labelControl14);
            this.Controls.Add(this.textEdit12);
            this.Controls.Add(this.labelControl12);
            this.Controls.Add(this.textEdit13);
            this.Controls.Add(this.labelControl13);
            this.Controls.Add(this.textEdit11);
            this.Controls.Add(this.labelControl11);
            this.Controls.Add(this.textEdit9);
            this.Controls.Add(this.labelControl9);
            this.Controls.Add(this.labelControl10);
            this.Controls.Add(this.txtAMaterielName);
            this.Controls.Add(this.labelControl8);
            this.Controls.Add(this.textEdit7);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.textEdit6);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtStyleID);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.txtSampleOrderID);
            this.Controls.Add(this.txtColorID);
            this.Controls.Add(this.labelControl1);
            this.Name = "StyleBOMDetailForm";
            this.Size = new System.Drawing.Size(666, 442);
            ((System.ComponentModel.ISupportInitialize)(this.txtColorID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyleID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleOrderID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit6.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit7.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAMaterielName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit9.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit11.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit12.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit13.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAMaterielName1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaterielGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaterielGroup2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaterielGroup3.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private bool CheckData()
        {
            if (string.IsNullOrEmpty(this.txtColorID.Text))
            {
                MessageBox.Show("請錄入色號");
                return false;
            }
            return true;
        }

        protected override void AcceptCurrent()
        {
            if (!(CheckData()))
            {
                return;
            }

            base.AcceptCurrent();
        }

        private void edtMaterielGroup1_EditValueChanged(object sender, EventArgs e)
        {
            if (this.IsEditting || this.IsNew)
            {
                edtMaterielGroup2.EditValue = "";
                FilterMaterielGroup2(this.edtMaterielGroup1.Text);
                //List<MaterielClass> list = OODBController.DB.GetAll(new MaterielClassQuery(this.edtMaterielGroup1.Text));
                //List<MaterielClass> saveList = new List<MaterielClass>();
                //foreach (MaterielClass mc in list)
                //{
                //    if (saveList.Find(delegate(MaterielClass c1) { return c1.MaterielSmallClass == mc.MaterielSmallClass; }) != null)
                //        continue;
                //    else saveList.Add(mc);
                //}
                //edtMaterielGroup2.Properties.DataSource = saveList;
                //edtMaterielGroup2.Properties.DisplayMember = "MaterielSmallClass";
                //edtMaterielGroup2.Properties.ValueMember = "MaterielSmallClass";
                edtMaterielGroup3.EditValue = "";
            }
        }
        private void FilterMaterielGroup2(string group1)
        {
            List<MaterielClass> list = OODBController.DB.GetAll(new MaterielClassQuery(group1));
            List<MaterielClass> saveList = new List<MaterielClass>();
            foreach (MaterielClass mc in list)
            {
                if (saveList.Find(delegate(MaterielClass c1) { return c1.MaterielSmallClass == mc.MaterielSmallClass; }) != null)
                    continue;
                else saveList.Add(mc);
            }
            edtMaterielGroup2.Properties.DataSource = saveList;
            edtMaterielGroup2.Properties.DisplayMember = "MaterielSmallClass";
            edtMaterielGroup2.Properties.ValueMember = "MaterielSmallClass";
        }
        private void edtMaterielGroup2_EditValueChanged(object sender, EventArgs e)
        {
            if (this.IsEditting || this.IsNew)
            {
                edtMaterielGroup3.EditValue = "";
                FilterMaterialGroup3(this.edtMaterielGroup1.Text, this.edtMaterielGroup2.Text);
                //List<MaterielClass> list = OODBController.DB.GetAll(new MaterielClassQuery(this.edtMaterielGroup1.Text, this.edtMaterielGroup2.Text));
                //List<MaterielClass> saveList = new List<MaterielClass>();
                //foreach (MaterielClass mc in list)
                //{
                //    if (saveList.Find(delegate(MaterielClass c1) { return c1.MaterielUsePlace == mc.MaterielUsePlace; }) != null)
                //        continue;
                //    else saveList.Add(mc);
                //}
                //edtMaterielGroup3.Properties.DataSource = saveList;
                //edtMaterielGroup3.Properties.DisplayMember = "MaterielUsePlace";
                //edtMaterielGroup3.Properties.ValueMember = "MaterielUsePlace";
            }
        }
        private void FilterMaterialGroup3(string group1,string group2)
        {
            List<MaterielClass> list = OODBController.DB.GetAll(new MaterielClassQuery(group1, group2));
            List<MaterielClass> saveList = new List<MaterielClass>();
            foreach (MaterielClass mc in list)
            {
                if (saveList.Find(delegate(MaterielClass c1) { return c1.MaterielUsePlace == mc.MaterielUsePlace; }) != null)
                    continue;
                else saveList.Add(mc);
            }
            edtMaterielGroup3.Properties.DataSource = saveList;
            edtMaterielGroup3.Properties.DisplayMember = "MaterielUsePlace";
            edtMaterielGroup3.Properties.ValueMember = "MaterielUsePlace";
        }

    }
}
