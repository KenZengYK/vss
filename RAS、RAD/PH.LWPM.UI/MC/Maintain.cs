using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC
{
    public partial class Maintain : ListForm
    {

        public string McWfType;
        private string Menu;
        public Maintain()
        {
            InitializeComponent();
        }
        public Maintain(string _Menu, string _Type)
        {
            this.McWfType = _Type;
            this.Menu = _Menu;
            InitializeComponent();
        }
        public override void DataBind()
        {
            PH.LWPM.BO.FactoryLinesList Context = new PH.LWPM.BO.FactoryLinesList();
            
            this.DataContext = Context.CurrentDataContext;
            this.BindingSource.DataSource =  Context.GetDataByCondition(string.Format("Type='{0}' ", McWfType));
            base.DataBind();
       
            this.EditorTypeName = typeof(MaintainChild).FullName;
            
        }
        private void Maintain_Load(object sender, EventArgs e)
        {
            //if ((this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            //{
            //    AddnewFlg = (this.BindingSource.Current as Machine).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New ? true : false;

            //}
        }
    }
}
