using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Common;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.FabricInspection.UI.DebitNote
{
    public partial class DebitNoteDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public DebitNoteDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            dNNoTextEdit.Properties.ReadOnly = true;
            createrTextEdit.Properties.ReadOnly = true;
            createDateDateEdit.Properties.ReadOnly = true;
            txtAmountShow.Properties.ReadOnly = true;
            txtSuppRef.Properties.ReadOnly = true;
            txtSuppCode.Properties.ReadOnly = true;
            txtSupplierUnit.Properties.ReadOnly = true;
            txtUnitConvertRate.Properties.ReadOnly = true;

            radAuditTeam.Properties.ReadOnly = true;
            txtAuditNo.Properties.ReadOnly = true;

            if (this.IsNew)
            {
                radAuditTeam.Properties.ReadOnly = false;
                txtAuditNo.Properties.ReadOnly = false;

                radAuditTeam.SelectedIndex = 0; //默认为Allover

                PH.FabricInspection.BO.DebitNote obj = this.BindingSource.Current as PH.FabricInspection.BO.DebitNote;
                if (obj != null)
                {
                    obj.Creater = SysParamHelper.Instance.UserID;
                    obj.CreateDate = DateTime.Now;
                    obj.IssueDate = DateTime.Now;

                    obj.Remark = "Supplier agreed with our claim, material replenishment is not necessary and accept our debit note for settlement." + Environment.NewLine +
                                 "供應商同意賠償，不需要補料，接受由我方出扣賑單扣款。";
                }
            }
        }

        protected override void SaveCurrent()
        {
            PH.FabricInspection.BO.DebitNote obj = this.BindingSource.Current as PH.FabricInspection.BO.DebitNote;
            if (obj == null)
            {
                base.SaveCurrent();
                return;
            }

            this.BindingSource.EndEdit();

            if (string.IsNullOrEmpty(obj.AuditNo1))
            {
                MessageBox.Show("Please input the Audit#", "Tip", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtAuditNo.Focus();
                return;
            }

            //生成DN#
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            string sDNNo = "";
            decimal? iOverallClaim = null;
            string sSuppRef = null;
            string sSuppCode = null;

            switch (Convert.ToInt32(radAuditTeam.EditValue))
            {
                case 1: //Allover
                    Fabric_Insp_Header AlloverObj = db.Fabric_Insp_Headers.FirstOrDefault(p => p.AuditNo1 == obj.AuditNo1);
                    if (AlloverObj == null)
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} don't exists", obj.AuditNo1), "Tip", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    if ((AlloverObj.AOverallResultShow == "A" || AlloverObj.AOverallResultShow == "A+"))
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} Overall result is A or A+, Debit Note is't allowed!", obj.AuditNo1), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    sDNNo = AlloverObj.RnNo;
                    iOverallClaim = AlloverObj.OverAllClaimLength;
                    sSuppRef = AlloverObj.SuppItemRef;
                    sSuppCode = AlloverObj.Supplier_Code;
                    obj.InvoiceNo = AlloverObj.InvoiceNo;
                    break;

                case 2: //Band lace
                    BandLaceHeader BandLaceObj = db.BandLaceHeaders.FirstOrDefault(p => p.AuditNo1 == obj.AuditNo1);
                    if (BandLaceObj == null)
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} don't exists", obj.AuditNo1), "Tip", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    if ((BandLaceObj.AOverallResultShow == "A" || BandLaceObj.AOverallResultShow == "A+"))
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} Overall result is A or A+, Debit Note is't allowed!", obj.AuditNo1), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    sDNNo = BandLaceObj.RnNo;
                    iOverallClaim = BandLaceObj.OverallProposaClaimlByLot;
                    sSuppRef = BandLaceObj.SuppItemRef;
                    sSuppCode = BandLaceObj.SuppCode;
                    obj.InvoiceNo = BandLaceObj.InvoiceNo;
                    break;

                case 3: //Elastic tape
                    ElasticHeader ElasticObj = db.ElasticHeaders.FirstOrDefault(p => p.AuditNo1 == obj.AuditNo1);
                    if (ElasticObj == null)
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} don't exists", obj.AuditNo1), "Tip", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    if ((ElasticObj.AOverallResultShow == "A" || ElasticObj.AOverallResultShow == "A+"))
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} Overall result is A or A+, Debit Note is't allowed!", obj.AuditNo1), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    sDNNo = ElasticObj.RNNo;
                    iOverallClaim = ElasticObj.OverallProposaClaimlByLot;
                    sSuppRef = ElasticObj.SuppItemRef;
                    sSuppCode = ElasticObj.SuppCode;
                    obj.InvoiceNo = ElasticObj.InvoiceNo;
                    break;

                case 4: //Accessories
                    AccessoryHeader AccessoryObj = db.AccessoryHeaders.FirstOrDefault(p => p.AuditNo1 == obj.AuditNo1);
                    if (AccessoryObj == null)
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} don't exists", obj.AuditNo1), "Tip", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    if ((AccessoryObj.AOverallResultShow == "A" || AccessoryObj.AOverallResultShow == "A+"))
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} Overall result is A or A+, Debit Note is't allowed!", obj.AuditNo1), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    sDNNo = AccessoryObj.RNNo;
                    iOverallClaim = AccessoryObj.OverallProposaClaimlByLot;
                    sSuppRef = AccessoryObj.SuppRef;
                    sSuppCode = AccessoryObj.SuppCode;
                    obj.InvoiceNo = AccessoryObj.InvoiceNo;
                    break;

                case 5: //Bra Cup
                    BraCupHeader BraCupObj = db.BraCupHeaders.FirstOrDefault(p => p.AuditNo1 == obj.AuditNo1);
                    if (BraCupObj == null)
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} don't exists", obj.AuditNo1), "Tip", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    if ((BraCupObj.AOverallResultShow == "A" || BraCupObj.AOverallResultShow == "A+"))
                    {
                        MessageBox.Show(string.Format("The Audit#: {0} Overall result is A or A+, Debit Note is't allowed!", obj.AuditNo1), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    sDNNo = BraCupObj.RNNo;
                    iOverallClaim = BraCupObj.OverallProposaClaimlByLot;
                    sSuppRef = BraCupObj.SuppRef;
                    sSuppCode = BraCupObj.SuppCode;
                    obj.InvoiceNo = BraCupObj.InvoiceNo;
                    break;
            }

            obj.AuditNo = Convert.ToInt32(obj.AuditNo1.Replace("-", ""));

            if (string.IsNullOrEmpty(obj.DNNo)) obj.DNNo = sDNNo;
            obj.SuppRef = sSuppRef;
            obj.SuppCode = sSuppCode;

            //从MIDc中取采购单位和单位转换率
            MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
            var detail = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == obj.SuppRef);
            if (detail != null)
            {
                obj.SupplierUnit = detail.SupplierUnit;
                obj.UnitConvertRate = detail.RateToPHUnit;
            }

            if (!obj.OverallClaim.HasValue) obj.OverallClaim = iOverallClaim / (obj.UnitConvertRate ?? 1);

            //取得其他一些栏位的信息，如: PaymentTerms、Currency、Price
            string SqlStr = string.Format("exec sp_GetDebitNoteInfo {0}, {1}", obj.AuditNo, obj.AuditTeam);
            DataTable dt = db.ExecuteDataTable(SqlStr, "dt");
            if (dt.Rows.Count > 0)
            {
                obj.PaymentTerm = dt.Rows[0]["PaymentTerms"].ToString();
                obj.Currency = dt.Rows[0]["Currency"].ToString();
                if (!obj.Price.HasValue)
                {
                    if (dt.Rows[0]["Price"] != DBNull.Value)
                    {
                        obj.Price = Convert.ToDecimal(dt.Rows[0]["Price"]);
                    }
                }
            }


            base.SaveCurrent();
        }


    }
}
