object frm_ftycal_desc: Tfrm_ftycal_desc
  Left = 0
  Top = 0
  Caption = 'Change Calendar description'
  ClientHeight = 273
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 40
    Height = 13
    Caption = 'Factory '
  end
  object Label10: TLabel
    Left = 80
    Top = 24
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 64
    Width = 457
    Height = 145
    Caption = 'GroupBox1'
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 59
      Height = 13
      Caption = 'Calendar 1: '
    end
    object Label3: TLabel
      Left = 248
      Top = 24
      Width = 59
      Height = 13
      Caption = 'Calendar 2: '
    end
    object Label4: TLabel
      Left = 24
      Top = 51
      Width = 59
      Height = 13
      Caption = 'Calendar 3: '
    end
    object Label5: TLabel
      Left = 248
      Top = 51
      Width = 59
      Height = 13
      Caption = 'Calendar 4: '
    end
    object Label6: TLabel
      Left = 24
      Top = 80
      Width = 59
      Height = 13
      Caption = 'Calendar 5: '
    end
    object Label7: TLabel
      Left = 248
      Top = 80
      Width = 59
      Height = 13
      Caption = 'Calendar 6: '
    end
    object Label8: TLabel
      Left = 24
      Top = 107
      Width = 59
      Height = 13
      Caption = 'Calendar 7: '
    end
    object Label9: TLabel
      Left = 248
      Top = 107
      Width = 59
      Height = 13
      Caption = 'Calendar 8: '
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 313
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 88
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object Edit4: TEdit
      Left = 313
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit2'
    end
    object Edit5: TEdit
      Left = 88
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'Edit1'
    end
    object Edit6: TEdit
      Left = 313
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'Edit2'
    end
    object Edit7: TEdit
      Left = 88
      Top = 107
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'Edit1'
    end
    object Edit8: TEdit
      Left = 313
      Top = 107
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'Edit2'
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 224
    Width = 74
    Height = 25
    Caption = 'Save'
    DoubleBuffered = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300007030222220330000703000222033000000303
      0222033333333303000203300000330303020307777703030302030777770303
      0302030777770003030203077777070303020000000000000302220307777707
      0302220000000000000222220307777707022222000000000002}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 97
    Top = 224
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 8
  end
end
