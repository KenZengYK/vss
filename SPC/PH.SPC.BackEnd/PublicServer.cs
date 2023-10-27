using System.Drawing;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DevExpress.XtraReports.UI;
using PH.SPC.BO;

namespace PH.SPC.BackEnd
{
    public static class PublicServer
    {
        public static void SetProperties(DevExpress.XtraReports.UI.DetailBand  detail)
        {
            List<string> list = ReturnList();

            foreach (object item in detail.Controls)
            {
                if (item is XRLabel)
                {
                    if ((from c in list where c.ToLower() == (item as XRLabel).Name.ToLower() select c).Count() == 1)
                    {
                        (item as XRLabel).StylePriority.UseTextAlignment = false;
                        (item as XRLabel).TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    }
                }
            }
        }

        public static List<string> ReturnList()
        {
            List<string> list = new List<string>();
            list.Add("detail_AD_CurrentFinishDate");
            list.Add("detail_AD_DefaultFinishDate");
            list.Add("detail_AD_IssueDate");
            list.Add("detail_Adopted");
            list.Add("detail_BaseSizeSpec_NC");
            list.Add("detail_BaseSizeSpec_RVS");
            list.Add("detail_CAP_CurrentFinishDate");
            list.Add("detail_CAP_DefaultFinishDate");
            list.Add("detail_CAP_IssueDate");
            list.Add("detail_CB_CurrentFinishDate");
            list.Add("detail_CB_DefaultFinishDate");
            list.Add("detail_CB_IssueDate");
            list.Add("detail_CLS");
            list.Add("detail_CMS");
            list.Add("detail_Completed");
            list.Add("detail_Construction_NC");
            list.Add("detail_Construction_RVS");
            list.Add("detail_CS_CurrentFinishDate");
            list.Add("detail_CS_DefaultFinishDate");
            list.Add("detail_CS_IssueDate");
            list.Add("detail_CSG_CurrentFinishDate");
            list.Add("detail_CSG_DefaultFinishDate");
            list.Add("detail_CSG_IssueDate");
            list.Add("detail_CSSDate");
            list.Add("detail_DelDate");
            list.Add("detail_ECS");
            list.Add("detail_ERPBomDate");
            list.Add("detail_ExFtyDate");
            list.Add("detail_FIT_CurrentFinishDate");
            list.Add("detail_FIT_DefaultFinishDate");
            list.Add("detail_FIT_IssueDate");
            list.Add("detail_FRSDate");
            list.Add("detail_FtyStartDate");
            list.Add("detail_GradeRules_NC");
            list.Add("detail_GradeRules_RVS");
            list.Add("detail_JSS_CurrentFinishDate");
            list.Add("detail_JSS_DefaultFinishDate");
            list.Add("detail_JSS_IssueDate");
            list.Add("detail_JSSDate");
            list.Add("detail_MaterialStatus_MidSpec");
            list.Add("detail_MaterialStatus_RedyeDate");
            list.Add("detail_MaterialStatus_SampleYardageDate");
            list.Add("detail_MatlTrims_NC");
            list.Add("detail_MatlTrims_ReadyDate");
            list.Add("detail_MatlTrims_RVS");
            list.Add("detail_MatlTrims_Subt");
            list.Add("detail_MMS");
            list.Add("detail_MS_CurrentFinishDate");
            list.Add("detail_MS_DefaultFinishDate");
            list.Add("detail_MS_IssueDate");
            list.Add("detail_MS_MoldSpecReadyDate");
            list.Add("detail_MW_CurrentFianishDate");
            list.Add("detail_MW_DefaultFinishDate");
            list.Add("detail_MW_IssueDate");
            list.Add("detail_MWS_CurrentFinishDate");
            list.Add("detail_MWS_DefaultFinishDate");
            list.Add("detail_MWS_IssueDate");
            list.Add("detail_PP_CurrentFinishDate");
            list.Add("detail_PP_DefaultFinishDate");
            list.Add("detail_PP_IssueDate");
            list.Add("detail_PPA");
            list.Add("detail_PPSDate");
            list.Add("detail_PRES_CurrentFinishDate");
            list.Add("detail_PRES_DefaultFinishDate");
            list.Add("detail_PRES_IssueDate");
            list.Add("detail_PS_CurrentFinishDate");
            list.Add("detail_PS_DefaultFinishDate");
            list.Add("detail_PS_IssueDate");
            list.Add("detail_QA_CurrentFinishDate");
            list.Add("detail_QA_DefaultFinishDate");
            list.Add("detail_QA_IssueDate");
            list.Add("detail_QA_QAAppdDate");
            list.Add("detail_QA_TSOKDate");
            list.Add("detail_QS_BOM_MarkerDate");
            list.Add("detail_QS_BOM_YYDate");
            list.Add("detail_QS_MIDc");
            list.Add("detail_QS_Pattern");
            list.Add("detail_QS_QTNDate");
            list.Add("detail_QS_SMVDate");
            list.Add("detail_RS");
            list.Add("detail_RVS_CurrentFinishDate");
            list.Add("detail_RVS_DefaultFinishDate");
            list.Add("detail_RVS_IssueDate");
            list.Add("detail_RVS_TSOKDate");
            list.Add("detail_SampleMakeOrNot");
            list.Add("detail_SH");
            list.Add("detail_SPS_CurrentFinishDate");
            list.Add("detail_SPS_DefaultFinishDate");
            list.Add("detail_SPS_IssueDate");
            list.Add("detail_SPS_TrialSampleDate");
            list.Add("detail_SS_CurrentFinishDate");
            list.Add("detail_SS_DefaultFinishDate");
            list.Add("detail_SS_GSOKDate");
            list.Add("detail_SS_IssueDate");
            list.Add("detail_SS_SSAppdDate");
            list.Add("detail_SS_TSOKDate");
            list.Add("detail_TOP");
            list.Add("detail_TOP_CurrentFinishDate");
            list.Add("detail_TOP_DefaultFinishDate");
            list.Add("detail_TOP_IssueDate");
            list.Add("detail_VS");
            list.Add("detail_WS_CurrentFinishDate");
            list.Add("detail_WS_DefaultFinishDate");
            list.Add("detail_WS_IssueDate");
            list.Add("detail_WS2");
            list.Add("detail_WT");
            list.Add("detail_WT_CurrentFinishDate");
            list.Add("detail_WT_DefaultFinishDate");
            list.Add("detail_WT_GSOKDate");
            list.Add("detail_WT_IssueDate");
            list.Add("detail_WT_TSOKDate");

            return list;
        }
    }
}
