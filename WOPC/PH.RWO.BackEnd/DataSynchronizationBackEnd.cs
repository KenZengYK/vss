using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BackEnd.BO;

namespace PH.RWO.BackEnd
{
    public partial class DataSynchronizationBackEnd : UserControl, IParameterSetControl, IServerJob
    {
        public DataSynchronizationBackEnd()
        {
            InitializeComponent();
        }

        public void BackEndJob(string parameters)
        {
        }

        #region IParameterSetControl Members
        /// <summary>
        /// 獲取參數
        /// </summary>
        /// <returns>返回字符串</returns>
        public string GetParameter()
        {
            return "";
        }

        /// <summary>
        /// 實現將參數回傳給UI
        /// </summary>
        /// <param name="parameters">參數</param>
        /// <returns>the control of  setting uc</returns>
        public UserControl ParameterControl(string parameters)
        {
            DataSynchronizationBackEnd uc = new DataSynchronizationBackEnd();
            return uc;
        }
        #endregion
    }


}
