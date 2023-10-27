using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.LWPM.BO;
using System.Linq;

namespace PH.LWPM.UI.MC
{
    public partial class QuatationListForm : ListForm
    {

        public string TypeCode = "", TypeDesc = "", Factory = "";
        public QuatationListForm()
        {
            InitializeComponent();
        }

        public QuatationListForm(string factory,string typecode,string typedesc)
        {

            InitializeComponent();
            TypeCode = typecode;
            TypeDesc = typedesc;
            Factory = factory;
            //this.iwfplist = new MCPList();
            //this.ipubliclibrary = new PublicLibrary();
        }

        public override void DataBind()
        {
           // PH.LWPM.BO.MachineList Context = new PH.LWPM.BO.MachineList();
           // List<PH.LWPM.BO.Machine> li = new List<Machine>();
            base.DataBind();

            RAPLQDataContext ctx = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = ctx;
            if (TypeCode == "ALL")
            {
                this.BindingSource.DataSource = from c in ctx.QuatationInfos select c;
                this.barBtnAddNew.Enabled = false;
                this.barBtnOpen.Enabled = false;
                this.barBtnSave.Enabled = false;
            }
            else
            {
                this.BindingSource.DataSource = from c in ctx.QuatationInfos where c.TypeCode == TypeCode select c;
                this.EditorTypeName = typeof(QuatationDetailForm).FullName;
            }


        }

    }
}