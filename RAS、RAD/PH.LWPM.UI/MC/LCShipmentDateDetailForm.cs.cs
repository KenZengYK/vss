using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC
{
    public partial class LCShipmentDateDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public LCShipmentDateDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            this.lpVendor.Properties.DataSource = db.Vendors;
            this.lpVendor.Properties.ValueMember = "Code";
            this.lpVendor.Properties.DisplayMember = "Name_EN";

            base.DataBind();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.lpVendor.Enabled = false;
            this.edtProjectionDate.Enabled = false;
        }

        protected override void SaveCurrent()
        {
            base.SaveCurrent();
            LCShipmentDate obj = this.BindingSource.Current as LCShipmentDate;
            obj.ShipmentDate = this.editShipmentDate.DateTime == DateTime.MinValue ? "" : this.editShipmentDate.DateTime.ToString("yy-MM-dd");
            obj.ETDDate = this.edtETDDate.DateTime == DateTime.MinValue ? "" : this.edtETDDate.DateTime.ToString("yy-MM-dd");
            obj.ETADate = this.edtETADate.DateTime == DateTime.MinValue ? "" : this.edtETADate.DateTime.ToString("yy-MM-dd");
            obj.Save();
        }
    }
}
