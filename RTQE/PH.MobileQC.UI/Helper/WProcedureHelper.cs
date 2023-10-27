using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using DevExpress.XtraEditors.Repository;

//Xsj20141224: Add 
namespace PH.MobileQC.UI.Helper
{
    /// <summary>
    /// Xsj:工序處理類
    /// </summary>
    public class WProcedureHelper
    {

        public MobileQCDataContext Context
        {
            get;
            set;
        }


        /// <summary>
        /// Xsj20141224:初始化工序下拉選擇項
        /// </summary>
        /// <param name="Ctrl"></param>
        public void InitW_ProcedureCtrl(LookUpEdit Ctrl)
        {
            Ctrl.Properties.ValueMember = "GXDH";
            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            {
                Ctrl.Properties.Columns["EGXM"].Visible = true;
               // Ctrl.Properties.Columns["TGXM"].Visible = true;
                Ctrl.Properties.DisplayMember = "EGXM";
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            {
                Ctrl.Properties.Columns["GXM"].Visible = true;
              //  Ctrl.Properties.Columns["EGXM"].Visible = true;
                Ctrl.Properties.DisplayMember = "GXM";
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            {
                Ctrl.Properties.Columns["EGXM"].Visible = true;
                Ctrl.Properties.Columns["TGXM"].Visible = true;
                Ctrl.Properties.DisplayMember = "TGXM";
            }
        }



        /// <summary>
        /// Xsj20141224:初始化工序下拉選擇項
        /// </summary>
        /// <param name="Ctrl"></param>
        public void InitW_ProcedureCtrl(RepositoryItemLookUpEdit Ctrl)
        {
            Ctrl.Properties.ValueMember = "GXDH";
            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            {
                Ctrl.Columns["EGXM"].Visible = true;
                Ctrl.Columns["TGXM"].Visible = true;
                Ctrl.DisplayMember = "EGXM";
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            {
                Ctrl.Columns["GXM"].Visible = true;
                Ctrl.Columns["EGXM"].Visible = true;
                Ctrl.DisplayMember = "GXM";
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            {
                Ctrl.Columns["EGXM"].Visible = true;
                Ctrl.Columns["TGXM"].Visible = true;
                Ctrl.DisplayMember = "TGXM";
            }
        }


        /// <summary>
        /// Xsj:綁定數工序據源
        /// </summary>
        /// <param name="Style"></param>
        public List<operation> BindingDataSoureW_ProcedureCtrl(bool IsOnLine, string StyleNo)
        {
            string SqlStr = string.Empty;
            if (IsOnLine)
            {
                SqlStr = string.Format(@"SELECT GXH,GXDH,GXDH+'_'+GXM as GXM,Yzjb,Zkcc,Mx,EGXM,TGXM FROM [PHGDB2].dbo.Mobile_QC_GX WHERE CStyle = '{0}' OR CStyle1 = '{0}' 
                                 OR CStyle2 = '{0}' OR CStyle3 = '{0}' OR CStyle4 = '{0}' OR CStyle5 = '{0}' ORDER BY gxh", StyleNo);
            }
            else
            {
                SqlStr = string.Format(@"SELECT GXH,GXDH,GXM,Yzjb,Zkcc,Mx,EGXM,TGXM FROM Mobile_QC_GX WHERE CStyle = '{0}' OR CStyle1 = '{0}' OR CStyle2 = '{0}' 
                                        OR CStyle3 = '{0}' OR CStyle4 = '{0}' OR CStyle5 = '{0}' ORDER BY gxh", StyleNo);
            }

            return this.Context.ExecuteQuery<operation>(SqlStr).ToList<operation>();
        }
    }
}
