object frmstyleimg: Tfrmstyleimg
  Left = 0
  Top = 0
  Caption = #27454#22294
  ClientHeight = 462
  ClientWidth = 649
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
  object cxImage1: TcxImage
    Left = 0
    Top = 0
    Align = alClient
    Properties.Stretch = True
    TabOrder = 0
    Transparent = True
    Height = 389
    Width = 649
  end
  object Panel1: TPanel
    Left = 0
    Top = 389
    Width = 649
    Height = 73
    Align = alBottom
    TabOrder = 1
    object Label11: TLabel
      Left = 7
      Top = 11
      Width = 52
      Height = 13
      Caption = #22294#29255#20358#28304
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton6: TSpeedButton
      Left = 386
      Top = 7
      Width = 23
      Height = 22
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
      OnClick = SpeedButton6Click
    end
    object DBEdit8: TDBEdit
      Left = 64
      Top = 7
      Width = 321
      Height = 21
      DataField = 'img'
      DataSource = frmsiztbl.DataSource7
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = DBEdit8Change
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 32
      Width = 65
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.png;*.gif;*.png;*.gif;*.ico;*.emf;*.wmf;*.pcx)|*.png;*.gi' +
      'f;*.png;*.gif;*.ico;*.emf;*.wmf;*.pcx|Portable Network Graphics ' +
      '(*.png)|*.png|CompuServe GIF Image (*.gif)|*.gif|PNG graphics fr' +
      'om DevExpress (*.png)|*.png|GIF Image (*.gif)|*.gif|Icons (*.ico' +
      ')|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf' +
      '|Z-soft Image File (*.pcx)|*.pcx'
    InitialDir = '\\10.2.1.73\Cadwalk\Design Drawing\Sample Folder\'#37327#24230
    Left = 528
    Top = 336
  end
end