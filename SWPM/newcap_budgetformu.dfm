object frmnewcap_budget: Tfrmnewcap_budget
  Left = 0
  Top = 0
  Caption = 'Capacity Planning - Budget'
  ClientHeight = 193
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 32
    Top = 24
    Width = 217
    Height = 25
    Caption = 'Factory Capacity - Budget'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 64
    Width = 217
    Height = 25
    Caption = 'Sales Projection - Budget'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 32
    Top = 104
    Width = 217
    Height = 25
    Caption = 'Master Locked'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 32
    Top = 144
    Width = 217
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn4Click
  end
end
