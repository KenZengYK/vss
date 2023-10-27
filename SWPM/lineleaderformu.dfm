object frmlineleader: Tfrmlineleader
  Left = 192
  Top = 114
  Caption = 'Module for Line leader'
  ClientHeight = 437
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Line Profile'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Default Line Work Calendar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 328
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Current Line Work Calendar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 40
    Top = 224
    Width = 145
    Height = 25
    Caption = 'Planning && Scheduling'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 184
    Top = 224
    Width = 145
    Height = 25
    Caption = 'Fty/Ws/Line GAI'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 328
    Top = 224
    Width = 145
    Height = 25
    Caption = 'Analysis Report'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 40
    Top = 264
    Width = 433
    Height = 25
    Caption = 
      'RAP (incl. WF Pool, Mc Pool, LB4, LB5 and LB6), In dotnet progra' +
      'm'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 24
    Width = 433
    Height = 145
    Caption = 'Filter'
    TabOrder = 0
  end
  object BitBtn8: TBitBtn
    Left = 40
    Top = 304
    Width = 241
    Height = 25
    Caption = 'Operation Specification (Print out from IEBOO)'
    DoubleBuffered = True
    Enabled = False
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object BitBtn9: TBitBtn
    Left = 280
    Top = 304
    Width = 193
    Height = 25
    Caption = 'Size Table (Print out from cadwalk)'
    DoubleBuffered = True
    Enabled = False
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 9
  end
  object BitBtn10: TBitBtn
    Left = 40
    Top = 344
    Width = 145
    Height = 25
    Caption = 'QC Report (In QC system)'
    DoubleBuffered = True
    Enabled = False
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 10
  end
  object BitBtn11: TBitBtn
    Left = 184
    Top = 344
    Width = 145
    Height = 25
    Caption = 'RFID (In RFID system)'
    DoubleBuffered = True
    Enabled = False
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 11
  end
  object BitBtn13: TBitBtn
    Left = 40
    Top = 384
    Width = 433
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 12
  end
  object BitBtn14: TBitBtn
    Left = 328
    Top = 344
    Width = 145
    Height = 25
    Caption = 'Transit Flow (1&& 2)'
    DoubleBuffered = True
    Enabled = False
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 13
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDelim = 1
    LangNames.Strings = (
      'English'
      'Traditional Chinese'
      'Thai')
    Language = 'English'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    Left = 248
    Top = 160
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D006C0069006E0065006C00650061006400
      6500720001004D006F00640075006C006500200066006F00720020004C006900
      6E00650020006C00650061006400650072000100C9627795216A4A5801000100
      0D000A00420069007400420074006E00310001004C0069006E00650020005000
      72006F00660069006C0065000100C962217CCB4E010001000D000A0042006900
      7400420074006E003100300001005100430020005200650070006F0072007400
      2000280049006E002000510043002000730079007300740065006D0029000100
      010001000D000A00420069007400420074006E00310031000100520046004900
      44002000280049006E0020005200460049004400200073007900730074006500
      6D0029000100010001000D000A00420069007400420074006E00320001004400
      65006600610075006C00740020004C0069006E006500200057006F0072006B00
      2000430061006C0065006E00640061007200010010982D8AC962FD885C4FE565
      C666010001000D000A00420069007400420074006E0033000100430075007200
      720065006E00740020004C0069006E006500200057006F0072006B0020004300
      61006C0065006E006400610072000100FE73C16CC962FD885C4FE565C6660100
      01000D000A00420069007400420074006E003400010050006C0061006E006E00
      69006E00670020002600260020005300630068006500640075006C0069006E00
      67000100088A8352078292630B7A010001000D000A0042006900740042007400
      6E00350001004600740079002F00570073002F004C0069006E00650020004700
      410049000100E05E2F00CA8E93952F00C96220005490196A0763DD9101000100
      0D000A00420069007400420074006E003600010041006E0061006C0079007300
      6900730020005200650070006F00720074000100065290673158688801000100
      0D000A00420069007400420074006E0037000100520041005000200028006900
      6E0063006C002E00200057004600200050006F006F006C002C0020004D006300
      200050006F006F006C002C0020004C00420034002C0020004C00420035002000
      61006E00640020004C004200360029002C00200049006E00200064006F007400
      6E00650074002000700072006F006700720061006D000100010001000D000A00
      420069007400420074006E00380001004F007000650072006100740069006F00
      6E002000530070006500630069006600690063006100740069006F006E002000
      28005000720069006E00740020006F00750074002000660072006F006D002000
      4900450042004F004F0029000100010001000D000A0042006900740042007400
      6E0039000100530069007A00650020005400610062006C006500200028005000
      720069006E00740020006F00750074002000660072006F006D00200063006100
      6400770061006C006B0029000100010001000D000A00470072006F0075007000
      42006F00780031000100460069006C0074006500720001004E90FE6F9D68F64E
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A005400660072006D006C0069006E0065006C0065006100
      64006500720001000100010001000D000A00420069007400420074006E003100
      01000100010001000D000A00420069007400420074006E003100300001000100
      010001000D000A00420069007400420074006E00310031000100010001000100
      0D000A00420069007400420074006E00320001000100010001000D000A004200
      69007400420074006E00330001000100010001000D000A004200690074004200
      74006E00340001000100010001000D000A00420069007400420074006E003500
      01000100010001000D000A00420069007400420074006E003600010001000100
      01000D000A00420069007400420074006E00370001000100010001000D000A00
      420069007400420074006E00380001000100010001000D000A00420069007400
      420074006E00390001000100010001000D000A00470072006F00750070004200
      6F007800310001000100010001000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400660072006D006C0069006E0065006C006500610064006500
      720001004D0053002000530061006E0073002000530065007200690066000100
      41007200690061006C00200055006E00690063006F006400650020004D005300
      0100400041007200690061006C00200055006E00690063006F00640065002000
      4D00530001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A007300740044006C006700
      7300430061007000740069006F006E0073005F0055006E00690063006F006400
      65000D000A00410062006F007200740001002600410062006F00720074000100
      010001000D000A0041006C006C000100260041006C006C000100010001000D00
      0A00430061006E00630065006C000100430061006E00630065006C0001000100
      01000D000A0043006F006E006600690072006D00010043006F006E0066006900
      72006D000100010001000D000A004500720072006F0072000100450072007200
      6F0072000100010001000D000A00480065006C00700001002600480065006C00
      70000100010001000D000A00490067006E006F00720065000100260049006700
      6E006F00720065000100010001000D000A0049006E0066006F0072006D006100
      740069006F006E00010049006E0066006F0072006D006100740069006F006E00
      0100010001000D000A004E006F00010026004E006F000100010001000D000A00
      4E006F00200054006F00200041006C006C0001004E0026006F00200074006F00
      200041006C006C000100010001000D000A004F004B0001004F004B0001000100
      01000D000A005200650074007200790001002600520065007400720079000100
      010001000D000A005700610072006E0069006E00670001005700610072006E00
      69006E0067000100010001000D000A0059006500730001002600590065007300
      0100010001000D000A00590065007300200054006F00200041006C006C000100
      590065007300200074006F002000260041006C006C000100010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A005400660072006D006C00
      69006E0065006C00650061006400650072002E00480065006C00700046006900
      6C00650001000100010001000D000A00730074004C006F00630061006C006500
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660072006D006C0069006E0065006C006500
      61006400650072000100440045004600410055004C0054005F00430048004100
      520053004500540001004300480049004E004500530045004200490047003500
      5F004300480041005200530045005400010054004800410049005F0043004800
      4100520053004500540001000D000A00}
  end
end