using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.MIDc.BO;
using PH.Platform.Misc.BO;
using PH.Platform.BO;



namespace PH.MIDc.UI
{
    public partial class CustomMaterialElementDetail : DetailForm
    {
        public CustomMaterialElementDetail()
        {
            InitializeComponent();
            BindElement();
        }


        //IList<Misc_DataDictionary> defect_Code = new List<Misc_DataDictionary>();
        BindingSource bs = new BindingSource();
        private void BindElement()
        {
            // FabricInspectionDataContext ctx_fbi = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var _elements = MiscHelper.MiscCtx.Misc_DataDictionaries.Where(p => p.DataType == "PH.MIDc.MaterialElement").OrderBy(p => p.SortID);

            //foreach (var r in defects)
            //{
            //    PHQCDefect_Disp obj = new PHQCDefect_Disp();
            //    obj.PHDefectCode = r.PHDefectCode;
            //    obj.DefectChineseName = r.DefectChineseName;
            //    defect_Code.Add(obj);
            //}
            bs.DataSource = _elements;

            this.elementNoLookUpEdit.Properties.Columns.Clear();

            this.elementNoLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("SortID", "排序號", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataCode", "編碼", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataNameCN", "名稱(CN)", 40, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

            this.elementNoLookUpEdit.Properties.AutoSearchColumnIndex = 0;
            this.elementNoLookUpEdit.Properties.DataSource = bs;
            this.elementNoLookUpEdit.Properties.ValueMember = "DataCode";
            this.elementNoLookUpEdit.Properties.DisplayMember = "DataCode";

            elementDescTextEdit.Properties.ReadOnly = true;

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            CustomMaterialDetailForm _parent = this.PrevForm as CustomMaterialDetailForm;

            CustomMaterial _cm = _parent.BindingSource.Current as CustomMaterial;
            CustomMaterialElement _cme = this.BindingSource.Current as CustomMaterialElement;
            if (IsNew)
            {
                customNoTextEdit.Text = _cm.CustomNo; hSCodeSeqTextEdit.Text = _cm.HSCodeSeq.GetValueOrDefault().ToString();
                _cme.CustomNo = _cm.CustomNo; _cme.HSCodeSeq = _cm.HSCodeSeq;
            }

            customNoTextEdit.Properties.ReadOnly = true;
            hSCodeSeqTextEdit.Properties.ReadOnly = true;
            elementDescTextEdit.Properties.ReadOnly = true;
        }

        protected override void SaveCurrent()
        {
            if (string.IsNullOrEmpty(elementDescTextEdit.Text))
            {
                MessageBox.Show("請選擇要素編碼!");
                return;
            }
            CustomMaterialElement _cme = this.BindingSource.Current as CustomMaterialElement;
            Misc_DataDictionary _dict = bs.Current as Misc_DataDictionary;
            //  _cme.ElementNo = _dict.DataCode;

            base.SaveCurrent();
        }

        private void elementNoLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            // Misc_DataDictionary _defect = bs.Current as Misc_DataDictionary;
            object obj = elementNoLookUpEdit.GetColumnValue("DataCode");
            CustomMaterialElement _cme = this.BindingSource.Current as CustomMaterialElement;
            if (obj != null)
            {
                elementDescTextEdit.Text = obj.ToString();
                _cme.ElementNo = obj.ToString();

            }
        }
    }
}
