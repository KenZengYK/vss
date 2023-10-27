using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.HDO.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.HDO.UI.GRN
{
    public partial class QueryHDOInformation : DevExpress.XtraEditors.XtraForm
    {
        public QueryHDOInformation()
        {
            InitializeComponent();
        }
        HDODataContext db = ContextBuilder.CreateContext<HDODataContext>();
        public  List<HDOHandling> Alist = new List<HDOHandling>();
        private void simpleButton1_Click(object sender, EventArgs e)
        {

           if(RadGrpDataType.SelectedIndex==0)
           {
               Alist =db.HDOHandlings.Where(dr=>dr.HDONo.StartsWith("HDOH")).ToList();
           }
           else if (RadGrpDataType.SelectedIndex == 1)
           {
               Alist = db.HDOHandlings.Where(dr => !dr.HDONo.StartsWith("HDOH")).ToList();
           }
           else 
           {
               Alist = db.HDOHandlings.ToList();
           }

           if (checkDate()) 
           {
               if (RadGrpDateType.SelectedIndex == 0) 
               {
                   Alist = Alist.Where(dr => dr.PlannedDate >= this.dateEditStrat.DateTime && dr.PlannedDate < this.dateEditEnd.DateTime.AddDays(1)).ToList();
               }
               if (RadGrpDateType.SelectedIndex == 1) 
               {
                   Alist = Alist.Where(dr => dr.ReleasedDate >= this.dateEditStrat.DateTime && dr.ReleasedDate < this.dateEditEnd.DateTime.AddDays(1)).ToList();
               }
               if (RadGrpDateType.SelectedIndex == 2)
               {
                   Alist = Alist.Where(dr => dr.TransferredDate >= this.dateEditStrat.DateTime && dr.TransferredDate < this.dateEditEnd.DateTime.AddDays(1)).ToList();
               }

           }
           this.Close();
        }

        bool checkDate() 
        {
            if (this.RadGrpDateType.SelectedIndex != -1 &&   (string.IsNullOrEmpty(dateEditStrat.Text) || string.IsNullOrEmpty(dateEditEnd.Text) ) )
            {
                MessageBox.Show("Date Type must be selected","Tips",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return false;
            }
            if (!string.IsNullOrEmpty(dateEditStrat.Text) && !string.IsNullOrEmpty(dateEditEnd.Text))
            {
                if (dateEditStrat.DateTime > dateEditEnd.DateTime)
                {
                    MessageBox.Show("The start date can't be greater than the end date", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }
                return true;
            }


            return true;
           
        }

    }
}