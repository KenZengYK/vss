object frmstyleimage: Tfrmstyleimage
  Left = 192
  Top = 107
  Caption = 'Style Image and Sample Approval Status'
  ClientHeight = 498
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 25
    Width = 441
    Height = 390
    Align = alLeft
    Stretch = True
    ExplicitHeight = 376
  end
  object Image2: TImage
    Left = 441
    Top = 25
    Width = 433
    Height = 390
    Align = alClient
    Stretch = True
    ExplicitWidth = 441
    ExplicitHeight = 376
  end
  object Panel1: TPanel
    Left = 0
    Top = 415
    Width = 874
    Height = 83
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 424
    object Label1: TLabel
      Left = 224
      Top = 56
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 48
      Width = 97
      Height = 25
      Caption = 'Load Front Image'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 48
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 120
      Top = 48
      Width = 97
      Height = 25
      Caption = 'Load Back Image'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object GroupBox1: TGroupBox
      Left = 336
      Top = 6
      Width = 497
      Height = 41
      Caption = 'Sample Approval Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label4: TLabel
        Left = 8
        Top = 17
        Width = 68
        Height = 13
        Caption = 'Planned Date '
      end
      object Label5: TLabel
        Left = 216
        Top = 17
        Width = 63
        Height = 13
        Caption = 'Current Date '
      end
      object DateEdit1: TDateEdit
        Left = 80
        Top = 17
        Width = 113
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 288
        Top = 17
        Width = 113
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 424
        Top = 16
        Width = 70
        Height = 17
        Caption = 'Completed'
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 4
      Top = 7
      Width = 27
      Height = 13
      Caption = 'Front '
    end
    object Label3: TLabel
      Left = 444
      Top = 7
      Width = 28
      Height = 13
      Caption = 'Back '
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 88
    Top = 344
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 304
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 304
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 288
    Top = 304
  end
end
