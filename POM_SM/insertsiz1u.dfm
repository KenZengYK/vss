object frminsertsiz1: Tfrminsertsiz1
  Left = 192
  Top = 185
  Width = 297
  Height = 244
  Caption = '�[/��ؽX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 136
    Width = 116
    Height = 16
    Caption = '���ؽX�N���J��:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 136
    Width = 46
    Height = 16
    Caption = '999DD'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 136
    Width = 47
    Height = 16
    Caption = '���e!!!'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 96
    Width = 36
    Height = 16
    Caption = '�ؽX:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 160
    Top = 184
    Width = 3
    Height = 13
    Visible = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 92
    Width = 81
    Height = 24
    Enabled = False
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 176
    Width = 73
    Height = 25
    Caption = '�T�w'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 176
    Width = 73
    Height = 25
    Caption = '����'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object opt1: TRadioGroup
    Left = 16
    Top = 16
    Width = 257
    Height = 49
    Caption = '���'
    Columns = 2
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '�s�ө���'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '�W�['
      '�R��')
    ParentFont = False
    TabOrder = 3
    OnClick = opt1Click
  end
  object Query1: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 4
    Top = 88
  end
  object Query2: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 4
    Top = 56
  end
  object Query3: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select stylno from sz_sampsize'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 44
    Top = 56
  end
end
