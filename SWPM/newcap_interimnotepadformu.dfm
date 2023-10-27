object frmnewcap_interimnotepad: Tfrmnewcap_interimnotepad
  Left = 0
  Top = 0
  Caption = 'Sales Projection Amendment - Notepad'
  ClientHeight = 385
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 40
      Top = 9
      Width = 80
      Height = 13
      Caption = 'Amendment No. '
    end
    object Label4: TLabel
      Left = 197
      Top = 9
      Width = 86
      Height = 13
      Caption = 'Amendment Date '
    end
    object Edit1: TEdit
      Left = 121
      Top = 9
      Width = 57
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 288
      Top = 9
      Width = 105
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 1
    end
  end
  object cxDBMemo1: TcxDBMemo
    Left = 0
    Top = 41
    Align = alClient
    DataBinding.DataField = 'REMARKS'
    DataBinding.DataSource = DataSource1
    TabOrder = 1
    Height = 303
    Width = 729
  end
  object Panel2: TPanel
    Left = 0
    Top = 344
    Width = 729
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Save'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 112
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_budget_notepad'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BI'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VER'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'REMARKS'
        DataType = ftWideString
        Size = 5000
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 160
    Top = 104
    object Query1TPLANT: TWideStringField
      FieldName = 'TPLANT'
      Required = True
      Size = 10
    end
    object Query1YR: TIntegerField
      FieldName = 'YR'
      Required = True
    end
    object Query1BI: TWideStringField
      FieldName = 'BI'
      Required = True
      Size = 10
    end
    object Query1VER: TIntegerField
      FieldName = 'VER'
      Required = True
    end
    object Query1DT: TDateField
      FieldName = 'DT'
    end
    object Query1REMARKS: TWideStringField
      FieldName = 'REMARKS'
      Size = 5000
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 104
  end
end
