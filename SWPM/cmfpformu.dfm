object frmcmfp: Tfrmcmfp
  Left = 199
  Top = 136
  Caption = 'Size B/down Re-organize'
  ClientHeight = 548
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 845
    Height = 507
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 2
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <
          item
          end
          item
            Value = #32317#35336
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Size'
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
        Width = 76
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'PQTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'QN Qty'
        Width = 76
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'Picked Qty'
        Width = 78
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'CMP'
        Footers = <>
        ReadOnly = True
        Width = 30
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'TTQTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'T1 Qty'
        Width = 74
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'T2 Qty'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'MQTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        Title.Caption = 'DSQN Qty'
        Width = 63
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'MQTY1'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'DSQN Qty'
        Visible = False
        Width = 70
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'TMQTY'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'USQN Qty (U)'
        Width = 69
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'TQ1'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'Picked Transfer'
        Width = 72
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'TQ2'
        Footers = <
          item
          end
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'T1 Transfer'
        Width = 69
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 507
    Width = 845
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 360
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object Label2: TLabel
      Left = 272
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Submit'
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
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
    CommandText = 'select * from tbl_lwo_tmp'
    FieldDefs = <
      item
        Name = 'DT'
        DataType = ftDateTime
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DID'
        DataType = ftInteger
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
        Name = 'PQTY'
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
        Name = 'MQTY'
        DataType = ftInteger
      end
      item
        Name = 'TPQTY'
        DataType = ftInteger
      end
      item
        Name = 'MQTY1'
        DataType = ftInteger
      end
      item
        Name = 'TMQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQ1'
        DataType = ftInteger
      end
      item
        Name = 'TQ2'
        DataType = ftInteger
      end
      item
        Name = 'CMP'
        DataType = ftBoolean
      end
      item
        Name = 'TQ3'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 96
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 40
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
    Top = 40
  end
end
