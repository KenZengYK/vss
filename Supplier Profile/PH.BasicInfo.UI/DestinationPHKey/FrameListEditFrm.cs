using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.BasicInfo.UI.DestinationPHKey
{
    public partial class FrameListEditFrm : DetailForm 
    {
        public FrameListEditFrm()
        {
            InitializeComponent();

            PH.Platform.Misc.BO.PHPlatformMiscDataContext dcont = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            var TransitModeItems = dcont.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitMode").Select(dr => dr.DataName).Distinct().ToList();

            this.cbTransitMode.Properties.Items.AddRange(TransitModeItems);
        }
    }
}
