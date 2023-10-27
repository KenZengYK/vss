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
    public partial class ImportMachineForm : DevExpress.XtraEditors.XtraForm
    {

        public GridView SelectGridView 
        { 
            get { return this.gridSelect; } 
        }

        public ImportMachineForm()
        {
            InitializeComponent();

            //string SqlStr = "select distinct a.VendorCode, c.Name_EN as VendorName, a.TypeCode, a.Model, d.HSCode, b.Name as Brand, convert(bit, 0) as CheckFlag, " +
            string SqlStr = "select distinct a.VendorCode, c.Name_EN as VendorName, a.TypeCode, a.Model, d.HSCode, b.Manufacturer as Brand, convert(bit, 0) as CheckFlag, " +
                          "       b.Type2 as TypeDesc_EN, b.Type as TypeDesc_TW, a.Currency, a.Price " +
                          "from QuatationInfo as a " +
                          "join Machine as b on a.TypeCode = b.Type1 " +
                          "join Vendor as c on a.VendorCode = c.Code " +
                          "join BaseCode as d on d.Type = 'METHODTYPE' and d.Code = a.TypeCode " +
                          "where a.Active = 1 and b.Factory like '%CL%'";

            //                          "       b.Type2 as TypeDesc_EN, b.Type as TypeDesc_TW, a.Currency, convert(int, a.Price) as Price " +


            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.gridMachine.DataSource = db.ExecuteDataTable(SqlStr, "dtImport");
        }

        //public ImportMachineForm(string AVendorCode)
        //    : this()
        //{

        //    string SqlStr = "select distinct a.TypeCode, a.Model, d.HSCode, b.Name as Brand, convert(bit, 0) as CheckFlag, " +
        //                    "       b.Type2 as TypeDesc_EN, b.Type as TypeDesc_TW, a.Currency, convert(int, a.Price) as Price " +
        //                    "from QuatationInfo as a " +
        //                    "join Machine as b on a.TypeCode = b.Type1 " +
        //                    "join Vendor as c on a.VendorCode = c.Code " +
        //                    "join BaseCode as d on d.Type = 'METHODTYPE' and d.Code = a.TypeCode " +
        //                    "where a.Active = 1 and b.Factory = 'CM (Opts)' and VendorCode = '{0}' ";
        //    SqlStr = string.Format(SqlStr, AVendorCode);

        //    RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
        //    this.gridMachine.DataSource = db.ExecuteDataTable(SqlStr, "dtImport");

        //}

    }
}