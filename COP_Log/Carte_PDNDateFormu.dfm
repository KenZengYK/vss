object frmCarte_PDNDate: TfrmCarte_PDNDate
  Left = 0
  Top = 0
  Caption = #20462#35330#23433#25490' (PDN'#32066#31449') '#38626#24288#26085#26399
  ClientHeight = 201
  ClientWidth = 289
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
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 0
    Width = 289
    Height = 201
    Active = True
    Align = alClient
    GradientColorStart = 14216405
    GradientColorStop = 16776176
    GradientDirection = gdVerticalEnd
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = -860
    ExplicitTop = 1
    ExplicitWidth = 1149
    ExplicitHeight = 39
  end
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 168
    Height = 13
    Caption = #21407#23450' "'#23433#25490' (PDN'#32066#31449') '#38626#24288#26085#26399'" '
  end
  object Label2: TLabel
    Left = 48
    Top = 88
    Width = 168
    Height = 13
    Caption = #20462#35330' "'#23433#25490' (PDN'#32066#31449') '#38626#24288#26085#26399'" '
  end
  object DateEdit1: TDateEdit
    Left = 120
    Top = 56
    Width = 121
    Height = 21
    NumGlyphs = 2
    ReadOnly = True
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 120
    Top = 112
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 147
    Width = 81
    Height = 25
    Caption = #30906#23450
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 8
  end
end