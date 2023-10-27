using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI.RWO
{
    public partial class SelectShipmentSchedule : Form
    {

        object ParentObj;

        public SelectShipmentSchedule(object parent)
        {
            InitializeComponent();
            ParentObj = parent;
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.cbProject.Text = "";
            this.DEStartDate.Text = "";
            this.DEEndDate.Text = "";
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            //SelectShipmentSchedule fm = new SelectShipmentSchedule();
            DataTable db = RWOSOPCDataContext.GetShipmentSchedule(this.cbProject.Text,this.DEStartDate.Text,this.DEEndDate.Text);
            if (db.Rows.Count > 0)
            {
                (ParentObj as ShipmentScheduleListForm).ImportList = RWOSOPCDataContext.GetShipmentScheduleList(db);
                //List<ShipmentSchedule> list = new List<ShipmentSchedule>();
                //list = RWOSOPCDataContext.GetShipmentScheduleList(db);
                //List<ShipmentSchedule> list = new List<ShipmentSchedule>();
                //list = RWOSOPCDataContext.GetShipmentScheduleList(db);
                this.DialogResult = DialogResult.OK;
                this.Close();
            }   
            else
            {
                this.DialogResult = DialogResult.Cancel;
            }
        }
    }
}
