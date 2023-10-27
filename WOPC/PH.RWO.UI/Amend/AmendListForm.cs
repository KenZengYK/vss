using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using PH.RWO.BO;
using PH.Platform.UI.CS.UI2;
using System.Windows.Forms;
using PH.Platform.AuthMgr.BO;
using System.Collections;
using PH.RWO.UI.Report;
using DevExpress.XtraBars;
using DevExpress.Utils.Drawing;
using PH.Platform.BO;

namespace PH.RWO.UI.Amend
{
    public partial class AmendListForm : ListForm
    {
        string NeedConfirm = "";
        public AmendListForm()
        {
            InitializeComponent();
            barConfirm.Visibility = BarItemVisibility.Never;
            SetColumnVisible();
        }

        public AmendListForm(string active)
        {
            InitializeComponent();
            NeedConfirm = active;
            if (active == "Y")
                barConfirm.Visibility = BarItemVisibility.Always;
            else
                barConfirm.Visibility = BarItemVisibility.Never;

            SetColumnVisible();
        }

        public bool IsNewVersion = false;
        public AmendMaster OrignalMaster;

        private void SetColumnVisible()
        {
            bool visible = barConfirm.Visibility == BarItemVisibility.Always;

            //colOA_Confirm.Visible =visible;
            //colDT_OA.Visible =visible;
            colManager.Visible = visible;
            colDate_Manager.Visible = visible;
            colPPC.Visible = visible;
            colDT_PPC.Visible = visible;
            //colCAD.Visible =visible;
            //colDT_CAD.Visible =visible;
            //colPacking.Visible =visible;
            //colDT_Packing.Visible =visible;
            colSewing.Visible = visible;
            colDT_Sewing.Visible = visible;
        }

        public override void DataBind()
        {
            if (!DesignMode)
            {
                base.DataBind();
                RWOSOPCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                this.DataContext = db;



                var lists = db.AmendMasters;
                foreach (var obj in lists)
                {
                    AmendDetail detail = obj.AmendDetails.FirstOrDefault(p => p.WorkOrderNo.Length > 0);
                    if (detail != null && !string.IsNullOrEmpty(detail.WorkOrderNo))
                    {
                        WorkOrder wo = db.WorkOrders.FirstOrDefault(p => p.WorkOrderNo == detail.WorkOrderNo);
                        if (wo != null)
                        {
                            obj.LastConfirmPerson_MM = GetUserName(wo.OAConfirm);
                            obj.LastConfirmDate_MM = wo.OAConfirmDate;

                            obj.LastConfirmPerson_PPC = GetUserName(wo.PPCConfirm);
                            obj.LastConfirmPerson_Sewing = GetUserName(wo.TopConfirm);
                            obj.LastConfirmPerson_Manager = GetUserName(wo.HeaderConfirm);

                            obj.CreateByUserName = GetUserName(obj.CreateBy);
                            obj.Confirm_PPCUserName = GetUserName(obj.Confirm_PPC);
                            obj.Confirm_SewingUserName = GetUserName(obj.Confirm_Sewing);
                            obj.Confirm_ManagerUserName = GetUserName(obj.Confirm_Manager);

                        }
                    }
                }

                this.BindingSource.DataSource = lists;

                //this.BindingSource.DataSource = from c in context.AmendMasters select c;
                this.EditorTypeName = typeof(AmendDetailForm).FullName;
                SetConfirm();
                // Auth_User _curuser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
                //bool _canaudit = false;
                //foreach (Auth_UserRole aur in _curuser.Auth_UserRole)
                //{
                //    if (aur.RoleName == "BondingSpec.Auditor")
                //        _canaudit = true;
                //}

                //if (_curuser.IsAdministrator || _canaudit)
                //{
                //    this.barBtnAudit.Enabled = true;
                //    this.ShowMultiCheck = true;
                //}
                //else
                //{
                //    this.barBtnAudit.Enabled = false;
                //    this.ShowMultiCheck = false;
                //}


            }
        }

        AuthMgrDataContext PlatAuthDB = ContextBuilder.CreateContext<AuthMgrDataContext>();
        string GetUserName(string AUserID)
        {
            Auth_User user = PlatAuthDB.Auth_User.FirstOrDefault(p => p.UserID == AUserID);

            if (user == null || string.IsNullOrEmpty(user.UserName))
            {
                return AUserID;
            }

            return user.UserName;
        }

