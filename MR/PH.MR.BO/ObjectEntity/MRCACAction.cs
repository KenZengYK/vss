using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Runtime.InteropServices;
using System.Reflection; 

namespace PH.MR.BO
{
    public class MRCACAction : PH.Platform.BO.BaseEntity
    {
        /// <summary>
        /// new instance,create
        /// </summary>
        public MRCACAction()
        {
            this._guid = Guid.NewGuid();
            this._isDirty = false;
            this._isNew = true;
        }
        private bool _isDirty;
        /// <summary>
        /// 指示是否修改过
        /// </summary>
        public bool IsDirty
        {
            get { return _isDirty; }
            set { _isDirty = value; }
        }

        private bool _isNew;
        /// <summary>
        /// 是否新增的记录
        /// </summary>
        public bool IsNew
        {
            get { return _isNew; }
            set { _isNew = value; }
        }

        private string _cono;
        /// <summary>
        /// company
        /// </summary>
        public string CONO
        {
            get { return _cono; }
            set { _cono = value; }
        }

        private string _project;
        /// <summary>
        /// Project No
        /// </summary>
        public string PROJECT
        {
            get { return _project; }
            set { _project = value; }
        }

        private string _supplierCode;
        public string SupplierCode
        {
            get { return _supplierCode; }
            set { _supplierCode = value; }
        }
        private decimal _mwth;

        public decimal MWTH
        {
            get { return _mwth; }
            set { _mwth = value; }
        }

        private string _supplier;
        public string Supplier
        {
            get { return _supplier; }
            set { _supplier = value; }
        }

        private string _cstl;

        public string CSTL
        {
            get { return _cstl; }
            set { _cstl = value; }
        }

        private int _version;
        /// <summary>
        /// Version by Project and Dept
        /// </summary>
        public int VERSION
        {
            get { return _version; }
            set { _version = value; }
        }

        private string _Color;
        /// <summary>
        /// Style Color Code
        /// </summary>
        public string Color
        {
            get { return _Color; }
            set { _Color = value; }
        }

        private string _PCOL;
        /// <summary>
        /// Parent Item Color Code
        /// </summary>
        public string PCOL
        {
            get { return _PCOL; }
            set { _PCOL = value; }
        }

        private string _iunt;

        public string IUNT
        {
            get { return _iunt; }
            set { _iunt = value; }
        }

        private string _size;
        /// <summary>
        /// Parent Item Size Code
        /// </summary>
        public string PSIZ
        {
            get { return _size; }
            set { _size = value; }
        }

        private string _MATD;
        /// <summary>
        /// PHG Material Type Description
        /// </summary>
        public string MATD
        {
            get { return _MATD; }
            set { _MATD = value; }
        }

        private string _notepad;
        public string Notepad
        {
            get { return _notepad == null ? "" : _notepad; }
            set
            {
                _notepad = value;
                //ChangeIsdirty();
            }
        }

        private string _actions;
        /// <summary>
        /// action
        /// </summary>
        public string Actions
        {
            get { return _actions; }
            set
            {
                _actions = value;
                ChangeIsdirty();
            }
        }

        private Guid _guid;
        public Guid GUID
        {
            get { return _guid; }
        }


        private string _fuser;
        public string FUSER
        {
            get { return _fuser; }
            set { _fuser = value; }
        }

        private object _fdate;
        public object FDATE
        {
            get { return _fdate; }
            set { _fdate = value; }
        }

        private decimal _fistVersion;
        /// <summary>
        /// 1st version yy qty
        /// </summary>
        public decimal FistVersion
        {
            get { return _fistVersion; }
            set { _fistVersion = value; }
        }

        private decimal _finalVersion;
        ///<summary>
        ///last version yy qty
        ///</summary>
        public decimal FinalVersion
        {
            get { return _finalVersion; }
            set { _finalVersion = value; }
        }
        private decimal _diff;

        public decimal Diff
        {
            get { return _diff; }
            set { _diff = value; }
        }
        public void ChangeIsdirty()
        {
            IsDirty = true;
        }
        private decimal _allPrice;

        public decimal AllPrice
        {
            get { return _allPrice; }
            set { _allPrice = value; }
        }
        private decimal _costDiff;

        public decimal CostDiff
        {
            get { return _costDiff; }
            set { _costDiff = value; }
        }

        private decimal _cost1st;

        public decimal Cost1st
        {
            get
            {
                return _cost1st;
            }
            set
            {
                _cost1st = value;
            }
        }

        private decimal _costLast;

        public decimal CostLast
        {
            get
            {
                return _costLast;
            }
            set
            {
                _costLast = value;
            }
        }





    }

}
