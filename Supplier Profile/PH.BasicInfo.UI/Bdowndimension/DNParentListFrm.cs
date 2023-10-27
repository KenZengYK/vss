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

namespace PH.BasicInfo.UI.Bdowndimension
{
    public partial class DNParentListFrm : ListForm 
    {
        public DNParentListFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            DimensionList DataSrc = new DimensionList();
            this.DataContext = DataSrc.CurrentDataContext;
            this.BindingSource.DataSource = DataSrc.GetAllData();
            base.DataBind();
            this.EditorTypeName = typeof(DNChildEditFrm).FullName;
        }
    }
}
