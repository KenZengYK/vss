object frmCsv: TfrmCsv
  Left = 192
  Top = 107
  Caption = 'frmCsv'
  ClientHeight = 385
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 25
    Width = 20
    Height = 13
    Caption = 'No.:'
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 40
    Height = 13
    Caption = 'CSV file:'
  end
  object Edit1: TEdit
    Left = 70
    Top = 23
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 70
    Top = 75
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 294
    Top = 75
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 176
    Width = 81
    Height = 29
    Caption = '&Ok'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 176
    Width = 81
    Height = 29
    Caption = '&Exit'
    TabOrder = 4
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 158
    Width = 344
    Height = 7
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 384
    Top = 24
    Width = 417
    Height = 201
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    DatabaseName = 'csvdata'
    SessionName = 'Session1_1'
    SQL.Strings = (
      'select * from cutplan.csv')
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
    Top = 120
  end
  object Database1: TDatabase
    AliasName = 'csvcutplan'
    DatabaseName = 'csvdata'
    LoginPrompt = False
    SessionName = 'Session1_1'
    Left = 72
    Top = 120
  end
  object Session1: TSession
    AutoSessionName = True
    Left = 120
    Top = 120
  end
end
