using System;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.POPC.BO;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.POPC.BackEnd.PO.ClassGmt
{
    public partial class SubClassGmtReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Creator

        public SubClassGmtReport()
        {
            InitializeComponent();
        }
        public SubClassGmtReport(POHeader APO, bool isPHCopy, bool isVatPrint, bool isScO, string langID)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
            _PO = APO;
        }
        #endregion

        #region Fields

        //Image imgYes, imgNo, imgNone;
        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;
        private POHeader _PO;

        #endregion

        #region Event

        private void ItemClassCodeReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object obj = this.DataSource;

            ////��David���� 2022-04-14
            //List<POColorSizeDetail> AllDataList = (obj as IQueryable<POColorSizeDetail>).ToList();
            //var list = AllDataList.GroupBy(p => new { p.ColorCode, p.FitDesc, p.GarmentColor, p.GmtColorName })
            //    .Select(p => new
            //    {
            //        ColorCode = p.Key.ColorCode,
            //        FitDesc = p.Key.FitDesc,
            //        GarmentColor = p.Key.GarmentColor,
            //        GmtColorName = p.Key.GmtColorName
            //    });

            //DetailReport1.DataSource = list;

            //DetailReport.DataSource = obj;
            this.DetailReport.DataSource = this.DetailReport1.DataSource = obj;

            //����Trade Method�ӈ����David���� 2022-04-21
            tcTradeMethod.Text = (_langID == "EN") ? "[TradeMethodEN]" : "[TradeMethodCN]";
            tcPurchaseMethod.Text = (_langID == "EN") ? "[PurchaseMethodEN]" : "[PurchaseMethodCN]";

            lbTradeMethodExplaination.Text = (_langID == "EN") ? "Trade Method explanation" : "�Q�׷�ʽ�f��";
            lbTradeCode.Text = (_langID == "EN") ? "Trade Cde" : "�Q�״�̖";
            lbTradeMethod.Text = (_langID == "EN") ? "Trade Method" : "�Q�׷�ʽ";
            lbExplaination.Text = (_langID == "EN") ? "Explanation" : "�f��";
            lbColorComparison.Text = (_langID == "EN") ? "Color Comparison" : "�ɫ����";

            BasicInfoDataContext BasicInfoDB = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.bsTradeMethod.DataSource = BasicInfoDB.TradeMethods.Where(p => p.TradeCode == _PO.TradeMethod);

            this.DataSource = null;
            SetTitleInfor();
            //imgYes = DevExpress.Utils.Controls.ImageHelper.CreateImageFromResources("PH.POPC.BackEnd.Resources.yes.png", typeof(PH.POPC.BackEnd.ReportStream).Assembly);
            //imgNo = DevExpress.Utils.Controls.ImageHelper.CreateImageFromResources("PH.POPC.BackEnd.Resources.no.png", typeof(PH.POPC.BackEnd.ReportStream).Assembly);
            //imgNone = DevExpress.Utils.Controls.ImageHelper.CreateImageFromResources("PH.POPC.BackEnd.Resources.none.png", typeof(PH.POPC.BackEnd.ReportStream).Assembly);

        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            bool? b = (bool?)this.DetailReport1.GetCurrentColumnValue("GmtColorMatch");
            tcColorMatch.Text = (b ?? false) ? "" : "!";

            //bool? b = (bool?)this.DetailReport1.GetCurrentColumnValue("GmtColorMatch");

            //if ((b ?? false))
            //{
            //    tcColorCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F);
            //}
            //else
            //{
            //    tcColorCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Bold);
            //}

            //tcColorCode.ForeColor = System.Drawing.Color.Red;

            //tcColorCode.BackColor = (b ?? false) ? Color.Transparent : Color.Yellow;

            //this.tbMatch.Text = !b.HasValue ? "--" : ((b ?? false) ? "Y" : "N");
        }
        #endregion

        #region Functions

        private void SetTitleInfor()
        {
            //this.lbItemCode.Text = this.lbColorCode.Text = (_langID == "EN") ? "Our Item Code" : "Ʒ�N���a";
            this.lbClass.Text = (_langID == "EN") ? "Class Code" : "Class Code";
            this.lbClassCode.Text = (_langID == "EN") ? "Code" : "���a";
            this.lbClassDesc.Text = (_langID == "EN") ? "Description" : "ժҪ";

            this.lbItemCode3.Text = (_langID == "EN") ? "Our Item Code" : "�I��Ʒ�N���a";
            this.lbLine2.Text = (_langID == "EN") ? "PO Line" : "��̖";
            this.lbProjectNo.Text = (_langID == "EN") ? "Our Project No." : "�I������̖";
            this.lbWONo.Text = (_langID == "EN") ? "WO No." : "�Ɔ�̖";
            //this.lbReplenishment.Text = (_langID == "EN") ? "Replenishment" : "�a��";
            this.lbReplenishmentCode.Text = (_langID == "EN") ? "Code" : "���a";
            this.lbReplenishmentDesc.Text = (_langID == "EN") ? "PO Line Description" : "PO Line ����";

            lbColorCode.Text = (_langID == "EN") ? "Our Item Clr Code" : "�I��Ʒ�N�ɫ��̖";
            lbColorName.Text = (_langID == "EN") ? "Our Item Clr Name" : "�I��Ʒ�N�ɫ���Q";
            tcColorShape.Text = (_langID == "EN") ? "Supp Item Clr Shade" : "������Ʒ�NɫӰ";
            lbGarmentColor.Text = (_langID == "EN") ? "Gmt Clr Code" : "�����ɫ��̖";
            lbGmtName.Text = (_langID == "EN") ? "Gmt Clr Name" : "�����ɫ���Q";
            lbNotePad3.Text = (_langID == "EN") ? "Notepad 3:- Symbol ! means the color of the said Material is different to the color of the finished garment (e.g. contrast color effect)." :
                                                  "��ע3 : ��̖ ! ��ʾ�����ϵ��ɫ�c���µ��ɫ�ǲ�ͬ�� (����ײɫЧ��).";

            xrTable1.BackColor = Color.FromArgb(235, 241, 222);
            xrTableRow7.BackColor = Color.FromArgb(235, 241, 222);
            lbColorComparison.BackColor = Color.White;
        }

        #endregion



    }
}
