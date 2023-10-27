using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.HDO.UI.GRN
{
    public partial class HDOShippingAdviceForm : ListForm
    {

        HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
        public HDOShippingAdviceForm()
        {
            InitializeComponent();

            this.DataContext = Context;
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDOHandling);
            param.WarnRecord = 1000;
            this.StartEnquiry(param);
        }

        protected override void OnClickFind()
        {

            HDOShippingAdviceQueryForm frm = new HDOShippingAdviceQueryForm();

            if (frm.ShowDialog() == DialogResult.OK)
            {

                List<HDOQueryClass> DataList = new List<HDOQueryClass>();

                DataList = frm.ds.Tables[0].AsEnumerable().Select(dr => new HDOQueryClass
                {
                 
                    SHPNO = dr["SHPNOName"].ToString(),
                    CustDeclarationNo = dr["CustDeclaration"].ToString()
                }).ToList();

                this.BindingSource.DataSource = DataList;
            }

        }
    }
}
