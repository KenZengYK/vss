using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using DevExpress.XtraEditors.Controls;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class MaterialTypeDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public MaterialTypeDetailForm()
        {
            InitializeComponent();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
        }

        public override void DataBind()
        {
            InitData();
            base.DataBind();

            MaterialType mt = this.BindingSource.Current as MaterialType;
            //this.materialTypeSizeCupListForm1.EditorTypeName = typeof().FullName;
            this.materialTypeSizeCupListForm1.BindingSource.DataSource = mt.MaterialTypeSizeCups;
        }

        List<PH.Platform.Misc.BO.Misc_DataDictionary> suppSizeCupElement;
        private void InitData()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();

            this.lookUpEdit1.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries
                                                     where dictionaryData.DataType == "PH.MIDc.MaterialGroup"
                                                     select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Group", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //Xsj100817:初始化Dimension
            List<DimensionCls> dimensionList = new List<DimensionCls>();
            dimensionList.AddRange(new DimensionCls[]{
                new DimensionCls {keyCode = 2, description = "2D"},
                new DimensionCls {keyCode = 3,description = "3D"},
                new DimensionCls {keyCode = 4,description = "4D"}
            });
            this.dimensionLookUpEdit.Properties.DataSource = dimensionList;
            this.dimensionLookUpEdit.Properties.DisplayMember = "description";
            this.dimensionLookUpEdit.Properties.ValueMember = "keyCode";
            LookUpColumnInfoCollection col2 = this.dimensionLookUpEdit.Properties.Columns;
            col2.Add(new LookUpColumnInfo("keyCode", "keyCode", 0));
            col2.Add(new LookUpColumnInfo("description", "description", 0));
            //注冊Dimension與SuppSizeCupElement的互動
            this.dimensionLookUpEdit.EditValueChanged += new EventHandler(dimensionLookUpEdit_EditValueChanged);

            //Xsj100817:初始化YieldUsage
            IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> yieldCalculation = from yieldC in context.Misc_DataDictionaries
                                                                                    where yieldC.DataType == "PH.MIDc.YieldCalculation"
                                                                                    select yieldC;
            this.yieldUsageLookUpEdit.Properties.DataSource = yieldCalculation;
            this.yieldUsageLookUpEdit.Properties.DisplayMember = "Description";
            this.yieldUsageLookUpEdit.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection col3 = this.yieldUsageLookUpEdit.Properties.Columns;
            col3.Add(new LookUpColumnInfo("DataCode", "Data Code", 0));
            col3.Add(new LookUpColumnInfo("Description", "Description", 0));

            //Xsj100817:初始化SuppSizeCupElement
            suppSizeCupElement = (from sSizeCupElement in context.Misc_DataDictionaries
                                  where sSizeCupElement.DataType == "PH.MIDc.SuppSizeCupElement"
                                  select sSizeCupElement).ToList();
            this.suppSizeCupElementLookUpEdit.Properties.DataSource = suppSizeCupElement;
            this.suppSizeCupElementLookUpEdit.Properties.DisplayMember = "Description";
            this.suppSizeCupElementLookUpEdit.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection col4 = this.suppSizeCupElementLookUpEdit.Properties.Columns;
            col4.Add(new LookUpColumnInfo("Description", "Description", 80));
            col4.Add(new LookUpColumnInfo("DataCode", "Data Code", 30));

        }

        /// <summary>
        /// Xsj:Dimension與SuppSizeCupElement的互動
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void dimensionLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            this.suppSizeCupElementLookUpEdit.Properties.Columns.Clear();
            this.suppSizeCupElementLookUpEdit.EditValue = null;
            string dimensionVal = this.dimensionLookUpEdit.EditValue.ToString();
            List<PH.Platform.Misc.BO.Misc_DataDictionary> currSuppSizeCupElement = (from val in suppSizeCupElement
                                                                                    where val.DataCode.StartsWith(dimensionVal + "D")
                                                                                    select val).ToList();
            this.suppSizeCupElementLookUpEdit.Properties.DataSource = currSuppSizeCupElement;
            this.suppSizeCupElementLookUpEdit.Properties.DisplayMember = "Description";
            this.suppSizeCupElementLookUpEdit.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection col4 = this.suppSizeCupElementLookUpEdit.Properties.Columns;
            col4.Add(new LookUpColumnInfo("DataCode", "Data Code", 30));
            col4.Add(new LookUpColumnInfo("Description", "Description", 80));

            this.suppSizeCupElementLookUpEdit.Refresh();
        }

        /// <summary>
        /// Xsj:100816點擊編輯前要過濾當前已選的值
        /// </summary>
        protected override void OnClickEdit()
        {
            object oldsuppSizeCupElement = this.suppSizeCupElementLookUpEdit.EditValue;
            dimensionLookUpEdit_EditValueChanged(null, null);
            this.suppSizeCupElementLookUpEdit.EditValue = oldsuppSizeCupElement;
            base.OnClickEdit();
        }

        /// <summary>
        /// xsj100816:保存前進行必輸驗證.
        /// </summary>
        protected override void OnClickSave()
        {
            if (this.dimensionLookUpEdit.EditValue == null || this.dimensionLookUpEdit.EditValue.ToString().Trim() == "")
            {
                MessageBox.Show("Dimension 內容不能為空,請確認!", "系統提示", MessageBoxButtons.OK);
                this.dimensionLookUpEdit.Focus();
                return;
            }
            if (this.suppSizeCupElementLookUpEdit.EditValue == null || this.suppSizeCupElementLookUpEdit.EditValue.ToString().Trim() == "")
            {
                MessageBox.Show("SuppSizeCupElement 內容不能為空,請確認!!", "系統提示", MessageBoxButtons.OK);
                this.suppSizeCupElementLookUpEdit.Focus();
                return;
            }
            if (this.yieldUsageLookUpEdit.EditValue == null || this.yieldUsageLookUpEdit.EditValue.ToString().Trim() == "")
            {
                MessageBox.Show("YieldUsage 內容不能為空,請確認!", "系統提示", MessageBoxButtons.OK);
                this.yieldUsageLookUpEdit.Focus();
                return;
            }
            base.OnClickSave();
        }

        /// <summary>
        /// Xsj100817:Dimension實體類
        /// </summary>
        private class DimensionCls
        {
            public int keyCode
            {
                get;
                set;
            }
            public string description
            {
                get;
                set;
            }
        }


        private void btnUpdateDetailHSCode_Click(object sender, EventArgs e)
        {
            try
            {
                this.BindingSource.EndEdit();
                this.SaveData();
                MaterialType obj = this.BindingSource.Current as MaterialType;
                PH.MIDc.BO.SqlDataHelper.AutoUpdateDetailHSCode(obj);
                MessageBox.Show("Update Success.", "Tips", MessageBoxButtons.OK);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Update Fail, please try again.", "Tips");
            }
        }



        //--------------------------------Start------------------------------------
        private void hsCodeButtonEdit_Click(object sender, EventArgs e)
        {
            MaterialType mt = this.BindingSource.Current as MaterialType;
            HSCodeSelectForm hsCodeSelectFrm = new HSCodeSelectForm();
            if (mt == null)
            {
                return;
            }
            hsCodeSelectFrm.CurrMIDCHSCode = mt.HsCode;
            if (hsCodeSelectFrm.ShowDialog() == DialogResult.OK)
            {
                PH.MIDc.BO.CustomMaterial bo = hsCodeSelectFrm.CurrCustMatrlBO;
                if (bo != null)
                {
                    mt.HsCode = bo.MidcHSCode;
                }
            }
        }


        private void hsCodeRMBButtonEdit_Click(object sender, EventArgs e)
        {
            MaterialType mt = this.BindingSource.Current as MaterialType;
            HSCodeSelectForm hsCodeSelectFrm = new HSCodeSelectForm();
            if (mt == null)
            {
                return;
            }
            hsCodeSelectFrm.CurrMIDCHSCode = mt.HsCode;
            if (hsCodeSelectFrm.ShowDialog() == DialogResult.OK)
            {
                PH.MIDc.BO.CustomMaterial bo = hsCodeSelectFrm.CurrCustMatrlBO;
                if (bo != null)
                {
                    mt.HSCodeRMB = bo.MidcHSCode;
                }
            }
        }

        private void hsCodeXRMBButtonEdit_Click(object sender, EventArgs e)
        {
            MaterialType mt = this.BindingSource.Current as MaterialType;
            HSCodeSelectForm hsCodeSelectFrm = new HSCodeSelectForm();
            if (mt == null)
            {
                return;
            }
            hsCodeSelectFrm.CurrMIDCHSCode = mt.HsCode;
            if (hsCodeSelectFrm.ShowDialog() == DialogResult.OK)
            {
                PH.MIDc.BO.CustomMaterial bo = hsCodeSelectFrm.CurrCustMatrlBO;
                if (bo != null)
                {
                    mt.HSCodeXRMB = bo.MidcHSCode;
                }
            }
        }

        private void btnUpdateDetailHSCodeRMB_Click(object sender, EventArgs e)
        {
            try
            {
                this.BindingSource.EndEdit();
                this.SaveData();
                MaterialType obj = this.BindingSource.Current as MaterialType;
                PH.MIDc.BO.SqlDataHelper.AutoUpdateDetailHSCode(obj.MaterialType1, obj.HSCodeRMB, "RMB");
                MessageBox.Show("Update Success.", "Tips", MessageBoxButtons.OK);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Update Fail, please try again.", "Tips");
            }

        }

        private void btnUpdateDetailHSCodeXRMB_Click(object sender, EventArgs e)
        {
            try
            {
                this.BindingSource.EndEdit();
                this.SaveData();
                MaterialType obj = this.BindingSource.Current as MaterialType;
                PH.MIDc.BO.SqlDataHelper.AutoUpdateDetailHSCode(obj.MaterialType1, obj.HSCodeXRMB, "XRMB");
                MessageBox.Show("Update Success.", "Tips", MessageBoxButtons.OK);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Update Fail, please try again.", "Tips");
            }
        }


        //--------------------------------End------------------------------------
    }
}
