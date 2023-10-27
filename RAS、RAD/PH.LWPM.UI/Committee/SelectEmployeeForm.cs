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

namespace PH.LWPM.UI.Committee
{
    public partial class SelectEmployeeForm : Form
    {
        public SelectEmployeeForm()
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            string SqlStr = @"select * from Workforce 
                              where IsProjection = 0 and Vacancy in ('SF', 'OSF', 'OV', 'BV') and (ReDate is null or ReDate > getdate()) and 
                                    isnull(InActive, 0) = 0 and isnull(MTM, 0) = 0 and HeadCount = 1";
            this.bsEmployee.DataSource = db.ExecuteQuery<PH.LWPM.BO.WorkForce>(SqlStr);
        }

        public PH.LWPM.BO.WorkForce SelectEmployee
        {
            get
            {
                return this.bsEmployee.Current as PH.LWPM.BO.WorkForce;
            }
        }

    }
}
