using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Reflection;

namespace PH.POPC.AutoUpdate.UI
{

    public class ERPPOPC
    {
        public ERPPOPC()
        {
            this._IsDirty = false;
            this._IsNew = true;
            this._colorShadeIsChange = false;
            this._guid = Guid.NewGuid();
        }

        #region 更新开关
        private bool _IsDirty;
        /// <summary>
        /// 內容是否被更改過
        /// </summary>
        public bool IsDirty
        {
            get { return _IsDirty; }
            set { _IsDirty = value; }
        }

        private bool _IsNew;
        /// <summary>
        /// 是否是新的,SQL2000里面沒有記錄的
        /// </summary>
        public bool IsNew
        {
            get { return _IsNew; }
            set { _IsNew = value; }
        }

        private bool _colorShadeIsChange;
        /// <summary>
        /// 指示Color Shade是否有更改过
        /// </summary>
        public bool ColorShadeIsChange
        {
            get { return _colorShadeIsChange; }
            set { _colorShadeIsChange = value; }
        }

        #endregion

        private Guid _guid;
        public Guid GUID
        {
            get { return _guid; }
            set { _guid = value; }
        }

        #region PRIMARY Key

        private string _cono;//2
        /// <summary>
        /// 主键 公司代码
        /// </summary>
        public string cono
        {
            get { return _cono; }
            set { _cono = value; OnChanged(); }
        }

        private string _Pono;//7
        /// <summary>
        /// 主键 采购单号
        /// </summary>
        public string Pono
        {
            get { return _Pono; }
            set { _Pono = value; OnChanged(); }
        }

        private int _Line1;
        /// <summary>
        /// 主键 OrderLine
        /// </summary>
        public int Line1
        {
            get { return _Line1; }
            set { _Line1 = value; OnChanged(); }
        }

        private string _Sku;//(15)  NOT ;
        /// <summary>
        /// 主键 ItemCode, 15个字符
        /// </summary>
        public string Sku
        {
            get { return _Sku; }
            set { _Sku = value; OnChanged(); }
        }

        #endregion

        private System.String _item;
        public System.String Item
        {
            get { return _item; }
            set { _item = value; OnChanged(); }
        }

        private System.String _col;
        public System.String Col
        {
            get { return _col; }
            set { _col = value; OnChanged(); }
        }

        private System.Int32 _podt;
        public System.Int32 Podt
        {
            get { return _podt; }
            set { _podt = value; OnChanged(); }
        }

        private System.String _jobno;
        public System.String Jobno
        {
            get { return _jobno; }
            set { _jobno = value; OnChanged(); }
        }

        private System.String _supp;
        public System.String Supp
        {
            get { return _supp; }
            set { _supp = value; OnChanged(); }
        }

        private System.String _conf;
        public System.String Conf
        {
            get { return _conf; }
            set { _conf = value; OnChanged(); }
        }

        private System.DateTime _subdt;
        public System.DateTime Subdt
        {
            get { return _subdt; }
            set { _subdt = value; OnChanged(); }
        }

        private System.Int32 _ddt;
        public System.Int32 Ddt
        {
            get { return _ddt; }
            set { _ddt = value; OnChanged(); }
        }

        private System.Double _qty;
        public System.Double Qty
        {
            get { return _qty; }
            set { _qty = value; OnChanged(); }
        }

        private System.String _flag1;
        public System.String Flag1
        {
            get { return _flag1; }
            set { _flag1 = value; OnChanged(); }
        }

        private System.String _lc;
        public System.String Lc
        {
            get { return _lc; }
            set { _lc = value; OnChanged(); }
        }

        private System.String _hdl;
        public System.String Hdl
        {
            get { return _hdl; }
            set { _hdl = value; OnChanged(); }
        }

        private System.String _clrs;
        public System.String Clrs
        {
            get { return _clrs; }
            set { _clrs = value; OnChanged(); _colorShadeIsChange = true; }
        }

        private System.DateTime _swatch;
        public System.DateTime Swatch
        {
            get { return _swatch; }
            set { _swatch = value; OnChanged(); }
        }

        private System.DateTime _lab;
        public System.DateTime Lab
        {
            get { return _lab; }
            set { _lab = value; OnChanged(); }
        }

