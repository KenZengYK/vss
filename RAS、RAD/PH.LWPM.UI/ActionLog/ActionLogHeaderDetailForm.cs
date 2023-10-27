using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using DevExpress.XtraEditors.DXErrorProvider;

namespace PH.LWPM.UI.ActionLog
{
    public partial class ActionLogHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        RAPLQDataContext db;

        public string Factory
        {
            get { return this.cbFactory.Text; }
        }

        public string Workshop
        {
            get { return this.cbWorkshop.Text; }
        }

        public string Line
        {
            get { return this.cbLine.Text; }
        }

        public ActionLogHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            db = this.DataContext as RAPLQDataContext;
            this.GetFactoryList();
            this.GetWorkshopList();

            actionLogDetailListForm1.BindingSource.DataSource = (this.BindingSource.Current as ActionLogHeader).ActionLogDetails;
        }

        protected override void SaveCurrent()
        {

            this.PrepareInputDataValidationRule();
            base.SaveCurrent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.ControlShowState();

            if (this.IsNew)
            {
                ActionLogHeader obj = this.BindingSource.Current as ActionLogHeader;
                if (string.IsNullOrEmpty(obj.Sender))
                {
                    obj.Sender = PH.Platform.Common.SysParamHelper.Instance.UserID;
                }

                if (this.edtStartDate.DateTime == DateTime.MinValue)
                {
                    obj.StartDate = DateTime.Now;
                }

                if (string.IsNullOrEmpty(obj.LogNO))
                {
                    obj.LogNO = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.RAA.ActionLog");
                }
            }

        }

        void GetFactoryList()
        {
            this.cbFactory.Properties.Items.Clear();
            this.cbFactory.Properties.Items.AddRange(db.BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Code).ToArray());
            this.cbFactory.Text = DBAccess.CurFactory();
        }

        void GetWorkshopList()
        {
            DataTable dtWorkshop = DBAccess.GetInterBaseTable(string.Format("SELECT distinct TShop FROM TBLSHEDULE WHERE (TPLANT =''{0}'') and TShop not in (''SC1'', ''PPW'', ''NSB'') AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", this.Factory));
            cbWorkshop.Properties.Items.Clear();
            cbWorkshop.Properties.Items.AddRange(dtWorkshop.AsEnumerable().Select(P => P.Field<string>("TShop")).ToArray());
            cbWorkshop.Properties.Items.Insert(0, "");
        }

        void GetLineList()
        {
            DataTable dtLine = DBAccess.GetInterBaseTable(string.Format("SELECT distinct PLINE FROM TBLSHEDULE WHERE (TPLANT =''{0}'') and TShop=''{1}''  AND  (YZH = 0) AND (FLAG3 > ''99s'' AND FLAG3 < ''x'' OR FLAG3 IS NULL OR FLAG3 = '''') ", this.Factory, this.Workshop));
            cbLine.Properties.Items.Clear();
            cbLine.Properties.Items.AddRange(dtLine.AsEnumerable().Select(P => P.Field<string>("PLINE")).ToArray());
            cbLine.Properties.Items.Insert(0, "");
        }

        private void cbFactory_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            this.GetWorkshopList();
        }

        private void cbWorkshop_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            this.GetLineList();
        }

        private void cbLogType_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            this.ControlShowState();
        }

        void ControlShowState()
        {
            this.cbWorkshop.Enabled = this.cbLogType.Text == "Workshop" || this.cbLogType.Text == "Line";
            this.cbLine.Enabled = this.cbLogType.Text == "Line";

            this.edtSender.Properties.ReadOnly = true;
            this.edtLogNO.Properties.ReadOnly = true;
        }

        void PrepareInputDataValidationRule()
        {
            dxValidationProvider.SetValidationRule(this.cbWorkshop, null);
            dxValidationProvider.SetValidationRule(this.cbLine, null);

            if (this.cbLogType.Text == "Workshop" && string.IsNullOrEmpty(this.cbWorkshop.Text))
            {
                dxValidationProvider.SetValidationRule(this.cbWorkshop, new ConditionValidatonRule()
                {
                    ConditionOperator = ConditionOperator.IsNotBlank,
                    ErrorText = "Please input workshop",
                    ErrorType = ErrorType.Critical
                });
            }

            if (this.cbLogType.Text == "Line")
            {
                if (string.IsNullOrEmpty(this.cbWorkshop.Text))
                {
                    dxValidationProvider.SetValidationRule(this.cbWorkshop, new ConditionValidatonRule()
                    {
                        ConditionOperator = ConditionOperator.IsNotBlank,
                        ErrorText = "Please input workshop",
                        ErrorType = ErrorType.Critical
                    });

                }

                if (string.IsNullOrEmpty(this.cbLine.Text))
                {
                    dxValidationProvider.SetValidationRule(this.cbLine, new ConditionValidatonRule()
                    {
                        ConditionOperator = ConditionOperator.IsNotBlank,
                        ErrorText = "Please input Line",
                        ErrorType = ErrorType.Critical
                    });
                }
            }
        }

    }




}
