object frmpdnpast2: Tfrmpdnpast2
  Left = 357
  Top = 286
  Caption = 'PDN Past Performance Report'
  ClientHeight = 181
  ClientWidth = 289
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
  object xh1: TCheckBox
    Left = 32
    Top = 24
    Width = 73
    Height = 17
    Caption = 'Format 1'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = xh1Click
  end
  object xh2: TCheckBox
    Left = 32
    Top = 104
    Width = 73
    Height = 17
    Caption = 'Format 2 '
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 136
    Width = 73
    Height = 25
    Caption = 'Preview'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object xh3: TRadioGroup
    Left = 32
    Top = 48
    Width = 233
    Height = 41
    Caption = 'Grading'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'PDN Qty'
      'Ex-fty Qty'
      'Both')
    TabOrder = 1
  end
  object xh4: TCheckBox
    Left = 152
    Top = 104
    Width = 105
    Height = 17
    Caption = 'Overall Grade'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 144
    Top = 25
    Width = 137
    Height = 17
    Caption = #19981#35336#22240#23458#26410#36208#36008#25976#37327
    TabOrder = 5
  end
end
