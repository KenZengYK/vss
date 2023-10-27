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

namespace PH.SPC.UI
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
            ccbe.Properties.DisplayMember = "DataName";
            ccbe.Properties.ValueMember = "DataCode";
            coll = ccbe.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "DataCode", 0));
            coll.Add(new LookUpColumnInfo("DataName", "DataName", 0));


        }
        public static void BandCheckCombox(LookUpEdit ccbe, string dataType,string viewtypevalue)
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
        public static List<Misc_DataDictionary> GetSys_BaseData(string dataType)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            List<Misc_DataDictionary> list = new List<Misc_DataDictionary>();

            list = (from c in context.Misc_DataDictionaries
                    where c.DataType == dataType
                    select c).ToList<Misc_DataDictionary>();

            return list;
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
