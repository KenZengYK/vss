using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Reflection;

namespace PH.MR.BO
{
    public class MRReport
    {
        public MRReport()
        {
            this._seeMaterial = false;
            this.OrderLine = 0;
        }

        //區分板是哪個工廠做, 由David增加 2019-11-22
        public string Factory { get; set; }

        private double _jobn;
        public double JOBN
        {
            get { return _jobn; }
            set { _jobn = value; }
        }

        private string _cono;
        public string CONO
        {
            get { return _cono; }
            set { _cono = value; }
        }

        private string _cuso; //project no
        public string CUSO
        {
            get { return _cuso; }
            set { _cuso = value; }
        }

        private string _pcol;
        public string PCOL
        {
            get { return _pcol; }
            set { _pcol = value; }
        }

        private string _matd;
        public string MATD
        {
            get { return _matd; }
            set { _matd = value; }
        }

        private string _pstl;
        /// <summary>
        /// Parent Material
        /// </summary>
        public string PSTL
        {
            get { return _pstl; }
            set { _pstl = value; }
        }

        private string _parentCOL;
        public string ParentCOL
        {
            get { return _parentCOL; }
            set { _parentCOL = value; }
        }

        private string _parentSIZ;
        public string ParentSIZ
        {
            get { return _parentSIZ; }
            set { _parentSIZ = value; }
        }

        private string _cstl;
        /// <summary>
        /// material/erp item code
        /// </summary>
        public string CSTL
        {
            get { return _cstl; }
            set { _cstl = value; }
        }

        private string _ccol;
        public string CCOL
        {
            get { return _ccol; }
            set { _ccol = value; }
        }

        private string _csiz;
        public string CSIZ
        {
            get { return _csiz; }
            set { _csiz = value; }
        }

        private double _mwth;
        public double MWTH
        {
            get { return _mwth; }
            set { _mwth = value; }
        }

        private string _supc;
        public string SUPC
        {
            get { return _supc; }
            set { _supc = value; }
        }

        private double _corq;
        public double CORQ
        {
            get { return _corq; }
            set { _corq = value; }
        }

        private double _prpq;
        public double PRPQ
        {
            get { return _prpq; }
            set { _prpq = value; }
        }

        private double _minq;
        public double MINQ
        {
            get { return _minq; }
            set { _minq = value; }
        }

        private double _mltq;
        public double MLTQ
        {
            get { return _mltq; }
            set { _mltq = value; }
        }

        private double _uprc;
        public double UPRC
        {
            get { return _uprc; }
            set { _uprc = value; }
        }

        private string _okoc;
        public string OKOC
        {
            get { return _okoc; }
            set { _okoc = value; }
        }

        private string _rski;
        public string RSKI
        {
            get { return _rski; }
            set { _rski = value; }
        }

        private int _ltid;
        public int LTID
        {
            get { return _ltid; }
            set { _ltid = value; }
        }

        private string _mats;
        public string MATS
        {
            get { return _mats; }
            set { _mats = value; }
        }

        private string _rouc;
        public string ROUC
        {
            get { return _rouc; }
            set { _rouc = value; }
        }

        private int _levl;
        public int LEVL
        {
            get { return _levl; }
            set { _levl = value; }
        }

        private string _iunt;
        public string IUNT
        {
            get { return _iunt; }
            set { _iunt = value; }
        }

        private string _ordn;
        public string ORDN
        {
            get { return _ordn; }
            set { _ordn = value; }
        }

        private double _balq;
        public double BALQ
        {
            get { return _balq; }
            set { _balq = value; }
        }

        private double _diff1;
        public double DIFF1
        {
            get { return _diff1; }
            set { _diff1 = value; }
        }

        private double _diff2;
        public double DIFF2
        {
            get { return _diff2; }
            set { _diff2 = value; }
        }

        private double _pvsc;
        public double PVSC
        {
            get { return _pvsc; }
            set { _pvsc = value; }
        }

        private double _coos;
        public double COOS
        {
            get { return _coos; }
            set { _coos = value; }
        }

        private double _rsvp;
        public double RSVP
        {
            get { return _rsvp; }
            set { _rsvp = value; }
        }

        private double _rsrs;
        public double RSRS
        {
            get { return _rsrs; }
            set { _rsrs = value; }
        }

        private double _rsvs;
        public double RSVS
        {
            get { return _rsvs; }
            set { _rsvs = value; }
        }

        private double _aloc;
        public double ALOC
        {
            get { return _aloc; }
            set { _aloc = value; }
        }

        private double _cois;
        public double COIS
        {
            get { return _cois; }
            set { _cois = value; }
        }

        private double _exsp;
        public double EXSP
        {
            get { return _exsp; }
            set { _exsp = value; }
        }

        private double _exss;
        public double EXSS
        {
            get { return _exss; }
            set { _exss = value; }
        }

        private double _exrs;
        public double EXRS
        {
            get { return _exrs; }
            set { _exrs = value; }
        }

        private string _istr;
        public string ISTR
        {
            get { return _istr; }
            set { _istr = value; }
        }

        private string _word;
        public string WORD
        {
            get { return _word; }
            set { _word = value; }
        }

        private string _punt;
        public string PUNT
        {
            get { return _punt; }
            set { _punt = value; }
        }

        private string _vcat;
        public string VCAT
        {
            get { return _vcat; }
            set { _vcat = value; }
        }

