object frmoamodule: Tfrmoamodule
  Left = 192
  Top = 110
  Caption = 'Module for MM'
  ClientHeight = 536
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 168
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Team '
    end
    object Label3: TLabel
      Left = 288
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Customer '
    end
    object Label4: TLabel
      Left = 456
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Cust Style '
    end
    object Label5: TLabel
      Left = 24
      Top = 40
      Width = 52
      Height = 13
      Caption = 'Date From '
    end
    object Label6: TLabel
      Left = 192
      Top = 40
      Width = 19
      Height = 13
      Caption = 'To  '
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'SL'
        'KB'
        'FJ'
        'GG'
        'RX'
        'CG')
    end
    object ComboBox2: TComboBox
      Left = 200
      Top = 16
      Width = 65
      Height = 21
      TabOrder = 1
      Text = 'A'
      Items.Strings = (
        'A'
        'B'
        'C'
        'D')
    end
    object ComboBox3: TComboBox
      Left = 336
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 2
      Text = 'ETAA'
      Items.Strings = (
        'SL'
        'KB')
    end
    object Edit1: TEdit
      Left = 512
      Top = 16
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object DateEdit1: TDateEdit
      Left = 80
      Top = 40
      Width = 105
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object DateEdit2: TDateEdit
      Left = 208
      Top = 40
      Width = 105
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 495
    Width = 754
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 8
    ExplicitTop = 542
    object BitBtn19: TBitBtn
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
      OnClick = BitBtn19Click
    end
    object BitBtn20: TBitBtn
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 72
    Width = 217
    Height = 49
    Caption = '1. Customer Profile'
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Cycle Time'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 120
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Size Ratio'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 264
    Top = 72
    Width = 369
    Height = 49
    Caption = '2. Capacity Planning'
    TabOrder = 2
    object BitBtn3: TBitBtn
      Left = 16
      Top = 16
      Width = 97
      Height = 25
      Caption = 'Sales Projection'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 120
      Top = 16
      Width = 137
      Height = 25
      Caption = 'Customer Order Enquiry'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 264
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Comparison'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn5Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 688
    Top = 112
    Width = 609
    Height = 49
    Caption = '3. Order Summary'
    TabOrder = 3
    Visible = False
    object BitBtn6: TBitBtn
      Left = 16
      Top = 16
      Width = 193
      Height = 25
      Caption = 'Order Summary(PJ or C1) by Season'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 224
      Top = 16
      Width = 233
      Height = 25
      Caption = 'Order Summary(LWPM or SOPC) by Season'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 472
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Overall Order Summary'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn8Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 24
    Top = 127
    Width = 609
    Height = 145
    Caption = '3'
    TabOrder = 4
    object BitBtn9: TBitBtn
      Left = 16
      Top = 16
      Width = 193
      Height = 25
      Caption = 'RWO Waiting for Scheduling'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 224
      Top = 16
      Width = 297
      Height = 25
      Caption = 'WIP Style Image && Color Plate Illustration - Workshop'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn10Click
    end
    object GroupBox5: TGroupBox
      Left = 16
      Top = 48
      Width = 545
      Height = 57
      TabOrder = 2
      object xh1: TCheckBox
        Left = 16
        Top = 16
        Width = 177
        Height = 17
        Caption = 'All excluding actual ex-fty'
        TabOrder = 0
      end
      object xh2: TCheckBox
        Left = 216
        Top = 16
        Width = 177
        Height = 17
        Caption = 'QN outstanding'
        TabOrder = 1
      end
      object xh3: TCheckBox
        Left = 16
        Top = 32
        Width = 89
        Height = 17
        Caption = 'QN WIP'
        TabOrder = 2
      end
      object xh4: TCheckBox
        Left = 216
        Top = 32
        Width = 121
        Height = 17
        Caption = 'QN WIP Halt'
        TabOrder = 3
      end
      object xh5: TCheckBox
        Left = 392
        Top = 32
        Width = 121
        Height = 17
        Caption = 'Waiting for ex-fty'
        TabOrder = 4
      end
    end
    object BitBtn11: TBitBtn
      Left = 16
      Top = 112
      Width = 377
      Height = 25
      Caption = 
        'Delivery Dashboard (On-time/Lock Diff ) plus PDN information - W' +
        'orkshop'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 408
      Top = 112
      Width = 153
      Height = 25
      Caption = 'Material Stand by Dashboard'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn12Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 48
      Width = 162
      Height = 17
      Caption = 'Planning && Scheduling Report'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 24
    Top = 279
    Width = 409
    Height = 49
    Caption = '4. PDN'
    TabOrder = 5
    object BitBtn13: TBitBtn
      Left = 16
      Top = 16
      Width = 97
      Height = 25
      Caption = 'PH Dispatch Note'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn13Click
    end
    object BitBtn14: TBitBtn
      Left = 120
      Top = 16
      Width = 129
      Height = 25
      Caption = 'Past Performance Report'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn14Click
    end
    object BitBtn15: TBitBtn
      Left = 256
      Top = 16
      Width = 137
      Height = 25
      Caption = 'PDN Summary Dashboard'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn15Click
    end
  end
  object GroupBox7: TGroupBox
    Left = 456
    Top = 279
    Width = 177
    Height = 49
    Caption = '5. Calendar'
    TabOrder = 6
    object BitBtn16: TBitBtn
      Left = 16
      Top = 16
      Width = 145
      Height = 25
      Caption = 'HK Office/Factory Calendar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn16Click
    end
  end
  object GroupBox8: TGroupBox
    Left = 24
    Top = 335
    Width = 609
    Height = 145
    Caption = '6. Misc'
    TabOrder = 7
    object GroupBox9: TGroupBox
      Left = 16
      Top = 16
      Width = 577
      Height = 89
      TabOrder = 0
      object xh6: TCheckBox
        Left = 16
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Project Process'
        TabOrder = 0
      end
      object xh7: TCheckBox
        Left = 184
        Top = 16
        Width = 177
        Height = 17
        Caption = 'Style Prefix-Product Category'
        TabOrder = 1
      end
      object xh8: TCheckBox
        Left = 360
        Top = 16
        Width = 209
        Height = 17
        Caption = 'Style Suffix-Season nr && Range name'
        TabOrder = 2
      end
      object xh9: TCheckBox
        Left = 16
        Top = 32
        Width = 121
        Height = 17
        Caption = 'Impact Code'
        TabOrder = 3
      end
      object xh10: TCheckBox
        Left = 184
        Top = 32
        Width = 121
        Height = 17
        Caption = 'QN Transit Process'
        TabOrder = 4
      end
      object xh11: TCheckBox
        Left = 360
        Top = 32
        Width = 121
        Height = 17
        Caption = 'SAH && BOO Process'
        TabOrder = 5
      end
      object xh12: TCheckBox
        Left = 16
        Top = 48
        Width = 225
        Height = 17
        Caption = 'Ref for Default phase of line off (on-std)'
        TabOrder = 6
      end
      object xh13: TCheckBox
        Left = 360
        Top = 48
        Width = 185
        Height = 17
        Caption = 'Default phase of line off (on-std)'
        TabOrder = 7
      end
      object xh14: TCheckBox
        Left = 16
        Top = 64
        Width = 193
        Height = 17
        Caption = 'RWO Fty date (locked diff process)'
        TabOrder = 8
      end
      object xh15: TCheckBox
        Left = 216
        Top = 64
        Width = 217
        Height = 17
        Caption = 'QN/SQN Dynamic peocess at workshop'
        TabOrder = 9
      end
      object xh16: TCheckBox
        Left = 440
        Top = 64
        Width = 121
        Height = 17
        Caption = 'Locked Diff process'
        TabOrder = 10
      end
    end
    object BitBtn17: TBitBtn
      Left = 16
      Top = 112
      Width = 97
      Height = 25
      Caption = 'Glossary'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn17Click
    end
    object BitBtn18: TBitBtn
      Left = 128
      Top = 112
      Width = 121
      Height = 25
      Caption = 'AQL Flow Setup'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn18Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 16
      Width = 201
      Height = 17
      Caption = 'Flag Expanation that is suitable for OA'
      TabOrder = 3
      OnClick = CheckBox2Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 384
    Top = 65521
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 416
    Top = 65521
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 448
    Top = 65521
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 480
    Top = 65521
  end
end
