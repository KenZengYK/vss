using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF
{
    public partial class SelectJobTitleForm : Form
    {
        public SelectJobTitleForm()
        {
            InitializeComponent();
            GetData();
        }

        void GetData()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsJobTitle.DataSource = db.Master_data_For_Job_Titles;
        }

        public Master_data_For_Job_Title SelectJobTitle
        {
            get
            {
                return this.bsJobTitle.Current as Master_data_For_Job_Title;
            }
        }

    }
}