        bool CanSelect = false;
        private void SetConfirm()
        {
            Auth_User aur = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
            this.barNewVersion.Visibility = aur.IsAdministrator ? BarItemVisibility.Always : BarItemVisibility.Never;

            foreach (Auth_UserRole ar in aur.Auth_UserRole)
            {
                if (ar.Auth_Role.RoleName.Contains("Confirm.Clerk"))
                {
                    barOA.Enabled = true;
                    this.barNewVersion.Visibility = BarItemVisibility.Always;
                    CanSelect = true;
                }
                if (ar.Auth_Role.RoleName.Contains("Confirm.Manager"))
                {
                    this.barManager.Enabled = true;

                }
                if (ar.Auth_Role.RoleName.Contains("Confirm.PPC"))
                {
                    this.barPPC.Enabled = true;
                    CanSelect = true;
                }
                //if (ar.Auth_Role.RoleName.Contains("Confirm.CAD"))
                //{
                //    this.barCAD.Enabled = true;
                //    CanSelect = true;
                //}
                //if (ar.Auth_Role.RoleName.Contains("Confirm.Packing"))
                //{
                //    this.barPacking.Enabled = true;
                //    CanSelect = true;
                //}
                if (ar.Auth_Role.RoleName.Contains("Confirm.Sewing"))
                {
                    this.barSewing.Enabled = true;
                    CanSelect = true;
                }

                this.barCAD.Visibility = BarItemVisibility.Never;
                this.barPacking.Visibility = BarItemVisibility.Never;
            }
        }

        private void barNewVersion_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            IsNewVersion = true;
            OrignalMaster = this.objListGridView.GetRow(objListGridView.FocusedRowHandle) as AmendMaster;
            if (OrignalMaster == null)
            {
                MessageBox.Show("生成新版本時,需選擇一個己存在的通知單號!");
                return;
            }
            this.OnClickAddNew();
        }


