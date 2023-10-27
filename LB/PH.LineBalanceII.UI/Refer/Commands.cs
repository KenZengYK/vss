using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.LineBalanceII.UI 
{
    /// <summary>
    /// 網格行標志
    /// </summary>
    public enum GridRowFlag
    {
        /// <summary>
        /// 當前行
        /// </summary>
        CurrentRow,
        /// <summary>
        /// 上一行
        /// </summary>
        PriorRow,
        /// <summary>
        /// 下一行
        /// </summary>
        NextRow
    }


    /// <summary>
    /// 移動類型
    /// </summary>
    public enum MoveType
    {
        /// <summary>
        /// 上移
        /// </summary>
        MoveUp,
        /// <summary>
        /// 下移
        /// </summary>
        MoveDown
    }

    public static class Commands
    {
        public static PH.LineBalanceII.BO.LBPhare ConvertLBPhare(string str)
        {
            return  PH.LineBalanceII.BO.Commands.ConvertLBPhare(str);
        }

        public static string ConvertLangeType(string databaselangtype)
        {
            string newstring = "";

            switch (databaselangtype)
            {
                case "CN":
                    newstring = "ZH-CHS";
                    break;
                case "TW":
                    newstring = "ZH-TW";
                    break;               

                default:
                    newstring = databaselangtype;

                    break;
            }

            return newstring;

        
        }

    }

   
}
