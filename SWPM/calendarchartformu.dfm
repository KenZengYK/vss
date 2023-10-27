object frmcalendarchart: Tfrmcalendarchart
  Left = 192
  Top = 114
  Caption = 'Capacity Utilization Analysis Chart'
  ClientHeight = 225
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 458
    Height = 225
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Factory'
    end
    object Label4: TLabel
      Left = 200
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Workshop'
    end
    object Label7: TLabel
      Left = 24
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Customer '
    end
    object Label8: TLabel
      Left = 200
      Top = 48
      Width = 50
      Height = 13
      Caption = 'Cust Style '
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 184
      Width = 81
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
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 80
      Top = 16
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Items.Strings = (
        'SL'
        'KB'
        'FJ'
        'GG'
        'RX'
        'CG')
    end
    object ComboBox2: TComboBox
      Left = 256
      Top = 16
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 72
      Width = 418
      Height = 97
      TabOrder = 4
      object Label1: TLabel
        Left = 96
        Top = 40
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label2: TLabel
        Left = 272
        Top = 40
        Width = 13
        Height = 13
        Caption = 'To'
      end
      object Label5: TLabel
        Left = 96
        Top = 63
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label6: TLabel
        Left = 272
        Top = 63
        Width = 13
        Height = 13
        Caption = 'To'
      end
      object Label9: TLabel
        Left = 96
        Top = 16
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label10: TLabel
        Left = 272
        Top = 16
        Width = 13
        Height = 13
        Caption = 'To'
      end
      object opt1: TRadioButton
        Left = 8
        Top = 40
        Width = 73
        Height = 17
        Caption = 'Weekly'
        TabOrder = 0
        OnClick = opt1Click
      end
      object opt2: TRadioButton
        Left = 8
        Top = 63
        Width = 65
        Height = 17
        Caption = 'Monthly'
        TabOrder = 1
        OnClick = opt2Click
      end
      object Edit1: TSpinEdit
        Left = 128
        Top = 40
        Width = 73
        Height = 22
        MaxValue = 2030
        MinValue = 2006
        TabOrder = 2
        Value = 2006
      end
      object Edit2: TSpinEdit
        Left = 200
        Top = 40
        Width = 41
        Height = 22
        MaxValue = 53
        MinValue = 1
        TabOrder = 3
        Value = 1
      end
      object Edit3: TSpinEdit
        Left = 296
        Top = 40
        Width = 73
        Height = 22
        MaxValue = 2030
        MinValue = 2006
        TabOrder = 4
        Value = 2006
      end
      object Edit4: TSpinEdit
        Left = 368
        Top = 40
        Width = 41
        Height = 22
        MaxValue = 53
        MinValue = 1
        TabOrder = 5
        Value = 1
      end
      object Edit5: TSpinEdit
        Left = 128
        Top = 63
        Width = 73
        Height = 22
        MaxValue = 2030
        MinValue = 2006
        TabOrder = 6
        Value = 2006
      end
      object Edit6: TSpinEdit
        Left = 200
        Top = 63
        Width = 41
        Height = 22
        MaxValue = 12
        MinValue = 1
        TabOrder = 7
        Value = 1
      end
      object Edit7: TSpinEdit
        Left = 296
        Top = 63
        Width = 73
        Height = 22
        MaxValue = 2030
        MinValue = 2006
        TabOrder = 8
        Value = 2006
      end
      object Edit8: TSpinEdit
        Left = 368
        Top = 63
        Width = 41
        Height = 22
        MaxValue = 12
        MinValue = 1
        TabOrder = 9
        Value = 1
      end
      object xh1: TRadioButton
        Left = 8
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Daily'
        Checked = True
        TabOrder = 10
        TabStop = True
        OnClick = xh1Click
      end
      object DateEdit1: TDateEdit
        Left = 128
        Top = 16
        Width = 113
        Height = 21
        NumGlyphs = 2
        TabOrder = 11
      end
      object DateEdit2: TDateEdit
        Left = 296
        Top = 16
        Width = 113
        Height = 21
        NumGlyphs = 2
        TabOrder = 12
      end
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 184
      Width = 81
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 6
    end
    object ComboBox3: TComboBox
      Left = 80
      Top = 48
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 4
      TabOrder = 2
      Items.Strings = (
        'SL'
        'KB')
    end
    object Edit9: TEdit
      Left = 256
      Top = 48
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 9
  end
end
