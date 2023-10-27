object frmcustct: Tfrmcustct
  Left = 192
  Top = 114
  Caption = 'Customer Profile - Cycle Time Preview Formats'
  ClientHeight = 160
  ClientWidth = 321
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
  object GroupBox2: TGroupBox
    Left = 32
    Top = -48
    Width = 209
    Height = 49
    TabOrder = 5
    Visible = False
    object xh3: TCheckBox
      Left = 8
      Top = 24
      Width = 57
      Height = 17
      Caption = 'LCL'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object xh4: TCheckBox
      Left = 104
      Top = 24
      Width = 97
      Height = 17
      Caption = 'FCL'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 96
    Top = -40
    Width = 209
    Height = 49
    TabOrder = 4
    Visible = False
    object xh1: TCheckBox
      Left = 8
      Top = 24
      Width = 57
      Height = 17
      Caption = 'Initial'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object xh2: TCheckBox
      Left = 104
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Flow / Repeat'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object chk1: TCheckBox
    Left = 16
    Top = 32
    Width = 177
    Height = 17
    Caption = 'Customer Profile - Cycle Time'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = chk1Click
  end
  object chk2: TCheckBox
    Left = 16
    Top = 64
    Width = 305
    Height = 17
    Caption = 'Total Cycle Time of Order Processing and Operation Control'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = chk2Click
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 104
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 104
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
end
