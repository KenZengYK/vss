using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraTreeList.Nodes;

namespace PH.LWPM.UI.MasterDB
{
    public partial class CountryRegionListForm : PH.Platform.UI.CS.BaseTreeListForm
    {
        public CountryRegionListForm()
        {
            InitializeComponent();
        }

        string sqlcmd = @"select * from basecode where Type='Country'  
                                 union select * from basecode where Type='REGION'
                                 union select * from basecode where Type='AREA'";
        RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(CountryRegionEditForm).FullName;
            this.DataContext = context;
            this.BindingSource.DataSource = context.ExecuteQuery<BaseCode>(sqlcmd);
        }



        public int SelectIdx;
        public TreeListNode SelectNode;
        public bool isaddchild;
        public BaseCode objparent;


        protected override void AddChildNode()
        {
            isaddchild = true;
            objparent = this.BindingSource.Current as BaseCode;

            //RAPLQDataContext rdc = this.DataContext as RAPLQDataContext;       
            //SelectIdx = this.BindingSource.Position; //trRegion.GetNodeIndex(trRegion.FocusedNode);
            //SelectNode = BaseTreeList.FocusedNode;

            base.AddChildNode();
        }

        private void comboBoxEdit1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string SqlType = @"  with f as 
                                         (
                                            select * from BaseCode where Type = 'REGION' and Code = '{0}' and isnull(ParentCode, '') = ''
                                             union all
	                                        select a.* from BaseCode as a join f as b on a.ParentCode = b.Code
                                          )
                                    select * from f";

            if (cbChoseTyoe.SelectedIndex == 1)
            {
                SqlType = string.Format(SqlType, "Country001");
                this.BindingSource.DataSource = context.ExecuteQuery<BaseCode>(SqlType);
            }
            else if (cbChoseTyoe.SelectedIndex == 2)
            {
                SqlType = string.Format(SqlType, "Country002");
                this.BindingSource.DataSource = context.ExecuteQuery<BaseCode>(SqlType);
            }
            else
            {
                this.BindingSource.DataSource = context.ExecuteQuery<BaseCode>(sqlcmd);
            }
        }


    }
}