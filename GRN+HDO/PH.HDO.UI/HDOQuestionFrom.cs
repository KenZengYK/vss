using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.HDO.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.BO;

namespace PH.HDO.UI
{
    public partial class HDOQuestionFrom : Form
    {
        //public GRNNoHDOFrom grnfrom = new GRNNoHDOFrom();
        public HDOQuestionFrom()
        {
            InitializeComponent();
        }

        public string Company { get { return this.txtcompanyfrom.Text; } }
        public string Supplier { get { return this.txtsupplier.Text; } }
        public string Stockroomfrom { get { return this.txtstockroomfrom.Text; } }
        public string Stockroomto { get { return this.txtstockroomto.Text; } }
        public string POfrom { get { return this.txtordrenumfrom.Text; } }
        public string POto { get { return this.txtordernumto.Text; } }   


    }
}
