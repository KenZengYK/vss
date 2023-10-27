using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Collections;
using System.ComponentModel;

namespace PH.MIDc.BO
{
    #region Validate Event
    public class ValidateEventArgs : EventArgs
    {
        public ValidateEventArgs(bool fValidate, string fValidateFieldName)
        {
            this.Validate = fValidate;
            this.ValidateFieldName = fValidateFieldName;
        }
        public ValidateEventArgs(string fValidateFieldName, int fRow, int fSubTotalOld, int fSubTotalNew, int fCurrZS, int fTotal)
        {
            this.ValidateFieldName = fValidateFieldName;
            this.OldSubTotalZS = fSubTotalOld;
            this.NewSubTotalZS = fSubTotalNew;
            this.TotalZS = fTotal;
            this.CurrZS = fCurrZS;
            this.RowIndex = fRow;
        }
        public bool Validate;
        public string ValidateFieldName;
        public int OldSubTotalZS;
        public int NewSubTotalZS;
        public int CurrZS;
        public int TotalZS;
        public int RowIndex;
    }
    public delegate void ValidateEventHandler(object sender, ValidateEventArgs e);
    #endregion
    #region Value Changed Event
    public class ValueChangedEventArgs : EventArgs
    {
        public ValueChangedEventArgs(int rowIndex, object oldValue, object newValue, string fieldName)
        {
            this.RowIndex = rowIndex;
            this.OldValue = oldValue;
            this.NewdValue = newValue;
            this.FieldName = fieldName;
        }
        public int RowIndex;
        public object OldValue;
        public object NewdValue;
        public string FieldName;
    }
    public delegate void ValueChangedEventHandler(object sender, ValueChangedEventArgs e);
    #endregion
    #region VirtualList
    public class VirtualPropertyDescriptor : PropertyDescriptor
    {
        string _propertyName;
        Type _propertyType;
        bool _isReadOnly;
        private VirtualList _list;
        int _index;
        public VirtualList List
        {
            get { return _list; }
            set { _list = value; }
        }
        public VirtualPropertyDescriptor(VirtualList list, int index, string propertyName, Type propertyType, bool isReadOnly)
            : base(propertyName, null)
        {
            this._propertyName = propertyName;
            this._propertyType = propertyType;
            this._isReadOnly = isReadOnly;
            this._list = list;
            this._index = index;
        }
        public override bool CanResetValue(object component)
        {
            return false;
        }
        public override object GetValue(object component)
        {
            //return fList.GetRowValue(component, fIndex);
            return _list.GetRowValue(component, _propertyName);
        }
        public override void SetValue(object component, object val)
        {
            //fList.SetRowValue(component, fIndex, val);
            //if (fPropertyName.StartsWith("CM_") || fPropertyName.StartsWith("ZS_") || fPropertyName.StartsWith("PictureLen") || fPropertyName.StartsWith("YLYSSum"))
            _list.SetRowValue(component, _propertyName, val);
            // else
            //     fList.SetRowSpecifyValue(component, fPropertyName, val);
        }
        public override bool IsReadOnly { get { return _isReadOnly; } }
        public override string Name { get { return _propertyName; } }
        public override Type ComponentType { get { return List.GetType(); } }
        public override Type PropertyType { get { return _propertyType; } }
        public override void ResetValue(object component)
        {
        }
        public override bool ShouldSerializeValue(object component) { return true; }
    }
    public class VirtualList : IBindingList, ITypedList
    {
        int _recordCount;
        int _columnCount;
        private string _materialType;
        private string _supplierRef;
        private ArrayList _columnList;
        private Hashtable _values;
        public PropertyDescriptorCollection ColumnCollection;
        bool fUseDataStore = true;
        ListChangedEventHandler _listChangedHandler;
        public VirtualList(string materialType, string supplierRef)
        {
            this._materialType = materialType;
            this._supplierRef = supplierRef;
            _columnList = new ArrayList();
            _values = new Hashtable();
            _recordCount = 0;
            //fColumnCount = this.fColumnList.Count;
            //CreateColumnCollection();
        }
        public virtual Hashtable Values { get { return _values; } set { _values = value; } }
        public virtual object GetRowKey(int rowIndex, int colIndex)
        {
            //string fieldName = GetColumnName(colIndex);
            //return string.Format("row {0}, col {1}", rowIndex, fieldName);
            return string.Format("row {0}, col {1}", rowIndex, colIndex);
        }
        public virtual object GetRowKey(int rowIndex, string fieldName)
        {
            return string.Format("row {0}, col {1}", rowIndex, fieldName);
        }
        public virtual bool UseDataStore
        {
            get { return fUseDataStore; }
            set { fUseDataStore = value; }
        }
        public int RecordCount
        {
            get { return _recordCount; }
            set
            {
                if (value < 1) value = 0;
                if (RecordCount == value) return;
                _recordCount = value;
            }
        }
        public int ColumnCount
        {
            get { return _columnCount; }
            set
            {
                if (value < 1) value = 0;
                if (ColumnCount == value) return;
                _columnCount = value;
                CreateColumnCollection();
            }
        }
        protected string MaterialType
        {
            get { return _materialType; }
            set { _materialType = value; }
        }
        protected string SupplierRef
        {
            get { return _supplierRef; }
            set { _supplierRef = value; }
        }
        public ArrayList ColumnList
        {
            get { return _columnList; }
            set { _columnList = value; }
        }
        protected virtual void CreateColumnCollection()
        {
            VirtualPropertyDescriptor[] pds = new VirtualPropertyDescriptor[ColumnCount];
            for (int n = 0; n < ColumnCount; n++)
            {
                pds[n] = new VirtualPropertyDescriptor(this, n, GetColumnName(n), typeof(string), false);
                //string columnName = GetColumnName(n);
                //Type dataType = GetColumnType(n);
                //bool bReadOnly = GetColumnReadOnly(n);
                //pds[n] = new VirtualPropertyDescriptorCJYL(this, n, columnName, dataType, bReadOnly);
            }
            ColumnCollection = new PropertyDescriptorCollection(pds);
        }