        private System.Double _osqty;
        public System.Double Osqty
        {
            get { return _osqty; }
            set { _osqty = value; OnChanged(); }
        }

        private System.Double _px;
        public System.Double Px
        {
            get { return _px; }
            set { _px = value; OnChanged(); }
        }

        private System.DateTime _strdt;
        public System.DateTime strdt
        {
            get { return _strdt; }
            set { _strdt = value; OnChanged(); }
        }

        private System.Int32 _swdiff;
        public System.Int32 swdiff
        {
            get { return _swdiff; }
            set { _swdiff = value; OnChanged(); }
        }

        private System.DateTime _swdt;
        public System.DateTime swdt
        {
            get { return _swdt; }
            set { _swdt = value; OnChanged(); }
        }

        private System.Boolean _labok;
        public System.Boolean labok
        {
            get { return _labok; }
            set { _labok = value; OnChanged(); }
        }

        private System.Int32 _ladiff;
        public System.Int32 ladiff
        {
            get { return _ladiff; }
            set { _ladiff = value; OnChanged(); }
        }

        private System.DateTime _ladt;
        public System.DateTime ladt
        {
            get { return _ladt; }
            set { _ladt = value; OnChanged(); }
        }

        private System.String _whkept;
        public System.String whkept
        {
            get { return _whkept; }
            set { _whkept = value; OnChanged(); }
        }

        private System.String _qc;
        public System.String qc
        {
            get { return _qc; }
            set { _qc = value; OnChanged(); }
        }

        private System.DateTime _cfdmetd;
        public System.DateTime CFDMETD
        {
            get { return _cfdmetd; }
            set { _cfdmetd = value; OnChanged(); }
        }

        private int _leadtime;
        public int Leadtime
        {
            get { return _leadtime; }
            set { _leadtime = value; }
        }

        private System.DateTime _transitLeadtimed;
        public System.DateTime TransitLeadtime
        {
            get
            {
                _transitLeadtimed = _cfdmetd == DateTime.MinValue ? _cfdmetd : _cfdmetd.AddDays(_leadtime);//= Confirm ETD Date + Leadtime
                return _transitLeadtimed;
            }
        }

        private System.DateTime _etasl;
        public System.DateTime ETASL
        {
            get { return _etasl; }
            set { _etasl = value; OnChanged(); }
        }

        private System.String _remark;
        public System.String REMARK
        {
            get { return _remark; }
            set { _remark = value; OnChanged(); }
        }

        private System.Double _rate;
        public System.Double Rate
        {
            get { return _rate; }
            set { _rate = value; OnChanged(); }
        }

        private System.String _diprj;
        public System.String DIPRJ
        {
            get { return _diprj; }
            set { _diprj = value; OnChanged(); }
        }

        private System.String _dipok;
        public System.String DIPOK
        {
            get { return _dipok; }
            set { _dipok = value; OnChanged(); }
        }

        private System.String _submrj;
        public System.String SUBMRJ
        {
            get { return _submrj; }
            set { _submrj = value; OnChanged(); }
        }

        private System.String _submok;
        public System.String SUBMOK
        {
            get { return _submok; }
            set { _submok = value; OnChanged(); }
        }

        private System.String _unit;
        public System.String Unit
        {
            get { return _unit; }
            set { _unit = value; OnChanged(); }
        }

        private System.String _curr;
        public System.String CURR
        {
            get { return _curr; }
            set { _curr = value; OnChanged(); }
        }

        private System.String _type;
        public System.String Type
        {
            get { return _type; }
            set { _type = value; OnChanged(); }
        }

        private System.String _plnn;
        public System.String plnn
        {
            get { return _plnn; }
            set { _plnn = value; OnChanged(); }
        }

        private System.String _shipmode;
        public System.String ShipMode
        {
            get { return _shipmode; }
            set { _shipmode = value; OnChanged(); }
        }

        private System.Int32 _sizsaa;
        public System.Int32 SIZSAA
        {
            get { return _sizsaa; }
            set { _sizsaa = value; OnChanged(); }
        }

        private System.Int32 _fitsaa;
        public System.Int32 FITSAA
        {
            get { return _fitsaa; }
            set { _fitsaa = value; OnChanged(); }
        }

