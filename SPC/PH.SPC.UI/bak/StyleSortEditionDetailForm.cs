using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;
using PH.SPC.BO;
using System.IO;

namespace PH.SPC.UI
{
    public partial class StyleSortEditionDetailForm : PH.UI.UI2.ChildDetailForm
    {
        private DevExpress.XtraEditors.TextEdit txtEditionID;
        private DevExpress.XtraEditors.TextEdit txtSortID;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtStyleID;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit txtSampleOrder;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.DateEdit txtEditionDate;
        private DevExpress.XtraEditors.DateEdit txtEditionDueDate;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.DateEdit txtEditionActualDate;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.TextEdit txtDifferenceDays;
        private DevExpress.XtraEditors.LabelControl labelControl9;
        private DevExpress.XtraEditors.MemoEdit memRejectReason;
        private DevExpress.XtraEditors.LabelControl labelControl10;
        private DevExpress.XtraEditors.LabelControl labelControl1;

        public StyleSortEditionDetailForm()
        {
            InitializeComponent();            
        }

        StyleSortEdition _edition = null;
        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            _edition = this.BindingSource.Current as StyleSortEdition;

            //this.txtEditionID.DataBindings.Add("Text", this.BindingSource, "EditionID");
            //this.txtDifferenceDays.DataBindings.Add("Text", this.BindingSource, "DifferenceDays");
            //this.txtEditionActualDate.DataBindings.Add("Text", this.BindingSource, "EditionActualDate");
            //this.txtEditionDate.DataBindings.Add("Text", this.BindingSource, "EditionDate");
            //this.memRejectReason.DataBindings.Add("EditValue", this.BindingSource, "RejectReason");
        }

