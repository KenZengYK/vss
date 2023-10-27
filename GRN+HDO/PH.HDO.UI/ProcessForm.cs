using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.HDO.BO;
using PH.Platform.BO;
namespace PH.HDO.UI
{
    public partial class ProcessForm : DevExpress.XtraEditors.XtraForm
    {
        public ProcessForm()
        {
            InitializeComponent();
        }

        private void ProcessForm_Load(object sender, EventArgs e)
        {
            timer1.Enabled = true;
        }

        private void ProcessForm_Activated(object sender, EventArgs e)
        {
            this.Show();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
            Context.CommandTimeout = 8000;
            string sql = " insert into [ph.hdo].dbo.IDInvoice(OID,hdo,id,Material,ProjectNo,Suppliers) " +
                         " select b.OID,b.ch1t84,b.lotn84,b.vcat01,b.ch3t84,b.vndr01  from (          " +
                         " select newid() as OID,A.* from openquery(as400,'select distinct ch1t84,lotn84,vcat01,ch3t84,vndr01 " +
                         " from ault4f1.app84,ault2f1.inp80,ault4f1.pmp01  " +
                         " where cono84=cono80 and pnum84=pnum80 and lotn84=locn80 and cono80=cono01 and pnum80=item01 " +
                         " and cono84=''P1'' and strc80=''RT'' " +
                         " and sphy80>0 and ((ch1t84='''') or (substr(ch1t84,1,4) in (''HDO0'',''HDOH'',''HDOK'')))') A " +
                         " )b where b.lotn84 not in (select id from [ph.hdo].dbo.IDInvoice) ";
            int i = Context.ExecuteCommand(sql);       
            timer1.Enabled = false;
            this.Dispose();
            if (i != -1)
            {
                MessageBox.Show("导入数据成功!!");
            }
        }
    }
}
