object frmexchange: Tfrmexchange
  Left = 192
  Top = 114
  Caption = 'SKU Exchange'
  ClientHeight = 361
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 545
    Top = 33
    Width = 2
    Height = 287
    ExplicitHeight = 532
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 116
    object Label1: TLabel
      Left = 104
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 232
      Top = 8
      Width = 27
      Height = 13
      Caption = 'RWO'
    end
    object Label3: TLabel
      Left = 344
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 424
      Top = 8
      Width = 26
      Height = 13
      Caption = 'QN# '
    end
    object Label5: TLabel
      Left = 520
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label6: TLabel
      Left = 608
      Top = 8
      Width = 41
      Height = 13
      Caption = 'QN QTY'
    end
    object DBText1: TDBText
      Left = 144
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
      Left = 288
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
      Left = 360
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
      Left = 464
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 552
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
    object DBText6: TDBText
      Left = 664
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object DBText7: TDBText
      Left = 40
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 545
    Height = 287
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 532
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 0
      Width = 545
      Height = 287
      Align = alClient
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'PLINE'
          Footers = <>
          Title.Caption = 'Line'
        end
        item
          EditButtons = <>
          FieldName = 'J_NO'
          Footers = <>
          Title.Caption = 'Project'
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'J2_JOB'
          Footers = <>
          Title.Caption = 'WO'
        end
        item
          EditButtons = <>
          FieldName = 'RWO'
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'FCCS'
          Footers = <>
          Title.Caption = 'QN #'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'PSIZ'
          Footers = <>
          Title.Caption = 'Size'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'PQTY'
          Footers = <>
          Title.Caption = 'QN Qty'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'TQTY'
          Footers = <>
          Title.Caption = 'Picked Qty'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'TTQTY'
          Footers = <>
          Title.Caption = 'T1 Qty'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'TSQTY'
          Footers = <>
          Title.Caption = 'Sewn Qty'
          Width = 40
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel3: TPanel
    Left = 633
    Top = 33
    Width = 186
    Height = 287
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 229
    ExplicitHeight = 532
    object DBGridEh2: TDBGridEh
      Left = 0
      Top = 0
      Width = 186
      Height = 287
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'PLINE'
          Footers = <>
          Title.Caption = 'Line'
        end
        item
          EditButtons = <>
          FieldName = 'J_NO'
          Footers = <>
          Title.Caption = 'Project'
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'J2_JOB'
          Footers = <>
          Title.Caption = 'WO'
        end
        item
          EditButtons = <>
          FieldName = 'RWO'
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'FCCS'
          Footers = <>
          Title.Caption = 'QN #'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'PSIZ'
          Footers = <>
          Title.Caption = 'Size'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'PQTY'
          Footers = <>
          Title.Caption = 'QN Qty'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'TQTY'
          Footers = <>
          Title.Caption = 'Picked Qty'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'TTQTY'
          Footers = <>
          Title.Caption = 'T1 Qty'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'TSQTY'
          Footers = <>
          Title.Caption = 'Sewn Qty'
          Width = 40
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 320
    Width = 819
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = -41
    ExplicitWidth = 116
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Notepad'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Confirm'
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel7: TPanel
    Left = 547
    Top = 33
    Width = 86
    Height = 287
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitHeight = 532
    object SpeedButton1: TSpeedButton
      Left = 32
      Top = 192
      Width = 25
      Height = 25
      Caption = '>'
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 16
      Top = 128
      Width = 45
      Height = 13
      Caption = 'Quantity: '
    end
    object SpeedButton2: TSpeedButton
      Left = 32
      Top = 240
      Width = 25
      Height = 25
      Caption = '<'
      OnClick = SpeedButton2Click
    end
    object Label8: TLabel
      Left = 16
      Top = 64
      Width = 55
      Height = 13
      Caption = 'Allowance: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 16
      Top = 144
      Width = 57
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 16
      Top = 80
      Width = 57
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      Color = 13365228
      DisplayFormat = '#0.0 %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Value = 15.000000000000000000
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo where pline='#39'T002'#39' and seq=801'
    FieldDefs = <
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
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
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
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SIZ'
        DataType = ftString
        Size = 5
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
        Name = 'AQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP'
        DataType = ftBoolean
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
        Name = 'TQ3'
        DataType = ftInteger
      end
      item
        Name = 'TQ4'
        DataType = ftInteger
      end
      item
        Name = 'TQ5'
        DataType = ftInteger
      end
      item
        Name = 'TQ6'
        DataType = ftInteger
      end
      item
        Name = 'TQ7'
        DataType = ftInteger
      end
      item
        Name = 'TQ8'
        DataType = ftInteger
      end
      item
        Name = 'TQ9'
        DataType = ftInteger
      end
      item
        Name = 'TQ10'
        DataType = ftInteger
      end
      item
        Name = 'TDT1'
        DataType = ftDate
      end
      item
        Name = 'TDT2'
        DataType = ftDate
      end
      item
        Name = 'TDT3'
        DataType = ftDate
      end
      item
        Name = 'TDT4'
        DataType = ftDate
      end
      item
        Name = 'TDT5'
        DataType = ftDate
      end
      item
        Name = 'TDT6'
        DataType = ftDate
      end
      item
        Name = 'TDT7'
        DataType = ftDate
      end
      item
        Name = 'TDT8'
        DataType = ftDate
      end
      item
        Name = 'TDT9'
        DataType = ftDate
      end
      item
        Name = 'TDT10'
        DataType = ftDate
      end
      item
        Name = 'PQTY'
        DataType = ftInteger
      end
      item
        Name = 'TTQ1'
        DataType = ftInteger
      end
      item
        Name = 'TTQ2'
        DataType = ftInteger
      end
      item
        Name = 'TTQ3'
        DataType = ftInteger
      end
      item
        Name = 'TTQ4'
        DataType = ftInteger
      end
      item
        Name = 'TTQ5'
        DataType = ftInteger
      end
      item
        Name = 'TTQ6'
        DataType = ftInteger
      end
      item
        Name = 'TTQ7'
        DataType = ftInteger
      end
      item
        Name = 'TTQ8'
        DataType = ftInteger
      end
      item
        Name = 'TTQ9'
        DataType = ftInteger
      end
      item
        Name = 'TTQ10'
        DataType = ftInteger
      end
      item
        Name = 'CMP1'
        DataType = ftBoolean
      end
      item
        Name = 'TTQTY'
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDateTime
      end
      item
        Name = 'TTD1'
        DataType = ftDate
      end
      item
        Name = 'TTD2'
        DataType = ftDate
      end
      item
        Name = 'TTD3'
        DataType = ftDate
      end
      item
        Name = 'TTD4'
        DataType = ftDate
      end
      item
        Name = 'TTD5'
        DataType = ftDate
      end
      item
        Name = 'TTD6'
        DataType = ftDate
      end
      item
        Name = 'TTD7'
        DataType = ftDate
      end
      item
        Name = 'TTD8'
        DataType = ftDate
      end
      item
        Name = 'TTD9'
        DataType = ftDate
      end
      item
        Name = 'TTD10'
        DataType = ftDate
      end
      item
        Name = 'PQ1'
        DataType = ftInteger
      end
      item
        Name = 'PQ2'
        DataType = ftInteger
      end
      item
        Name = 'PQ3'
        DataType = ftInteger
      end
      item
        Name = 'PQ4'
        DataType = ftInteger
      end
      item
        Name = 'PQ5'
        DataType = ftInteger
      end
      item
        Name = 'PQ6'
        DataType = ftInteger
      end
      item
        Name = 'PDT1'
        DataType = ftDate
      end
      item
        Name = 'PDT2'
        DataType = ftDate
      end
      item
        Name = 'PDT3'
        DataType = ftDate
      end
      item
        Name = 'PDT4'
        DataType = ftDate
      end
      item
        Name = 'PDT5'
        DataType = ftDate
      end
      item
        Name = 'PDT6'
        DataType = ftDate
      end
      item
        Name = 'FQ1'
        DataType = ftInteger
      end
      item
        Name = 'FQ2'
        DataType = ftInteger
      end
      item
        Name = 'FQ3'
        DataType = ftInteger
      end
      item
        Name = 'FQ4'
        DataType = ftInteger
      end
      item
        Name = 'FQ5'
        DataType = ftInteger
      end
      item
        Name = 'FDT1'
        DataType = ftDate
      end
      item
        Name = 'FDT2'
        DataType = ftDate
      end
      item
        Name = 'FDT3'
        DataType = ftDate
      end
      item
        Name = 'FDT4'
        DataType = ftDate
      end
      item
        Name = 'FDT5'
        DataType = ftDate
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
        Name = 'CMP2'
        DataType = ftBoolean
      end
      item
        Name = 'CMP3'
        DataType = ftBoolean
      end
      item
        Name = 'EQ1'
        DataType = ftInteger
      end
      item
        Name = 'EQ2'
        DataType = ftInteger
      end
      item
        Name = 'EQ3'
        DataType = ftInteger
      end
      item
        Name = 'TED1'
        DataType = ftDate
      end
      item
        Name = 'TED2'
        DataType = ftDate
      end
      item
        Name = 'TED3'
        DataType = ftDate
      end
      item
        Name = 'TEQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP4'
        DataType = ftBoolean
      end
      item
        Name = 'TSQTY'
        DataType = ftInteger
      end
      item
        Name = 'PQ7'
        DataType = ftInteger
      end
      item
        Name = 'PQ8'
        DataType = ftInteger
      end
      item
        Name = 'PQ9'
        DataType = ftInteger
      end
      item
        Name = 'PQ10'
        DataType = ftInteger
      end
      item
        Name = 'PDT7'
        DataType = ftDate
      end
      item
        Name = 'PDT8'
        DataType = ftDate
      end
      item
        Name = 'PDT9'
        DataType = ftDate
      end
      item
        Name = 'PDT10'
        DataType = ftDate
      end
      item
        Name = 'CMPS'
        DataType = ftBoolean
      end
      item
        Name = 'CMPI'
        DataType = ftBoolean
      end
      item
        Name = 'IQ1'
        DataType = ftInteger
      end
      item
        Name = 'IQ2'
        DataType = ftInteger
      end
      item
        Name = 'IQ3'
        DataType = ftInteger
      end
      item
        Name = 'TIQTY'
        DataType = ftInteger
      end
      item
        Name = 'IDT1'
        DataType = ftDate
      end
      item
        Name = 'IDT2'
        DataType = ftDate
      end
      item
        Name = 'IDT3'
        DataType = ftDate
      end
      item
        Name = 'T3DIFF'
        DataType = ftInteger
      end
      item
        Name = 'T2DIFF'
        DataType = ftInteger
      end
      item
        Name = 'T1DIFF'
        DataType = ftInteger
      end
      item
        Name = 'TSDIFF'
        DataType = ftInteger
      end
      item
        Name = 'PADIFF'
        DataType = ftInteger
      end
      item
        Name = 'PQ11'
        DataType = ftInteger
      end
      item
        Name = 'PQ12'
        DataType = ftInteger
      end
      item
        Name = 'PQ13'
        DataType = ftInteger
      end
      item
        Name = 'PQ14'
        DataType = ftInteger
      end
      item
        Name = 'PQ15'
        DataType = ftInteger
      end
      item
        Name = 'PQ16'
        DataType = ftInteger
      end
      item
        Name = 'PQ17'
        DataType = ftInteger
      end
      item
        Name = 'PQ18'
        DataType = ftInteger
      end
      item
        Name = 'PQ19'
        DataType = ftInteger
      end
      item
        Name = 'PQ20'
        DataType = ftInteger
      end
      item
        Name = 'PDT11'
        DataType = ftDate
      end
      item
        Name = 'PDT12'
        DataType = ftDate
      end
      item
        Name = 'PDT13'
        DataType = ftDate
      end
      item
        Name = 'PDT14'
        DataType = ftDate
      end
      item
        Name = 'PDT15'
        DataType = ftDate
      end
      item
        Name = 'PDT16'
        DataType = ftDate
      end
      item
        Name = 'PDT17'
        DataType = ftDate
      end
      item
        Name = 'PDT18'
        DataType = ftDate
      end
      item
        Name = 'PDT19'
        DataType = ftDate
      end
      item
        Name = 'PDT20'
        DataType = ftDate
      end
      item
        Name = 'EQ4'
        DataType = ftInteger
      end
      item
        Name = 'EQ5'
        DataType = ftInteger
      end
      item
        Name = 'TED4'
        DataType = ftDate
      end
      item
        Name = 'TED5'
        DataType = ftDate
      end
      item
        Name = 'TIP'
        DataType = ftInteger
      end
      item
        Name = 'TAQL'
        DataType = ftInteger
      end
      item
        Name = 'CMPIP'
        DataType = ftBoolean
      end
      item
        Name = 'CMPAQL'
        DataType = ftBoolean
      end
      item
        Name = 'TQN'
        DataType = ftInteger
      end
      item
        Name = 'IGA_P'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'EPDN1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IP1'
        DataType = ftInteger
      end
      item
        Name = 'IP2'
        DataType = ftInteger
      end
      item
        Name = 'IP3'
        DataType = ftInteger
      end
      item
        Name = 'IP4'
        DataType = ftInteger
      end
      item
        Name = 'IP5'
        DataType = ftInteger
      end
      item
        Name = 'IPD1'
        DataType = ftDate
      end
      item
        Name = 'IPD2'
        DataType = ftDate
      end
      item
        Name = 'IPD3'
        DataType = ftDate
      end
      item
        Name = 'IPD4'
        DataType = ftDate
      end
      item
        Name = 'IPD5'
        DataType = ftDate
      end
      item
        Name = 'IPDIFF'
        DataType = ftInteger
      end
      item
        Name = 'IDIFF'
        DataType = ftInteger
      end
      item
        Name = 'AQ1'
        DataType = ftInteger
      end
      item
        Name = 'AQ2'
        DataType = ftInteger
      end
      item
        Name = 'AQ3'
        DataType = ftInteger
      end
      item
        Name = 'ADT1'
        DataType = ftDate
      end
      item
        Name = 'ADT2'
        DataType = ftDate
      end
      item
        Name = 'ADT3'
        DataType = ftDate
      end
      item
        Name = 'AQ01'
        DataType = ftInteger
      end
      item
        Name = 'AQ001'
        DataType = ftInteger
      end
      item
        Name = 'AQ02'
        DataType = ftInteger
      end
      item
        Name = 'AQ002'
        DataType = ftInteger
      end
      item
        Name = 'AQ03'
        DataType = ftInteger
      end
      item
        Name = 'AQ003'
        DataType = ftInteger
      end
      item
        Name = 'IQ4'
        DataType = ftInteger
      end
      item
        Name = 'IQ5'
        DataType = ftInteger
      end
      item
        Name = 'IDT4'
        DataType = ftDate
      end
      item
        Name = 'IDT5'
        DataType = ftDate
      end
      item
        Name = 'EQ6'
        DataType = ftInteger
      end
      item
        Name = 'EQ7'
        DataType = ftInteger
      end
      item
        Name = 'EQ8'
        DataType = ftInteger
      end
      item
        Name = 'EQ9'
        DataType = ftInteger
      end
      item
        Name = 'EQ10'
        DataType = ftInteger
      end
      item
        Name = 'IQ6'
        DataType = ftInteger
      end
      item
        Name = 'IQ7'
        DataType = ftInteger
      end
      item
        Name = 'IQ8'
        DataType = ftInteger
      end
      item
        Name = 'IQ9'
        DataType = ftInteger
      end
      item
        Name = 'IQ10'
        DataType = ftInteger
      end
      item
        Name = 'TED6'
        DataType = ftDate
      end
      item
        Name = 'TED7'
        DataType = ftDate
      end
      item
        Name = 'TED8'
        DataType = ftDate
      end
      item
        Name = 'TED9'
        DataType = ftDate
      end
      item
        Name = 'TED10'
        DataType = ftDate
      end
      item
        Name = 'IDT6'
        DataType = ftDate
      end
      item
        Name = 'IDT7'
        DataType = ftDate
      end
      item
        Name = 'IDT8'
        DataType = ftDate
      end
      item
        Name = 'IDT9'
        DataType = ftDate
      end
      item
        Name = 'IDT10'
        DataType = ftDate
      end
      item
        Name = 'EPDN6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN10'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pline;seq;did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterScroll = Query1AfterScroll
    Left = 120
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 184
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 216
    Top = 104
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 248
    Top = 104
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo where pline='#39'T002'#39' and seq=801'
    FieldDefs = <
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
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
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
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SIZ'
        DataType = ftString
        Size = 5
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
        Name = 'AQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP'
        DataType = ftBoolean
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
        Name = 'TQ3'
        DataType = ftInteger
      end
      item
        Name = 'TQ4'
        DataType = ftInteger
      end
      item
        Name = 'TQ5'
        DataType = ftInteger
      end
      item
        Name = 'TQ6'
        DataType = ftInteger
      end
      item
        Name = 'TQ7'
        DataType = ftInteger
      end
      item
        Name = 'TQ8'
        DataType = ftInteger
      end
      item
        Name = 'TQ9'
        DataType = ftInteger
      end
      item
        Name = 'TQ10'
        DataType = ftInteger
      end
      item
        Name = 'TDT1'
        DataType = ftDate
      end
      item
        Name = 'TDT2'
        DataType = ftDate
      end
      item
        Name = 'TDT3'
        DataType = ftDate
      end
      item
        Name = 'TDT4'
        DataType = ftDate
      end
      item
        Name = 'TDT5'
        DataType = ftDate
      end
      item
        Name = 'TDT6'
        DataType = ftDate
      end
      item
        Name = 'TDT7'
        DataType = ftDate
      end
      item
        Name = 'TDT8'
        DataType = ftDate
      end
      item
        Name = 'TDT9'
        DataType = ftDate
      end
      item
        Name = 'TDT10'
        DataType = ftDate
      end
      item
        Name = 'PQTY'
        DataType = ftInteger
      end
      item
        Name = 'TTQ1'
        DataType = ftInteger
      end
      item
        Name = 'TTQ2'
        DataType = ftInteger
      end
      item
        Name = 'TTQ3'
        DataType = ftInteger
      end
      item
        Name = 'TTQ4'
        DataType = ftInteger
      end
      item
        Name = 'TTQ5'
        DataType = ftInteger
      end
      item
        Name = 'TTQ6'
        DataType = ftInteger
      end
      item
        Name = 'TTQ7'
        DataType = ftInteger
      end
      item
        Name = 'TTQ8'
        DataType = ftInteger
      end
      item
        Name = 'TTQ9'
        DataType = ftInteger
      end
      item
        Name = 'TTQ10'
        DataType = ftInteger
      end
      item
        Name = 'CMP1'
        DataType = ftBoolean
      end
      item
        Name = 'TTQTY'
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDateTime
      end
      item
        Name = 'TTD1'
        DataType = ftDate
      end
      item
        Name = 'TTD2'
        DataType = ftDate
      end
      item
        Name = 'TTD3'
        DataType = ftDate
      end
      item
        Name = 'TTD4'
        DataType = ftDate
      end
      item
        Name = 'TTD5'
        DataType = ftDate
      end
      item
        Name = 'TTD6'
        DataType = ftDate
      end
      item
        Name = 'TTD7'
        DataType = ftDate
      end
      item
        Name = 'TTD8'
        DataType = ftDate
      end
      item
        Name = 'TTD9'
        DataType = ftDate
      end
      item
        Name = 'TTD10'
        DataType = ftDate
      end
      item
        Name = 'PQ1'
        DataType = ftInteger
      end
      item
        Name = 'PQ2'
        DataType = ftInteger
      end
      item
        Name = 'PQ3'
        DataType = ftInteger
      end
      item
        Name = 'PQ4'
        DataType = ftInteger
      end
      item
        Name = 'PQ5'
        DataType = ftInteger
      end
      item
        Name = 'PQ6'
        DataType = ftInteger
      end
      item
        Name = 'PDT1'
        DataType = ftDate
      end
      item
        Name = 'PDT2'
        DataType = ftDate
      end
      item
        Name = 'PDT3'
        DataType = ftDate
      end
      item
        Name = 'PDT4'
        DataType = ftDate
      end
      item
        Name = 'PDT5'
        DataType = ftDate
      end
      item
        Name = 'PDT6'
        DataType = ftDate
      end
      item
        Name = 'FQ1'
        DataType = ftInteger
      end
      item
        Name = 'FQ2'
        DataType = ftInteger
      end
      item
        Name = 'FQ3'
        DataType = ftInteger
      end
      item
        Name = 'FQ4'
        DataType = ftInteger
      end
      item
        Name = 'FQ5'
        DataType = ftInteger
      end
      item
        Name = 'FDT1'
        DataType = ftDate
      end
      item
        Name = 'FDT2'
        DataType = ftDate
      end
      item
        Name = 'FDT3'
        DataType = ftDate
      end
      item
        Name = 'FDT4'
        DataType = ftDate
      end
      item
        Name = 'FDT5'
        DataType = ftDate
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
        Name = 'CMP2'
        DataType = ftBoolean
      end
      item
        Name = 'CMP3'
        DataType = ftBoolean
      end
      item
        Name = 'EQ1'
        DataType = ftInteger
      end
      item
        Name = 'EQ2'
        DataType = ftInteger
      end
      item
        Name = 'EQ3'
        DataType = ftInteger
      end
      item
        Name = 'TED1'
        DataType = ftDate
      end
      item
        Name = 'TED2'
        DataType = ftDate
      end
      item
        Name = 'TED3'
        DataType = ftDate
      end
      item
        Name = 'TEQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP4'
        DataType = ftBoolean
      end
      item
        Name = 'TSQTY'
        DataType = ftInteger
      end
      item
        Name = 'PQ7'
        DataType = ftInteger
      end
      item
        Name = 'PQ8'
        DataType = ftInteger
      end
      item
        Name = 'PQ9'
        DataType = ftInteger
      end
      item
        Name = 'PQ10'
        DataType = ftInteger
      end
      item
        Name = 'PDT7'
        DataType = ftDate
      end
      item
        Name = 'PDT8'
        DataType = ftDate
      end
      item
        Name = 'PDT9'
        DataType = ftDate
      end
      item
        Name = 'PDT10'
        DataType = ftDate
      end
      item
        Name = 'CMPS'
        DataType = ftBoolean
      end
      item
        Name = 'CMPI'
        DataType = ftBoolean
      end
      item
        Name = 'IQ1'
        DataType = ftInteger
      end
      item
        Name = 'IQ2'
        DataType = ftInteger
      end
      item
        Name = 'IQ3'
        DataType = ftInteger
      end
      item
        Name = 'TIQTY'
        DataType = ftInteger
      end
      item
        Name = 'IDT1'
        DataType = ftDate
      end
      item
        Name = 'IDT2'
        DataType = ftDate
      end
      item
        Name = 'IDT3'
        DataType = ftDate
      end
      item
        Name = 'T3DIFF'
        DataType = ftInteger
      end
      item
        Name = 'T2DIFF'
        DataType = ftInteger
      end
      item
        Name = 'T1DIFF'
        DataType = ftInteger
      end
      item
        Name = 'TSDIFF'
        DataType = ftInteger
      end
      item
        Name = 'PADIFF'
        DataType = ftInteger
      end
      item
        Name = 'PQ11'
        DataType = ftInteger
      end
      item
        Name = 'PQ12'
        DataType = ftInteger
      end
      item
        Name = 'PQ13'
        DataType = ftInteger
      end
      item
        Name = 'PQ14'
        DataType = ftInteger
      end
      item
        Name = 'PQ15'
        DataType = ftInteger
      end
      item
        Name = 'PQ16'
        DataType = ftInteger
      end
      item
        Name = 'PQ17'
        DataType = ftInteger
      end
      item
        Name = 'PQ18'
        DataType = ftInteger
      end
      item
        Name = 'PQ19'
        DataType = ftInteger
      end
      item
        Name = 'PQ20'
        DataType = ftInteger
      end
      item
        Name = 'PDT11'
        DataType = ftDate
      end
      item
        Name = 'PDT12'
        DataType = ftDate
      end
      item
        Name = 'PDT13'
        DataType = ftDate
      end
      item
        Name = 'PDT14'
        DataType = ftDate
      end
      item
        Name = 'PDT15'
        DataType = ftDate
      end
      item
        Name = 'PDT16'
        DataType = ftDate
      end
      item
        Name = 'PDT17'
        DataType = ftDate
      end
      item
        Name = 'PDT18'
        DataType = ftDate
      end
      item
        Name = 'PDT19'
        DataType = ftDate
      end
      item
        Name = 'PDT20'
        DataType = ftDate
      end
      item
        Name = 'EQ4'
        DataType = ftInteger
      end
      item
        Name = 'EQ5'
        DataType = ftInteger
      end
      item
        Name = 'TED4'
        DataType = ftDate
      end
      item
        Name = 'TED5'
        DataType = ftDate
      end
      item
        Name = 'TIP'
        DataType = ftInteger
      end
      item
        Name = 'TAQL'
        DataType = ftInteger
      end
      item
        Name = 'CMPIP'
        DataType = ftBoolean
      end
      item
        Name = 'CMPAQL'
        DataType = ftBoolean
      end
      item
        Name = 'TQN'
        DataType = ftInteger
      end
      item
        Name = 'IGA_P'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'EPDN1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IP1'
        DataType = ftInteger
      end
      item
        Name = 'IP2'
        DataType = ftInteger
      end
      item
        Name = 'IP3'
        DataType = ftInteger
      end
      item
        Name = 'IP4'
        DataType = ftInteger
      end
      item
        Name = 'IP5'
        DataType = ftInteger
      end
      item
        Name = 'IPD1'
        DataType = ftDate
      end
      item
        Name = 'IPD2'
        DataType = ftDate
      end
      item
        Name = 'IPD3'
        DataType = ftDate
      end
      item
        Name = 'IPD4'
        DataType = ftDate
      end
      item
        Name = 'IPD5'
        DataType = ftDate
      end
      item
        Name = 'IPDIFF'
        DataType = ftInteger
      end
      item
        Name = 'IDIFF'
        DataType = ftInteger
      end
      item
        Name = 'AQ1'
        DataType = ftInteger
      end
      item
        Name = 'AQ2'
        DataType = ftInteger
      end
      item
        Name = 'AQ3'
        DataType = ftInteger
      end
      item
        Name = 'ADT1'
        DataType = ftDate
      end
      item
        Name = 'ADT2'
        DataType = ftDate
      end
      item
        Name = 'ADT3'
        DataType = ftDate
      end
      item
        Name = 'AQ01'
        DataType = ftInteger
      end
      item
        Name = 'AQ001'
        DataType = ftInteger
      end
      item
        Name = 'AQ02'
        DataType = ftInteger
      end
      item
        Name = 'AQ002'
        DataType = ftInteger
      end
      item
        Name = 'AQ03'
        DataType = ftInteger
      end
      item
        Name = 'AQ003'
        DataType = ftInteger
      end
      item
        Name = 'IQ4'
        DataType = ftInteger
      end
      item
        Name = 'IQ5'
        DataType = ftInteger
      end
      item
        Name = 'IDT4'
        DataType = ftDate
      end
      item
        Name = 'IDT5'
        DataType = ftDate
      end
      item
        Name = 'EQ6'
        DataType = ftInteger
      end
      item
        Name = 'EQ7'
        DataType = ftInteger
      end
      item
        Name = 'EQ8'
        DataType = ftInteger
      end
      item
        Name = 'EQ9'
        DataType = ftInteger
      end
      item
        Name = 'EQ10'
        DataType = ftInteger
      end
      item
        Name = 'IQ6'
        DataType = ftInteger
      end
      item
        Name = 'IQ7'
        DataType = ftInteger
      end
      item
        Name = 'IQ8'
        DataType = ftInteger
      end
      item
        Name = 'IQ9'
        DataType = ftInteger
      end
      item
        Name = 'IQ10'
        DataType = ftInteger
      end
      item
        Name = 'TED6'
        DataType = ftDate
      end
      item
        Name = 'TED7'
        DataType = ftDate
      end
      item
        Name = 'TED8'
        DataType = ftDate
      end
      item
        Name = 'TED9'
        DataType = ftDate
      end
      item
        Name = 'TED10'
        DataType = ftDate
      end
      item
        Name = 'IDT6'
        DataType = ftDate
      end
      item
        Name = 'IDT7'
        DataType = ftDate
      end
      item
        Name = 'IDT8'
        DataType = ftDate
      end
      item
        Name = 'IDT9'
        DataType = ftDate
      end
      item
        Name = 'IDT10'
        DataType = ftDate
      end
      item
        Name = 'EPDN6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EPDN10'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pline;seq;did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterScroll = Query5AfterScroll
    Left = 280
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = Query5
    Left = 312
    Top = 104
  end
  object query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_exchangenotepad'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'MARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'USR'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = query6AfterPost
    Left = 120
    Top = 136
  end
  object DataSource3: TDataSource
    DataSet = query6
    Left = 152
    Top = 136
  end
end
