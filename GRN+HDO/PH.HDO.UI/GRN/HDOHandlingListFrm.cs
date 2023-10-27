using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.HDO.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.UI.CS.DataQuery;
using PH.HDO.UI.GRN;

namespace PH.HDO.UI
{
    public partial class HDOHandlingListFrm : ListForm
    {
        public HDOHandlingListFrm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            InitValue();
            _firstLoad = false;
        }
        private bool _firstLoad;

        public override void DataBind()
        {
            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            Context.CommandTimeout = 60000;
            this.DataContext = Context;

            if (!_firstLoad)
            {
                var aa = from a in Context.HDOHandlings
                         where !a.TransferredDate.HasValue
                         select a;

                this.BindingSource.DataSource = aa;
                _firstLoad = true;
            }
            //this.EditorTypeName = typeof(HDOInvoiceDetialFrm).FullName;
            base.DataBind();
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;


            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDOHandling);
            param.WarnRecord = 1000;
            this.StartEnquiry(param);
        }


        private void InitValue()
        {
            this.icbUser.Items.Clear();
            DicList list = new DicList();
            var aa = list.GetDataDictionary("PH.HDO.HandledBy");
            //this.icbUser.Items.AddRange(aa.ToArray());
            foreach (var a in aa)
            {
                this.icbUser.Items.Add(a.DataName);
            }
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            QueryHDOInformation frm = new QueryHDOInformation();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                this.BindingSource.Clear();
                this.BindingSource.DataSource = frm.Alist.OrderBy(dr=>dr.ReleasedDate);
                
                this.objListGridControl.Refresh();
            }
        }


    }
}
