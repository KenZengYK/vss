using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class DataDictListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string FrmType { get; set; }

        public DataDictListForm()
        {
            InitializeComponent();
        }


        public DataDictListForm(string AFrmType)
        {
            InitializeComponent();
            FrmType = AFrmType;

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.DataDicts.Where(dr => dr.Flag == FrmType);

            this.EditorTypeName = typeof(DataDictDetailForm).FullName;
        }

        //public override void DataBind()
        //{
        //    base.DataBind();
        //    //this.objListGridView.OptionsBehavior.Editable = true;
        //    //this.colActionLogNO.OptionsColumn.AllowEdit = true;
        //}



    }
}
