using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LineBalanceII.BO;
using PH.Platform.AuthMgr.BO;
using PH.Platform.BO;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class SpecListForm : ListForm
    {
        public SpecListForm()
        {
            InitializeComponent();
        }
        string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(SpecDetailForm).FullName;


            if (!DesignMode)
            {
                LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<LineBalanceIIDataContext>();
                this.DataContext = context;
                this.BindingSource.DataSource = from c in context.BondingSpecs select c;
                Auth_User  _curuser =PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
                bool _canaudit =false;
                foreach (Auth_UserRole aur in _curuser.Auth_UserRole)
                {
                    if (aur.RoleName == "BondingSpec.Auditor")
                        _canaudit = true;
                }

                if (_curuser.IsAdministrator||_canaudit)
                {
                    this.barBtnAudit.Enabled = true;
                    this.ShowMultiCheck = true;
                }
                else
                {
                    this.barBtnAudit.Enabled = false;
                    this.ShowMultiCheck = false;
                }


            }


        }

        private void barBtnAudit_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            DialogResult dialogResult = MessageBox.Show("您是否確定核準所選擇數據正確有效?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dialogResult == DialogResult.Yes)
            {
              
                Dictionary<int, BondingSpec> dicts = this.GetCheckData<BondingSpec>();
                foreach (BondingSpec item in dicts.Values)
                {
                    if (string.IsNullOrEmpty(item.Auditer))
                    {
                        item.Auditer = _user; item.AuditDate = DateTime.Now;
                    }
                    
                }
                this.DataContext.SubmitChanges();
            }
        }

        private void barBtnCopy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Dictionary<int, BondingSpec> dicts = this.GetCheckData<BondingSpec>();
            if (dicts.Count > 1 || dicts.Count == 0)
            {
                MessageBox.Show("只能選擇一條數據進行Copy!");
                return;
            }
            BondingSpec bsp = dicts.Values.FirstOrDefault();
            Clone(bsp);

        }

        private void Clone(BondingSpec source)
        {


            string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
            BondingSpec newbsp = new BondingSpec();
            newbsp.CustNo = source.CustNo;
            newbsp.CustStyle = source.CustStyle;
            newbsp.PhStyle = source.PhStyle;
            newbsp.Notice = source.Notice;

            newbsp.Ktno = source.Ktno;
            newbsp.Mtype = source.Mtype;
            newbsp.CustNo = source.CustNo;
            newbsp.Remark = source.Remark;

            newbsp.Ktno = source.Ktno;
            newbsp.Mtype = source.Mtype;
            newbsp.CustNo = source.CustNo;
            newbsp.ApplyUser = source.ApplyUser;

            newbsp.CreateBy = _user;
            newbsp.CreateTime = DateTime.Now;
            newbsp.Result = source.Result;
            newbsp.DependType = source.DependType;

            //detail copy
            foreach (BondingSpecItem bsi in source.BondingSpecItems)
            {
                BondingSpecItem _newobj = new BondingSpecItem();

               // _newobj.BondingSpec_Id = newbsp.BondingSpec_Id; //??
                _newobj.OperNo = bsi.OperNo; _newobj.OrderNo = bsi.OrderNo;
                _newobj.OperNo = bsi.Color; _newobj.Size = bsi.Size;
                _newobj.OperNo = bsi.OperNo; _newobj.Size = bsi.Size;

                _newobj.Temp_SP = bsi.Temp_SP; _newobj.Temp_XP = bsi.Temp_XP;
                _newobj.Temp_SC = bsi.Temp_SC; _newobj.Temp_XC = bsi.Temp_XC;
                _newobj.Temp_FRC = bsi.Temp_FRC; _newobj.Temp_BW = bsi.Temp_BW;

                _newobj.Temp_YX = bsi.Temp_YX; _newobj.Sped_SY = bsi.Sped_SY;
                _newobj.Sped_XY = bsi.Sped_XY; _newobj.Sped_CD = bsi.Sped_CD;
                _newobj.Pres_QX = bsi.Pres_QX; _newobj.Pres_SCF = bsi.Pres_SCF;
                _newobj.Pres_SPD = bsi.Pres_SPD; _newobj.Spec_Temp = bsi.Spec_Temp;

                _newobj.Spec_Time = bsi.Spec_Time; _newobj.Spec_Pres = bsi.Spec_Pres;
                _newobj.McStyleNo = bsi.McStyleNo; _newobj.MachineName = bsi.MachineName;

                _newobj.Glue_Model = bsi.Glue_Model; _newobj.Glue_Thick = bsi.Glue_Thick;
                _newobj.Glue_Width = bsi.Glue_Width; _newobj.Result = bsi.Result;

                _newobj.Glue_Width = bsi.Glue_Width; _newobj.Result = bsi.Result;
                _newobj.CreateBy = _user; _newobj.CreateTime = DateTime.Now;

                _newobj.IsXpd = bsi.IsXpd; _newobj.IsYx = bsi.IsYx;
                _newobj.IsSyl = bsi.IsSyl; _newobj.IsXyl = bsi.IsXyl;
                _newobj.IsCd = bsi.IsCd; _newobj.IsQx = bsi.IsQx;
                _newobj.IsHx = bsi.IsHx; _newobj.Pres_HX = bsi.Pres_HX;
                _newobj.GroupNo = bsi.GroupNo;


                _newobj.BasicAttach = bsi.BasicAttach;
                _newobj.TempMeterStrap = bsi.TempMeterStrap;
                _newobj.UltrasonicTimeDelay = bsi.UltrasonicTimeDelay;
                _newobj.UltrasonicTimeWelding = bsi.UltrasonicTimeWelding;
                _newobj.UltrasonicTimeHarden = bsi.UltrasonicTimeHarden;
                _newobj.UltrasonicRevolution = bsi.UltrasonicRevolution;
                _newobj.UltrasonicPressure = bsi.UltrasonicPressure;
                _newobj.SingleOrDouble = bsi.SingleOrDouble;
                _newobj.PressureStrap = bsi.PressureStrap;
                _newobj.SutureOrProcess = bsi.SutureOrProcess;

                _newobj.Color = bsi.Color; //17/3/16 add

                newbsp.BondingSpecItems.Add(_newobj);

            }

            LineBalanceIIDataContext ldc = this.DataContext as LineBalanceIIDataContext;

            //ldc.BondingSpecs.InsertOnSubmit(newbsp);
            this.BindingSource.Add(newbsp);
            ldc.SubmitChanges();
            MessageBox.Show("Copy Success!");
            
            


        
        }
         
    }
}
