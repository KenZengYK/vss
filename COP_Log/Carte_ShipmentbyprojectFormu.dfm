object frmCarte_Shipmentbyproject: TfrmCarte_Shipmentbyproject
  Left = 0
  Top = 0
  Caption = 'Garments single or partial shipment details report by project'
  ClientHeight = 153
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
    Height = 153
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
    Top = 40
    Width = 42
    Height = 13
    Caption = #24037#31243#34399'  '
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 40
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 88
    Width = 81
    Height = 25
    Caption = #38928#35261
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 88
    Width = 81
    Height = 25
    Caption = #36864#20986
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
