object frmdailyreport: Tfrmdailyreport
  Left = 192
  Top = 114
  Caption = 'Daily Operation Report  (Top Management)'
  ClientHeight = 399
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label2: TLabel
    Left = 200
    Top = 24
    Width = 52
    Height = 13
    Caption = 'Workshop '
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 23
    Height = 13
    Caption = 'Line '
  end
  object Label4: TLabel
    Left = 200
    Top = 56
    Width = 51
    Height = 13
    Caption = 'As at date '
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 24
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'SL'
    OnChange = ComboBox1Change
    Items.Strings = (
      'SL'
      'KB'
      'FJ')
  end
  object ComboBox2: TComboBox
    Left = 256
    Top = 24
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    Text = '4B'
    OnChange = ComboBox2Change
  end
  object DateEdit1: TDateEdit
    Left = 256
    Top = 56
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 344
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
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 344
    Width = 81
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 88
    Width = 377
    Height = 249
    Caption = 'Report List'
    TabOrder = 5
    object xh1: TCheckBox
      Left = 8
      Top = 48
      Width = 337
      Height = 17
      Caption = 
        'Daily Output Goal Achievement Indicator - Actual Index *Confirme' +
        'd*'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object xh2: TCheckBox
      Left = 8
      Top = 64
      Width = 361
      Height = 17
      Caption = 
        'Daily Output Goal Achievement Indicator - Projected Index *Confi' +
        'rmed*'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object xh3: TCheckBox
      Left = 8
      Top = 32
      Width = 353
      Height = 17
      Caption = 'WIP Styles Image && Color Plate Illustration - Workshop'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object xh4: TCheckBox
      Left = 8
      Top = 80
      Width = 337
      Height = 17
      Caption = 'LB(WF/Mc) Vs LE Dashboard - Off-standard'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object xh5: TCheckBox
      Left = 8
      Top = 96
      Width = 337
      Height = 17
      Caption = 'LB(WF/Mc) Vs LE Dashboard - On-standard'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object xh6: TCheckBox
      Left = 8
      Top = 160
      Width = 361
      Height = 17
      Caption = 'QN GAI (Sewing Workshop) - Ledger Sheet (specific line)'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object xh7: TCheckBox
      Left = 8
      Top = 176
      Width = 353
      Height = 17
      Caption = 'QN Transit Summary (specific line)'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object xh8: TCheckBox
      Left = 8
      Top = 192
      Width = 337
      Height = 17
      Caption = 'QN Transit Flow 1-4 (specific line)'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object xh9: TCheckBox
      Left = 8
      Top = 128
      Width = 353
      Height = 17
      Caption = 'Default Workshop'#39's Line work Calendar && CU% by line'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object xh10: TCheckBox
      Left = 8
      Top = 144
      Width = 361
      Height = 17
      Caption = 
        'Current Workshop'#39's Line work Calendar && CU% by line (QN depende' +
        'nt)'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object xh11: TCheckBox
      Left = 8
      Top = 112
      Width = 361
      Height = 17
      Caption = 'Workshop Delivery Dashboard (On-time / Lock Diff)'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object xh12: TCheckBox
      Left = 8
      Top = 16
      Width = 337
      Height = 17
      Caption = 'Flags Explanation of Daily Output Goal Achievement Indicator'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object xh13: TCheckBox
      Left = 288
      Top = -16
      Width = 353
      Height = 17
      Caption = 'Flag explanation of "Locked Diff"'
      TabOrder = 12
      Visible = False
    end
    object xh14: TCheckBox
      Left = 8
      Top = 224
      Width = 329
      Height = 17
      Caption = 'Glossary'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object xh15: TCheckBox
      Left = 8
      Top = 208
      Width = 329
      Height = 17
      Caption = 'PDN Summary Dashboard by WO (Appoint Clr)'
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
  end
  object Edit1: TComboBox
    Left = 72
    Top = 56
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'T002'
    OnEnter = Edit1Enter
    Items.Strings = (
      'SL'
      'KB')
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 8
    Top = 1
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
    Top = 1
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 344
    object BriefingRecord1: TMenuItem
      Caption = 'Briefing Record'
      ShortCut = 32833
      Visible = False
      OnClick = BriefingRecord1Click
    end
  end
end
