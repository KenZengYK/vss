object frmuser: Tfrmuser
  Left = 288
  Top = 116
  Width = 385
  Height = 251
  BorderIcons = [biSystemMenu]
  Caption = #29992#25142#31649#29702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 39
    Height = 13
    Caption = #29992#25142#21517
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 8
    Width = 39
    Height = 13
    Caption = #33290#23494#30908
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 39
    Height = 13
    Caption = #26032#23494#30908
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 195
    Top = 40
    Width = 52
    Height = 13
    Caption = #30906#35469#23494#30908
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 8
    Width = 113
    Height = 21
    DataField = 'Nam'
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnChange = Edit1Change
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
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 248
    Top = 40
    Width = 113
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    Caption = #30906#23450
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    Caption = #21462#28040
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    Caption = #26032#22686
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    Caption = #21034#38500
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    Caption = #20462#25913
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nam'
        Title.Alignment = taCenter
        Title.Caption = #29992#25142#21517
        Width = 309
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 268
    Top = 144
  end
  object query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 208
    Top = 144
  end
  object Table1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_yh'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    AfterPost = Table1AfterPost
    Left = 240
    Top = 144
    object Table1Nam: TStringField
      FieldName = 'Nam'
      Size = 10
    end
    object Table1Passwrd: TStringField
      FieldName = 'Passwrd'
      Size = 10
    end
    object Table1R1: TBooleanField
      FieldName = 'R1'
    end
    object Table1R2: TBooleanField
      FieldName = 'R2'
    end
    object Table1R3: TBooleanField
      FieldName = 'R3'
    end
    object Table1R4: TBooleanField
      FieldName = 'R4'
    end
    object Table1R5: TBooleanField
      FieldName = 'R5'
    end
    object Table1R6: TBooleanField
      FieldName = 'R6'
    end
    object Table1R7: TBooleanField
      FieldName = 'R7'
    end
    object Table1R8: TBooleanField
      FieldName = 'R8'
    end
    object Table1R9: TBooleanField
      FieldName = 'R9'
    end
    object Table1R10: TBooleanField
      FieldName = 'R10'
    end
    object Table1R11: TBooleanField
      FieldName = 'R11'
    end
    object Table1R12: TBooleanField
      FieldName = 'R12'
    end
    object Table1R13: TBooleanField
      FieldName = 'R13'
    end
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 296
    Top = 144
  end
  object Table2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ie_qx'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 328
    Top = 144
  end
end
