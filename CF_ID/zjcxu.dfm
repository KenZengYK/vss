object frmzjcx: Tfrmzjcx
  Left = 117
  Top = 87
  Width = 545
  Height = 412
  Caption = '質檢查詢'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 95
    Height = 16
    Caption = 'By Material: '
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 86
    Height = 16
    Caption = 'By Project: '
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 336
    Top = 56
    Width = 6
    Height = 16
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 106
    Top = 23
    Width = 183
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnClick = ComboBox1Change
    OnExit = ComboBox1Change
    OnKeyPress = ComboBox1KeyPress
  end
  object ComboBox2: TComboBox
    Left = 106
    Top = 63
    Width = 183
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnClick = ComboBox2Change
    OnExit = ComboBox2Change
    OnKeyPress = ComboBox2KeyPress
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 104
    Width = 505
    Height = 217
    Color = 11927551
    DataSource = DataSource1
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = '新細明體'
    TitleFont.Style = []
    OnDblClick = BitBtn1Click
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterColor = clWindow
    Columns = <
      item
        FieldName = 'Rno'
        Title.Alignment = taCenter
        Title.Caption = '質檢編號'
        Width = 79
        Footers = <>
      end
      item
        FieldName = 'Rrq'
        Title.Alignment = taCenter
        Title.Caption = '質檢日期'
        Width = 74
        Footers = <>
      end
      item
        FieldName = 'Pname'
        Title.Alignment = taCenter
        Title.Caption = '物料'
        Width = 189
        Footers = <>
      end
      item
        FieldName = 'Pno'
        Title.Alignment = taCenter
        Title.Caption = '工程號'
        Width = 125
        Footers = <>
      end>
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 344
    Width = 81
    Height = 27
    Caption = 'OK'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 440
    Top = 344
    Width = 81
    Height = 27
    Caption = 'Cancel'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '新細明體'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DataSource1: TDataSource
    DataSet = qcdm.qry1
    Left = 460
    Top = 24
  end
end
