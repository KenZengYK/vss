using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Linq;
using System.Collections.Generic;


namespace PH.FabricInspection.UI.DebitNote
{
    public partial class DebitNoteReport : DevExpress.XtraReports.UI.XtraReport
    {
        public DebitNoteReport(PH.FabricInspection.BO.DebitNote Aobj)
        {
            InitializeComponent();
            //List<PH.FabricInspection.BO.DebitNote> DebitNoteList = new List<PH.FabricInspection.BO.DebitNote>();
            //FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //var RejectNoticeObj = db.RejectNotices .Where(dr => dr.RNNo == 0).ToList();
            Aobj.CalculateData();

            this.xrHeaderTitle.Text = Aobj.Currency == "RMB" ? "沛恆製衣 ( 東莞 ) 有限公司" : "P.H Garment Mfg.Co.Ltd";

            this.xrFootTitle.Text = Aobj.Currency == "RMB" ? "沛恆製衣 ( 東莞 ) 有限公司" : "PH Garment Mfg. Co. Ltd.:";

            xrAddress.Text = Aobj.Currency == "RMB" ? "Xin Wei Industrial Zone, Shi Long Town, Dong Guan, Guang Dong, P.R of China":                                                                                   
                                                                                "Unit 1901, 19/F., Tower 1, Ever Gain Plaza, 88 Container Port Road, Kwai Chung, Hong Kong";

            xrTel.Text = Aobj.Currency == "RMB" ? "Tel No : 0769-89083666 Fax No : 0769-89081122" : "Tel No : 00852 2422 6622   Fax No : 00852 3007 3301";



            this.bindingSource1.DataSource = Aobj;
        }

    }
}