        public virtual object GetRowValue(object row, int colIndex)
        {
            int fIndex = (int)row;
            if (!UseDataStore) return GetRowKey(fIndex, colIndex);
            return Values[GetRowKey(fIndex, colIndex)];
        }
        public virtual object GetRowValue(object row, string fieldName)
        {
            int fIndex = (int)row;
            if (!UseDataStore) return GetRowKey(fIndex, fieldName);
            return Values[GetRowKey(fIndex, fieldName)];
        }
        public virtual void SetRowValue(object row, int colIndex, object val)
        {
            if (!UseDataStore) return;
            int fIndex = (int)row;
            Values[GetRowKey(fIndex, colIndex)] = val;
            //SumTotalValue(row);
            RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemChanged, fIndex, fIndex));
        }
        public virtual void SetRowValue(object row, string fieldName, object val)
        {
            if (!UseDataStore) return;
            int fIndex = (int)row;
            Values[GetRowKey(fIndex, fieldName)] = val;
            //SumTotalValue(row);
            RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemChanged, fIndex, fIndex));
        }
        public virtual void SetRowSpecifyValue(object row, int colIndex, object val)
        {
            if (!UseDataStore) return;
            int fIndex = (int)row;
            Values[GetRowKey(fIndex, colIndex)] = val;
        }
        public virtual void SetRowSpecifyValue(object row, string fieldName, object val)
        {
            if (!UseDataStore) return;
            int fIndex = (int)row;
            Values[GetRowKey(fIndex, fieldName)] = val;
        }
        public virtual int GetPropertyDescriptorIndexByFieldName(string sFieldName)
        {
            int index = -1;
            for (int i = 0; i < ColumnCollection.Count; i++)
            {
                VirtualPropertyDescriptor vpd = (VirtualPropertyDescriptor)ColumnCollection[i];
                if (vpd.Name.ToUpper() == sFieldName.ToUpper())
                {
                    index = i;
                    break;
                }
            }
            return index;
        }

        #region RemoveValues
        public virtual void RemoveValuesByColumn(int colIndex)
        {
            RemoveValuesBySpecifyRowCol(0, RecordCount - 1, colIndex, colIndex);
            /*
            for (int i = 0; i < RecordCount; i++)
            {
                Values.Remove(GetRowKey(i, colIndex));
            }
             */
        }
        public void RemoveValuesByRow(int rowIndex)
        {
            if ((RecordCount > 1) && (rowIndex != RecordCount - 1))
            {
                for (int i = rowIndex; i < RecordCount - 1; i++)
                {
                    for (int colIndex = 0; colIndex < ColumnCount; colIndex++)
                    {
                        Values[GetRowKey(i, colIndex)] = Values[GetRowKey(i + 1, colIndex)];
                    }
                }
            }
            RemoveValuesBySpecifyRow(RecordCount - 1);
            /*
            for (int colIndex = 0; colIndex < ColumnCount; colIndex++)
            {
                Values.Remove(GetRowKey(RecordCount - 1, colIndex));
            }
             */
        }
        public void RemoveValuesBySpecifyRow(int rowIndex)
        {
            RemoveValuesBySpecifyRowCol(rowIndex, 0, ColumnCount - 1);
            /*
            for (int colIndex = 0; colIndex < ColumnCount; colIndex++)
            {
                Values.Remove(GetRowKey(rowIndex, colIndex));
            }
             */
        }
        public void RemoveValuesBySpecifyRowCol(int rowIndex, int colIndex_from, int colIndex_to)
        {
            RemoveValuesBySpecifyRowCol(rowIndex, rowIndex, colIndex_from, colIndex_to);
            /*
            for (int colIndex = colIndex_from; colIndex <= colIndex_to; colIndex++)
            {
                Values.Remove(GetRowKey(rowIndex, colIndex));
            }
             */
        }
        public void RemoveValuesBySpecifyRowCol(int rowIndex_from, int rowIndex_to, int colIndex_from, int colIndex_to)
        {
            for (int rowIndex = rowIndex_from; rowIndex <= rowIndex_to; rowIndex++)
            {
                for (int colIndex = colIndex_from; colIndex <= colIndex_to; colIndex++)
                {
                    Values.Remove(GetRowKey(rowIndex, colIndex));
                }
            }
        }
        public void ClearAllValues()
        {
            for (int rowIndex = 0; rowIndex < RecordCount; rowIndex++)
            {
                for (int colIndex = 0; colIndex < this.ColumnCount; colIndex++)
                {
                    Values.Remove(GetRowKey(rowIndex, colIndex));
                }
            }
            RecordCount = 0;
        }
        #endregion
        #region IBindingList Interface
        void IBindingList.AddIndex(PropertyDescriptor pd)
        {
            throw new NotImplementedException();
        }
        object IBindingList.AddNew()
        {
            ++_recordCount;
            //SetRowValue(fRecordCount - 1, "ZDH", this.fZDH);
            //SetRowValue(fRecordCount - 1, "XH", fRecordCount);
            RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemAdded, RecordCount - 1, -1));
            return RecordCount - 1;
        }
        public virtual void AddColumn()
        {
            int cc = ColumnCount;
            ColumnCount++;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorAdded, ColumnCount - 1, -1));
            }
        }
        public virtual void AddColumn(int newIndex, object value)
        {
            int cc = ColumnCount;
            _columnList.Insert(newIndex, value);
            ColumnCount++;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorAdded, newIndex, -1));
            }
        }
        public virtual string GetColumnName(int columnIndex)
        {
            //return (fColumnList[columnIndex].ToString().Split(';'))[0];
            return string.Format("Column{0}", columnIndex + 1);
        }
        public virtual Type GetColumnType(int columnIndex)
        {
            return Type.GetType((_columnList[columnIndex].ToString().Split(';'))[1]);
            //return string.Format("Column{0}", columnIndex + 1);
        }
        public virtual bool GetColumnReadOnly(int columnIndex)
        {
            return Convert.ToBoolean((_columnList[columnIndex].ToString().Split(';'))[2]);
            //return string.Format("Column{0}", columnIndex + 1);
        }
        public virtual void RemoveLastColumn()
        {
            //RemoveColumn(ColumnCount - 1);

            int cc = ColumnCount;
            ColumnCount--;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorDeleted, -1, ColumnCount));
            }
        }
        public virtual void RemoveColumn(int oldIndex)
        {
            if (oldIndex == -1) return;
            int cc = ColumnCount;
            //RemoveValuesByColumn(oldIndex);
            _columnList.RemoveAt(oldIndex);
            ColumnCount--;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorDeleted, -1, oldIndex));
            }
        }
        public virtual void RemoveColumn(string fieldName)
        {
            int oldIndex = GetPropertyDescriptorIndexByFieldName(fieldName);
            RemoveColumn(oldIndex);
        }

        public virtual void AddNew()
        {
            ((IBindingList)this).AddNew();
        }
        bool IBindingList.AllowEdit { get { return true; } }
        bool IBindingList.AllowNew { get { return true; } }
        bool IBindingList.AllowRemove { get { return true; } }
        void IBindingList.ApplySort(PropertyDescriptor pd, ListSortDirection dir)
        {
            throw new NotImplementedException();
        }
        int IBindingList.Find(PropertyDescriptor pd, object key)
        {
            throw new NotImplementedException();
        }
        bool IBindingList.IsSorted { get { return false; } }
        void IBindingList.RemoveIndex(PropertyDescriptor pd)
        {
            throw new NotImplementedException();
        }
        public event ListChangedEventHandler ListChanged
        {
            add { _listChangedHandler += value; }
            remove { _listChangedHandler -= value; }
        }
        protected virtual void RaiseListChanged(ListChangedEventArgs args)
        {
            if (_listChangedHandler != null)
            {
                _listChangedHandler(this, args);
            }
        }
        void IBindingList.RemoveSort()
        {
            throw new NotImplementedException();
        }
        ListSortDirection IBindingList.SortDirection { get { return ListSortDirection.Ascending; } }
        PropertyDescriptor IBindingList.SortProperty { get { return null; } }
        bool IBindingList.SupportsChangeNotification { get { return true; } }
        bool IBindingList.SupportsSorting { get { return false; } }
        bool IBindingList.SupportsSearching { get { return false; } }
        #endregion
        #region ITypedList Interface
        PropertyDescriptorCollection ITypedList.GetItemProperties(PropertyDescriptor[] descs) { return ColumnCollection; }
        string ITypedList.GetListName(PropertyDescriptor[] descs) { return GetListName(); }
        protected virtual string GetListName()
        {
            return "VirtualList";
        }
        #endregion
        #region IList Interface
        public virtual int Count
        {
            get { return RecordCount; }
        }
        public virtual bool IsSynchronized
        {
            get { return true; }
        }
        public virtual object SyncRoot
        {
            get { return true; }
        }
        public virtual bool IsReadOnly
        {
            get { return false; }
        }
        public virtual bool IsFixedSize
        {
            get { return true; }
        }
        public virtual IEnumerator GetEnumerator()
        {
            return null;
        }
        public virtual void CopyTo(System.Array array, int fIndex)
        {
        }
        public virtual int Add(object val)
        {
            throw new NotImplementedException();
        }
        public virtual void Clear()
        {
            throw new NotImplementedException();
        }
        public virtual bool Contains(object val)
        {
            throw new NotImplementedException();
        }
        public virtual int IndexOf(object val)
        {
            throw new NotImplementedException();
        }
        public virtual void Insert(int fIndex, object val)
        {
            throw new NotImplementedException();
        }
        public virtual void Remove(object val)
        {
            throw new NotImplementedException();
        }
        public virtual void RemoveAt(int fIndex)
        {
            throw new NotImplementedException();
        }
        object IList.this[int fIndex]
        {
            get { return fIndex; }
            set { }
        }
        #endregion
    }
    #endregion
    #region Simple Data
    public class VirtualPropertyDescriptorSimple : PropertyDescriptor
    {
        internal string _propertyName;
        Type _propertyType;
        bool _isReadOnly;
        private VirtualList _list;
        int _index;
        public VirtualList List
        {
            get { return _list; }
            set { _list = value; }
        }
        public VirtualPropertyDescriptorSimple(VirtualList list, int index, string propertyName, Type propertyType, bool isReadOnly)
            : base(propertyName, null)
        {
            this._propertyName = propertyName;
            this._propertyType = propertyType;
            this._isReadOnly = isReadOnly;
            this._list = list;
            this._index = index;
        }
        public void UpdateProperty(string propertyName, Type propertyType, bool isReadOnly)
        {
            this._propertyName = propertyName;
            this._propertyType = propertyType;
            this._isReadOnly = isReadOnly;
        }
        public override bool CanResetValue(object component)
        {
            return false;
        }
        public override object GetValue(object component)
        {
            return _list.GetRowValue(component, _propertyName);
        }
        public override void SetValue(object component, object val)
        {
            _list.SetRowValue(component, _propertyName, val);
        }
        public override bool IsReadOnly { get { return _isReadOnly; } }
        public override string Name { get { return _propertyName; } }
        public override Type ComponentType { get { return List.GetType(); } }
        public override Type PropertyType { get { return _propertyType; } }
        public override void ResetValue(object component)
        {
        }
        public override bool ShouldSerializeValue(object component) { return true; }
    }
    public class VirtualSimpleList : VirtualList
    {
        private bool _isModify;
        public bool IsModify
        {
            get { return _isModify; }
        }
        private bool _ZeroIsNull;
        public bool ZeroIsNull
        {
            get { return _ZeroIsNull; }
            set { _ZeroIsNull = value; }
        }

        public VirtualSimpleList(string materialType, string supplierRef)
            : base(materialType, supplierRef)
        {
            _isModify = false;
        }
        public override object GetRowKey(int rowIndex, int colIndex)
        {
            string fieldName = GetColumnName(colIndex);
            return GetRowKey(rowIndex, fieldName);
        }
        public override object GetRowKey(int rowIndex, string fieldName)
        {
            return string.Format("row {0}, col {1}", rowIndex, fieldName);
        }

        public override object GetRowValue(object row, int colIndex)
        {
            if (!UseDataStore) return GetRowKey((int)row, colIndex);
            return Values[GetRowKey((int)row, colIndex)];
        }
        public override object GetRowValue(object row, string fieldName)
        {
            if (!UseDataStore) return GetRowKey((int)row, fieldName);
            return Values[GetRowKey((int)row, fieldName)];
        }

        public override void SetRowValue(object row, int colIndex, object val)
        {
            string fieldName = GetColumnName(colIndex);
            SetRowValue(row, fieldName, val);
        }
        public override void SetRowValue(object row, string fieldName, object val)
        {
            if (!UseDataStore) return;
            int fIndex = (int)row;
            object oldval = this.GetRowValue(fIndex, fieldName);
            if (oldval == val) return;
            if (_ZeroIsNull)
            {
                if (Convert.ToString(val) == "0") val = null;
            }
            Values[GetRowKey(fIndex, fieldName)] = val;
            _isModify = true;
            RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemChanged, fIndex, fIndex));
        }
        public override void SetRowSpecifyValue(object row, string fieldName, object val)
        {
            if (!UseDataStore) return;
            int fIndex = (int)row;
            Values[GetRowKey(fIndex, fieldName)] = val;
        }
        public int GetRowIndexByGuid(Guid guid)
        {
            Guid AGuid;
            for (int iRow = 0; iRow < this.RecordCount; iRow++)
            {
                AGuid = (Guid)this.GetRowValue(iRow, "GUID");
                if (AGuid == null || AGuid != guid) continue;
                return iRow;
            }
            return -1;
        }
        public void AssignTo(VirtualSimpleList DesList)
        {
            DesList.ColumnList = this.ColumnList;
            DesList.ColumnCount = this.ColumnCount;
            DesList.BeginUpdateData();
            try
            {
                for (int iRow = 0; iRow < this.Count; iRow++)
                {
                    DesList.AddNew();
                    for (int iCol = 0; iCol < this.ColumnCount; iCol++)
                    {
                        DesList.SetRowSpecifyValue(iRow, iCol, this.GetRowValue(iRow, iCol));
                    }
                }
            }
            finally
            { DesList.EndUpdateData(); }
            //DesList.RecordCount = this.RecordCount;
        }
        public int UpdateField(string Old_fieldName, string new_fieldName)
        {
            int index = -1;
            //update fieldname
            for (int i = 0; i < this.ColumnCount; i++)
            {
                VirtualPropertyDescriptorSimple vpd = (VirtualPropertyDescriptorSimple)this.ColumnCollection[i];
                if (vpd.Name == Old_fieldName)
                {
                    vpd.UpdateProperty(new_fieldName, vpd.PropertyType, vpd.IsReadOnly);
                    index = i;
                    string s = ColumnList[i].ToString();// new_fieldName + ";" + vpd.PropertyType.FullName + ";False";
                    s = s.Replace(Old_fieldName, new_fieldName);
                    ColumnList[i] = s;
                    break;
                }
            }
            //update values
            for (int i = 0; i < this.RecordCount; i++)
            {
                object val = this.Values[GetRowKey(i, Old_fieldName)];
                if (val != null)
                {
                    this.Values[GetRowKey(i, new_fieldName)] = val;
                    this.Values.Remove(GetRowKey(i, Old_fieldName));
                    RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemChanged, i, i));
                }
            }

            _isModify = true;
            return index;
        }

        #region event
        private ValueChangedEventHandler valueChangedEventHandler;
        public event ValueChangedEventHandler ValueChanged
        {
            add { valueChangedEventHandler += value; }
            remove { valueChangedEventHandler -= value; }
        }
        protected virtual void RaiseValueChanged(ValueChangedEventArgs args)
        {
            if (valueChangedEventHandler != null)
            {
                valueChangedEventHandler(this, args);
            }
        }
        #endregion
        bool _updateData = true;
        public void BeginUpdateData()
        {
            _updateData = false;
        }
        public void EndUpdateData()
        {
            _updateData = true;
        }
        public void Post()
        {
            _isModify = false;
        }
        protected override void CreateColumnCollection()
        {
            VirtualPropertyDescriptorSimple[] pds = new VirtualPropertyDescriptorSimple[ColumnCount];
            for (int n = 0; n < ColumnCount; n++)
            {
                string columnName = GetColumnName(n);
                Type dataType = GetColumnType(n);
                bool bReadOnly = GetColumnReadOnly(n);
                pds[n] = new VirtualPropertyDescriptorSimple(null, n, columnName, dataType, bReadOnly);
                pds[n].List = this;
            }
            ColumnCollection = new PropertyDescriptorCollection(pds);
        }
        protected override string GetListName()
        {
            return "VirtualList_" + MaterialType;
        }
        #region IBindingList Interface
        public override void AddColumn()
        {
            int cc = ColumnCount;
            ColumnCount++;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorAdded, ColumnCount - 1, -1));
            }
        }
        public override void AddColumn(int newIndex, object value)
        {
            int cc = ColumnCount;
            ColumnList.Insert(newIndex, value);
            ColumnCount++;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorAdded, newIndex, -1));
            }
        }
        public override string GetColumnName(int columnIndex)
        {
            return (ColumnList[columnIndex].ToString().Split(';'))[0];
            //return string.Format("Column{0}", columnIndex + 1);
        }
        public override Type GetColumnType(int columnIndex)
        {
            return Type.GetType((ColumnList[columnIndex].ToString().Split(';'))[1]);
        }
        public override bool GetColumnReadOnly(int columnIndex)
        {
            return Convert.ToBoolean((ColumnList[columnIndex].ToString().Split(';'))[2]);
        }
        public override void RemoveLastColumn()
        {
            RemoveColumn(ColumnCount - 1);
            /*
            int cc = ColumnCount;
            ColumnCount--;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorDeleted, -1, ColumnCount));
            }
             */
        }
        public override void RemoveColumn(int oldIndex)
        {
            if (oldIndex == -1) return;
            int cc = ColumnCount;
            RemoveValuesByColumn(oldIndex);
            ColumnList.RemoveAt(oldIndex);
            ColumnCount--;
            if (cc != ColumnCount)
            {
                RaiseListChanged(new ListChangedEventArgs(ListChangedType.PropertyDescriptorDeleted, -1, oldIndex));
            }
        }
        public override void RemoveColumn(string fieldName)
        {
            int oldIndex = GetPropertyDescriptorIndexByFieldName(fieldName);
            RemoveColumn(oldIndex);
        }
        public override int GetPropertyDescriptorIndexByFieldName(string sFieldName)
        {
            int index = -1;
            for (int i = 0; i < ColumnCollection.Count; i++)
            {
                VirtualPropertyDescriptorSimple vpd = (VirtualPropertyDescriptorSimple)ColumnCollection[i];
                if (vpd.Name.ToUpper() == sFieldName.ToUpper())
                {
                    index = i;
                    break;
                }
            }
            return index;
        }

        public override void AddNew()
        {
            base.AddNew();
            if (_updateData) _isModify = true;
            RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemAdded, RecordCount - 1, -1));
        }
        #endregion
        #region IList Interface
        public override int Count
        {
            get { return RecordCount; }
        }
        public override bool IsSynchronized
        {
            get { return true; }
        }
        public override object SyncRoot
        {
            get { return true; }
        }
        public override bool IsReadOnly
        {
            get { return false; }
        }
        public override bool IsFixedSize
        {
            get { return true; }
        }
        public override IEnumerator GetEnumerator()
        {
            return null;
        }
        public override void CopyTo(System.Array array, int fIndex)
        {
        }
        public override int Add(object val)
        {
            throw new NotImplementedException();
        }
        public override void Clear()
        {
            throw new NotImplementedException();
        }
        public override bool Contains(object val)
        {
            throw new NotImplementedException();
        }
        public override int IndexOf(object val)
        {
            throw new NotImplementedException();
        }
        public override void Insert(int fIndex, object val)
        {
            throw new NotImplementedException();
        }
        public override void Remove(object val)
        {
            throw new NotImplementedException();
        }
        public override void RemoveAt(int fIndex)
        {
            if (fIndex >= RecordCount) return;

            if (_updateData) _isModify = true;
            --RecordCount;
            //throw new NotImplementedException();
            RaiseListChanged(new ListChangedEventArgs(ListChangedType.ItemDeleted, fIndex));
        }
        #endregion
    }
    #endregion
}