        private System.String _dsiz15;
        public System.String DSIZ15
        {
            get { return _dsiz15; }
            set { _dsiz15 = value; OnChanged(); }
        }

        private System.String _vcat03;
        public System.String VCAT03
        {
            get { return _vcat03; }
            set { _vcat03 = value; OnChanged(); }
        }

        private System.String _dept53;
        public System.String dept53
        {
            get { return _dept53; }
            set { _dept53 = value; OnChanged(); }
        }

        private System.String _dtdr;
        public System.String Dtdr
        {
            get { return _dtdr; }
            set { _dtdr = value; OnChanged(); }
        }

        private System.Int32 _ocls02;
        public System.Int32 ocls02
        {
            get { return _ocls02; }
            set { _ocls02 = value; OnChanged(); }
        }

        private System.Double _cnvf53;
        public System.Double cnvf53
        {
            get { return _cnvf53; }
            set { _cnvf53 = value; OnChanged(); }
        }

        private System.String _suom53;
        public System.String suom53
        {
            get { return _suom53; }
            set { _suom53 = value; OnChanged(); }
        }

        private System.String _wsta40;
        public System.String WSTA40
        {
            get { return _wsta40; }
            set { _wsta40 = value; OnChanged(); }
        }

        private System.String _garmentpo;
        public System.String GarmentPO
        {
            get { return _garmentpo; }
            set { _garmentpo = value; OnChanged(); }
        }

        private System.String _styleno;
        public System.String StyleNO
        {
            get { return _styleno; }
            set { _styleno = value; OnChanged(); }
        }

        private System.String _factory;
        public System.String Factory
        {
            get { return _factory; }
            set { _factory = value; OnChanged(); }
        }

        private System.String _dbzy;
        public System.String DBZY
        {
            get { return _dbzy; }
            set { _dbzy = value; OnChanged(); }
        }

        private System.Int32 _recd59;
        public System.Int32 RECD59
        {
            get { return _recd59; }
            set { _recd59 = value; OnChanged(); }
        }

        private System.Decimal _totalreceivedqty;
        public System.Decimal TotalReceivedQty
        {
            get { return _totalreceivedqty; }
            set { _totalreceivedqty = value; OnChanged(); }
        }

        private System.Decimal _overreceipttolerance;
        public System.Decimal OverReceiptTolerance
        {
            get { return _overreceipttolerance; }
            set { _overreceipttolerance = value; OnChanged(); }
        }

        private System.String _overshiqty;
        public System.String OvershiQty
        {
            get { return _overshiqty; }
            set { _overshiqty = value; OnChanged(); }
        }

        private System.Int32 _aweek;
        public System.Int32 aWeek
        {
            get { return _aweek; }
            set { _aweek = value; OnChanged(); }
        }

        private System.Double _overshipqty;
        public System.Double OvershipQty
        {
            get { return _overshipqty; }
            set { _overshipqty = value; OnChanged(); }
        }

        private System.Double _overshippercent;
        public System.Double OvershipPercent
        {
            get { return _overshippercent; }
            set { _overshippercent = value; OnChanged(); }
        }

        private System.Int32 _dbzynew;
        public System.Int32 DBZYNew
        {
            get { return _dbzynew; }
            set { _dbzynew = value; OnChanged(); }
        }

        private System.String _col1;
        public System.String COL1
        {
            get { return _col1; }
            set { _col1 = value; OnChanged(); }
        }

        private System.String _customer;
        public System.String Customer
        {
            get { return _customer; }
            set { _customer = value; OnChanged(); }
        }

        private System.String _itemtype;
        public System.String ItemType
        {
            get { return _itemtype; }
            set { _itemtype = value; OnChanged(); }
        }

        private System.String _ddtstr;
        public System.String DdtStr
        {
            get { return _ddtstr; }
            set { _ddtstr = value; OnChanged(); }
        }

        private System.String _podtstr;
        public System.String podtStr
        {
            get { return _podtstr; }
            set { _podtstr = value; OnChanged(); }
        }

        private System.String _recd;
        public System.String recd
        {
            get { return _recd; }
            set { _recd = value; OnChanged(); }
        }

        private System.Double _amount;
        public System.Double AMount
        {
            get { return _amount; }
            set { _amount = value; OnChanged(); }
        }

