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
    public partial class HSCodeSelectForm : Form
    {
        string HSCodeFlag;
        string HSCode_China;

        public HSCodeSelectForm()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 構造函數
        /// </summary>
        /// <param name="AHSCodeFlag">BD: 選擇孟拉加HSCode, China: 選擇中國HSCode</param>
        /// <param name="AHSCode_China">當參數AHSCodeFlag為：China時，傳入"", 當為："BD"時，傳入選擇的中國HSCode，用于過濾選擇記錄</param>
        public HSCodeSelectForm(string AHSCodeFlag, string AHSCode_China)
            : this()
        {
            this.HSCodeFlag = AHSCodeFlag;
            this.HSCode_China = AHSCode_China;
        }

        public PH.MIDc.BO.CustomMaterial CurrCustMatrlBO
        {
            get
            {
                return this.bindingSource_HSCode.Current as PH.MIDc.BO.CustomMaterial;
            }
        }

        public string CurrMIDCHSCode
        {
            get
            {
                return _currMIDCHSCode;
            }
            set
            {
                this._currMIDCHSCode = value;
            }
        }
        public string _currMIDCHSCode;


        private void HSCodeSelectForm_Load(object sender, EventArgs e)
        {
            PH.MIDc.BO.MIDcDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var lists = dcon.CustomMaterials.Where(p => p.STATUS != "Drop" && (p.HSCodeSeq ?? 0) != 0);
            if (!string.IsNullOrEmpty(this.HSCodeFlag))
            {
                lists = lists.Where(p => p.HSCodeFlag == this.HSCodeFlag);

                //需要通過China HSCode來過濾可選擇的BD HSCode, 由David加入 2019-01-23
                if (!string.IsNullOrEmpty(this.HSCode_China))
                {
                    string[] BDLists = dcon.HSCodeLists.Where(p => p.HSCode == this.HSCode_China).Select(p => p.HSCodeBD).ToArray<string>();
                    lists = lists.Where(p => BDLists.Contains(p.MidcHSCode));
                }
            }
            this.bindingSource_HSCode.DataSource = lists.OrderBy(p => p.HSCodeSeq);

            //this.bindingSource_HSCode.DataSource = dcon.CustomMaterials.Where(p => p.HSCodeFlag == HSCodeFlag && p.STATUS != "Drop" && (p.HSCodeSeq ?? 0) != 0).OrderBy(p => p.HSCodeSeq);

        }

        private void gridControl_HSCode_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.CurrMIDCHSCode))
            {
                for (int i = 0; i < this.gridView_HSCode.RowCount; i++)
                {
                    PH.MIDc.BO.CustomMaterial bo = this.gridView_HSCode.GetRow(i) as PH.MIDc.BO.CustomMaterial;
                    if (bo.MidcHSCode == this.CurrMIDCHSCode)
                    {
                        this.gridView_HSCode.FocusedRowHandle = this.gridView_HSCode.GetRowHandle(i);
                        return;
                    }
                }
            }

        }


        private void sBtn_Cancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void sBtn_OK_Click(object sender, EventArgs e)
        {
            if (this.gridView_HSCode.FocusedRowHandle < 0)
            {
                MessageBox.Show("請選擇[HSCode]行！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            this.DialogResult = DialogResult.OK;
        }

        private void gridView_HSCode_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (this.CurrCustMatrlBO == null)
            {
                return;
            }

            this.lblSeq.Text = "Seq: " + this.CurrCustMatrlBO.HSCodeSeq;
            this.lblHSCode.Text = "H.S Code: " + this.CurrCustMatrlBO.CustomNo;

        }




        //private void bindingSource_HSCode_CurrentChanged(object sender, EventArgs e)
        //{
        //    this.CurrCustMatrlBO = this.bindingSource_HSCode.Current as PH.MIDc.BO.CustomMaterial;
        //}
    }


}