        private void InitializeComponent()
        {
            this.txtEditionID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtSortID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtStyleID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtSampleOrder = new DevExpress.XtraEditors.TextEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtEditionDate = new DevExpress.XtraEditors.DateEdit();
            this.txtEditionDueDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.txtEditionActualDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.txtDifferenceDays = new DevExpress.XtraEditors.TextEdit();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.memRejectReason = new DevExpress.XtraEditors.MemoEdit();
            this.labelControl10 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSortID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyleID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleOrder.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDueDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDueDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionActualDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionActualDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDifferenceDays.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memRejectReason.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txtEditionID
            // 
            this.txtEditionID.Location = new System.Drawing.Point(118, 50);
            this.txtEditionID.Name = "txtEditionID";
            this.txtEditionID.Properties.ReadOnly = true;
            this.txtEditionID.Size = new System.Drawing.Size(88, 21);
            this.txtEditionID.TabIndex = 0;
            this.txtEditionID.Tag = "EditionID";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(14, 53);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(98, 14);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "製作順序(版本)號:";
            // 
            // txtSortID
            // 
            this.txtSortID.Location = new System.Drawing.Point(518, 7);
            this.txtSortID.Name = "txtSortID";
            this.txtSortID.Properties.ReadOnly = true;
            this.txtSortID.Size = new System.Drawing.Size(88, 21);
            this.txtSortID.TabIndex = 24;
            this.txtSortID.Tag = "StyleSort.SortID";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(460, 10);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(52, 14);
            this.labelControl4.TabIndex = 23;
            this.labelControl4.Text = "制辦種類:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(320, 10);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(28, 14);
            this.labelControl3.TabIndex = 21;
            this.labelControl3.Text = "款號:";
            // 
            // txtStyleID
            // 
            this.txtStyleID.Location = new System.Drawing.Point(366, 7);
            this.txtStyleID.Name = "txtStyleID";
            this.txtStyleID.Properties.ReadOnly = true;
            this.txtStyleID.Size = new System.Drawing.Size(88, 21);
            this.txtStyleID.TabIndex = 22;
            this.txtStyleID.Tag = "Style.StyleID";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(180, 10);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(40, 14);
            this.labelControl2.TabIndex = 19;
            this.labelControl2.Text = "辦單號:";
            // 
            // txtSampleOrder
            // 
            this.txtSampleOrder.Location = new System.Drawing.Point(226, 7);
            this.txtSampleOrder.Name = "txtSampleOrder";
            this.txtSampleOrder.Properties.ReadOnly = true;
            this.txtSampleOrder.Size = new System.Drawing.Size(88, 21);
            this.txtSampleOrder.TabIndex = 20;
            this.txtSampleOrder.Tag = "SampleOrder.SampleOrderID";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(246, 53);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(52, 14);
            this.labelControl5.TabIndex = 25;
            this.labelControl5.Text = "發單日期:";
            // 
            // txtEditionDate
            // 
            this.txtEditionDate.EditValue = null;
            this.txtEditionDate.Location = new System.Drawing.Point(304, 50);
            this.txtEditionDate.Name = "txtEditionDate";
            this.txtEditionDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtEditionDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtEditionDate.Size = new System.Drawing.Size(88, 21);
            this.txtEditionDate.TabIndex = 27;
            this.txtEditionDate.Tag = "EditionDate";
            // 
            // txtEditionDueDate
            // 
            this.txtEditionDueDate.EditValue = null;
            this.txtEditionDueDate.Location = new System.Drawing.Point(118, 91);
            this.txtEditionDueDate.Name = "txtEditionDueDate";
            this.txtEditionDueDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtEditionDueDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtEditionDueDate.Size = new System.Drawing.Size(88, 21);
            this.txtEditionDueDate.TabIndex = 29;
            this.txtEditionDueDate.Tag = "EditionDueDate";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(36, 94);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(76, 14);
            this.labelControl6.TabIndex = 28;
            this.labelControl6.Text = "要求完成日期:";
            // 
            // txtEditionActualDate
            // 
            this.txtEditionActualDate.EditValue = null;
            this.txtEditionActualDate.Location = new System.Drawing.Point(304, 91);
            this.txtEditionActualDate.Name = "txtEditionActualDate";
            this.txtEditionActualDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtEditionActualDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtEditionActualDate.Size = new System.Drawing.Size(88, 21);
            this.txtEditionActualDate.TabIndex = 31;
            this.txtEditionActualDate.Tag = "EditionActualDate";
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(222, 94);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(76, 14);
            this.labelControl7.TabIndex = 30;
            this.labelControl7.Text = "實際完成日期:";
            // 
            // labelControl8
            // 
            this.labelControl8.Location = new System.Drawing.Point(398, 94);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(52, 14);
            this.labelControl8.TabIndex = 33;
            this.labelControl8.Text = "差异天數:";
            // 
            // txtDifferenceDays
            // 
            this.txtDifferenceDays.Location = new System.Drawing.Point(456, 91);
            this.txtDifferenceDays.Name = "txtDifferenceDays";
            this.txtDifferenceDays.Properties.ReadOnly = true;
            this.txtDifferenceDays.Size = new System.Drawing.Size(27, 21);
            this.txtDifferenceDays.TabIndex = 32;
            this.txtDifferenceDays.Tag = "DifferenceDays";
            // 
            // labelControl9
            // 
            this.labelControl9.Location = new System.Drawing.Point(49, 140);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(63, 14);
            this.labelControl9.TabIndex = 35;
            this.labelControl9.Text = "Reject原因:";
            // 
            // memRejectReason
            // 
            this.memRejectReason.Location = new System.Drawing.Point(118, 138);
            this.memRejectReason.Name = "memRejectReason";
            this.memRejectReason.Size = new System.Drawing.Size(274, 98);
            this.memRejectReason.TabIndex = 36;
            this.memRejectReason.Tag = "RejectReason";
            // 
            // labelControl10
            // 
            this.labelControl10.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl10.Appearance.Options.UseFont = true;
            this.labelControl10.Location = new System.Drawing.Point(14, 10);
            this.labelControl10.Name = "labelControl10";
            this.labelControl10.Size = new System.Drawing.Size(150, 14);
            this.labelControl10.TabIndex = 37;
            this.labelControl10.Text = "樣板種類--製作順序(版本)";
            // 
            // StyleSortEditionDetailForm
            // 
            this.Controls.Add(this.labelControl10);
            this.Controls.Add(this.memRejectReason);
            this.Controls.Add(this.labelControl9);
            this.Controls.Add(this.labelControl8);
            this.Controls.Add(this.txtDifferenceDays);
            this.Controls.Add(this.txtEditionActualDate);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.txtEditionDueDate);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.txtEditionDate);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.txtSortID);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.txtStyleID);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtSampleOrder);
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtEditionID);
            this.Name = "StyleSortEditionDetailForm";
            this.Size = new System.Drawing.Size(701, 279);
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSortID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyleID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSampleOrder.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDueDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionDueDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionActualDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEditionActualDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDifferenceDays.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memRejectReason.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }


        public override void FillToolbar()
        {
            base.FillToolbar();
            this.ToolbarManager.RemoveButton("Delete");
            this.ToolbarManager.RemoveButton("btnPrint");
            ToolbarManager.AddButton("btnPrint", "Print", null, "Print", new DevExpress.XtraBars.ItemClickEventHandler(btnPrintClick));
        }

        void btnPrintClick(object sender, ItemClickEventArgs e)
        {
            StyleSortEditionReport report = new StyleSortEditionReport();
            report.Edition = this._edition;
            report.ShowPreview();           
        }

        

        public override void ClearToolbar()
        {
            this.ToolbarManager.RemoveButton("btnPrint");

            base.ClearToolbar();
        }

        public int GetMaxEditionID()
        {
            //int id1 = -1, id2 = 0;
            //if (_edition.StyleSort.StyleSortEdition.Count == 0) return -1;
            return _edition.StyleSort.StyleSortEdition.Count - 1;
            //foreach (StyleSortEdition e in _edition.StyleSort.StyleSortEdition)
            //{
            //    id2 = e.ID;
            //    id1 = Math.Max(id1, id2);
            //    //id1 = itemp;
            //}
            //return id1;
        }
        protected override void AcceptCurrent()
        {
            if (CheckData())
            {

                //得到製作順序(版本)號
                _edition = this.BindingSource.Current as StyleSortEdition;
                //if (string.IsNullOrEmpty(_edition.EditionID))
                if (_edition.IsNew)
                {
                    //Int64 editionID = PH.Common.Sequences.Maker.Controller.PHCommonSequenceHelper.GetSequenceNum("PH.OA.SPC.StyleSortEditionID");
                    int id = GetMaxEditionID();
                    // id++;
                    _edition.ID = id;

                    //_edition.EditionID = editionID.ToString();
                    //txtEditionID.Text = _edition.EditionID;
                    this.BindingSource.ResetCurrentItem();
                    //_edition.StyleSort.EditionID = _edition.StyleSort.EditionID;

                    //(this.Parent as PH.Common.UI.ListingControl2).BindingSource.ResetCurrentItem();
                }

                //差異天數
                _edition.DifferenceDays = Convert.ToInt32(Math.Ceiling((this.txtEditionActualDate.DateTime - this.txtEditionDueDate.DateTime).TotalDays));
                txtDifferenceDays.Text = _edition.DifferenceDays.ToString();

                //同步SPC資料到對應的客戶
                SampleOrder sampleOrder = _edition.StyleSort.Style.SampleOrder;
                Style style = _edition.StyleSort.Style;
                switch (sampleOrder.CustomerID)
                {
                    case "LARD":
                        {
                            foreach (StyleSpcLARD obj in style.SpcLard)
                            {
                                //result.Add("LARD", new string[] { "DVP", "Quotation", "RVS", "SS", "PS" });
                                switch (_edition.StyleSort.SortID.ToUpper())
                                {
                                    case "DVP":
                                        obj.DvpSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.DvpIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.DvpDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.DvpCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "QUOTATION":
                                        obj.QuotationSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.QuotationIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.QuotationDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.QuotationCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "RVS":
                                        obj.RvsSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.RvsIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.RvsDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.RvsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "SS":
                                        obj.SsSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.SsIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.SsDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.SsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "PS":
                                        obj.PsSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.PsIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.PsDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.PsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    default:
                                        break;
                                }
                                if (obj.IsDirty)
                                    obj.Save();
                            }
                        }
                        break;

                    case "ETAM":
                        {
                            //result.Add("ETAM", new string[] { "DVP", "Quotation", "RVS", "SS", "PS" });
                            foreach (StyleSpcETAM obj in style.SpcETAM)
                            {
                                switch (_edition.StyleSort.SortID.ToUpper())
                                {
                                    case "DVP":
                                        obj.DvpSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.DvpIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.DvpDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.DvpCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "QUOTATION":
                                        obj.QuotationSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.QuotationIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.QuotationDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.QuotationCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "RVS":
                                        obj.RvsSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.RvsIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.RvsDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.RvsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "SS":
                                        obj.SsSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.SsIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.SsDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.SsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    case "PS":
                                        obj.PsSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                        obj.PsIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                        obj.PsDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                        obj.PsCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                        break;
                                    default:
                                        break;
                                }
                                if (obj.IsDirty)
                                    obj.Save();
                            }
                        }
                        break;
                    case "M&S":
                        {
                            //result.Add("M&S", new string[] { "CG", "Quotation", "WT", "C/S+GS", "DGS", "PTS" });
                            foreach (StyleSpcMS obj in style.SpcMS)
                            {
                                obj.DvpSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                obj.DvpIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                obj.DvpDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                obj.DvpCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                obj.Save();
                            }
                        }
                        break;
                    case "SARA":
                        {
                            //result.Add("SARA", new string[] { "DVP", "RVS", "Quotation", "SL QA Sample", "KB QA Sample", "Size Set Sample", });
                            foreach (StyleSPCSARA obj in style.SpcSARA)
                            {
                                obj.DvpSos = _edition.EditionID;// txtEditionID.Text;                     //同步製作順序號
                                obj.DvpIssueDate = txtEditionDate.DateTime;         //同步發單日期
                                obj.DvpDefaultDate = txtEditionDueDate.DateTime;    //同步預設日期
                                obj.DvpCurrentDate = txtEditionActualDate.DateTime; //同步現況日期
                                obj.Save();
                            }
                        }
                        break;
                }

                base.AcceptCurrent();
            }
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.ToolbarManager.RemoveButton("Delete");
            //            _edition = this.BindingSource.Current as StyleSortEdition;
            if (_edition.EditionDate == DateTime.MinValue)
            {
                _edition.EditionDate = DateTime.Now;
                this.txtEditionDate.DateTime = _edition.EditionDate;
            }

            if (_edition.EditionDueDate == DateTime.MinValue)
            {
                _edition.EditionDueDate = DateTime.Now;
                this.txtEditionDueDate.DateTime = _edition.EditionDueDate;
            }
        }


        private bool CheckData()
        {
            if (txtEditionDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("請錄入發單日期");
                return false;
            }

            if (txtEditionDueDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("請錄入要求完成日期");
                return false;
            }

            if (txtEditionActualDate.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("請錄入實際完成日期");
                return false;
            }
            return true;
        }

    }
}
