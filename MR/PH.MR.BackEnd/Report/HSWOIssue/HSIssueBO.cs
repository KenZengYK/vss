using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MR.BackEnd.Report.HSWOIssue
{
    public class HSWOIssue
    {
        public string ProjectNO
        {
            get;
            set;
        }
        public string WorkOrderNO
        {
            get;
            set;
        }
        public string FTY
        {
            get;
            set;
        }
        public bool IsChoose
        {
            get;
            set;
        }
    }

    public class HSWOIssueDetail
    {
        public string PrjNO
        {
            get;
            set;
        }
        public string WO
        {
            get;
            set;
        }
        public string Item_Code
        {
            get;
            set;
        }
        public string MIDCMaterialName
        {
            get;
            set;
        }
        public string CustomNO
        {
            get;
            set;
        }
        public string HSMaterialName
        {
            get;
            set;
        }
        public int WO_Qty
        {
            get;
            set;
        }
        public decimal MRQty
        {
            get;
            set;
        }
        public string UOM
        {
            get;
            set;
        }
        public decimal Weight
        {
            get;
            set;
        }
        public int Finish_Qty
        {
            get;
            set;
        }
        public DateTime ActionDate
        {
            get;
            set;
        }
        public string Fty
        {
            get;
            set;
        }
    }

    public class HSWOIssueSummary
    {
        public string PrjNO
        {
            get;
            set;
        }
        public string WO
        {
            get;
            set;
        }
        public string CustomNO
        {
            get;
            set;
        }
        public string HSMaterialName
        {
            get;
            set;
        }
        public int WO_Qty
        {
            get;
            set;
        }
        public decimal MRQty
        {
            get;
            set;
        }
        public string UOM
        {
            get;
            set;
        }
        public decimal Weight
        {
            get;
            set;
        }
        public int Finish_Qty
        {
            get;
            set;
        }
        public DateTime ActionDate
        {
            get;
            set;
        }
        public string Fty
        {
            get;
            set;
        }

        public List<HSWOIssueDetail> HSIssueWODetailList = new List<HSWOIssueDetail>();

    }

    public class HSWOIssueBalance
    {
        public string IssueNO
        {
            get;
            set;
        }
        public string ProjectNO
        {
            get;
            set;
        }
        public string WorkOrder
        {
            get;
            set;
        }
        public int WOQty
        {
            get;
            set;
        }
        public string Fty
        {
            get;
            set;
        }
        public DateTime IssueDate
        {
            get;
            set;
        }
        public string IsReceived
        {
            get;
            set;
        }
        public DateTime ReceiveDate
        {
            get;
            set;
        }
        public int HSCodeSeq
        {
            get;
            set;
        }
        public string HSCode
        {
            get;
            set;
        }
        public string HSUnit
        {
            get;
            set;
        }
        public string HSMaterialName
        {
            get;
            set;
        }
        public string Memo
        {
            get;
            set;
        } 
        public decimal BalanceWeight
        {
            get;
            set;
        }
    }


}
