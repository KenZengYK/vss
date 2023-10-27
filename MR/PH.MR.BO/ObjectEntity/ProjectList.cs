using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MR.BO
{
    public class ProjectList : PH.Platform.BO.BaseEntity
    {
        public ProjectList()
        {

        }

        private string _company;
        public string Company
        {
            get { return _company; }
            set { _company = value; }
        }

        private string _project;
        public string Project
        {
            get { return _project; }
            set { _project = value; }
        }

        private string _customer;
        public string Customer
        {
            get
            {
                _customer = _project.PadRight(4).Substring(0, 4);
                return _customer;
            }
        }

    }
}
