object frmCarte_Mail: TfrmCarte_Mail
  Left = 0
  Top = 0
  Caption = 'Send Email'
  ClientHeight = 521
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 0
    Width = 905
    Height = 521
    Active = True
    Align = alClient
    GradientColorStart = 14216405
    GradientColorStop = 16776176
    GradientDirection = gdVerticalEnd
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = -244
    ExplicitTop = 1
    ExplicitWidth = 1149
    ExplicitHeight = 39
  end
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 31
    Height = 13
    Caption = 'From: '
  end
  object Label2: TLabel
    Left = 248
    Top = 24
    Width = 53
    Height = 13
    Caption = 'Password: '
  end
  object Label3: TLabel
    Left = 24
    Top = 51
    Width = 19
    Height = 13
    Caption = 'To: '
  end
  object SpeedButton1: TSpeedButton
    Left = 680
    Top = 51
    Width = 23
    Height = 22
    Hint = 'Choose email address'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object Label4: TLabel
    Left = 24
    Top = 79
    Width = 21
    Height = 13
    Caption = 'CC: '
  end
  object SpeedButton2: TSpeedButton
    Left = 680
    Top = 79
    Width = 23
    Height = 22
    Hint = 'Choose email address'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object Label5: TLabel
    Left = 24
    Top = 115
    Width = 43
    Height = 13
    Caption = 'Subject: '
  end
  object Label6: TLabel
    Left = 24
    Top = 165
    Width = 56
    Height = 13
    Caption = 'Message: - '
  end
  object Label7: TLabel
    Left = 728
    Top = 40
    Width = 3
    Height = 13
    Visible = False
  end
  object Label8: TLabel
    Left = 24
    Top = 434
    Width = 60
    Height = 13
    Caption = 'Attachment:'
  end
  object SpeedButton3: TSpeedButton
    Left = 680
    Top = 434
    Width = 23
    Height = 22
    Hint = 'Choose attachment file'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = SpeedButton3Click
  end
  object Label9: TLabel
    Left = 224
    Top = 0
    Width = 3
    Height = 13
    Visible = False
  end
  object Edit1: TEdit
    Left = 69
    Top = 24
    Width = 148
    Height = 21
    TabOrder = 0
    Text = 'COP_LOG@phgmt.com.hk'
  end
  object Edit2: TEdit
    Left = 301
    Top = 24
    Width = 108
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'phcarte'
  end
  object Edit3: TEdit
    Left = 69
    Top = 51
    Width = 612
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 69
    Top = 79
    Width = 612
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 69
    Top = 115
    Width = 612
    Height = 21
    Hint = #27492#26694#20839#30340#20839#23481#19981#33021#20462#25913
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 69
    Top = 184
    Width = 612
    Height = 244
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 472
    Width = 73
    Height = 25
    Caption = 'Send'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 472
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object ListBox1: TListBox
    Left = 704
    Top = 51
    Width = 185
    Height = 377
    ItemHeight = 13
    TabOrder = 9
    OnClick = ListBox1Click
  end
  object Edit6: TEdit
    Left = 90
    Top = 434
    Width = 591
    Height = 21
    ReadOnly = True
    TabOrder = 10
  end
  object ListBox2: TListBox
    Left = 704
    Top = 79
    Width = 185
    Height = 377
    ItemHeight = 13
    TabOrder = 11
    Visible = False
  end
  object Edit7: TEdit
    Left = 69
    Top = 136
    Width = 612
    Height = 21
    Hint = #21487#20197#22312#27492#34389#22686#21152#38468#21152#27161#38988
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object IdSMTP1: TIdSMTP
    Password = 'phpdn'
    SASLMechanisms = <>
    Username = 'PH_PDN@phgmt.com.hk'
    Left = 464
    Top = 65528
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 496
    Top = 65528
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'All files (*.*)|*.*'
    Filter = 
      'PDF files (*.pdf)|*.pdf|Excel files (*.xls)|*.xls|Excel files (*' +
      '.xlsx)|*.xlsx|All files|*.*'
    Left = 608
    Top = 65528
  end
  object Query2: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 536
    Top = 65528
  end
  object Query3: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 568
    Top = 65528
  end
end
