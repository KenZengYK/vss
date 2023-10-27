using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;


namespace PH.LineBalanceII.BO
{
    ///排序用的类(实现倒序)
    /// <summary>
    /// 排序用的类(实现倒序)
    /// </summary>
    public class ReverserClass : IComparer
    {
        int IComparer.Compare(Object x, Object y)
        {
            return ((new CaseInsensitiveComparer()).Compare(y, x));
        }
    }
}