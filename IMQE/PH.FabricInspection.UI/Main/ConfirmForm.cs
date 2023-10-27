using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI.Main
{
    public partial class ConfirmForm : DevExpress.XtraEditors.XtraForm
    {
        public ConfirmForm()
        {
            InitializeComponent();
        }
        public ConfirmTypes ConfirmType
        {
            get
            {
                return (ConfirmTypes)radConfirmType.SelectedIndex;
            }
        }
    }

    public enum ConfirmTypes
    {
        /// <summary>
        /// ֻConfirm��ǰѡ���Audit#
        /// </summary>
        OnlyAuditNo,
        /// <summary>
        /// Confirm Layout����ʾ�����е���
        /// </summary>
        All
    }


}