        private System.Double _phqty;
        public System.Double PHQTY
        {
            get { return _phqty; }
            set { _phqty = value; OnChanged(); }
        }

        private System.Double _suppqty;
        public System.Double SuppQTY
        {
            get { return _suppqty; }
            set { _suppqty = value; OnChanged(); }
        }

        private System.Double _supposqty;
        public System.Double SuppOSQTY
        {
            get { return _supposqty; }
            set { _supposqty = value; OnChanged(); }
        }

        private System.Int32 _diprjrej;
        public System.Int32 DipRjRej
        {
            get { return _diprjrej; }
            set { _diprjrej = value; OnChanged(); }
        }

        private System.String _diprjopdate;
        public System.String DipRjOpDate
        {
            get { return _diprjopdate; }
            set { _diprjopdate = value; OnChanged(); }
        }

        private System.String _dipstatus;
        public System.String DIPStatus
        {
            get { return _dipstatus; }
            set { _dipstatus = value; OnChanged(); }
        }

        private System.Int32 _submnorej;
        public System.Int32 SubmnoRej
        {
            get { return _submnorej; }
            set { _submnorej = value; OnChanged(); }
        }

        private System.String _submnoopdate;
        public System.String SubmnoOpDate
        {
            get { return _submnoopdate; }
            set { _submnoopdate = value; OnChanged(); }
        }

        private System.String _submstatus;
        public System.String SubmStatus
        {
            get { return _submstatus; }
            set { _submstatus = value; OnChanged(); }
        }

        private System.String _submitno;
        public System.String SubmitNo
        {
            get { return _submitno; }
            set { _submitno = value; OnChanged(); }
        }

        private System.Int32 _swatchrej;
        public System.Int32 SwatchRej
        {
            get { return _swatchrej; }
            set { _swatchrej = value; OnChanged(); }
        }

        private System.String _swatchdate;
        public System.String SwatchDate
        {
            get { return _swatchdate; }
            set { _swatchdate = value; OnChanged(); }
        }

        private System.DateTime _confirmdate;
        public System.DateTime ConfirmDate
        {
            get { return _confirmdate; }
            set { _confirmdate = value; OnChanged(); }
        }

        public void OnChanged()
        {
            this.IsDirty = true;
        }
    }

    public class POList
    {

        public int SeqNO { set; get; }
        public POList Clone()
        {
            return this.MemberwiseClone() as POList;
        }

        private int _dt;
        public int DT
        {
            get { return _dt; }
            set { _dt = value; }
        }
        private string _tm;
        public string TM
        {
            get { return _tm; }
            set { _tm = value; }
        }
        private string _jobn;
        public string JOBN
        {
            get { return _jobn; }
            set { _jobn = value; }
        }

        public bool Flag { get; set; }

        public POList()
        {
            GUID = Guid.NewGuid();
        }
        public Guid GUID { get; set; }

        private string _cono;
        public string CONO
        {
            get
            {
                return _cono;
            }
            set
            {
                _cono = value;
            }
        }

        private string _pono;
        public string PONO
        {
            get
            {
                return _pono;
            }
            set
            {
                _pono = value;
            }
        }

        private string _event;
        public string EVENT
        {
            get
            {
                return _event;
            }
            set
            {
                _event = value;
            }
        }

        private string _updateTime;
        public string UPDATETIME
        {
            get
            {
                return _updateTime;
            }
            set
            {
                _updateTime = value;
            }
        }

        private DateTime _pcDateTime;
        public DateTime PCDATETIME
        {
            get
            {
                return _pcDateTime;
            }
            set
            {
                _pcDateTime = value;
            }
        }

        private bool _flag;
        public bool FLAG
        {
            get
            {
                return _flag;
            }
            set
            {
                _flag = value;
            }
        }

        private string _tableName;
        public string TableName
        {
            get
            {
                return _tableName;
            }
            set
            {
                _tableName = value;
            }
        }

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
                                    if (row[fieldName].GetType().Name == "Decimal" && pi.PropertyType.Name == "Double")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDouble(row[fieldName]), null);
                                    else if (row[fieldName].GetType().Name == "Double" && pi.PropertyType.Name == "Decimal")
                                        pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? 0 : Convert.ToDecimal(row[fieldName]), null);
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
            catch
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
