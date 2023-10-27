object frmrules_detail: Tfrmrules_detail
  Left = 0
  Top = 0
  Caption = 'Show details'
  ClientHeight = 457
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TRzMemo
    Left = 0
    Top = 0
    Width = 956
    Height = 412
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      
        'How to calculate # of CU Marker per each Marking br., with examp' +
        'le? / '#22914#20309#35336#31639#27599#20491#25903#29256#30340#35009#21106#22044#26550#25976#30446', '#21547#20363#23376'?'#9#9#9#9#9
      #9#9#9#9#9#9#9#9#9#9#9#9#9
      
        #9'1st step) '#9'Max. layers per CU Marker  = "Cutting height limit o' +
        'f the Device" divide by "Matl thickness" / '#9#9#9#9#9#9
      #9#9#9#9#9#9#9#9#9#9
      #9'   '#9#27599#20491#35009#21106#22044#26550#26368#22810#23652#25976' =  "'#35373#20633#30340#35009#21106#39640#24230#38480#21046'" '#38500#20197' "'#29289#26009#21402#24230'"'#9#9#9#9#9#9#9#9
      #9#9#9#9'e.g.'#9'= 10/0.657 = 15.22'#9#9#9
      
        #9#9#9'Then, based on laying requirement to round all down the fig. ' +
        'by 2 ways / '#28982#24460', '#36319#25818#37610#25490#35201#27714#25353#20841#31278#26041#27861#25226#25976#23383#25972#23567#25976#20840#33293#9
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9
      
        #9#9#9#9'1st way, if laying in pairs / '#22914#38617#23652#37610#25490' '#9#9#9#9'Layers round all dow' +
        'n to even no. / '#23652#25976#25972#23567
      #25976#20840#33293#33267#38617#25976#9#9#9'e.g.'#9'= 15.22'#9#9'= 14'#9
      
        #9#9#9#9'2nd way, if laying not in pairs / '#22914#38750#38617#23652#37610#25490' '#9#9#9#9'Layers round al' +
        'l down / '#23652#25976#25972#23567#25976#20840#33293#9
      #9#9#9#9'                = 15.22'#9#9'= 15'#9
      
        #9'Last step) # of CU Marker per each marking br. = "Marking branc' +
        'h layer" divided by "Max. layers per CU Marker", *No. round all ' +
        'up /'#9#9#9
      #9#9#9#9#9#9#9#9#9#9#9#9#9
      ' '#9#9#27599#20491#25903#29256#30340#35009#21106#22044#26550#30340#25976#30446' = "'#25903#29256#23652#25976'" '#38500#20197' "'#27599#20491#35009#21106#22044#26550#26368#22810#23652#25976'", *'#38656#25972#23567#25976#20840#20837#9#9#9#9#9
      #9#9#9#9#9#9'Result / '#32080#26524#9#9#9
      
        #9#9#9#9'1st way, if laying in pairs / '#22914#38617#23652#37610#25490' '#9#9#9#9'No. round all up / '#38656 +
        #25972#23567#25976#20840#20837#9#9
      #9#9#9#9'e.g.'#9'= 320/ 14 = 22.86'#9#9'= 23'#9
      
        #9#9#9#9'2nd way, if laying not in pairs / '#22914#38750#38617#23652#37610#25490' '#9#9#9#9'No. round all u' +
        'p / '#38656#25972#23567#25976#20840#20837'(*same as '
      
        '1st way)'#9#9#9'                                = 320/ 15 = 21.33'#9#9'= ' +
        '22'#9
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9
      #9
      #9'e.g. elements figure:'#9#9#9#9#9#9#9#9#9#9#9#9#9#9
      #9#9#9
      
        #9#9'1st element - Cutting height limit of the Device = 10'#9#9#9#9#9'2nd ' +
        'element - Matl thickness = 0.657'#9#9
      #9#9#9#9'3rd element - Marking branch layer = 320'#9#9#9#9
      
        #9#9'4th element - Laying requirement with 2 ways (in pairs or not)' +
        #9#9#9#9'5th element - Max. layers per CU Marker, 1st '
      'way = 14 & 2nd way = 15'#9#9#9#9#9#9#9#9#9#9)
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1500
    ExplicitHeight = 177
  end
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 956
    Height = 45
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 352
    object SpeedButton3: TSpeedButton
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Hint = 'Save'
      Caption = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 111
      Top = 8
      Width = 74
      Height = 25
      Hint = 'Exit'
      Caption = 'Exit'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
  end
end
