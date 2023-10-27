using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;


namespace PH.POPC.BO
{
    public enum UpdateTable
    {
        POHeader = 1,
        PODetail = 2,
        POColorSizeDetail = 3
    }
    public class Update
    {
        List<View_POPC_PUR> m_List;
        public Update()
        {
            this.m_List = new List<View_POPC_PUR>();
        }
        public void Add(View_POPC_PUR y, UpdateTable table)
        {
            View_POPC_PUR item;
            item = m_List.Find(x => x.Company == y.Company && x.PONO == y.PONO && x.Version == y.Version && x.AmendmentNo == y.AmendmentNo && x.OrderLine == y.OrderLine && x.SKU == y.SKU);
            if (item == null)
            {
                item = y;
                this.m_List.Add(item);
            }
            UpdateFlag(y, table);
            
        }
        public void Save()
        {
            foreach (View_POPC_PUR item in this.m_List)
            {
                if (item.POHeaderFlag)
                {
                    Save1(item);
                }
                if (item.PODetailFlag)
                {
                    Save2(item);
                }
                if (item.POColorSizeDetailFlag)
                {
                    Save3(item);
                }
                item.POHeaderFlag = false;
                item.PODetailFlag = false;
                item.POColorSizeDetailFlag = false;
            }
            this.m_List.Clear();
            this.m_List = null;
            this.m_List = new List<View_POPC_PUR>();
        }
        private string Save1(View_POPC_PUR item)
        {
            string sql = string.Format(@"
Update Poheader 
set 
Email='{4}'
Incoterms='{5}'
EndCustCode='{6}'
LocationOfSuppFactory='{7}'
TransitPoint='{8}'
EndPoint='{9}'
EndPointAddress='{10}'
TransitFrame='{11}'
Where Company='{0}' 
and PONO='{1}' 
and Version='{2}' 
and AmendmentNo='{3}'" + "\n", item.Company, item.PONO, item.Version, item.AmendmentNo
                    , item.Email, item.Incoterms, item.EndCustCode, item.LocationOfSuppFactory
                    , item.TransitPoint, item.EndPoint, item.EndPointAddress, item.TransitFrame);
            return sql;
        }
        private string Save2(View_POPC_PUR item)
        {
            string sql = string.Format(@"
Update PoDetail set 
OpenToProject={5}
SuppQtyDimension='{6}'
Where Company='{0}' 
and PONO='{1}' 
and Version='{2}' 
and AmendmentNo='{3}'
and OrderLine='{4}'" + "\n", item.Company, item.PONO, item.Version, item.AmendmentNo, item.OrderLine
 , item.OpenToProject, item.SuppQtyDimension);
            return sql;
        }
        private string Save3(View_POPC_PUR item)
        {
            string sql = string.Format(@"
Update POColorSizeDetail  set
LC='{6}'
Remark='{7}'
ColorShade='{8}'
CustStyleNo='{9}'
CustOrderNo='{10}'
SuppSizeCode='{11}'
SuppFitCode='{12}'
GarmentColor='{13}'
Where Company='{0}' 
and PONO='{1}' 
and Version='{2}' 
and AmendmentNo='{3}'
and OrderLine='{4}'
and Sku='{5}'" + "\n", item.Company, item.PONO, item.Version, item.AmendmentNo, item.OrderLine, item.SKU
 , item.LC, item.Remark, item.ColorShade, item.CustStyleNo, item.CustOrderNo
 , item.SuppSizeCode, item.SuppFitCode, item.GarmentColor);
            return sql;
        }
        private void UpdateFlag(View_POPC_PUR item, UpdateTable table)
        {
            switch (table)
            {
                case UpdateTable.POHeader:
                    item.POHeaderFlag = true;
                    break;
                case UpdateTable.PODetail:
                    item.PODetailFlag = true;
                    break;
                case UpdateTable.POColorSizeDetail:
                    item.POColorSizeDetailFlag = true;
                    break;
                default:
                    break;
            }
        }
    }
}
