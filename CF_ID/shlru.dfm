object frmshlr: Tfrmshlr
  Left = 152
  Top = 106
  Width = 385
  Height = 165
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 96
    Width = 65
    Height = 13
    Caption = '���ŰƼt��'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 201
    Top = 96
    Width = 72
    Height = 13
    Caption = 'PPC-MU�Ю�'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 29
    Top = 24
    Width = 52
    Height = 13
    Caption = 'CAD�Ю�'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 233
    Top = 24
    Width = 39
    Height = 13
    Caption = '���M�H'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 42
    Top = 64
    Width = 39
    Height = 13
    Caption = '����H'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object fcz: TEdit
    Left = 83
    Top = 93
    Width = 86
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnKeyPress = fczKeyPress
  end
  object ppcfh: TEdit
    Left = 276
    Top = 93
    Width = 85
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnKeyPress = ppcfhKeyPress
  end
  object cadfh: TEdit
    Left = 83
    Top = 21
    Width = 86
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = cadfhKeyPress
  end
  object pmr: TEdit
    Left = 276
    Top = 21
    Width = 85
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = pmrKeyPress
  end
  object zbr: TEdit
    Left = 83
    Top = 61
    Width = 86
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 102
    Width = 57
    Height = 25
    Caption = '�T�w'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 280
    Top = 102
    Width = 57
    Height = 25
    Caption = '����'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object Query1: TQuery
    DatabaseName = 'Cutplan'
    RequestLive = True
    Left = 272
    Top = 56
  end
end