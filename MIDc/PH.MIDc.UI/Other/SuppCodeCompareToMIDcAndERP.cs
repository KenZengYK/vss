using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.MIDc.UI
{
    public partial class SuppCodeCompareToMIDcAndERP : Form
    {
        public SuppCodeCompareToMIDcAndERP()
        {
            InitializeComponent();
        }

        private void sBtn_Find_Click(object sender, EventArgs e)
        {
            string MIDcSuppCode="";
            if (this.textEditMIDcSuppCode.EditValue != null)
            {
                MIDcSuppCode = this.textEditMIDcSuppCode.EditValue.ToString().Trim();
            }
            string ERPSuppCode = "";
            if (this.textEditERPSuppCode.EditValue != null)
            {
                ERPSuppCode = this.textEditERPSuppCode.EditValue.ToString().Trim();
            }
            //MIDc's Supplier Code 和ERP's Supplier Code必须输入一个
            if (MIDcSuppCode == "" && ERPSuppCode == "")
            {
                MessageBox.Show("必须输入需要查询的MIDc's Supplier Code 或ERP's Supplier Code。");
                return;
            }

            PH.BasicInfo.BO.SupplierProfile currSProfile = null;
            if (MIDcSuppCode != "")
            {
                this.textEditERPSuppCode.EditValue = "";
                currSProfile = GetSpecialSupplier(MIDcSuppCode, true);
                if (currSProfile != null)
                {
                    this.textEditERPSuppCode.EditValue = currSProfile.ERPSupplier;
                } 
            }
            else if (ERPSuppCode != "")
            {
                this.textEditMIDcSuppCode.EditValue = "";
                currSProfile = GetSpecialSupplier(ERPSuppCode, false);
                if (currSProfile != null)
                {
                    this.textEditMIDcSuppCode.EditValue = currSProfile.Supplier;
                }
            }

            if (currSProfile == null)
            {
                MessageBox.Show("没有找到对应的资料，请确认输入是否正确！");
            }


        }

        private PH.BasicInfo.BO.SupplierProfile GetSpecialSupplier(string SupplierCode,bool IsMIDcSuppCode)
        {
            PH.BasicInfo.BO.BasicInfoDataContext curdatacontext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            PH.BasicInfo.BO.SupplierProfile currSProfile;
            if (IsMIDcSuppCode)
            {
                currSProfile = (from aa in curdatacontext.SupplierProfiles
                                where aa.Supplier == SupplierCode
                                select aa).FirstOrDefault<SupplierProfile>();
            }
            else
            {
                currSProfile = (from aa in curdatacontext.SupplierProfiles
                                where aa.ERPSupplier == SupplierCode
                                select aa).FirstOrDefault<SupplierProfile>();
            }
            curdatacontext.CloseConnection();
            curdatacontext.Dispose();
            return currSProfile;
        }

        private void sBtn_Clear_Click(object sender, EventArgs e)
        {
            this.textEditMIDcSuppCode.EditValue = "";
            this.textEditERPSuppCode.EditValue = "";
        }
    }
}
