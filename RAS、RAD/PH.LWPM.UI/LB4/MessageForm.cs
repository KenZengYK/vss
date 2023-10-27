using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.LWPM.UI.LB4
{
    public partial class MessageForm : DevExpress.XtraEditors.XtraForm
    {
        public MessageForm(string AMessage, List<string> ANoLB3List)
        {
            InitializeComponent();
            this.lbMessage.Text = AMessage;

            this.listMessage.Items.Clear();
            if (ANoLB3List.Count == 0)
            {
                this.listMessage.Items.Add("Style(Not do LB3):");
                this.listMessage.Items.Add("None");
            }
            else
            {
                this.listMessage.Items.AddRange(ANoLB3List.ToArray());
                this.listMessage.Items.Insert(0, "Style(Not do LB3):");
            }
        }
    }
}