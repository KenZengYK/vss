object frmpdnqty_enq: Tfrmpdnqty_enq
  Left = 192
  Top = 114
  Caption = 'PDN Qty Enquiry by project'
  ClientHeight = 392
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 815
    Height = 302
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'WO #'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        Title.Caption = 'RWO #'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Color'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        Title.Caption = 'Size'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'RQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'RWO Qty'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'PDN'
        Footers = <>
        Title.Caption = 'PDN #'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'PQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'PDN Qty'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'EQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Ex-fty Qty'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DIFF'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'DIFF|PDN Vs RWO'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DIFF1'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'DIFF|Ex-fty Vs RWO'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SPQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Sample Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'WRITEOFF'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Write-off'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'LSTQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Lost Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'HQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Hold Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'SWING'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Swung'
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 320
      Top = 15
      Width = 27
      Height = 13
      Caption = 'Color '
    end
    object Label3: TLabel
      Left = 184
      Top = 15
      Width = 22
      Height = 13
      Caption = 'WO '
    end
    object Edit1: TEdit
      Left = 56
      Top = 15
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 352
      Top = 15
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object xh1: TRadioGroup
      Left = 432
      Top = 10
      Width = 265
      Height = 33
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Detail'
        'Summary')
      TabOrder = 3
      OnClick = xh1Click
    end
    object Edit3: TEdit
      Left = 208
      Top = 15
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 815
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Export'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Notepad'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 184
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_enquiry_sku'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RQTY'
        DataType = ftInteger
      end
      item
        Name = 'PQTY'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EQTY'
        DataType = ftInteger
      end
      item
        Name = 'DIFF1'
        DataType = ftInteger
      end
      item
        Name = 'SPQTY'
        DataType = ftInteger
      end
      item
        Name = 'WRITEOFF'
        DataType = ftInteger
      end
      item
        Name = 'LSTQTY'
        DataType = ftInteger
      end
      item
        Name = 'HQTY'
        DataType = ftInteger
      end
      item
        Name = 'SWING'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol;did'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 264
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 144
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 392
    Top = 144
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 424
    Top = 144
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 328
    Top = 144
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 360
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 616
    Top = 200
  end
end
