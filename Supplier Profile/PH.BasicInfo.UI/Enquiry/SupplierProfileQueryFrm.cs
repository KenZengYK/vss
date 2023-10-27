using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Enquiry
{
    public partial class SupplierProfileQueryFrm : ListForm 
    {
        public SupplierProfileQueryFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            
            SupplierProfileList SPList = new SupplierProfileList();
            this.DataContext = SPList.CurrentDataContext;
            this.BindingSource.DataSource = (from K in SPList.CurrentDataContext.SupplierProfiles select K).Take(0);
            base.DataBind();
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.BasicInfo.BO.SupplierProfile);
            param.WarnRecord = 100;
            this.StartEnquiry(param);
        }
    }
}

