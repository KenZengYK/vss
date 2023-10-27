object frmtp4sc: Tfrmtp4sc
  Left = 0
  Top = 0
  Caption = 'TP data for SC'
  ClientHeight = 201
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 40
    Height = 13
    Caption = 'Factory '
  end
  object Edit1: TEdit
    Left = 80
    Top = 32
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    Text = 'SC'
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 67
    Width = 361
    Height = 54
    Caption = 'TP Date Range'
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 27
      Height = 13
      Caption = 'From '
    end
    object Label3: TLabel
      Left = 192
      Top = 24
      Width = 12
      Height = 13
      Caption = 'To'
    end
    object DateEdit1: TDateEdit
      Left = 40
      Top = 24
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 216
      Top = 24
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 144
    Width = 105
    Height = 25
    Caption = 'Export to Excel'
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 144
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo where pline='#39'T003U'#39' and seq=999'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 24
    Top = 65520
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files(*.xls)|*.xls'
    Left = 216
    Top = 65520
  end
  object xls1: TQExport4XLS
    DataSet = Query1
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.6'
    ShowFile = True
    Formats.DateFormat = 'yyyy-MM-dd'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'yyyy-MM-dd'
    Formats.CurrencyFormat = '#,###,##0.00'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    MergedCells = <>
    Left = 280
    Top = 65520
  end
end
