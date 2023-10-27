using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.LWPM.UI.PO
{
    public partial class ImportEquipmentForm : DevExpress.XtraEditors.XtraForm
    {

        public GridView SelectGridView 
        { 
            get { return this.gridSelect; } 
        }

        public ImportEquipmentForm()
        {
            InitializeComponent();

            string SqlStr = "select ItemCode, EQGroupCode, UserDept, Item_CN, Item_EN, Spec, ItemCodeVendor, HSCode, Price, Brand, convert(bit, 0) as CheckFlag " +
                            "from ItemTool";

            //string SqlStr = "select distinct a.VendorCode, c.Name_EN as VendorName, a.TypeCode, a.Model, d.HSCode, b.Manufacturer as Brand, convert(bit, 0) as CheckFlag, " +
            //              "       b.Type2 as TypeDesc_EN, b.Type as TypeDesc_TW, a.Currency, a.Price " +
            //              "from QuatationInfo as a " +
            //              "join Machine as b on a.TypeCode = b.Type1 " +
            //              "join Vendor as c on a.VendorCode = c.Code " +
            //              "join BaseCode as d on d.Type = 'METHODTYPE' and d.Code = a.TypeCode " +
            //              "where a.Active = 1 and b.Factory = 'CL (Opts)'";

            

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.gridEquipment.DataSource = db.ExecuteDataTable(SqlStr, "dtImport");
        }
    }
}