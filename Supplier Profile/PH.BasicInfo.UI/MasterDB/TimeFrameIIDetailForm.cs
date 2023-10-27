using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class TimeFrameIIDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public TimeFrameIIDetailForm()
        {
            InitializeComponent();

            PrepareData();
        }

        void PrepareData()
        {
            PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            txtTransitMode.Properties.Items.Clear();
            var list = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitMode").Select(p => p.DataCode).OrderBy(dr => dr);
            txtTransitMode.Properties.Items.Add("");
            txtTransitMode.Properties.Items.AddRange(list.ToList());


            BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
            txtStartPoint.Properties.DataSource = db.TimeFrameIICompanies;
            txtStartPoint.Properties.DisplayMember = "CompanyCode";
            txtStartPoint.Properties.ValueMember = "CompanyCode";


            txtTradeMethodCde.Properties.DataSource = db.TradeMethods.OrderBy(p => p.SeqNo);

            //(DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TradeMethod").OrderBy(p => p.DataCode);
            //txtTradeMethod.Properties.Items.Clear();
            //txtTradeMethod.Properties.Items.AddRange();

            //DataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            //this.BindingSource.DataSource = (DataContext as PHPlatformMiscDataContext).Misc_DataDictionaries
            //    .Where(p => p.DataType == "PH.BasicInfo.TradeMethod").OrderBy(p => p.DataCode);
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            txtStartPointFullDescription.Properties.ReadOnly = true;
            txtStartPointAddress.Properties.ReadOnly = true;
        }

    }
}