        private void barOA_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ProcessConfirm("Clerk");
        }

        private void barManager_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ProcessConfirm("Manager");
        }

        private void barPPC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ProcessConfirm("PPC");
        }

        private void barCAD_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //ProcessConfirm("CAD");
        }

        private void barPacking_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //ProcessConfirm("Packing");
        }
        private void barSewing_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ProcessConfirm("Sewing");
        }

        private void ProcessConfirm(string role)
        {
            this.bandedGridView1.PostEditor();
            this.bandedGridView1.UpdateCurrentRow();

            Dictionary<int, AmendMaster> _dict = this.GetCheckData<AmendMaster>();
            if (_dict.Count == 0)
            {
                MessageBox.Show("At least select one row for confirmation?", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            //ArrayList _items = new ArrayList();
            //ArrayList _prjlst = new ArrayList();

            //string _send = "";
            //int k = 1;
            //foreach (AmendMaster amr in _dict.Values)
            //{
            //    _items.Add(amr.AmendNo + "<" + amr.VerId.ToString() + ">");


            //    //AmendDetail adt = amr.AmendDetails.FirstOrDefault();  
            //    int i = 1, j = amr.AmendDetails.Count;

            //    if (k == 1)
            //        _send = _send + amr.AmendNo + "<" + amr.VerId.ToString() + ">:";
            //    else
            //        _send = _send + "     " + amr.AmendNo + "<" + amr.VerId.ToString() + ">:";

            //    //if (adt != null)
            //    //    _send = _send + "[" + adt.WorkOrderNo + "...];";

            //    k++;
            //    foreach (AmendDetail amd in amr.AmendDetails)
            //    {

            //        //save project
            //        if (!_prjlst.Contains(amd.Project))
            //            _prjlst.Add(amd.Project);

            //        if (i == 1 && i < j)
            //            _send = _send + "[" + amd.Project + "/" + amd.WorkOrderNo + ";";
            //        else if (i > 1 && i < j)
            //            _send = _send + amd.Project + "/" + amd.WorkOrderNo + ";";
            //        else if (i == 1 && i == j)
            //            _send = _send + "[" + amd.Project + "/" + amd.WorkOrderNo + "]\r\n";
            //        else if (i > 1 && i == j)
            //            _send = _send + amd.Project + "/" + amd.WorkOrderNo + "]\r\n";

            //        i++;
            //    }
            //}

            string _userid = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID; //PH.Platform.Common.SysParamHelper.Instance.UserID;
            //FrmConfirm frm = new FrmConfirm(_items, _userid, _send, _prjlst);
            //frm.StartPosition = FormStartPosition.CenterScreen;
            //DialogResult dlg = frm.ShowDialog();
            //if (dlg == DialogResult.OK)

            if (MessageBox.Show("Do you confirm?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                foreach (AmendMaster amr in _dict.Values)
                {
                    if (role == "PPC")
                    {
                        amr.Confirm_PPC = _userid;
                        amr.DT_PPC = DateTime.Now;

                        SendEMailNotity("Sewing", false);
                    }
                    else if (role == "Sewing")
                    {
                        amr.Confirm_Sewing = _userid;
                        amr.DT_Sewing = DateTime.Now;

                        SendEMailNotity("Manager", false);
                    }
                    else if (role == "Manager")
                    {
                        amr.Confirm_Manager = _userid;
                        amr.DT_Manager = DateTime.Now;
                    }
                    //else if (role == "Clerk")
                    //{
                    //    amr.Confirm_OA = _userid;
                    //    amr.DT_OA = DateTime.Now;
                    //}
                    //else if (role == "CAD")
                    //{
                    //    amr.Confirm_CAD = _userid;
                    //    amr.DT_CAD = DateTime.Now;
                    //}
                    //else if (role == "Packing")
                    //{
                    //    amr.Confirm_Packing = _userid;
                    //    amr.DT_Packing = DateTime.Now;
                    //}
                }
                this.DataContext.SubmitChanges();

            }

        }

        private void barPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.bandedGridView1.PostEditor();
            this.bandedGridView1.UpdateCurrentRow();

            Dictionary<int, AmendMaster> _dict = this.GetCheckData<AmendMaster>();
            if (_dict.Count > 1 || _dict.Count == 0)
            {
                MessageBox.Show("Only select a row to print", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            else
            {
                AmendMaster amr = _dict.First().Value as AmendMaster;
                if (NeedConfirm == "Y")
                {
                    AmendReport _rpt1 = new AmendReport(amr.AmendNo, amr.VerId);
                    _rpt1.ShowPreview();
                }
                else
                {
                    AmendReport_New _rpt2 = new AmendReport_New(amr.AmendNo, amr.VerId);
                    _rpt2.ShowPreview();
                }

            }
        }

        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
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

            if (e.Band.Name == "gridBand27")
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
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

        private void bandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);
            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

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

            //e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;

            //if (e.Column.FieldName == "BulkSampleQty") //設置特別的顏色
            //{
            //    brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            //}
            //else if (e.Column.FieldName == "LineWorkShipCompleted_SpecialFactory") //SW Start dd
            //{
            //    brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.FromArgb(217, 204, 219), Color.FromArgb(217, 204, 219), 90);
            //}

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

        void SendEMailNotity(string ARole, bool AShowSendSuccessHint)
        {
            AmendMaster obj = this.BindingSource.Current as AmendMaster;
            if (obj == null) return;

            string ConfirmPerson = "";
            if (ARole == "PPC") ConfirmPerson = obj.LastConfirmPerson_PPC;
            else if (ARole == "Sewing") ConfirmPerson = obj.LastConfirmPerson_Sewing;
            else if (ARole == "Manager") ConfirmPerson = obj.LastConfirmPerson_Manager;

            string Subject = "WOPC - WO revision confirmation cycle summary";
            string EmailBody = string.Format("WOPC - Revision Notification# : {0}, need you to confirm.", obj.AmendNo);

            AuthMgrDataContext AuthDB = ContextBuilder.CreateContext<AuthMgrDataContext>();
            Auth_User user = AuthDB.Auth_User.FirstOrDefault(p => p.UserID == ConfirmPerson);
            if (user == null)
            {
                MessageBox.Show(string.Format("Not find confirm person [{0}]", ConfirmPerson), "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            string To = user.Email;
            string Cc = "DavidJiang@phgmt.com.hk,JoeWang@phgmt.com.hk";

            Notify NotifyObj = new Notify();
            NotifyObj.SendMail(EmailBody, To, Cc, Subject);

            if (AShowSendSuccessHint)
            {
                MessageBox.Show(string.Format("Successfully sent the mail to {0}", ConfirmPerson), "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void btnSendEMailToFtyPPMC_ItemClick(object sender, ItemClickEventArgs e)
        {
            SendEMailNotity("PPC", true);
        }

        private void bandedGridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            AmendMaster obj = this.BindingSource.Current as AmendMaster;
            if (obj == null) return;

            if (!string.IsNullOrEmpty(obj.Confirm_PPC)) //PPMC已经审批了，无须再发邮件提醒
            {
                btnSendEMailToFtyPPMC.Enabled = false;
                return;
            }

            string UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            if (obj.CreateBy != UserID) //只有创建人本人才能发邮件提醒PPMC审批
            {
                btnSendEMailToFtyPPMC.Enabled = false;
                return;
            }

            btnSendEMailToFtyPPMC.Enabled = true;
        }


    }


}
