using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using System.Text;
using DevExpress.XtraEditors;
using PH.HDO.BO;
using PH.Platform.UI.CS.DataQuery;
using System.Linq;
using PH.Platform.BO;

namespace PH.HDO.UI
{
    public partial class GRNNoHDOFrom : PH.Platform.UI.CS.UI2.ListForm
    {
        public GRNNoHDOFrom()
        {
            InitializeComponent();
        }
        private HDODataContext dateContext = ContextBuilder.CreateContext<HDODataContext>();

        string _Supplier;
        public string Supplier
        {
            get { return _Supplier; }
            set { _Supplier = value; }
        }

        string _Stockroomfrom;
        public string Stockroomfrom
        {
            get { return _Stockroomfrom; }
            set { _Stockroomfrom = value; }
        }

        string _Stockroomto;
        public string Stockroomto
        {
            get { return _Stockroomto; }
            set { _Stockroomto = value; }
        }

        string _Companyfrom;
        public string Companyfrom
        {
            get { return _Companyfrom; }
            set { _Companyfrom = value; }
        }

        string _Companyto;
        public string Companyto
        {
            get { return _Companyto; }
            set { _Companyto = value; }
        }

        string _Ordernumfrom;
        public string Ordernumfrom
        {
            get { return _Ordernumfrom; }
            set { _Ordernumfrom = value; }
        }
        string _Ordernumto;
        public string Ordernumto
        {
            get
            {
                return _Ordernumto;
            }
            set
            {
                _Ordernumto = value;
            }
        }

        public override void DataBind()
        {
            this.BindingSource.DataSource = null;
            this.DataContext = dateContext;
            this.BindingSource.DataSource = dateContext.ExecuteQuery<HDOTemp>(@"select name from syscolumns where id=(select id from sysobjects where name='dbo.hdotemp') ").ToList();
            base.DataBind();
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDOTemp);
            param.WarnRecord = 100;
            this.StartEnquiry(param);
        }

        protected override void OnClickFind()
        {
            HDOQuestionFrom questionfrom = new HDOQuestionFrom(this);
            questionfrom.grnfrom = this;
            DialogResult dlg = questionfrom.ShowDialog(this);
            this.BindingSource.DataSource = null;
            this.DataContext = dateContext;
            string sqls = string.Format("exec [sp_GRNNoHDO]   '{0}','{1}','{2}','{3}','{4}','{5}','{6}'", Supplier, Stockroomfrom, Stockroomto, Companyfrom, Companyto, Ordernumfrom, Ordernumto);
            this.BindingSource.DataSource = dateContext.ExecuteQuery<HDOTemp>(sqls).ToList();
            base.DataBind();
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDOTemp);
            param.DataContext = this.dateContext;
            param.WarnRecord = 200;
            this.StartEnquiry(param);
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MessageBox.Show("暂时不提供打印功能！");
        }
    }
}
