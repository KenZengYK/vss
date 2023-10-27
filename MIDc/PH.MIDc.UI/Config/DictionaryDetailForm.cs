using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;

namespace PH.MIDc.UI
{
    public partial class DictionaryDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        private Misc_DataDictionary curDictionaryData
        {
            get { return (this.BindingSource.Current as PH.Platform.Misc.BO.Misc_DataDictionary); }
        }

        public DictionaryDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataNameCNLabel.Visible = (curDictionaryData.DataType == "PH.MIDc.CompositionDefault" || curDictionaryData.DataType == "PH.MIDc.CompositionDefault_FG");
            this.DataNameENLabel.Visible = this.DataNameCNLabel.Visible;
            this.txtDataNameCN.Visible = this.DataNameCNLabel.Visible;
            this.txtDataNameEN.Visible = this.DataNameCNLabel.Visible;

            this.DataNameLabel.Text = this.txtDataNameEN.Visible ? "Name(TW):" : "Name:";
        }

        protected override void OnClickSaveAndReturn()
        {
            if (!CheckSaveData())
                return;
            base.OnClickSaveAndReturn();
        }

        protected override void SaveCurrent()
        {
            if (!CheckSaveData())
                return;
            base.SaveCurrent();
        }

        private bool CheckSaveData()
        {
            if (IsNew)
            {
                //zr
                //PH.Platform.Misc.BO.PHPlatformMiscDataContext context = this.DataContext as PH.Platform.Misc.BO.PHPlatformMiscDataContext;

                //int cout = (from aa in context.Misc_DataDictionaries 
                //            where aa.DataCode == curDictionaryData.DataCode
                //            && aa.DataType == curdictionaryData.DataType
                //            select aa).Count();
                //if (cout > 0)
                //{
                //    this.textEdit1.Focus();
                //    this.textEdit1.SelectAll();
                //    MessageBox.Show(string.Format("{0}已經存在, 請重新輸入!", curDictionaryData.DefCode), "提示");                   
                //    return false;
                //}
            }

            return true;

        }
    }
}
