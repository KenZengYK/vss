using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.EndPointFrame
{
    public partial class EPFParentListFrm : ListForm 
    {
        public EPFParentListFrm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            EndPointFactoryFrameList EndPointDataCnx = new EndPointFactoryFrameList();
            this.BindingSource.DataSource = EndPointDataCnx.GetAllData();
            this.DataContext = EndPointDataCnx.CurrentDataContext;
            base.DataBind();
            this.EditorTypeName = typeof(EPFParentEditFrm).FullName;
            this.AllowAddRow = true;
            this.AllowGridEdit = true;
        }
    }
}
