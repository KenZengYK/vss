using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Data.Aggregation;
using DevExtreme.AspNet.Data.Helpers;
using QEFullInspetion.Controllers;

namespace QEFullInspection.Controllers
{
    public class TotalWIPSummaryAggregator<T> : Aggregator<T>
    {

        public TotalWIPSummaryAggregator(IAccessor<T> accessor) : base(accessor)
        {
        }

        List<string> QNList = new List<string>();
        List<string> FactoryList = new List<string>();
        int TotalQNNO;
        public override void Step(T container, string selector)
        {
            var QNNO = Convert.ToString(Accessor.Read(container, "QNNO"));
            var Factory = Convert.ToString(Accessor.Read(container, "Factory"));
            if (!QNList.Contains(QNNO))
            {
                QNList.Add(QNNO);
            }

            if (!FactoryList.Contains(Factory))
            {
                FactoryList.Add(Factory);
            }

            //TotalQNNO = QNList.Count();
        }

        public override object Finish()
        {
            List<string> lists = new List<string>();
            lists.Add(QNList.Count().ToString());
            lists.Add(FactoryList.Count().ToString());

            return lists.ToArray();

            //return TotalQNNO;
            //WIPResult result = new WIPResult();
            //result.QNNO = QNList.Count().ToString();
            //result.Factory = FactoryList.Count().ToString();
            //return result;
        }
    }
}
