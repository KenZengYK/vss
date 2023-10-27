using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Helper
{
    public class StyleHelper
    {
        public List<StyleChooseBO> GetQCStyleDataSource(string Factory,DateTime DTFrom,DateTime DTTO)
        {
            List<StyleChooseBO> boList = new List<StyleChooseBO>();
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            boList = dcon.QC_Masters.Where(p => p.Factory == Factory && p.QC_time>=DTFrom && p.QC_time<= DTTO).Select(p => new StyleChooseBO { IsSelected = false, Style = p.Style })
                .Distinct().OrderBy(p => p.Style).ToList(); 
            return boList;
        }

    }
}
