object frmmaintenance: Tfrmmaintenance
  Left = 192
  Top = 114
  BorderIcons = []
  Caption = 'Module for Maintenance'
  ClientHeight = 311
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 32
    Top = 24
    Width = 145
    Height = 25
    Caption = 'Line Profile'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 264
    Width = 169
    Height = 25
    Caption = 'Check list for completed projects'
    DoubleBuffered = True
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    Visible = False
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 32
    Top = -8
    Width = 145
    Height = 25
    Caption = 'Factory Profile'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    Visible = False
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 200
    Top = -8
    Width = 145
    Height = 25
    Caption = 'Workshop Profile'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    Visible = False
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 192
    Top = 24
    Width = 145
    Height = 25
    Caption = 'Customer Profile'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 32
    Top = 64
    Width = 145
    Height = 25
    Caption = 'Head Office Calendar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 192
    Top = 64
    Width = 145
    Height = 25
    Caption = 'Factory Operation Calendar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 32
    Top = 104
    Width = 305
    Height = 25
    Caption = 'Default Line Work Calendar and CU%'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 32
    Top = 184
    Width = 305
    Height = 25
    Caption = 'Current Line Work Calendar and CU%'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 32
    Top = 224
    Width = 145
    Height = 25
    Caption = 'Flags'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 192
    Top = 224
    Width = 145
    Height = 25
    Caption = 'Glossary'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 10
    OnClick = BitBtn11Click
  end
  object BitBtn12: TBitBtn
    Left = 32
    Top = 144
    Width = 305
    Height = 25
    Caption = 'Adjust Default Line Work Calendar and CU%'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 11
    OnClick = BitBtn12Click
  end
  object BitBtn13: TBitBtn
    Left = 32
    Top = 264
    Width = 305
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 12
  end
end
