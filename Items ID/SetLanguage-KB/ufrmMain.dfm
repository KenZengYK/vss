object frmMain: TfrmMain
  Left = 26
  Top = 117
  Width = 800
  Height = 583
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alCenterCenter
    TabOrder = 0
    Height = 65
    Width = 792
    object Label1: TLabel
      Left = 122
      Top = 12
      Width = 27
      Height = 13
      Caption = 'RUnit'
    end
    object Label2: TLabel
      Left = 100
      Top = 36
      Width = 59
      Height = 13
      Caption = 'LanguageID'
    end
    object btnOpen: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Open Table'
      TabOrder = 0
      OnClick = btnOpenClick
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 163
      Top = 32
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'LanguageID'
      Properties.ListColumns = <
        item
          FieldName = 'LanguageID'
        end
        item
          FieldName = 'LanguageName'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = DataSource2
      TabOrder = 1
      Width = 121
    end
    object cxGroupBox2: TcxGroupBox
      Left = 287
      Top = 1
      Caption = 'RID'
      TabOrder = 2
      Height = 59
      Width = 156
      object Label3: TLabel
        Left = 32
        Top = 15
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label4: TLabel
        Left = 35
        Top = 37
        Width = 13
        Height = 13
        Caption = 'To'
      end
      object cxSpinEdit1: TcxSpinEdit
        Left = 63
        Top = 10
        TabOrder = 0
        Width = 73
      end
      object cxSpinEdit2: TcxSpinEdit
        Left = 63
        Top = 34
        TabOrder = 1
        Width = 73
      end
    end
    object btnInsert: TcxButton
      Left = 448
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Insert'
      TabOrder = 3
      OnClick = btnInsertClick
    end
    object btnCopy: TcxButton
      Left = 448
      Top = 34
      Width = 129
      Height = 25
      Cancel = True
      Caption = 'Copy To LanguageID'
      TabOrder = 4
      OnClick = btnCopyClick
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 581
      Top = 37
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'LanguageID'
      Properties.ListColumns = <
        item
          FieldName = 'LanguageID'
        end
        item
          FieldName = 'LanguageName'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = DataSource2
      TabOrder = 5
      Width = 180
    end
    object cxComboBox1: TcxComboBox
      Left = 163
      Top = 8
      Properties.DropDownRows = 14
      Properties.Items.Strings = (
        'Global'
        'Main'
        'Final Label'
        'Return Material'
        'Picking'
        'Stock Take'
        'System Information'
        'Unplanned')
      TabOrder = 6
      Width = 121
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 792
    Height = 484
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      OptionsView.NewItemRow = True
      object cxGrid1DBTableView1RUnit: TcxGridDBColumn
        DataBinding.FieldName = 'RUnit'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownRows = 14
        Properties.Items.Strings = (
          'Global'
          'Main'
          'Final Label'
          'Return Material'
          'Picking'
          'Stock Take'
          'System Information'
          'Unplanned')
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 92
      end
      object cxGrid1DBTableView1LanguageID: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 12
        Properties.KeyFieldNames = 'LanguageID'
        Properties.ListColumns = <
          item
            Width = 50
            FieldName = 'LanguageID'
          end
          item
            Width = 100
            FieldName = 'LanguageName'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = DataSource2
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 122
      end
      object cxGrid1DBTableView1RID: TcxGridDBColumn
        DataBinding.FieldName = 'RID'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 83
      end
      object cxGrid1DBTableView1RCaption: TcxGridDBColumn
        DataBinding.FieldName = 'RCaption'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 355
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=itsystem@2009;Persist Security Info' +
      '=True;User ID=ituser;Initial Catalog=PHGDB2;Data Source=10.4.1.1' +
      '1'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 152
  end
  object ADOQuery1: TADOQuery
    CacheSize = 1000
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PB_Language')
    Left = 112
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 144
    Top = 152
  end
  object ADOQuery2: TADOQuery
    CacheSize = 100
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PB_LanguageType')
    Left = 208
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 240
    Top = 152
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 64
    Top = 200
  end
end
