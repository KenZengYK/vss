using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using System.Linq;


namespace PH.POPC.UI.POPC
{
    public partial class InvoiceMatchingIForm : DevExpress.XtraEditors.XtraForm
    {
        public InvoiceMatchingIForm(PH.POPC.BO.CompareTypeI comType, string adviceNote, string pos, string currency, string uom, string supp, decimal invoiceQty, decimal invoiceAmount, int invNum)
        {
            InitValue(adviceNote, pos, currency, uom, supp, invoiceQty, invoiceAmount, invNum);

            _comTypeI = comType;

            this.label6.Text = "Delivery Note(s):";
            adviceNote = adviceNote.Replace(",", "\r\n");
            this.lbAdviceNote.Text = adviceNote;

            //by Single Delivery Note: by Multi Items
            this.lbApplyTo.Text = "Part 2:-\r\nInvoice matching based on item's quantities and amount.";

            string sQty = string.Format("{0:#,##0.#####}", invoiceQty);
            this.lbTtlQty.Text = string.Format("({0})", sQty);
            string sAmount = string.Format("{0:#,##0.#####}", invoiceAmount);
            this.lbTtlAmount.Text = string.Format("({0} {1})", sAmount, currency);

        }
        public InvoiceMatchingIForm(PH.POPC.BO.CompareTypeII comType, string adviceNote, string pos, string currency, string uom, string supp, decimal invoiceQty, decimal invoiceAmount)
        {
            InitValue(adviceNote, pos, currency, uom, supp, invoiceQty, invoiceAmount, 1);

            _comTypeII = comType;
            if (comType == PH.POPC.BO.CompareTypeII.PO)
            {
                this.label6.Text = "PO No(s):";
                this.lbAdviceNote.Text = pos;
            }
            else
            {
                this.label6.Text = "Delivery Note(s):";
                this.lbAdviceNote.Text = adviceNote;
            }

            //by Single Delivery Note: by Multi Items
            this.lbApplyTo.Text = comType == PH.POPC.BO.CompareTypeII.PO ? "by PO:-" : (comType == PH.POPC.BO.CompareTypeII.DeliveryNote ? "by Delivery Note:-" : "by Item:-");


            // _panels[0].Qty = _invoiceQty;
            //_panels[0].Amount = _invoiceAmount;
            //this.edAmount.Properties.NullText = string.Format("({0} {1})", sAmount, currency);

            this.lbTtlQty.Text = string.Format("({0})", _invoiceQty);
            this.lbTtlAmount.Text = string.Format("({0} {1})", _invoiceAmount, currency);
        }
        public void InitValue(string adviceNote, string pos, string currency, string uom, string supp, decimal invoiceQty, decimal invoiceAmount, int invNum)
        {
            InitializeComponent();
            this.lbCurrency.Text = string.Format("({0})", currency);
            this.lbUom.Text = string.Format("({0})", uom);
            this.lbSupp.Text = supp;
            this.edCurrency.Text = currency;

            string sQty = string.Format("{0:#,##0.#####}", invoiceQty);
            string sAmount = string.Format("{0:#,##0.#####}", invoiceAmount);

            //_lv5form = lv5form;
            _supp = supp;
            _currency = currency;
            _uom = uom;
            _invoiceQty = Convert.ToDecimal(sQty);
            _invoiceAmount = Convert.ToDecimal(sAmount);

            _ssNotes = Common.ConvertToArray(adviceNote);
            _ssPOs = Common.ConvertToArray(pos);

            #region Create Panel

            _invNum = invNum;
            _panels = new InvoiceMatchPanel[_invNum];

            CreatePanel(this.xtraTabPage1, 0);

            for (int i = 1; i < _invNum; i++)
            {
                DevExpress.XtraTab.XtraTabPage page = new DevExpress.XtraTab.XtraTabPage();
                CreatePanel(page, i);
                this.tcMain.TabPages.Add(page);
            }
            this.tcMain.SelectedTabPageIndex = 0;
            #endregion

        }

        //POPCLevel5Form _lv5form;
        string _supp;
        string[] _ssNotes;
        string[] _ssPOs;
        string _currency;
        string _uom;
        PH.POPC.BO.CompareTypeI _comTypeI;
        PH.POPC.BO.CompareTypeII _comTypeII;
        decimal _invoiceQty;
        decimal _invoiceAmount;
        int _invNum;
        InvoiceMatchPanel[] _panels;

