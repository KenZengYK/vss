using System;
using DevExpress.Xpo;
using DevExpress.Xpo.Metadata;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using System.Linq;

namespace QEFullInspetion.Models.PH_MobileQC
{

    public partial class FullInspectionHeader
    {
        public FullInspectionHeader(Session session) : base(session) { }
        public override void AfterConstruction() { base.AfterConstruction(); }

        [NonPersistent]
        public int InspectionQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Select(p => p.ProductQty ?? 0).Sum();
            }
        }

        [NonPersistent]
        public int TotalDefectiveGarmentQtyShow
        {
            get
            {
                return this.FullInspectionDetails.Select(p => p.DefectiveGarmentQty ?? 0).Sum();
            }
        }

        [NonPersistent]
        public int TotalRepairedShow
        {
            get
            {
                return this.FullInspectionDetails.Where(p => (p.Repaired ?? false)).Select(p => (p.DefectiveGarmentQty ?? 0) - (p.RejectQty ?? 0)).Sum();
            }
        }

        [NonPersistent]
        public DateTime? QNStartDate
        {
            get
            {
                return this.FullInspectionDetails.Select(p => p.InspectionDate).Min();
            }
        }
    }

}
