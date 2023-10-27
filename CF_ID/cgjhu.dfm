object frmcgjh: Tfrmcgjh
  Left = -4
  Top = -4
  Width = 808
  Height = 608
  Caption = '裁割計劃----工程錄入'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 581
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '裁割計劃'
      object Label1: TLabel
        Left = 15
        Top = 35
        Width = 48
        Height = 12
        Caption = '工程編號'
      end
      object Label2: TLabel
        Left = 251
        Top = 35
        Width = 24
        Height = 12
        Caption = '床號'
      end
      object Label3: TLabel
        Left = 535
        Top = 35
        Width = 48
        Height = 12
        Caption = '拉布張數'
      end
      object Label18: TLabel
        Left = 349
        Top = 35
        Width = 24
        Height = 12
        Caption = '物料'
      end
      object SpeedButton1: TSpeedButton
        Left = 136
        Top = 518
        Width = 30
        Height = 30
        Hint = '裁割計劃列印'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton8: TSpeedButton
        Left = 166
        Top = 518
        Width = 30
        Height = 30
        Hint = '列印分析報告'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton8Click
      end
      object tc: TSpeedButton
        Left = 226
        Top = 518
        Width = 30
        Height = 30
        Hint = '退出'
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
        OnClick = tcClick
      end
      object Label17: TLabel
        Left = 15
        Top = 10
        Width = 48
        Height = 12
        Caption = '工程編號'
      end
      object SpeedButton9: TSpeedButton
        Left = 209
        Top = 8
        Width = 23
        Height = 21
        Hint = '查詢工程編號'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton9Click
      end
      object Label4: TLabel
        Left = 15
        Top = 62
        Width = 48
        Height = 12
        Caption = '嘜架編號'
      end
      object Label5: TLabel
        Left = 339
        Top = 62
        Width = 90
        Height = 12
        Caption = '生產嘜架長度(M)'
      end
      object Label6: TLabel
        Left = 14
        Top = 89
        Width = 100
        Height = 12
        Caption = '預算嘜架封度(MM)'
      end
      object Label7: TLabel
        Left = 328
        Top = 89
        Width = 100
        Height = 12
        Caption = '生產嘜架封度(MM)'
      end
      object Label8: TLabel
        Left = 599
        Top = 89
        Width = 90
        Height = 12
        Caption = '生產嘜架用量(M)'
      end
      object Label9: TLabel
        Left = 619
        Top = 62
        Width = 72
        Height = 12
        Caption = '單張嘜架片數'
      end
      object Label10: TLabel
        Left = 231
        Top = 115
        Width = 53
        Height = 12
        Caption = '用布率(%)'
      end
      object Label11: TLabel
        Left = 483
        Top = 115
        Width = 98
        Height = 12
        Caption = '生產嘜架周長(CM)'
      end
      object DBText1: TDBText
        Left = 272
        Top = 12
        Width = 3
        Height = 12
        AutoSize = True
        DataField = 'Mjstatus'
        DataSource = DMfcjh.dscgjh1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 15
        Top = 115
        Width = 98
        Height = 12
        Caption = '最大樣片長度(CM)'
      end
      object Label13: TLabel
        Left = 15
        Top = 142
        Width = 78
        Height = 12
        Caption = '裁割時間(MIN)'
      end
      object Label14: TLabel
        Left = 383
        Top = 142
        Width = 48
        Height = 12
        Caption = '嘜架件數'
      end
      object Bevel1: TBevel
        Left = 16
        Top = 166
        Width = 753
        Height = 67
      end
      object Label19: TLabel
        Left = 15
        Top = 458
        Width = 60
        Height = 15
        Caption = 'OA備注:'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '新細明體'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object SpeedButton11: TSpeedButton
        Left = 196
        Top = 518
        Width = 30
        Height = 30
        Hint = '生產力分析'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
          0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
          0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
          CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
          CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
          CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
          CCC77777777777777377330333333333CCC3337F33333333737F370333333333
          0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
          7777777777777777777733333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton11Click
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 32
        Width = 145
        Height = 20
        Color = 11927551
        DataField = 'Prjno'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 280
        Top = 32
        Width = 33
        Height = 20
        Color = 11927551
        DataField = 'Xh'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 584
        Top = 32
        Width = 41
        Height = 20
        Color = clWhite
        DataField = 'Lbzs'
        DataSource = DMfcjh.dscgjh1
        TabOrder = 4
      end
      object DBGridEh2: TDBGridEh
        Left = 16
        Top = 240
        Width = 753
        Height = 213
        Color = 11927551
        DataSource = DMfcjh.dscgjh2
        PopupMenu = PopupMenu1
        TabOrder = 16
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = '新細明體'
        TitleFont.Style = []
        OnEnter = DBGridEh2Enter
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = '新細明體'
        FooterFont.Style = []
        FooterColor = clWindow
        UseMultiTitle = True
        Columns = <
          item
            FieldName = 'Gch'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '工程號'
            Width = 150
            Footers = <>
          end
          item
            FieldName = 'Zdh'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '制單號'
            Width = 135
            Footers = <>
          end
          item
            FieldName = 'Kh'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '款號'
            Width = 146
            Footers = <>
          end
          item
            FieldName = 'Sh'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '色號'
            Width = 70
            Footers = <>
          end
          item
            FieldName = 'Cm'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '尺碼'
            Width = 53
            Footers = <>
          end
          item
            FieldName = 'Mjjs'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '嘜架件數'
            Width = 71
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Mjs'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '嘜架數'
            Width = 79
            Footers = <>
          end>
      end
      object DBEdit17: TDBEdit
        Left = 376
        Top = 32
        Width = 129
        Height = 20
        Color = 11927551
        DataField = 'Wl'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 518
        Width = 120
        Height = 30
        DataSource = DMfcjh.dscgjh1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = DBNavigator1Click
      end
      object ComboBox1: TComboBox
        Left = 64
        Top = 8
        Width = 145
        Height = 20
        ItemHeight = 12
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object DBEdit4: TDBEdit
        Left = 64
        Top = 59
        Width = 249
        Height = 20
        Color = 11927551
        DataField = 'Mjh'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 429
        Top = 59
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Scmjcd'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 115
        Top = 86
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Ysmjfd'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 429
        Top = 86
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Scmjfd'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 691
        Top = 86
        Width = 62
        Height = 20
        Color = 11795962
        DataField = 'Scmjyl'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 691
        Top = 59
        Width = 62
        Height = 20
        Color = 11795962
        DataField = 'Dzmjps'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 287
        Top = 112
        Width = 50
        Height = 20
        Color = 11795962
        DataField = 'Ybl'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 584
        Top = 112
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Scmjzc'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 115
        Top = 112
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Zdypcd'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit13: TDBEdit
        Left = 95
        Top = 139
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Cgsj'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit14: TDBEdit
        Left = 431
        Top = 139
        Width = 50
        Height = 20
        Color = 11795962
        DataField = 'Mjjs'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 15
      end
      object DBCheckBox1: TDBCheckBox
        Left = 600
        Top = 142
        Width = 97
        Height = 17
        Caption = '裁床自配'
        Color = clMenu
        DataField = 'Zp'
        DataSource = DMfcjh.dscgjh1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 24
        Top = 171
        Width = 97
        Height = 17
        Caption = '標準嘜架'
        DataField = 'Bzmj'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 19
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 144
        Top = 171
        Width = 97
        Height = 17
        Caption = '中邊色嘜架'
        DataField = 'Zbmj'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 280
        Top = 171
        Width = 97
        Height = 17
        Caption = '頭尾嘜架'
        DataField = 'Twmj'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 21
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 400
        Top = 171
        Width = 97
        Height = 17
        Caption = '碰撞線'
        DataField = 'Pzx'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 22
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 520
        Top = 171
        Width = 97
        Height = 17
        Caption = '陰陽色嘜架'
        DataField = 'Yymj'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 23
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 24
        Top = 191
        Width = 97
        Height = 17
        Caption = '單款'
        DataField = 'Dk'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 24
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 144
        Top = 191
        Width = 97
        Height = 17
        Caption = '單色'
        DataField = 'Ds'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 25
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 280
        Top = 191
        Width = 97
        Height = 17
        Caption = '單制單'
        DataField = 'Dzd'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 26
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 400
        Top = 191
        Width = 97
        Height = 17
        Caption = '拉單張'
        DataField = 'Ldz'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 27
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox11: TDBCheckBox
        Left = 520
        Top = 191
        Width = 97
        Height = 17
        Caption = '要求修改制單數'
        DataField = 'Yqxg'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 28
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox12: TDBCheckBox
        Left = 24
        Top = 211
        Width = 97
        Height = 17
        Caption = '混款'
        DataField = 'Hk'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 29
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 144
        Top = 211
        Width = 97
        Height = 17
        Caption = '混色'
        DataField = 'Hs'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 30
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 280
        Top = 211
        Width = 97
        Height = 17
        Caption = '混制單'
        DataField = 'Hzd'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 31
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox15: TDBCheckBox
        Left = 400
        Top = 211
        Width = 97
        Height = 17
        Caption = '拉合掌'
        DataField = 'Lhz'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 32
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox16: TDBCheckBox
        Left = 520
        Top = 211
        Width = 177
        Height = 17
        Caption = '注意色差(考慮裁床生產損耗)'
        DataField = 'Zysc'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 33
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBRichEdit1: TDBRichEdit
        Left = 80
        Top = 460
        Width = 689
        Height = 51
        DataField = 'Oaps'
        DataSource = DMfcjh.dscgjh1
        ScrollBars = ssBoth
        TabOrder = 34
      end
      object DBEdit22: TDBEdit
        Left = 624
        Top = 32
        Width = 41
        Height = 20
        Color = clWhite
        DataField = 'Lbzs1'
        DataSource = DMfcjh.dscgjh1
        TabOrder = 35
      end
      object DBEdit23: TDBEdit
        Left = 664
        Top = 32
        Width = 41
        Height = 20
        Color = clWhite
        DataField = 'Lbzs2'
        DataSource = DMfcjh.dscgjh1
        TabOrder = 36
      end
      object DBEdit24: TDBEdit
        Left = 477
        Top = 59
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Scmjcd1'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 37
      end
      object DBEdit25: TDBEdit
        Left = 525
        Top = 59
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Scmjcd2'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 38
      end
      object DBEdit26: TDBEdit
        Left = 163
        Top = 86
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Ysmjfd1'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 39
      end
      object DBEdit27: TDBEdit
        Left = 211
        Top = 86
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Ysmjfd2'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 40
      end
      object DBEdit28: TDBEdit
        Left = 477
        Top = 86
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Scmjfd1'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 41
      end
      object DBEdit29: TDBEdit
        Left = 525
        Top = 86
        Width = 49
        Height = 20
        Color = 11795962
        DataField = 'Scmjfd2'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 42
      end
      object DBEdit30: TDBEdit
        Left = 335
        Top = 112
        Width = 50
        Height = 20
        Color = 11795962
        DataField = 'Ybl1'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 43
      end
      object DBEdit31: TDBEdit
        Left = 383
        Top = 112
        Width = 50
        Height = 20
        Color = 11795962
        DataField = 'Ybl2'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 44
      end
      object DBEdit32: TDBEdit
        Left = 640
        Top = 112
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Scmjzc1'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 45
      end
      object DBEdit33: TDBEdit
        Left = 696
        Top = 112
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Scmjzc2'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 46
      end
      object DBEdit34: TDBEdit
        Left = 151
        Top = 139
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Cgsj1'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 47
      end
      object DBEdit35: TDBEdit
        Left = 207
        Top = 139
        Width = 57
        Height = 20
        Color = 11795962
        DataField = 'Cgsj2'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 48
      end
    end
    object TabSheet2: TTabSheet
      Caption = '用量分析'
      ImageIndex = 1
      object Label15: TLabel
        Left = 15
        Top = 35
        Width = 48
        Height = 12
        Caption = '工程編號'
      end
      object DBGridEh1: TDBGridEh
        Left = 16
        Top = 64
        Width = 761
        Height = 217
        Color = clWhite
        DataSource = DMfcjh.dscgylfx
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = '新細明體'
        TitleFont.Style = []
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = '新細明體'
        FooterFont.Style = []
        FooterColor = clWindow
        UseMultiTitle = True
        Columns = <
          item
            Color = 11795962
            FieldName = 'Wl'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '物料名稱'
            Width = 123
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Gch'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '工程號'
            Width = 115
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Zdh'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '制單號'
            Width = 129
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Kh'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '款號'
            Width = 204
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Sh'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '色號'
            Width = 33
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Ysfd'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '預算封度'
            Width = 46
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Syfd'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '實用封度'
            Width = 41
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Zds'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '制單數'
            Width = 43
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Ycs'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '預裁數'
            Width = 44
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Dc'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '多裁%'
            Width = 30
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Cacyl'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = 'W.cac用量'
            Width = 58
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Jhyl'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '計劃用量'
            Width = 54
            Footers = <>
          end
          item
            FieldName = 'Ybl'
            Title.Caption = '配布率%'
            Width = 35
            Footers = <>
          end
          item
            FieldName = 'Hsl'
            Title.Caption = '回縮率%'
            Width = 32
            Footers = <>
          end
          item
            FieldName = 'Scsh'
            Title.Caption = '生產損耗%'
            Width = 38
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Cutyl'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            Title.Caption = '用量(含損耗)'
            Width = 57
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Ylxc'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '用量相差'
            Width = 55
            Footers = <>
          end>
      end
      object DBEdit15: TDBEdit
        Left = 72
        Top = 32
        Width = 153
        Height = 20
        Color = 11927551
        DataField = 'Prjno'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 1
      end
      object DBGridEh4: TDBGridEh
        Left = 16
        Top = 288
        Width = 761
        Height = 201
        Color = clWhite
        DataSource = DMfcjh.dscgjh3
        PopupMenu = PopupMenu1
        TabOrder = 2
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = '新細明體'
        TitleFont.Style = []
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = '新細明體'
        FooterFont.Style = []
        FooterColor = clWindow
        UseMultiTitle = True
        Columns = <
          item
            Color = 11795962
            FieldName = 'Wl'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            ReadOnly = True
            Title.Caption = '物料名稱'
            Width = 127
            Footers = <>
          end
          item
            FieldName = 'Idno'
            Title.Caption = 'IDO#/IOU#'
            Width = 62
            Footers = <>
          end
          item
            FieldName = 'Oaps'
            Title.Caption = 'OA備注'
            Width = 424
            Footers = <>
          end
          item
            FieldName = 'Oacm'
            Title.Caption = '確認人'
            Width = 55
            Footers = <>
          end
          item
            FieldName = 'Qr'
            Title.Caption = '確認'
            Width = 20
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Rq'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            Title.Caption = '確認日期'
            Width = 60
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Tm'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = '新細明體'
            Font.Style = []
            Title.Caption = '確認時間'
            Width = 59
            Footers = <>
          end>
      end
      object BitBtn1: TBitBtn
        Left = 16
        Top = 504
        Width = 97
        Height = 25
        Caption = '新增IDO#/IOU#'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = '數量分析'
      ImageIndex = 2
      object Label16: TLabel
        Left = 15
        Top = 19
        Width = 48
        Height = 12
        Caption = '工程編號'
      end
      object DBGridEh3: TDBGridEh
        Left = 16
        Top = 48
        Width = 753
        Height = 481
        Color = 11927551
        DataSource = DMfcjh.dscgslfx
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = '新細明體'
        TitleFont.Style = []
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = '新細明體'
        FooterFont.Style = []
        FooterColor = clWindow
        UseMultiTitle = True
        Columns = <
          item
            Color = 11795962
            FieldName = 'Gch'
            ReadOnly = True
            Title.Caption = '工程號'
            Width = 115
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Zdh'
            ReadOnly = True
            Title.Caption = '制單號'
            Width = 117
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Kh'
            ReadOnly = True
            Title.Caption = '款號'
            Width = 190
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Sh'
            ReadOnly = True
            Title.Caption = '色號'
            Width = 42
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Cm'
            ReadOnly = True
            Title.Caption = '國際碼'
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Zds'
            ReadOnly = True
            Title.Caption = '制單數'
            Width = 47
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Ycs'
            ReadOnly = True
            Title.Caption = '預裁數'
            Width = 49
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Dc'
            ReadOnly = True
            Title.Caption = '多裁數'
            Width = 48
            Footers = <>
          end
          item
            Color = 11795962
            FieldName = 'Dcp'
            ReadOnly = True
            Title.Caption = '多裁%'
            Width = 58
            Footers = <>
          end>
      end
      object DBEdit16: TDBEdit
        Left = 72
        Top = 16
        Width = 153
        Height = 20
        Color = 11927551
        DataField = 'Prjno'
        DataSource = DMfcjh.dscgjh1
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 764
    Top = 24
    object N2: TMenuItem
      Caption = '刪除整個工程'
      OnClick = N2Click
    end
  end
  object gcbh: TQuery
    DatabaseName = 'cutplan'
    RequestLive = True
    SQL.Strings = (
      'select distinct prjno from lbjh1')
    Left = 308
    Top = 543
  end
  object Query1: TQuery
    DatabaseName = 'cutplan'
    RequestLive = True
    Left = 340
    Top = 543
  end
  object Query2: TQuery
    DatabaseName = 'cutplan'
    RequestLive = True
    Left = 372
    Top = 543
  end
  object Query3: TQuery
    DatabaseName = 'cutplan'
    RequestLive = True
    Left = 404
    Top = 543
  end
  object Query4: TQuery
    DatabaseName = 'cutplan'
    RequestLive = True
    Left = 436
    Top = 543
  end
  object Query5: TQuery
    DatabaseName = 'cutplan'
    RequestLive = True
    Left = 468
    Top = 543
  end
end
