object frmusr: Tfrmusr
  Left = 252
  Top = 91
  Width = 385
  Height = 244
  BorderIcons = [biSystemMenu]
  Caption = '�Τ�޲z'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 39
    Height = 13
    Caption = '�Τ�W'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 8
    Width = 39
    Height = 13
    Caption = '�±K�X'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 39
    Height = 13
    Caption = '�s�K�X'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 195
    Top = 40
    Width = 52
    Height = 13
    Caption = '�T�{�K�X'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 8
    Width = 113
    Height = 21
    DataField = 'Usr'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 248
    Top = 8
    Width = 113
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 56
    Top = 40
    Width = 113
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 248
    Top = 40
    Width = 113
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 184
    Width = 57
    Height = 25
    Caption = '�T�w'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 304
    Top = 184
    Width = 57
    Height = 25
    Caption = '����'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 184
    Width = 57
    Height = 25
    Caption = '�s�W'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 88
    Top = 184
    Width = 57
    Height = 25
    Caption = '�R��'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 160
    Top = 184
    Width = 57
    Height = 25
    Caption = '�ק�'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 72
    Width = 345
    Height = 97
    Color = 11927551
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = '�s�ө���'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Usr'
        Title.Alignment = taCenter
        Title.Caption = '�Τ�W'
        Width = 309
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 268
    Top = 144
  end
  object Query2: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 296
    Top = 144
  end
  object Query1: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 212
    Top = 144
  end
  object Table1: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from sz_usrtbl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 240
    Top = 144
  end
  object Table2: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from sz_athtbl'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 324
    Top = 144
  end
end
