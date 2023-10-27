object frmpdnsample: Tfrmpdnsample
  Left = 192
  Top = 114
  Width = 870
  Height = 640
  Caption = 'PDN -  Sample Take (out / keep) Receipt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 862
    Height = 606
    ActivePage = TabSheet1
    Align = alClient
    Style = tsButtons
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'RWOs'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 26
          Height = 13
          Caption = 'PDN '
        end
        object DBText2: TDBText
          Left = 40
          Top = 8
          Width = 169
          Height = 17
          DataField = 'PDN'
          DataSource = frmpdn.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 33
        Width = 854
        Height = 542
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'XXX RWO - Out'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 26
          Height = 13
          Caption = 'PDN '
        end
        object DBText1: TDBText
          Left = 40
          Top = 8
          Width = 169
          Height = 17
          DataField = 'PDN'
          DataSource = frmpdn.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 33
        Width = 854
        Height = 542
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'XXX RWO - Keep'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 26
          Height = 13
          Caption = 'PDN '
        end
        object DBText3: TDBText
          Left = 40
          Top = 8
          Width = 169
          Height = 17
          DataField = 'PDN'
          DataSource = frmpdn.DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 33
        Width = 854
        Height = 542
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
  end
end
