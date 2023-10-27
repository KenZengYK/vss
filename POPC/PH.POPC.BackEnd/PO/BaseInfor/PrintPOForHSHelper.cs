using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.BaseInfor
{
    /*
     * ChandlerXiao20160426:添加該類，用於打印海關PO。
     * */
    public class PrintPOForHSHelper
    {
        public void DoWithPOHeader(POHeader poHeader)
        {
            poHeader.SupplierName = "P.H. GARMENT MFG. CO., LTD.";
            poHeader.SupplierAddress = "UNIT 1901, TOWER 1, EVER GAIN PLAZA, 88 CONTAINER PORT ROAD, KWAI CHUNG, N.T., HONG KONG";
            poHeader.AttnPerson = "Purchase Dept.";
            poHeader.TelNumber = "852-24226622";
            poHeader.Email = "";
            poHeader.FaxNumber = "852-30073310";
            poHeader.Incoterm.EngDes = "Delivered Duty UnPaid (DDU)";
            poHeader.ShipMode = "Land";
        }
 
    }

}
