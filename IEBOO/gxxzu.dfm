object frmgxxz: Tfrmgxxz
  Left = 318
  Top = 151
  Width = 201
  Height = 164
  BorderIcons = [biSystemMenu]
  Caption = '選擇工序'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object op1: TRadioButton
    Left = 47
    Top = 16
    Width = 90
    Height = 17
    Caption = '按車種'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object op2: TRadioButton
    Left = 47
    Top = 56
    Width = 102
    Height = 17
    Caption = '按縫合方法'
    Checked = True
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = True
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 96
    Width = 57
    Height = 25
    Caption = '確定'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 96
    Width = 57
    Height = 25
    Caption = '取消'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
