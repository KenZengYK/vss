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
namespace PH.HDO.UI
{
    public partial class IDInvoiceListFrm : ListForm
    {
        public IDInvoiceListFrm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.IDInvoices;
            base.DataBind();
            this.AllowAddRow = true;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
        }

        private void barButtonImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //(new ProcessForm()).ShowDialog();      
            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            Context.CommandTimeout = 8000;
            //string sql = " insert into [ph.hdo].dbo.IDInvoice(OID,hdo,id,Material,ProjectNo,Suppliers) " +
            //             " select b.OID,b.ch1t84,b.lotn84,b.vcat01,b.ch3t84,b.vndr01  from (          " +
            //             " select newid() as OID,A.* from openquery(as400,'select distinct ch1t84,lotn84,vcat01,ch3t84,vndr01 " +
            //             " from ault4f1.app84,ault2f1.inp80,ault4f1.pmp01  " +
            //             " where cono84=cono80 and pnum84=pnum80 and lotn84=locn80 and cono80=cono01 and pnum80=item01 " +
            //             " and cono84=''P1'' and strc80=''RT'' " +
            //             " and sphy80>0 and ((ch1t84='''') or (substr(ch1t84,1,4) in (''HDO0'',''HDOH'',''HDOK'')))') A " +
            //             " )b where b.lotn84 not in (select id from [ph.hdo].dbo.IDInvoice) ";
            string sql = " insert into [ph.hdo].dbo.IDInvoice(OID,hdo,id,Material,ProjectNo,Suppliers) " +
                         " select b.OID,b.ch1t84,b.lotn84,b.vcat01,b.ch3t84,b.vndr01  from (          " +
                         " select newid() as OID,A.* from openquery(as400,'select distinct ch1t84,lotn84,vcat01,ch3t84,vndr01 " +
                         " from ault4f1.app84,ault2f1.inp80,ault4f1.pmp01,ault2f1.inp60  " +
                         " where cono84=cono80 and pnum84=pnum80 and lotn84=locn80 and cono80=cono01 and pnum80=item01 and cono60=cono01 and pnum60=item01 and strc60=strc80 and suc160=vndr01 " +
                         " and cono84=''P1'' and strc80=''RT'' " +
                         " and sphy80>0 and ((ch1t84='''') or (substr(ch1t84,1,4) in (''HDO0'',''HDOH'',''HDOK'')))') A " +
                         " )b where b.lotn84 not in (select id from [ph.hdo].dbo.IDInvoice) ";
            int i = Context.ExecuteCommand(sql);
            if (i != -1)
            {
                MessageBox.Show("导入数据成功!!");
            }
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            IDInvoiceExcel frm = new IDInvoiceExcel();
            frm.context = this.DataContext as HDODataContext;
            frm.ShowDialog();
        }

    }
}
