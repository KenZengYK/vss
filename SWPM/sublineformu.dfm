object frmchildline: Tfrmchildline
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = #23376#25289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 688
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn2: TBitBtn
      Left = 17
      Top = 8
      Width = 78
      Height = 33
      Caption = #20445#23384#36039#26009
      ModalResult = 8
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
    object BitBtn5: TBitBtn
      Left = 94
      Top = 8
      Width = 67
      Height = 33
      Caption = #36864#20986
      TabOrder = 1
      OnClick = BitBtn5Click
      Kind = bkClose
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 688
    Height = 408
    Align = alClient
    AllowedOperations = [alopInsertEh, alopUpdateEh]
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'Pline'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'A|'#25289#21517
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'DBZS'
        Footers = <>
        Title.Caption = 'G|'#34909#25802#39023#31034
        Width = 18
      end
      item
        EditButtons = <>
        FieldName = 'Flag1'
        Footers = <>
        Title.Caption = 'B|'#27161#35672
        Width = 15
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'J_no'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'B|'#24037#31243#34399
        Width = 70
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'J2_job'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'C|'#35069#21934#34399
        Width = 53
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'C|'#36650#35069#21934#34399
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'Artno'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'D|PH'#27454#34399
        Width = 77
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'D|'#23458#25142#27454#34399
        Width = 76
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'Acol'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'F|'#33394#30908
        Width = 27
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Khzl'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        Title.Caption = #38283#35009#25351#20196
        Width = 16
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Scqty'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'H|'#25289#35069#20316#25976
        Width = 33
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'JHRS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'I|'#36650#30058
        Width = 26
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'FCCS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'I|'#35069#20316#30001#25289#20998#21106
        Width = 26
      end
      item
        Color = clAqua
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'LSTRS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'J|GSD'#21729#24037#25976
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'Flag2'
        Footers = <>
        Title.Caption = 'K|'#27161#35672
        Width = 15
      end
      item
        EditButtons = <>
        FieldName = 'Tmu'
        Footers = <>
        Title.Caption = 'K|GSD    TMU   ('#23567#26178')'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <>
        Title.Caption = 'L|'#27161#35672
        Visible = False
        Width = 15
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Jxjs'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'L|'#27599#31680#29986#37327
        Width = 31
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'PHISZJS'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'M|'#32317#31680#29986#37327'|'#21729#24037#24037#20316
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'LFLAG'
        Footers = <>
        PickList.Strings = (
          '1'
          '2'
          '3'
          '4')
        Title.Caption = 'N|'#32317#31680#29986#37327'|'#27161#35672
        Width = 16
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'SHJS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'N|'#32317#31680#29986#37327'|'#35373#23450#32156#21512#25613#32791
        Width = 29
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'ZJS'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'O|'#32317#31680#29986#37327'|'#25289#24037#20316
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'Plan_date'
        Footers = <>
        Title.Caption = 'P|'#36650#35069#21934#24288#38283#22987#26085#26399
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Flag3'
        Footers = <>
        Title.Caption = 'Q|'#25289#21046#20316'|'#27161#35672
        Width = 15
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Week'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Q|'#25289#21046#20316'|'#38283#22987#21608#26399
        Width = 17
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Cfksrq'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'R| '#25289#21046#20316'|'#38283#22987#26085#26399
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'Cfksjs'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'S| '#25289#21046#20316'|'#38283#22987#31680#25976
        Width = 30
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Ckts'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'S|'#25289#21046#20316'|'#36978#38283#22825#25976
        Visible = False
        Width = 27
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'ZKTD'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'T|'#25289#21046#20316'|'#32156#21512#25613#32791#31680#29986#37327
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'LEARN'
        Footers = <>
        Title.Caption = 'U|'#21069#27573#25613#32791'|'#31680#25976
        Visible = False
        Width = 38
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clAqua
        EditButtons = <>
        FieldName = 'SCLHJS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'U|'#25289#21046#20316'|'#33853#21518#31680#29986#37327
        Width = 39
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'Sctd'
        Footers = <>
        Title.Caption = 'T|'#25289#36554#32299'|'#20572#38931#31680#25976
        Visible = False
        Width = 26
      end
      item
        EditButtons = <>
        FieldName = 'QYJS'
        Footers = <>
        Title.Caption = 'V|'#25289#21046#20316'|'#21069#31227#31680#29986#37327
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'ZHJS'
        Footers = <>
        Title.Caption = 'W|'#25289#21046#20316'|'#21478#21152#29677#36861#22238#31680#29986#37327
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'Bcjs'
        Footers = <>
        Title.Caption = 'X|'#25289#21046#20316'|'#21478#21152#29677#28040#32791#31680#25976
        Width = 27
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Dbxl'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Y|'#25289#21046#20316'|'#21478#21152#29677#36861#22238#25928#29575'%'
        Width = 31
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Cfwcrq'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Z|'#25289#21046#20316'|'#35336#21123#23436#25104#26085#26399
        Width = 35
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'NSHJS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AA|'#38750#29983#29986#26085#20572#38931#31680#25976
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Kdjs'
        Footers = <>
        Title.Caption = 'AB|'#27284#26399#38283#25918#31680#25976
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'Bzjs'
        Footers = <>
        Title.Caption = 'AC|'#24453#39511#36008#31680#25976
        Width = 29
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Tzlcrq'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AD|'#38626#24288#26085#26399'|'#23433#25490#30340
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'Flag4'
        Footers = <>
        Title.Caption = 'AF|'#27161#35672
        Visible = False
        Width = 15
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'Yqlcrq'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AF|'#38626#24288#26085#26399'|'#36650#35069#21934
        Width = 36
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Rqxc'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AG|'#38626#24288#26085#26399'|'#29694#27841#24046#36317'('#22825') (AF-AD)'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Flag5'
        Footers = <>
        Title.Caption = 'AI|'#27161#35672
        Width = 15
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Qrxc'
        Footers = <>
        Title.Caption = 'AI|'#38626#24288#26085#26399'|'#37782#23450#24046#36317'('#22825')'
        Width = 27
      end
      item
        EditButtons = <>
        FieldName = 'Ysjhl'
        Footers = <>
        Title.Caption = 'AK|'#25289#25928#29575'(%)|'#35373#23450
        Width = 32
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'Jhl'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AL|'#25289#25928#29575'(%)|'#23526#32318
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'Yzh'
        Footers = <>
        Title.Caption = #24050#20986#36008
        Width = 15
      end
      item
        EditButtons = <>
        FieldName = 'Pd8'
        Footers = <>
        Title.Caption = 'AE|'#38626#24288#26085#26399'|'#23526#32318#30340
        Width = 34
      end>
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 120
    Top = 192
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 232
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 192
  end
end
