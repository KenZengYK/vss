object frmmatmatch: Tfrmmatmatch
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = #29289#26009#37197#21512#24773#27841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 49
      Height = 13
      AutoSize = False
      Caption = #24037#31243#34399
    end
    object SpeedButton1: TSpeedButton
      Left = 208
      Top = 16
      Width = 73
      Height = 22
      Caption = #30830#23450
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
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 299
    Width = 536
    Height = 49
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 16
      Top = 8
      Width = 89
      Height = 33
      Caption = #20445#23384#36039#26009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 8
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
    end
    object BitBtn3: TBitBtn
      Left = 209
      Top = 8
      Width = 87
      Height = 33
      Caption = #25171#21360#22577#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
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
    end
    object BitBtn4: TBitBtn
      Left = 104
      Top = 8
      Width = 87
      Height = 33
      Caption = #36864#20986
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn4Click
      Kind = bkClose
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 536
    Height = 250
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 534
      Height = 248
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = CHINESEBIG5_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = #26032#32048#26126#39636
      FooterFont.Style = []
      FrozenCols = 4
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = CHINESEBIG5_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = #26032#32048#26126#39636
      TitleFont.Style = []
      UseMultiTitle = True
      OnDblClick = DBGridEh1DblClick
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'J_NO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #24037#31243#34399
          Width = 76
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'J2_JOB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #35069#21934
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'ARTNO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #27454#34399
          Width = 89
        end
        item
          Color = 11795962
          EditButtons = <>
          FieldName = 'ACOL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #33394#30908
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'WL8T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21152#24037#29289#26009'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF8'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21152#24037#29289#26009'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL8'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21152#24037#29289#26009'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL8Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21152#24037#29289#26009'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL8P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21152#24037#29289#26009'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL1T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35009#24202#29289#26009'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF1'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35009#24202#29289#26009'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL1'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35009#24202#29289#26009'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'KCRQ'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35009#24202#29289#26009'|'#38283#35009#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL1Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35009#24202#29289#26009'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL1P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35009#24202#29289#26009'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL2T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#25163#35009#29289#26009'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF2'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#25163#35009#29289#26009'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL2'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#25163#35009#29289#26009'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'KCRQ1'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#25163#35009#29289#26009'|'#38283#35009#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL2Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#25163#35009#29289#26009'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL2P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#25163#35009#29289#26009'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL3T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#24067#26479'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF3'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#24067#26479'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL3'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#24067#26479'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL3Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#24067#26479'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL3P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#24067#26479'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL7T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#26825#26479'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF7'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#26825#26479'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL7'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#26825#26479'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL7Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#26825#26479'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL7P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#26825#26479'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL4T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#36554#32299#29289#26009'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF4'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#36554#32299#29289#26009'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL4'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#36554#32299#29289#26009'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL4Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#36554#32299#29289#26009'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL4P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#36554#32299#29289#26009'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL5T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35037#29852#29289#26009'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF5'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35037#29852#29289#26009'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL5'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35037#29852#29289#26009'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL5Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35037#29852#29289#26009'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL5P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#35037#29852#29289#26009'|'#23436#25104#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL6T'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21253#35037#29289#26009'|'#37197#29986#22825#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WLF6'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21253#35037#29289#26009'|'#27161#35672
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL6'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21253#35037#29289#26009'|'#23526#38555#20837#20489#26085#26399
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'WL6Z'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21253#35037#29289#26009'|'#32317#25976
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'WL6P'
          Footers = <>
          Title.Caption = #29289#26009'('#24037#21378#20837#20489#35336')|'#21253#35037#29289#26009'|'#23436#25104#25976
          Width = 15
        end
        item
          Color = clWhite
          EditButtons = <>
          FieldName = 'KHB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          Title.Caption = #29986#21069#36039#26009'|'#38283#36008#36774
          Width = 15
        end
        item
          Color = clWhite
          EditButtons = <>
          FieldName = 'ZY'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          Title.Caption = #29986#21069#36039#26009'|'#32025#27171
          Width = 15
        end
        item
          Color = clWhite
          EditButtons = <>
          FieldName = 'ZD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          Title.Caption = #29986#21069#36039#26009'|'#35069#21934
          Width = 15
        end
        item
          Color = clWhite
          EditButtons = <>
          FieldName = 'CCB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          Title.Caption = #29986#21069#36039#26009'|'#23610#23544#34920
          Width = 15
        end
        item
          Color = clWhite
          EditButtons = <>
          FieldName = 'GCB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Footers = <>
          Title.Caption = #29986#21069#36039#26009'|'#24037#31243#34920
          Width = 15
        end
        item
          EditButtons = <>
          FieldName = 'BZZL'
          Footers = <>
          Title.Caption = #29986#21069#36039#26009'|'#21253#35037#36039#26009
          Width = 15
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = tblMATmatch
    Left = 376
    Top = 8
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 312
    Top = 8
  end
  object tblMATmatch: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblMATmatch'
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ARTNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'WLF1'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL1'
        DataType = ftDate
      end
      item
        Name = 'WLF2'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL2'
        DataType = ftDate
      end
      item
        Name = 'WLF3'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL3'
        DataType = ftDate
      end
      item
        Name = 'WLF4'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL4'
        DataType = ftDate
      end
      item
        Name = 'WLF5'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL5'
        DataType = ftDate
      end
      item
        Name = 'WLF6'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL6'
        DataType = ftDate
      end
      item
        Name = 'KHB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ZY'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ZD'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CCB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GCB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PBRQ'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'KCRQ'
        DataType = ftDate
      end
      item
        Name = 'WL1T'
        DataType = ftInteger
      end
      item
        Name = 'WL2T'
        DataType = ftInteger
      end
      item
        Name = 'WL3T'
        DataType = ftInteger
      end
      item
        Name = 'WL4T'
        DataType = ftInteger
      end
      item
        Name = 'WL5T'
        DataType = ftInteger
      end
      item
        Name = 'WL6T'
        DataType = ftInteger
      end
      item
        Name = 'YHRQ'
        DataType = ftDate
      end
      item
        Name = 'KCRQ1'
        DataType = ftDate
      end
      item
        Name = 'BRAND'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SOPNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DDT'
        DataType = ftDate
      end
      item
        Name = 'FLAG1'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WLF7'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL7'
        DataType = ftDate
      end
      item
        Name = 'WL7T'
        DataType = ftInteger
      end
      item
        Name = 'PSRQ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'WL1R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WL2R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WL3R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WL4R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WL5R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WL6R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WL7R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'WLF8'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL8'
        DataType = ftDate
      end
      item
        Name = 'WL8T'
        DataType = ftInteger
      end
      item
        Name = 'WL8R'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'BZZL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WL1Z'
        DataType = ftInteger
      end
      item
        Name = 'WL1P'
        DataType = ftInteger
      end
      item
        Name = 'WL2Z'
        DataType = ftInteger
      end
      item
        Name = 'WL2P'
        DataType = ftInteger
      end
      item
        Name = 'WL3Z'
        DataType = ftInteger
      end
      item
        Name = 'WL3P'
        DataType = ftInteger
      end
      item
        Name = 'WL4Z'
        DataType = ftInteger
      end
      item
        Name = 'WL4P'
        DataType = ftInteger
      end
      item
        Name = 'WL5Z'
        DataType = ftInteger
      end
      item
        Name = 'WL5P'
        DataType = ftInteger
      end
      item
        Name = 'WL6Z'
        DataType = ftInteger
      end
      item
        Name = 'WL6P'
        DataType = ftInteger
      end
      item
        Name = 'WL7Z'
        DataType = ftInteger
      end
      item
        Name = 'WL7P'
        DataType = ftInteger
      end
      item
        Name = 'WL8Z'
        DataType = ftInteger
      end
      item
        Name = 'WL8P'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = tblMATmatchAfterPost
    Left = 344
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 408
    Top = 8
  end
end
