using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class MutiLangListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public MutiLangListForm()
        {
            InitializeComponent();
            //this.DataContext = context;
            this.EditorTypeName = typeof(MutiLangDetailForm).FullName;
            //this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            //this.objListGridView.InitNewRow +=new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(objListGridView_InitNewRow);
        }

        public override void DataBind()
        {
            base.DataBind();

            MultiLanguageList list = new MultiLanguageList();
            this.DataContext = list.CurrentDataContext;
            this.BindingSource.DataSource = list.GetAllData();

            this.barBtnAddNew.Visibility =  DevExpress.XtraBars.BarItemVisibility.Never;
        }



    }
}
