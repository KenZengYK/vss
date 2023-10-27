using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.MIDc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class SampleOrderPODetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public PH.MIDc.BO.SampleOrderPO _sampleOrderPOMaster
        {
            get { return this.BindingSource.Current as PH.MIDc.BO.SampleOrderPO; }
        }

        public SampleOrderPODetailForm()
        {
            InitializeComponent();
            Controller.DisableSpinEditScrollings(this);
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        private void SampleOrderPODetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            //ShipMode
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.ShipMode" select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "ShipMode", 0));
            coll.Add(new LookUpColumnInfo("MaterialType", "MaterialType", 0));
            coll.Add(new LookUpColumnInfo("SampleOrder", "SampleOrder", 0));


        }

        public override void DataBind()
        {
            this.SampleOrderPODetailListForm1.EditorTypeName = typeof(SampleOrderPODetailDetailForm).FullName;
            this.SampleOrderPODetailListForm1.BindingSource.DataSource = this._sampleOrderPOMaster.SampleOrderPODetails;

            base.DataBind();
        }

        protected override void OnClickEdit()
        {
            string poState = _sampleOrderPOMaster.POState == null ? "" : _sampleOrderPOMaster.POState.ToUpper();

            if (poState.ToUpper() == "COMPLETED" || poState.ToUpper() == "CANCELLED")
            {
                MessageBox.Show("The Record is " + _sampleOrderPOMaster.POState + " Can't be Edited");
                return;
            }

            base.OnClickEdit();
            this.SampleOrderPODetailListForm1.objListGridView.OptionsBehavior.Editable = true;
            this.SampleOrderPODetailListForm1.BandCombox();

        }

        protected override void OnClickSaveAndReturn()
        {
            if (string.IsNullOrEmpty((this.BindingSource.Current as PH.MIDc.BO.SampleOrderPO).SampleOrderPONo))
            {
                (this.BindingSource.Current as PH.MIDc.BO.SampleOrderPO).SampleOrderPONo = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderPONo");// PH.Sys.AutoNumber.Maker.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderPO");

            }

            HandleSKUKeyNullValue();
            base.OnClickSaveAndReturn();
        }

        protected override void OnClickCancel()
        {
            this.sampleOrderPOEdit.Leave += new System.EventHandler(this.sampleOrderPOEdit_Leave);
            base.OnClickCancel();
        }

        protected override void SaveCurrent()
        {
            if (string.IsNullOrEmpty((this.BindingSource.Current as PH.MIDc.BO.SampleOrderPO).SampleOrderPONo))
            {
                (this.BindingSource.Current as PH.MIDc.BO.SampleOrderPO).SampleOrderPONo = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderPONo");// PH.Sys.AutoNumber.Maker.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderPO");

            }

            HandleSKUKeyNullValue();
            base.SaveCurrent();
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();

            this.sampleOrderPOEdit.Properties.ReadOnly = true;
        }


        private void HandleSKUKeyNullValue()
        {
            if (this.SampleOrderPODetailListForm1.objListGridView.PostEditor())
            {
                this.SampleOrderPODetailListForm1.objListGridView.HideEditor();
                this.SampleOrderPODetailListForm1.objListGridView.UpdateCurrentRow();
            }
            foreach (SampleOrderPODetail item in this._sampleOrderPOMaster.SampleOrderPODetails)
            {
                if (item.Color == null) item.Color = "";
                if (item.Cup == null) item.Cup = "";
                if (item.Size == null) item.Size = "";
            }
        }

        private void supplierCodeEdit_EditValueChanged(object sender, EventArgs e)
        {
            this.SampleOrderPODetailListForm1.BandCombox();
        }



        BindingSource bs = new BindingSource();
        private void buttonEdit1_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();

            //BindingSource bs = new BindingSource();
            //Xsj1008147:改為以下一次性加載
            if (bs.DataSource == null)
            {
                bs.DataSource = from cc in context.Details
                                where cc.MIDStatus != MIDc_MIDStatus.TMID_WIP
                                select cc;
            }

            List<ColumnSetting> columnSettings = new List<ColumnSetting>();
            ColumnSetting colset = new ColumnSetting();
            colset.FieldName = "SampleOrderNo";
            colset.Caption = "SampleOrderNo";
            colset.Width = 80;
            colset.SortOrder = DevExpress.Data.ColumnSortOrder.Ascending;
            columnSettings.Add(colset);

            colset = new ColumnSetting();
            colset.FieldName = "MaterialType";
            colset.Caption = "MaterialType";
            colset.Width = 80;
            columnSettings.Add(colset);

            colset = new ColumnSetting();
            colset.FieldName = "MaterialCode";
            colset.Caption = "MaterialCode";
            colset.Width = 80;
            columnSettings.Add(colset);

            colset = new ColumnSetting();
            colset.FieldName = "SuppRef";
            colset.Caption = "SuppRef";
            colset.Width = 80;
            columnSettings.Add(colset);

            frmSelectData frm = new frmSelectData(bs, "Select SampleOrder TMIDc", columnSettings);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                if (frm.bingdingSource == null) return;

                Detail obj = bs.Current as Detail;

                if (obj == null)
                    return;

                this._sampleOrderPOMaster.CommodityCode = obj.SuppRef;
            }


        }

        private void sampleOrderPOEdit_Leave(object sender, EventArgs e)
        {
            if (IsNew)
            {
                try
                {
                    if (sampleOrderPOEdit.Text == "")
                        return;

                    PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                    int aa = (from c in context.SampleOrderPOs
                              where c.SampleOrderPONo == this.sampleOrderPOEdit.Text
                              select c).Count();

                    if (aa != 0)
                    {
                        MessageBox.Show("此SampleOrderPO 已存在! 將重新生成SampleOrderPO");
                        (this.BindingSource.Current as PH.MIDc.BO.SampleOrderPO).SampleOrderPONo = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderPO");// PH.Sys.AutoNumber.Maker.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderPO");

                    }

                }
                catch { }
            }
        }




    }
}
