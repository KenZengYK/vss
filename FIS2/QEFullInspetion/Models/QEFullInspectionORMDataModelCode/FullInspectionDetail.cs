using System;
using DevExpress.Xpo;
using DevExpress.Xpo.Metadata;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
namespace QEFullInspetion.Models.PH_MobileQC
{

    public partial class FullInspectionDetail
    {
        public FullInspectionDetail(Session session) : base(session) { }
        public override void AfterConstruction() { base.AfterConstruction(); }

        [NonPersistent]
        public int? RecordNoShow { get; set; }

    }

}
