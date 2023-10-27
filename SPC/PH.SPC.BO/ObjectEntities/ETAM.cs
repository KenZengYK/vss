using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Reflection;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.Misc.BO;

namespace PH.SPC.BO
{
    partial class SPCCustomer : BaseEntity
    {
        public string AdoptedDesc { get { return (this.Adopted ?? false) ? "Y" : "N"; } }
        public string CompletedDesc { get { return (this.Completed ?? false) ? "Y" : "N"; } }
        public string miMidSpecDesc { get { return (this.miMidSpec ?? false) ? "Y" : "N"; } }
        public string qsMIDcDesc { get { return (this.qsMIDc ?? false) ? "Y" : "N"; } }
        public string qsPatternDesc { get { return (this.qsPattern ?? false) ? "Y" : "N"; } }
        public string SampleMarkingOrNotDesc { get { return (this.SampleMarkingOrNot ?? false) ? "Y" : "N"; } }

        public string bsNCDesc { get { return (this.bsNC ?? false) ? "Y" : "N"; } }
        public string bsRVSDesc { get { return (this.bsRVS ?? false) ? "Y" : "N"; } }
        public string ctNCDesc { get { return (this.ctNC ?? false) ? "Y" : "N"; } }
        public string ctRVSDesc { get { return (this.ctRVS ?? false) ? "Y" : "N"; } }
        public string grNCDesc { get { return (this.grNC ?? false) ? "Y" : "N"; } }
        public string grRVSDesc { get { return (this.grRVS ?? false) ? "Y" : "N"; } }
        public string miNCDesc { get { return (this.miNC ?? false) ? "Y" : "N"; } }
        public string miRVSDesc { get { return (this.miRVS ?? false) ? "Y" : "N"; } }
        public string miSubtDesc { get { return (this.miSubt ?? false) ? "Y" : "N"; } }

       
    }

}