        private double _sbalq;
        public double SBALQ
        {
            get { return _sbalq; }
            set { _sbalq = value; }
        }

        private string _stylno;
        public string STYLNO
        {
            get { return _stylno; }
            set { _stylno = value; }
        }

        private double _qper;
        public double QPER
        {
            get
            {
                _qper = QTOR == 0 ? 0 : CORQ / QTOR;
                return _qper;
            }
            //set { _qper = value; }
        }

        private double _qtor;
        public double QTOR
        {
            get { return _qtor; }
            set { _qtor = value; }
        }

        private int _sampleQty;
        public int SampleQty
        {
            get { return _sampleQty; }
            set { _sampleQty = value; }
        }

        private double _corq1;
        public double CORQ1
        {
            get
            {
                _corq1 = QPER * SampleQty;
                return _corq1;
            }
            //set { _qper = value; }
        }

        private string _psiz;
        public string PSIZ
        {
            get { return _psiz; }
            set { _psiz = value; }
        }

        private string _dsiz;
        public string DSIZ
        {
            get { return _dsiz; }
            set { _dsiz = value; }
        }

        private string _psiz1;
        public string PSIZ1
        {
            get { return _psiz1; }
            set { _psiz1 = value; }
        }

        private string _pfit1;
        public string PFIT1
        {
            get { return _pfit1; }
            set { _pfit1 = value; }
        }

        private string _dsiz1;
        public string DSIZ1
        {
            get { return _dsiz1; }
            set { _dsiz1 = value; }
        }

        private string _dfit1;
        public string DFIT1
        {
            get { return _dfit1; }
            set { _dfit1 = value; }
        }

        private bool _seeMaterial;// just for CMT Material
        public bool SeeMaterial
        {
            get { return _seeMaterial; }
            set { _seeMaterial = value; }
        }

        private string _swono;
        public string SWONO
        {
            get { return _swono; }
            set { _swono = value; }
        }

        private int _swoid;
        public int SWOID
        {
            get { return _swoid; }
            set { _swoid = value; }
        }

        private string _qn;
        public string QN
        {
            get { return _qn; }
            set { _qn = value; }
        }

        public decimal WeightHsCode { get; set; }
        public decimal TotalWeight { get; set; }
        public string MaterialType { get; set; }
        public string MaterialName { get; set; }
        public string MidcHSCode { get; set; }

        public int OrderLine { get; set; }
        public string ItemSizeCupDesc { get; set; }
        public string ItemSize { get; set; }
        public string ItemCup { get; set; }
        public string ItemSizeDesc { get; set; }
        public string ItemCupDesc { get; set; }
    }

    public class TableORM
    {
        public static List<EntityType> GetObjects<EntityType>(DataTable tb)
        {
            return GetObjects<EntityType>(tb, false);
        }
        public static List<EntityType> GetObjects<EntityType>(DataTable tb, bool ignoreCase)
        {
            List<EntityType> objects = new List<EntityType>();

            try
            {
                EntityType newObj = default(EntityType);

                foreach (System.Data.DataRow row in tb.Rows)
                {
                    newObj = (EntityType)typeof(EntityType).GetConstructor(new Type[0]).Invoke(null);

                    foreach (PropertyInfo pi in typeof(EntityType).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
                    {
                        try
                        {
                            if (pi.Name == "IsNew")
                            {
                                pi.SetValue(newObj, false, null);
                            }
                            else
                            {
                                string fieldName = GetColumnName(tb, pi.Name, ignoreCase);
                                if (fieldName == null) continue;
                                if (pi.CanWrite)
                                {
                                    //if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Double")
                                    //    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]), null);
                                    //else if (row[fieldName].GetType().Name == "Double" && pi.PropertyType.Name == "Decimal")
                                    //    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
                                    //else if (row[fieldName].GetType().Name == "Int32" && pi.PropertyType.Name == "Boolean")
                                    //    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
                                    //else
                                    //    pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);

                                    //--------------------------
                                    if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Double")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]), null);
                                    else if (row[fieldName].GetType().Name == "Double" && pi.PropertyType.Name == "Decimal")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
                                    else if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Int32")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]), null);
                                    else if (row[fieldName].GetType().Name == "String" && pi.PropertyType.Name == "Int32")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToInt32(row[fieldName]), null);
                                    else if (pi.PropertyType.Name == "String")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? "" : Convert.ToString(row[fieldName]).TrimEnd(), null);
                                    //else if (pi.PropertyType.Name == "Boolean")
                                    //{
                                    //    if (row[fieldName].GetType().Name == "Int32")
                                    //        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? false : Convert.ToBoolean(row[fieldName]), null);
                                    //    else if (row[fieldName].GetType().Name != "DBNull")
                                    //        System.Windows.Forms.MessageBox.Show("Test");
                                    //}
                                    else
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);

                                }
                            }
                        }
                        catch
                        {

                        }

                    }

                    objects.Add(newObj);
                }

                return objects;

            }
            catch (Exception err)
            {
                //MessageBox.Show("List<EntityType> GetObjects<EntityType>()", "Error");
            }

            return objects;

        }
        private static string GetColumnName(DataTable tb, string propertyName, bool ignoreCase)
        {
            foreach (DataColumn col in tb.Columns)
            {
                if (string.Compare(propertyName, col.ColumnName, ignoreCase) == 0) return col.ColumnName;
            }
            return null;
        }
    }
}
