using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class FirstPassRatioTargetDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        private string[] factories = new string[] { "SL", "RX", "GG" };

        public FirstPassRatioTargetDetailForm()
        {
            InitializeComponent();

            InitCtrl();
        }

        private void InitCtrl()
        {
            //Factory:
            foreach (string item in factories)
            {
                DevExpress.XtraEditors.Controls.ImageComboBoxItem cBoxItem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
                cBoxItem.Description = item;
                cBoxItem.Value = item;
                this.factoryImageComboBoxEdit.Properties.Items.Add(cBoxItem);
            }





        }

        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();
            PH.MobileQC.BO.QC_FirstPassRatioTarget bo = this.BindingSource.Current as PH.MobileQC.BO.QC_FirstPassRatioTarget;
            if (bo != null)
            {
                if (bo.Factory == null)
                {
                    MessageBox.Show("请选择Factory!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                else if ((bo.TargetValue ?? 0) == 0)
                {
                    MessageBox.Show("请选择TargetValue!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                else if (bo.EffectFromDate == null)
                {
                    MessageBox.Show("请选择EffectFromDate!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                else
                {
                    if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
                    {
                        //bool isAlive = false;
                        //foreach (PH.MobileQC.BO.QC_FirstPassRatioTarget item in this.BindingSource.List)
                        //{
                        //    if (item.Factory == bo.Factory && item.ID != bo.ID && item.EffectFromDate > bo.EffectFromDate)
                        //    {
                        //        isAlive = true;
                        //    }
                        //}
                        //if (isAlive)
                        //{
                        //    MessageBox.Show("择Factory[" + bo.Factory + "]已经存在["+bo.EffectFromDate+"],不能重复添加!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        //    return;
                        //}
                        bo.ID = Guid.NewGuid();
                        bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        bo.CreateDate = DateTime.Now;
                    }
                    else
                    {
                        bo.AlterUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        bo.AlterDate = DateTime.Now;
                    }
                }
            }
            base.SaveCurrent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.createUserTextEdit.Properties.ReadOnly = true; ;
            this.alterDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
        }

    }
}
