using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF
{
    public partial class SecondmendListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SecondmendListForm()
        {
            InitializeComponent();
        }

        public SecondmendListForm(string AWorkForceID)
            : this()
        {
            this.WorkForceID = AWorkForceID;
        }

        public string WorkForceID { get; set; }

        public override void DataBind()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.Secondments;
            if (!string.IsNullOrEmpty(this.WorkForceID))
            {
                this.BindingSource.DataSource = context.Secondments.Where(p => p.WorkForceID == this.WorkForceID);
            }

            this.EditorTypeName = typeof(SecondmentDetailForm).FullName;
            base.DataBind();
        }
    }

    //public enum SecondmentWorkMode
    //{
    //    /// <summary>
    //    /// 單人維護模式
    //    /// </summary>
    //    Simple,
    //    /// <summary>
    //    /// 顯示所有人的信息，不顯示過期的信息
    //    /// </summary>
    //    All
    //}
}
