using System;
using System.Collections.Generic;
using System.Collections;
using System.Drawing;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Windows.Forms;
using System.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Linq;
using System.Text;
using PH.Platform.Misc.BO;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;

namespace PH.MobileQC.UI
{
    public static class PublicServices
    {
        public static void BandCheckCombox(CheckedComboBoxEdit ccbe, string dataType)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(dataType);
            foreach (Misc_DataDictionary obj in bdList)
            {
                ccbe.Properties.Items.Add(obj.DataCode);
            }

        }
        public static void BandCheckCombox(CheckedComboBoxEdit ccbe, List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(misc_DataDictionaryAll, dataType);
            foreach (Misc_DataDictionary obj in bdList)
            {
                ccbe.Properties.Items.Add(obj.DataCode);
            }

        }
        public static void BandCheckCombox(CheckedComboBoxEdit ccbe, List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType, string defaultDatacode)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(misc_DataDictionaryAll, dataType);
            int i = 0;
            foreach (Misc_DataDictionary obj in bdList)
            {
                ccbe.Properties.Items.Add(obj.DataCode);
                if (obj.DataCode == defaultDatacode)
                {
                    ccbe.Properties.Items[defaultDatacode].CheckState = CheckState.Checked;
                }
                i++;
            }

        }

        public static void BandCheckCombox(ComboBoxEdit ccbe, string dataType)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(dataType);
            foreach (Misc_DataDictionary obj in bdList)
            {
                ccbe.Properties.Items.Add(obj.DataCode);
            }

        }
        public static void BandCheckCombox(ComboBoxEdit ccbe, List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(misc_DataDictionaryAll, dataType);
            foreach (Misc_DataDictionary obj in bdList)
            {
                ccbe.Properties.Items.Add(obj.DataCode);
            }

        }
        public static void BandCheckCombox(ComboBoxEdit ccbe, List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType, string defaultDatacode)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(misc_DataDictionaryAll, dataType);
            int i = 0;
            foreach (Misc_DataDictionary obj in bdList)
            {
                ccbe.Properties.Items.Add(obj.DataCode);
                if (obj.DataCode == defaultDatacode)
                {
                    ccbe.SelectedIndex = i;
                }
                i++;
            }

        }

        public static void BandCheckCombox(LookUpEdit ccbe, string dataType)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(dataType);

            LookUpColumnInfoCollection coll = ccbe.Properties.Columns;
            ccbe.Properties.DataSource = bdList;
            //ccbe.Properties.DisplayMember = "DataName";
            //ccbe.Properties.ValueMember = "DataCode";
            coll = ccbe.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "DataCode", 0));
            coll.Add(new LookUpColumnInfo("DataName", "DataName", 0));


        }
        public static void BandCheckCombox(LookUpEdit ccbe, string dataType, string viewtypevalue)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(dataType);

            LookUpColumnInfoCollection coll = ccbe.Properties.Columns;
            ccbe.Properties.DataSource = bdList;

            if (viewtypevalue == ViewType.DataCodeDescription.ToString())
            {
                ccbe.Properties.DisplayMember = "Description";
                ccbe.Properties.ValueMember = "DataCode";
                coll = ccbe.Properties.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "DataCode", 0));
                coll.Add(new LookUpColumnInfo("Description", "Description", 0));
            }
            else
            {
                ccbe.Properties.DisplayMember = "DataName";
                ccbe.Properties.ValueMember = "DataCode";
                coll = ccbe.Properties.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "DataCode", 0));
                coll.Add(new LookUpColumnInfo("DataName", "DataName", 0));
            }


        }
        public static void BandCheckCombox(LookUpEdit ccbe, List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(misc_DataDictionaryAll, dataType);

            LookUpColumnInfoCollection coll = ccbe.Properties.Columns;
            ccbe.Properties.DataSource = bdList;
            ccbe.Properties.DisplayMember = "DataName";
            ccbe.Properties.ValueMember = "DataCode";
            coll = ccbe.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "DataCode", 0));
            coll.Add(new LookUpColumnInfo("DataName", "DataName", 0));



        }
        public static void BandCheckCombox(LookUpEdit ccbe, List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType, string defaultDatacode)
        {
            List<Misc_DataDictionary> bdList = GetSys_BaseData(misc_DataDictionaryAll, dataType);

            LookUpColumnInfoCollection coll = ccbe.Properties.Columns;
            ccbe.Properties.DataSource = bdList;
            ccbe.Properties.DisplayMember = "DataName";
            ccbe.Properties.ValueMember = "DataCode";
            coll = ccbe.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "DataCode", 0));
            coll.Add(new LookUpColumnInfo("DataName", "DataName", 0));


        }


        public static List<Misc_DataDictionary> GetSys_BaseData(List<Misc_DataDictionary> misc_DataDictionaryAll, string dataType)
        {
            List<Misc_DataDictionary> list = new List<Misc_DataDictionary>();

            list = (from c in misc_DataDictionaryAll
                    where c.DataType == dataType
                    select c).ToList<Misc_DataDictionary>();

            return list;
        }


        //Xsj20141224:添加儲存OTN數據字典基礎信息，用於提高系統運行效率。
        public static List<Misc_DataDictionary> OTNInfoList = new List<Misc_DataDictionary>(); 
        /// <summary>
        /// Xsj20141224:添加儲存OTN數據字典基礎信息，用於提高系統運行效率。 
        /// </summary>
        /// <returns></returns>
        public static List<Misc_DataDictionary> GetOTNData()
        { 
            //List<Misc_DataDictionary> list = new List<Misc_DataDictionary>();
            if (OTNInfoList.Count == 0)
            {
                OTNInfoList = GetSys_BaseData("PH.MobileQC.OTN");
                //list = OTNInfoList;
            }
            //return list;
            return OTNInfoList;
        }



        public static List<Misc_DataDictionary> GetSys_BaseData(string dataType)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            List<Misc_DataDictionary> list = new List<Misc_DataDictionary>();

            list = (from c in context.Misc_DataDictionaries
                    where c.DataType == dataType
                    select c).ToList<Misc_DataDictionary>(); 

            return list;
        }

        //public static string ReturnOTNValue()
        //{
        //    List<Misc_DataDictionary> list = GetSys_BaseData("PH.MobileQC.OTN");  
        //    DateTime now = DateTime.Now;
        //    string str = ""; 
        //    foreach (Misc_DataDictionary item in list)
        //    {
        //        string[] dates = item.DataName.Split(Convert.ToChar("-"));

        //        string[] timeForm = dates[0].Split(Convert.ToChar(":"));
        //        int hour1 = Convert.ToInt16(timeForm[0]);
        //        int min1 = Convert.ToInt16(timeForm[1]);
        //        DateTime dateForm = Convert.ToDateTime(DateTime.Now.ToShortDateString()).AddHours(hour1).AddMinutes(min1);

        //        string[] timeEnd = dates[1].Split(Convert.ToChar(":"));
        //        int hour2 = Convert.ToInt16(timeEnd[0]);
        //        int min2 = Convert.ToInt16(timeEnd[1]);
        //        DateTime dateEnd = Convert.ToDateTime(DateTime.Now.ToShortDateString()).AddHours(hour2).AddMinutes(min2);

        //        if (now > dateForm && now < dateEnd)
        //        {
        //            str = item.DataCode;
        //            break;
        //        }
        //    } 
        //    return str; 
        //}


       //Xsj20141224:注釋以上代碼，添加以下代碼。目的是為了提高運行效率。 
        public static string ReturnOTNValue()
        { 
            //Xsj20141224:注釋以上代碼，添加以下代碼。目的是為了提高運行效率。 
            if (OTNInfoList.Count == 0)
            {
                OTNInfoList = GetSys_BaseData("PH.MobileQC.OTN");
            }

            DateTime now = DateTime.Now;
            string str = "";

            foreach (Misc_DataDictionary item in OTNInfoList)
            {
                string[] dates = item.DataName.Split(Convert.ToChar("-"));

                string[] timeForm = dates[0].Split(Convert.ToChar(":"));
                int hour1 = Convert.ToInt16(timeForm[0]);
                int min1 = Convert.ToInt16(timeForm[1]);
                DateTime dateForm = Convert.ToDateTime(DateTime.Now.ToShortDateString()).AddHours(hour1).AddMinutes(min1);

                string[] timeEnd = dates[1].Split(Convert.ToChar(":"));
                int hour2 = Convert.ToInt16(timeEnd[0]);
                int min2 = Convert.ToInt16(timeEnd[1]);
                DateTime dateEnd = Convert.ToDateTime(DateTime.Now.ToShortDateString()).AddHours(hour2).AddMinutes(min2);

                if (now > dateForm && now < dateEnd)
                {
                    str = item.DataCode;
                    break;
                }
            }

            return str;

        }

    }

    public enum ViewType
    {
        DataCode,
        DataCodeDataName,
        DataCodeDescription,
        DatacodeDataNameDescription,
    }
}