        public string InvoiceNo
        {
            get
            {
                return _panels[0].InvoiceNo;
            }
        }
        public DateTime? InvoiceDate
        {
            get
            {
                return _panels[0].InvoiceDate;
            }
        }
        public decimal InvoiceQty
        {
            get
            {
                decimal d = 0;
                for (int i = 0; i < _panels.Length; i++)
                {
                    d += _panels[i].Qty;
                }
                return d;
            }
        }
        public decimal InvoiceAmount
        {
            get
            {
                decimal d = 0;
                for (int i = 0; i < _panels.Length; i++)
                {
                    d += _panels[i].Amount;
                }
                return d;
            }
        }

        public string Currency
        {
            get
            {
                return this.edCurrency.Text;
            }
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            string tips = "";

            if (InvoiceQty <= 0)
            {
                tips += "please input valid qty!" + "\r\n";
                //MessageBox.Show("please input valid qty!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //this.edQty.Focus();
                //return;
            }
            if (InvoiceAmount <= 0)
            {
                tips += "please input valid amount!" + "\r\n";
                //MessageBox.Show("please input valid amount!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //this.edAmount.Focus();
                //return;
            }
            if (string.IsNullOrEmpty(InvoiceNo))
            {
                tips += "please input valid Invoice No.!" + "\r\n";
                //MessageBox.Show("please input valid Invoice No.!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //this.edInvoiceNo.Focus();
                //return;
            }
            if (InvoiceDate == DateTime.MinValue)
            {
                tips += "please input valid Invoice Date!" + "\r\n";
                //MessageBox.Show("please input valid Invoice Date!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //this.edInvoiceDate.Focus();
                //return;
            }
            //if (string.IsNullOrEmpty(this.Unit))
            //    tips += "please input valid Unit!" + "\r\n";

            if (string.IsNullOrEmpty(this.Currency))
                tips += "please input valid Currency!" + "\r\n";

            tips = tips.Trim();
            if (!string.IsNullOrEmpty(tips))
            {
                MessageBox.Show(tips, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }


            #region Judge whether matching : qty & amount

            //decimal qty1 = 0;
            //decimal amount1 = 0;

            //switch (_comType)
            //{
            //    case PH.POPC.BO.CompareType.SingleInvoice:
            //        _lv5form.GetTotalValueOfInvoiceByAdviceNote(_supp, _ssNotes, ref qty1, ref amount1);
            //        break;
            //    case PH.POPC.BO.CompareType.MultiInvoices:
            //        _lv5form.GetTotalValueOfInvoiceByMaterial(ref qty1, ref amount1);
            //        break;
            //    case PH.POPC.BO.CompareType.PO:
            //        _lv5form.GetTotalValueOfInvoiceByPO(_supp, _pos, ref qty1, ref amount1);
            //        break;
            //    default:
            //        break;
            //}


            tips = "";
            decimal d = this.InvoiceQty - this._invoiceQty;

            if (d != 0)
            {
                tips += string.Format("Invoice Qty not match, diff is {0}", d) + "\r\n";
                //MessageBox.Show("Invoice Qty not match, please chech again!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                //this.edQty.Focus();
                //return;
            }
            d = this.InvoiceAmount - this._invoiceAmount;
            if (d != 0)
            {
                tips += string.Format("Invoice Amount not match, diff is {0}", d) + "\r\n";
                //MessageBox.Show("Invoice Amount not match, please chech again!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                //this.edAmount.Focus();
                //return;
            }
            //if (this.Unit != this._uom)
            //    tips += string.Format("Supp Unit not match, {0} -> {1}", this.Unit, this._uom) + "\r\n";

            if (this.Currency != this._currency)
                tips += string.Format("Currency not match, {0} -> {1}", this.Currency, this._currency) + "\r\n";

            //tips = tips.Trim();
            if (!string.IsNullOrEmpty(tips))
            {
                tips += "\r\nor you can continue to Part 1B as below.";
                //MessageBox.Show(tips, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                InvoiceMatchingPart1BForm frm = new InvoiceMatchingPart1BForm(tips, _comTypeI);
                if (frm.ShowDialog() == DialogResult.OK)
                    this.DialogResult = DialogResult.Cancel;


                return;
            }


            #endregion

            //string s = "";
            //switch (_comTypeII)
            //{
            //    case PH.POPC.BO.CompareTypeII.DeliveryNote:
            //        s = "Are you sure to compare by Delivery Note on Step 1?";
            //        break;
            //    case PH.POPC.BO.CompareTypeII.Item:
            //        s = "Are you sure to compare by Item on Step 1?";
            //        break;
            //    case PH.POPC.BO.CompareTypeII.PO:
            //        s = "Are you sure to compare by PO on Step 1?";
            //        break;
            //    default:
            //        break;
            //}

            //if (MessageBox.Show(s, "Question", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel) return;

            this.DialogResult = DialogResult.OK;
        }

        private void btnStep2_Click(object sender, EventArgs e)
        {
            string tips = "";

            if (string.IsNullOrEmpty(InvoiceNo))
                tips += "please input valid Invoice No.!" + "\r\n";
            if (InvoiceDate == DateTime.MinValue)
                tips += "please input valid Invoice Date!" + "\r\n";

            //if (string.IsNullOrEmpty(this.Unit))
            //    tips += "please input valid Unit!" + "\r\n";

            if (string.IsNullOrEmpty(this.Currency))
                tips += "please input valid Currency!" + "\r\n";

            tips = tips.Trim();
            if (!string.IsNullOrEmpty(tips))
            {
                MessageBox.Show(tips, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }


            #region Judge whether matching : qty & amount

            tips = "";
            //decimal d = this.InvoiceQty - this._invoiceQty;
            //if (d != 0)
            //    tips += string.Format("Invoice Qty not match, diff is {0}", d) + "\r\n";

            //d = this.InvoiceAmount - this._invoiceAmount;
            //if (d != 0)
            //    tips += string.Format("Invoice Amount not match, diff is {0}", d) + "\r\n";

            //if (this.Unit != this._uom)
            //    tips += string.Format("Supp Unit not match, {0} -> {1}", this.Unit, this._uom) + "\r\n";

            if (this.Currency != this._currency)
                tips += string.Format("Currency not match, {0} -> {1}", this.Currency, this._currency) + "\r\n";

            tips = tips.Trim();
            if (!string.IsNullOrEmpty(tips))
            {
                MessageBox.Show(tips, "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }


            #endregion

            string s = "";
            switch (_comTypeII)
            {
                case PH.POPC.BO.CompareTypeII.DeliveryNote:
                    s = "Are you sure to compare by Delivery Note on Step 2?";
                    break;
                case PH.POPC.BO.CompareTypeII.Item:
                    s = "Are you sure to compare by Item on Step 2?";
                    break;
                case PH.POPC.BO.CompareTypeII.PO:
                    s = "Are you sure to compare by PO on Step 2?";
                    break;
                default:
                    break;
            }

            if (MessageBox.Show(s, "Question", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel) return;

            this.DialogResult = DialogResult.Ignore;

        }

        private void lbUom_DoubleClick(object sender, EventArgs e)
        {
            this.edUnit.Text = this._uom;
        }

        private void lbCurrency_DoubleClick(object sender, EventArgs e)
        {
            this.edCurrency.Text = this._currency;
        }

        private void lbQty_DoubleClick(object sender, EventArgs e)
        {
            //this.edQty.EditValue = this._invoiceQty;
        }

        private void lbAmount_DoubleClick(object sender, EventArgs e)
        {
            //this.edAmount.EditValue = this._invoiceAmount;
        }

        private void CreatePanel(DevExpress.XtraTab.XtraTabPage page, int i)
        {
            InvoiceMatchPanel panel = new InvoiceMatchPanel(_invoiceQty, _invoiceAmount);
            panel.Dock = DockStyle.Fill;
            page.Controls.Add(panel);
            //page.Text = string.Format("{0} Invoice", GetOrderString(i + 1));
            page.Text = "Invoice";

            _panels[i] = panel;
        }

        private string GetOrderString(int i)
        {
            switch (i)
            {
                case 1: return "1st";
                case 2: return "2nd";
                case 3: return "3rd";
                case 4: return "4th";
                case 5: return "5th";
                default:
                    return string.Format("{0}th", i);
            }
        }
    }


    public class InvoiceMatchPanel : System.Windows.Forms.Panel
    {
        private DevExpress.XtraEditors.CalcEdit edQty;
        private DevExpress.XtraEditors.CalcEdit edAmount;
        private DevExpress.XtraEditors.TextEdit edInvoiceNo;
        private DevExpress.XtraEditors.DateEdit edInvoiceDate;

        public InvoiceMatchPanel()
        {
            InitValue();

            _invoiceQty = 0;
            _invoiceAmount = 0;
        }
        public InvoiceMatchPanel(decimal popcqty, decimal popcamount)
            : this()
        {
            _invoiceQty = popcqty;
            _invoiceAmount = popcamount;
        }

        public void InitValue()
        {
            Label lb = new Label();

            #region Invoice dd

            lb.AutoSize = true;
            lb.ForeColor = System.Drawing.Color.DarkGreen;
            lb.Location = new System.Drawing.Point(25, 19);
            lb.Name = "lbInvdd";
            lb.Size = new System.Drawing.Size(64, 14);
            lb.TabIndex = 8;
            lb.Text = "Invoice dd";
            this.Controls.Add(lb);
            // 
            // edInvoiceDate
            // 
            this.edInvoiceDate = new DateEdit();
            this.edInvoiceDate.EditValue = null;
            this.edInvoiceDate.Location = new System.Drawing.Point(157, 16);
            this.edInvoiceDate.Name = "edInvoiceDate";
            //this.edInvoiceDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            //new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edInvoiceDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edInvoiceDate.Size = new System.Drawing.Size(189, 21);
            this.edInvoiceDate.TabIndex = 0;
            this.Controls.Add(edInvoiceDate);

            #endregion

            #region Invoice no

            lb = new Label();
            lb.AutoSize = true;
            lb.ForeColor = System.Drawing.Color.DarkGreen;
            lb.Location = new System.Drawing.Point(25, 46);
            lb.Name = "lbInvNo";
            lb.Size = new System.Drawing.Size(69, 14);
            lb.TabIndex = 7;
            lb.Text = "Invoice No.";
            this.Controls.Add(lb);
            // 
            // edInvoiceNo
            // 
            this.edInvoiceNo = new TextEdit();
            this.edInvoiceNo.Location = new System.Drawing.Point(157, 43);
            this.edInvoiceNo.Name = "edInvoiceNo";
            this.edInvoiceNo.Size = new System.Drawing.Size(189, 21);
            this.edInvoiceNo.Properties.CharacterCasing = CharacterCasing.Upper;
            this.edInvoiceNo.TabIndex = 1;
            this.Controls.Add(edInvoiceNo);

            #endregion

            #region Invoice Qty

            lb = new Label();
            lb.AutoSize = true;
            lb.Location = new System.Drawing.Point(25, 73);
            lb.Name = "lbQty";
            lb.Size = new System.Drawing.Size(93, 14);
            lb.TabIndex = 0;
            lb.Text = "Ttl. Invoice Qty";
            this.Controls.Add(lb);
            lb.DoubleClick += new System.EventHandler(this.lbQty_DoubleClick);
            // 
            // edQty
            // 
            this.edQty = new CalcEdit();
            this.edQty.Location = new System.Drawing.Point(157, 70);
            this.edQty.Name = "edQty";
            this.edQty.Size = new System.Drawing.Size(189, 21);
            this.edQty.TabIndex = 2;
            this.Controls.Add(edQty);

            #endregion

            #region Invoice Amount

            lb = new Label();
            lb.AutoSize = true;
            lb.Location = new System.Drawing.Point(25, 100);
            lb.Name = "lbAmount";
            lb.Size = new System.Drawing.Size(117, 14);
            lb.TabIndex = 6;
            lb.Text = "Ttl. Invoice Amount";
            this.Controls.Add(lb);
            lb.DoubleClick += new System.EventHandler(this.lbAmount_DoubleClick);
            // 
            // edAmount
            // 
            this.edAmount = new CalcEdit();
            this.edAmount.Location = new System.Drawing.Point(157, 97);
            this.edAmount.Name = "edAmount";
            this.edAmount.Size = new System.Drawing.Size(189, 21);
            this.edAmount.TabIndex = 3;
            this.Controls.Add(edAmount);

            #endregion

        }
        private decimal _invoiceQty;
        private decimal _invoiceAmount;

        public decimal Qty { get { return this.edQty.Value; } set { this.edQty.EditValue = value; } }
        public decimal Amount { get { return this.edAmount.Value; } set { this.edAmount.EditValue = value; } }
        public string InvoiceNo { get { return this.edInvoiceNo.Text; } }
        public DateTime InvoiceDate { get { return this.edInvoiceDate.DateTime; } }

        private void lbQty_DoubleClick(object sender, EventArgs e)
        {
            if (this._invoiceQty > 0)
                this.edQty.EditValue = this._invoiceQty;
        }

        private void lbAmount_DoubleClick(object sender, EventArgs e)
        {
            if (this._invoiceAmount > 0)
                this.edAmount.EditValue = this._invoiceAmount;
        }
    }
}