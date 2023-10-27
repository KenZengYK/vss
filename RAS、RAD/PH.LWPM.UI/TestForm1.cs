using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.LineBalanceII.BO;
using System.Data.Linq;
using System.Linq;

namespace PH.LWPM.UI
{
    public partial class TestForm1 : DevExpress.XtraEditors.XtraForm
    {
        public TestForm1()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            LineBalanceIIDataContext db = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            var lists = db.StyleMasters.Where(p => p.Statu.GetValueOrDefault() == 0 || p.Statu.GetValueOrDefault() == 1);
            foreach (var obj in lists)
            {
                try
                {
                    obj.CalSummary();
                }
                catch (Exception ex)
                {
                    continue;
                }

                if (obj.JSCLPHS == 0)
                {
                    sb.AppendLine(obj.KHKH + "    " + obj.PHKH + "    " + obj.Factory + "    " + obj.Edition);
                }
            }
            memoEdit1.Text = sb.ToString();


            //var StyleMasterList = (from l3 in DLQlb3Cnn.StyleMasters where l3.KHKH == CurWPs.CustStyleCode && l3.PHKH == CurWPs.PHStyleCode && l3.Edition == CurWPs.Version && l3.ZH == CurWPs.ZH select l3).FirstOrDefault();

            //if (StyleMasterList != null)
            //{
            //    StyleMasterList.CalSummary();
            //    totalSAHSpinEdit.Text = Convert.ToString(StyleMasterList.Sum_JSCSAH);
            //    lBPercentTextEdit.Text = StyleMasterList.JSCLPHS.ToString();
            //    //lBPercentTextEdit.Text = (StyleMasterList.JSCLPHS / 100).ToString("0.00");
            //}
        }
    }
}