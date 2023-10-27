using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.BO;
using DevExpress.Utils.Drawing;
using PH.Platform.Misc.BO;

namespace PH.RWO.UI.MasterDB
{
    public partial class CustomerProfileListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CustomerProfileListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BandedGridViewHelper.SetGridViewBackColor(advBandedGridView1);

            this.DataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.BindingSource.DataSource = (DataContext as RWOSOPCDataContext).LWPM_CustomerProfiles.OrderBy(p => p.SeqNo).ThenBy(p => p.GRP).ThenBy(p => p.CUST).ThenBy(p => p.TPLANT);
            this.AllowGridEdit = true;

            //加载Customer Profile Status下拉选择框
            PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var StatusList = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.WOPC.CustomerProfile.Status").OrderBy(p => p.DataCode).Select(p => p.DataName);
            repositoryItemComboBox_Status.Items.Clear();
            repositoryItemComboBox_Status.Items.AddRange(StatusList.ToArray());
            repositoryItemComboBox_Status.Items.Insert(0, string.Empty);
        }

        private void advBandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;


            Color colorGray = Color.FromArgb(217, 217, 217);
            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);

            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Rectangle r = e.Bounds;
            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);

            Brush brush;
            switch (sTag)
            {
                case "0":
                    brush = brushGray;
                    break;
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;
        }

        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }


        private void advBandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            ////由David修改以下這句代碼 2022-03-14
            ////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            if (sTag == "") return;

            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            Brush brush;
            switch (sTag)
            {
                case "1":
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    //e.Appearance.BackColor = colorBlue;
                    break;
                default:
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
            r.Inflate(-2, 0);

            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        private void repositoryItemButtonEdit_PaymentTerms_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            LWPM_CustomerProfile obj = this.BindingSource.Current as LWPM_CustomerProfile;
            if (obj == null) return;

            SelectPaymentTermsForm frmSelectPaymentTerms = new SelectPaymentTermsForm(obj.CUST);
            if (frmSelectPaymentTerms.ShowDialog() == DialogResult.OK)
            {
                obj.PaymentTermsCode = frmSelectPaymentTerms.SelectPaymentTermsObj.Code;
                obj.PaymentTermsDescription = frmSelectPaymentTerms.SelectPaymentTermsObj.Description;
                obj.PaymentTermsFromCustPO = frmSelectPaymentTerms.SelectPaymentTermsObj.FromCustPODescription;
                obj.PaymentTermsFromCustPOExplanation = frmSelectPaymentTerms.SelectPaymentTermsObj.FromCustPOExplanation;

                this.BindingSource.EndEdit();
                advBandedGridView1.UpdateCurrentRow();
            }
        }

        private void advBandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (this.advBandedGridView1.IsNewItemRow(e.RowHandle)) return;

            //CT2 Repeat or Flow, CT1 to CT5 Repeat or Flow
            if (e.Column.FieldName == "CT2RepeatDays" || e.Column.FieldName == "PSP1_R" ||
                e.Column.FieldName == "TotalCT1ToCT5RepeatDaysShow" || e.Column.FieldName == "TotalCT1ToCT5FlowDaysShow")
            {
                if (e.CellValue == null || string.IsNullOrEmpty(e.CellValue.ToString()))
                {
                    e.DisplayText = "n/a";
                }

            }
        }

        private void advBandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            LWPM_CustomerProfile obj = e.Row as LWPM_CustomerProfile;

            //if (string.IsNullOrEmpty(obj.CUST))
            //{
            //    MessageBox.Show("Pls input [Transit Dest Cde] column", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            //if (string.IsNullOrEmpty(obj.LST2))
            //{
            //    MessageBox.Show("Pls input [Brand Cde] column", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            //if (obj.SEQ == 0)
            //{
            //    MessageBox.Show("Pls input [Del.Seq#] column", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            //if (string.IsNullOrEmpty(obj.TPLANT))
            //{
            //    MessageBox.Show("Pls input [FTY site] column", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            //if (string.IsNullOrEmpty(obj.PMTH))
            //{
            //    obj.PMTH = "Soild";
            //}

            if (string.IsNullOrEmpty(obj.Status)) obj.Status = null;
            if (obj.StatusDate.HasValue && obj.StatusDate.Value == DateTime.MinValue) obj.StatusDate = null;

            if (string.IsNullOrEmpty(obj.Address)) obj.Address = null;
            if (string.IsNullOrEmpty(obj.RegionCode)) obj.RegionCode = null;
            if (string.IsNullOrEmpty(obj.Country)) obj.Country = null;
            if (string.IsNullOrEmpty(obj.Tel)) obj.Tel = null;
            if (string.IsNullOrEmpty(obj.Fax)) obj.Fax = null;
            if (string.IsNullOrEmpty(obj.MobilePhone)) obj.MobilePhone = null;
            if (string.IsNullOrEmpty(obj.Email)) obj.Email = null;
            if (string.IsNullOrEmpty(obj.AttnPerson)) obj.AttnPerson = null;

            if (string.IsNullOrEmpty(obj.SeqNo)) obj.SeqNo = null;

            //if (string.IsNullOrEmpty(obj.PMTH))
            //{
            //    MessageBox.Show("Pls input [FTY site] column", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            this.BindingSource.EndEdit();
            obj.Save();

        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveGRP = "0";
            for (int i = 0; i < advBandedGridView1.RowCount; i++)
            {
                LWPM_CustomerProfile obj = advBandedGridView1.GetRow(i) as LWPM_CustomerProfile;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveGRP = obj.GRP;
                }
                else
                {
                    if (obj.GRP == SaveGRP)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveGRP = obj.GRP;
                    }
                }
            }
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void btnCopy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LWPM_CustomerProfile Obj = this.BindingSource.Current as LWPM_CustomerProfile;
            if (Obj == null) return;

            if (MessageBox.Show("Do you want to copy it?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            LWPM_CustomerProfile NewObj = this.BindingSource.AddNew() as LWPM_CustomerProfile;

            NewObj.CUST = Obj.CUST;
            NewObj.LST2 = Obj.LST2;
            NewObj.TPLANT = Obj.TPLANT;
            NewObj.PMTH = Obj.PMTH;
            NewObj.LST2D = Obj.LST2D;
            NewObj.FRST = Obj.FRST;
            NewObj.EXFWK = Obj.EXFWK;
            NewObj.EXFTM = Obj.EXFTM;
            NewObj.EXFDAY = Obj.EXFDAY;
            NewObj.LSTR = Obj.LSTR;
            NewObj.BZJS = Obj.BZJS;
            NewObj.CJSWK = Obj.CJSWK;
            NewObj.CJSSJ = Obj.CJSSJ;
            NewObj.REMK = Obj.REMK;
            NewObj.AEXFWK = Obj.AEXFWK;
            NewObj.AEXFTM = Obj.AEXFTM;
            NewObj.ACJSWK = Obj.ACJSWK;
            NewObj.ACJSSJ = Obj.ACJSSJ;
            NewObj.LPORT = Obj.LPORT;
            NewObj.ALPORT = Obj.ALPORT;
            NewObj.FCUST = Obj.FCUST;
            NewObj.PGRP = Obj.PGRP;
            NewObj.AGT = Obj.AGT;
            NewObj.ADDR = Obj.ADDR;
            NewObj.PORTL = Obj.PORTL;
            NewObj.LMTH = Obj.LMTH;
            NewObj.SDUE = Obj.SDUE;
            NewObj.IRATIO = Obj.IRATIO;
            NewObj.TTIME = Obj.TTIME;
            NewObj.ITIME = Obj.ITIME;

            NewObj.ATTIME = Obj.ATTIME;
            NewObj.ETD = Obj.ETD;
            NewObj.AETD = Obj.AETD;
            NewObj.GRP = Obj.GRP;
            NewObj.YSZQ = Obj.YSZQ;
            NewObj.RQTY = Obj.RQTY;
            NewObj.BZNY = Obj.BZNY;
            NewObj.ACT = Obj.ACT;

            NewObj.RLINE = Obj.RLINE;
            NewObj.RQTY1 = Obj.RQTY1;
            NewObj.CGRP = Obj.CGRP;
            NewObj.YSZQ1 = Obj.YSZQ1;
            NewObj.ORDDAY = Obj.ORDDAY;
            NewObj.PSP1 = Obj.PSP1;
            NewObj.PSP2 = Obj.PSP2;
            NewObj.MPUR1 = Obj.MPUR1;
            NewObj.MPUR2 = Obj.MPUR2;
            NewObj.YSZQ01 = Obj.YSZQ01;
            NewObj.YSZQ0 = Obj.YSZQ0;
            NewObj.SP1 = Obj.SP1;
            NewObj.TCT1 = Obj.TCT1;
            NewObj.TCT2 = Obj.TCT2;
            NewObj.AB2 = Obj.AB2;
            NewObj.AB3 = Obj.AB3;
            NewObj.ORDDAY_R = Obj.ORDDAY_R;
            NewObj.PSP1_R = Obj.PSP1_R;
            NewObj.PSP2_R = Obj.PSP2_R;
            NewObj.MPUR1_R = Obj.MPUR1_R;
            NewObj.MPUR2_R = Obj.MPUR2_R;
            NewObj.FRST_R = Obj.FRST_R;
            NewObj.LSTR_R = Obj.LSTR_R;
            NewObj.YSZQ_R = Obj.YSZQ_R;
            NewObj.YSZQ1_R = Obj.YSZQ1_R;
            NewObj.YSZQ0_R = Obj.YSZQ0_R;
            NewObj.YSZQ01_R = Obj.YSZQ01_R;
            NewObj.SP1_R = Obj.SP1_R;
            NewObj.TCT1_R = Obj.TCT1_R;
            NewObj.TCT2_R = Obj.TCT2_R;
            NewObj.LPORT1 = Obj.LPORT1;
            NewObj.EXFWK1 = Obj.EXFWK1;
            NewObj.EXFTM1 = Obj.EXFTM1;
            NewObj.CJSWK1 = Obj.CJSWK1;
            NewObj.CJSSJ1 = Obj.CJSSJ1;
            NewObj.ETD1 = Obj.ETD1;
            NewObj.TTIME1 = Obj.TTIME1;
            NewObj.ALPORT1 = Obj.ALPORT1;
            NewObj.AEXFWK1 = Obj.AEXFWK1;
            NewObj.AEXFTM1 = Obj.AEXFTM1;
            NewObj.ACJSWK1 = Obj.ACJSWK1;
            NewObj.ACJSSJ1 = Obj.ACJSSJ1;
            NewObj.AETD1 = Obj.AETD1;
            NewObj.ATTIME1 = Obj.ATTIME1;
            NewObj.T3CT = Obj.T3CT;
            NewObj.SEWBOND = Obj.SEWBOND;
            NewObj.OSP = Obj.OSP;
            NewObj.ITDT = Obj.ITDT;
            NewObj.ACDT = Obj.ACDT;
            NewObj.DTDIFF = Obj.DTDIFF;
            NewObj.DSEQ = Obj.DSEQ;
            NewObj.PORTL1 = Obj.PORTL1;
            NewObj.PersonInCharge = Obj.PersonInCharge;
            NewObj.ShippedGmtsAcceptableShortShip = Obj.ShippedGmtsAcceptableShortShip;
            NewObj.OceanLCLOutboundHandlingLoading = Obj.OceanLCLOutboundHandlingLoading;
            NewObj.OceanLCLOutboundHandlingBoarding = Obj.OceanLCLOutboundHandlingBoarding;
            NewObj.OceanFCLOutboundHandlingLoading = Obj.OceanFCLOutboundHandlingLoading;
            NewObj.OceanFCLOutboundHandlingBoarding = NewObj.OceanFCLOutboundHandlingBoarding;
            NewObj.AirLCLOutboundHandlingLoading = Obj.AirLCLOutboundHandlingLoading;
            NewObj.AirLCLOutboundHandlingBoarding = Obj.AirLCLOutboundHandlingBoarding;
            NewObj.SWW = Obj.SWW;
            NewObj.PaymentTermsCode = Obj.PaymentTermsCode;
            NewObj.PaymentTermsDescription = Obj.PaymentTermsDescription;
            NewObj.CT2RepeatDays = Obj.CT2RepeatDays;
            NewObj.PaymentTermsFromCustPO = Obj.PaymentTermsFromCustPO;
            NewObj.PaymentTermsFromCustPOExplanation = Obj.PaymentTermsFromCustPOExplanation;
            NewObj.OceanLCLExftWkFlag = Obj.OceanLCLExftWkFlag;
            NewObj.OceanLCLClosingWkFlag = Obj.OceanLCLClosingWkFlag;
            NewObj.AirLCLExftWkFlag = Obj.AirLCLExftWkFlag;
            NewObj.AirLCLClosingWkFlag = Obj.AirLCLClosingWkFlag;
            NewObj.Status = Obj.Status;
            NewObj.StatusDate = Obj.StatusDate;
            NewObj.Address = Obj.Address;
            NewObj.RegionCode = Obj.RegionCode;
            NewObj.Country = Obj.Country;
            NewObj.Tel = Obj.Tel;
            NewObj.Fax = Obj.Fax;
            NewObj.MobilePhone = Obj.MobilePhone;
            NewObj.Email = Obj.Email;
            NewObj.AttnPerson = Obj.AttnPerson;
            NewObj.AgentName = Obj.AgentName;
            NewObj.SeqNo = Obj.SeqNo;

            this.BindingSource.EndEdit();
            NewObj.Save();

            this.DataContext.SubmitChanges();

        }

    }
}
