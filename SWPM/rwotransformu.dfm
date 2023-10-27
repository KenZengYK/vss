object frmrwotrans: Tfrmrwotrans
  Left = 192
  Top = 114
  Caption = 'Transit Flow 3 / Flow 4 by RWO'
  ClientHeight = 0
  ClientWidth = 108
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 108
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 862
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Project '
    end
    object Label2: TLabel
      Left = 160
      Top = 8
      Width = 32
      Height = 13
      Caption = 'WO # '
    end
    object Label3: TLabel
      Left = 296
      Top = 8
      Width = 40
      Height = 13
      Caption = 'RWO # '
    end
    object Label4: TLabel
      Left = 424
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Style Clr Code'
    end
    object DBText1: TDBText
      Left = 64
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 200
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J2_job'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 344
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 504
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Acol'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 560
      Top = 8
      Width = 49
      Height = 13
      Caption = 'RWO Qty '
    end
    object DBText5: TDBText
      Left = 616
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'QTY'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 108
    Height = 532
    Align = alClient
    AllowedOperations = []
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
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
        FieldName = 'PSIZ'
        Footers = <>
        Title.Caption = 'Size'
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'RWO Qty'
      end
      item
        EditButtons = <>
        FieldName = 'TQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 1|Picked Qty'
      end
      item
        EditButtons = <>
        FieldName = 'TTQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 1|T1 Qty'
      end
      item
        EditButtons = <>
        FieldName = 'TSQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 2|Sewn Qty'
      end
      item
        EditButtons = <>
        FieldName = 'TPQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 2|T2 Qty'
      end
      item
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <>
        Title.Caption = 'Flow 3|iPacked Qty'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 3|cPacked Qty'
        OnEditButtonClick = DBGridEh1Columns6EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 3|T3 Qty'
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'TAQL'
        Footers = <>
        Title.Caption = 'Flow 4|AQL'
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TEQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 4|Ex-fty Qty'
        OnEditButtonClick = DBGridEh1Columns8EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TIQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Flow 4|Invoiced Qty'
        Width = 63
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMPF'
        Footers = <>
        Title.Caption = 'CMP|cPacked'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CMPF'
        Footers = <>
        Title.Caption = 'CMP|T3'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CMPAQL'
        Footers = <>
        Title.Caption = 'CMP|AQL'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CMPE'
        Footers = <>
        Title.Caption = 'CMP|Ex-fty'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CMPI'
        Footers = <>
        Title.Caption = 'CMP|Invoice'
        Width = 43
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = -41
    Width = 108
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 565
    ExplicitWidth = 862
    object BitBtn3: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_rtrs1'
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
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
        Size = 10
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'TTQTY'
        DataType = ftInteger
      end
      item
        Name = 'TSQTY'
        DataType = ftInteger
      end
      item
        Name = 'TPQTY'
        DataType = ftInteger
      end
      item
        Name = 'TFQTY'
        DataType = ftInteger
      end
      item
        Name = 'TEQTY'
        DataType = ftInteger
      end
      item
        Name = 'TIQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMPF'
        DataType = ftBoolean
      end
      item
        Name = 'CMPE'
        DataType = ftBoolean
      end
      item
        Name = 'CMPI'
        DataType = ftBoolean
      end
      item
        Name = 'TAQL'
        DataType = ftInteger
      end
      item
        Name = 'CMPAQL'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;j_no;j2_job;rwo;acol;did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 72
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 96
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 136
    Top = 96
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 96
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 96
  end
end
