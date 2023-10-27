using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class DetailVersionControlCtrl : UserControl
    {

        /// <summary>
        /// Xsj:需要操作的Detail數據源
        /// </summary>
        public PH.MIDc.BO.Detail CurrDetail
        {
            get;
            set;
        }

        /// <summary>
        /// Xsj:當前Detail的CurrDetailChangeConfirm副本
        /// </summary>
        public PH.MIDc.BO.DetailChangeConfirm CurrDetailChangeConfirm
        {
            get;
            set;
        }

        //Xsj:當前Detail的CurrDetailChangeConfirm
        private PH.MIDc.BO.DetailChangeConfirm _outDetailDetailChangeConfirm;

        /// <summary>
        /// Xsj:當前Detail是否存在已長級的版本記錄
        /// </summary>
        private bool AliveVersionUpdateRecord
        {
            get
            {
                bool result = true;
                PH.MIDc.BO.DetailChangeConfirm detailChangeConfirm = this.CurrDetail.DetailChangeConfirms.Where(p => p.Version == this.CurrDetailChangeConfirm.Version).FirstOrDefault();
                if (detailChangeConfirm == null)
                {
                    result = false;
                }

                return result;
            }
        }


        public DetailVersionControlCtrl()
        {
            InitializeComponent();
            InitForm();
        }

        /// <summary>
        /// Xsj:初始化窗體 
        /// </summary>
        private void InitForm()
        {
            DevExpress.XtraEditors.Controls.CheckedListBoxItem[] versionRiseResons = new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
                new DevExpress.XtraEditors.Controls.CheckedListBoxItem(new VersionRiseReason{ RiseReasionCode =1, RiseReasionMsg  = "1. Mat'l price changed."}),
                new DevExpress.XtraEditors.Controls.CheckedListBoxItem(new VersionRiseReason{ RiseReasionCode =2, RiseReasionMsg  = "2. Mat'l width changed."},false) ,
                new DevExpress.XtraEditors.Controls.CheckedListBoxItem(new VersionRiseReason{ RiseReasionCode =3, RiseReasionMsg  = "3. Mat'l MCQ or MOQ changed."}),
                new DevExpress.XtraEditors.Controls.CheckedListBoxItem(new VersionRiseReason{ RiseReasionCode =4, RiseReasionMsg  = "4. Other changed."})
 
            };
            this.checkedComboBoxEdit_VersionRiseReasion.Properties.Items.AddRange(versionRiseResons);
        }


        private bool isLoading = true;
        private void DetailVersionControlCtrl_Load(object sender, EventArgs e)
        {
            if (DesignMode) return;
            InitData();
            DataBind();
            isLoading = false;
        }

        /// <summary>
        /// Xsj20120228:數據綁定
        /// </summary>
        private void DataBind()
        {
            this.spinEdit_Version.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.CurrDetailChangeConfirm, "Version", true));
        }


        /// <summary>
        /// Xsj:初始化數據
        /// </summary>
        private void InitData()
        {

            this._outDetailDetailChangeConfirm = this.CurrDetail.DetailChangeConfirms.Where(p => p.Version == p.Detail.Version).FirstOrDefault();

            if (this._outDetailDetailChangeConfirm == null)
            {
                this.CurrDetailChangeConfirm.Version = 0;
            }
            else
            {
                this.CurrDetailChangeConfirm.Version = this._outDetailDetailChangeConfirm.Version;
                this.CurrDetailChangeConfirm.ChangeType = this._outDetailDetailChangeConfirm.ChangeType;
                this.CurrDetailChangeConfirm.Status = this._outDetailDetailChangeConfirm.Status;
                this.CurrDetailChangeConfirm.ConfirmType = this._outDetailDetailChangeConfirm.ConfirmType;
            }


            string riseVersionReasions = this.CurrDetailChangeConfirm.ChangeType;
            string choseItemMsg = "";
            if (riseVersionReasions != null && riseVersionReasions.Trim() != "")
            {
                string[] reasionCodes = riseVersionReasions.Split(',');
                foreach (string reasionCodeItem in reasionCodes)
                {

                    foreach (DevExpress.XtraEditors.Controls.CheckedListBoxItem item in this.checkedComboBoxEdit_VersionRiseReasion.Properties.Items)
                    {
                        VersionRiseReason vRR = item.Value as VersionRiseReason;
                        if (vRR.RiseReasionCode.ToString() == reasionCodeItem)
                        {
                            item.CheckState = CheckState.Checked;
                            choseItemMsg += vRR.RiseReasionMsg + ", ";
                        }
                    }
                }
                this.checkedComboBoxEdit_VersionRiseReasion.EditValue = choseItemMsg;
            }
        }


        /// <summary>
        /// Xsj:提升版本按鈕點擊
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sBtn_RiseUpVersion_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("你確定要升級當前記錄的版本嗎？", "系統提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                RiseVersion();
            }
        }

        /// <summary>
        /// Xsj:更新版本號
        /// </summary>
        private void RiseVersion()
        {
            //bool isReady = false;
            //int reasionType = 0;
            //Xsj:檢驗當前版本是否已被Approval
            //if (this.CurrDetailChangeConfirm.Version == 0)
            //{
            //    isReady = true;
            //}
            //if (this.CurrDetailChangeConfirm.Status == MIDcUpdateConfirmStatus.Submit.ToString())
            //{
            //    if (this.CurrDetailChangeConfirm.ConfirmType != null)
            //    {
            //        string changeTypeStr = this.CurrDetailChangeConfirm.ChangeType;
            //        string[] changeTypeArr = changeTypeStr.Split(',');
            //        foreach (string item in changeTypeArr)
            //        {
            //            if (this.CurrDetailChangeConfirm.ConfirmType.IndexOf(item) == -1)
            //            {
            //                isReady = false;
            //                reasionType = Convert.ToInt32(item);
            //                break;
            //            }
            //            isReady = true;
            //        }
            //    }

            //}
            //if (!isReady)
            //{
            //    string ressionMsg = "";
            //    switch (reasionType)
            //    {

            //        case 0:
            //            ressionMsg = "當前版本未被審核";
            //            break;
            //        case 1:
            //            ressionMsg = "當前版本長級原因[Mat'l price changed.]未被審核";
            //            break;
            //        case 2:
            //            ressionMsg = "當前版本長級原因[Mat'l width changed.]未被審核";
            //            break;
            //        case 3:
            //            ressionMsg = "當前版本長級原因[Mat'l MCQ or MOQ changed.]未被審核";
            //            break;
            //        case 4:
            //            ressionMsg = "當前版本長級原因[Other changed.]未被審核";
            //            break;
            //    }
            //    MessageBox.Show(ressionMsg + "不能長級新版本!", "系統提示");
            //    return;
            //}

            //Xsj20120302:為了邏輯的合理性，和操作的簡便性，注釋掉上面的邏輯，統一在一個界面顯示不能原因的審核信息
            if (this.CurrDetailChangeConfirm.Version != 0 && this.CurrDetailChangeConfirm.Status != MIDcUpdateConfirmStatus.Approval.ToString())
            { 
                MessageBox.Show("當前版本未被審核,不能升級新的版本!", "禁止升級版本提示");
                return;
            }
            
            this.CurrDetailChangeConfirm.Version += 1;
            this.CurrDetailChangeConfirm.ChangeType = null;
            this.CurrDetailChangeConfirm.ChangeDate = null;
            this.CurrDetailChangeConfirm.ConfirmType = null;
            this.CurrDetailChangeConfirm.ConfirmDate = null;
            this.CurrDetailChangeConfirm.Status = null;
            this.checkedComboBoxEdit_VersionRiseReasion.EditValue = "";
        }

        /// <summary>
        /// Xsj:保存Detail的版本信息
        /// </summary>
        public bool SaveVersion()
        {
            //對比版本號，看有沒有新版本
            if ((this.CurrDetail.Version == null || this.CurrDetail.Version == 0) && this.CurrDetailChangeConfirm.Version == 0)
            {
                //沒有發現新版本
                return true;
            }

            string changeType = "";
            foreach (DevExpress.XtraEditors.Controls.CheckedListBoxItem item in this.checkedComboBoxEdit_VersionRiseReasion.Properties.Items)
            {
                if (item.CheckState != CheckState.Checked) continue;

                VersionRiseReason vRR = item.Value as VersionRiseReason;
                changeType += vRR.RiseReasionCode + ",";
            }
            if (changeType != "")
            {
                changeType = changeType.Substring(0, changeType.Length - 1);
            }
            else
            {
                MessageBox.Show("請選擇更新版本的原因!", "系統提示");
                return false;
            }

            this.CurrDetailChangeConfirm.ChangeType = changeType;
            //this.CurrDetailChangeConfirm.SuppRef = this.CurrDetail.SuppRef;
            this.CurrDetailChangeConfirm.ChangeUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
            this.CurrDetailChangeConfirm.ChangeDate = DateTime.Now;
            if (!this.AliveVersionUpdateRecord)
            {
                this.CurrDetailChangeConfirm.Status = MIDcUpdateConfirmStatus.Prepare.ToString();
                this.CurrDetail.DetailChangeConfirms.Add(this.CurrDetailChangeConfirm);
            }
            else
            {
                if (this._outDetailDetailChangeConfirm != null)
                {
                    this._outDetailDetailChangeConfirm.ChangeType = this.CurrDetailChangeConfirm.ChangeType;
                }
            }
            this.CurrDetail.Version = this.CurrDetailChangeConfirm.Version;
            return true;
        }

        /// <summary>
        /// Xsj:更改長級版本號的原因
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param> 
        private void checkedComboBoxEdit_VersionRiseReasion_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (DesignMode) return;
            if (e.OldValue != null && e.NewValue.ToString().Replace(",", "").Replace(" ", "") != e.OldValue.ToString().Replace(",", "").Replace(" ", ""))
            {
                if (!AllowChangeRiseVersionReasion())
                {
                    e.Cancel = true;
                }
            }
        }
        /// <summary>
        /// Xsj:更改更新版本號的原因
        /// </summary>
        private bool AllowChangeRiseVersionReasion()
        {
            bool isAllow = true;
            if (this.AliveVersionUpdateRecord)
            {
                if (this.CurrDetailChangeConfirm.ConfirmType != null && !isLoading)
                {
                    MessageBox.Show("當前版本號已被Approval,不能更改其更新原因。");
                    isAllow = false;
                }
            }

            return isAllow;
        }
    }

}
