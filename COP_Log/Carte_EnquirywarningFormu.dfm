object frmCarte_Enquirywarning: TfrmCarte_Enquirywarning
  Left = 0
  Top = 0
  Caption = #26597#35426#26377#35686#31034#20449#24687#30340#35468#34399
  ClientHeight = 303
  ClientWidth = 804
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 804
    Height = 262
    Align = alClient
    AllowedOperations = []
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 1
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cust'
        Footers = <>
        Title.Caption = #23458#25142#34399
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'keycode'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35468#34399
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'projectno'
        Footers = <>
        Title.Caption = #24037#31243#34399
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'prod_site'
        Footers = <>
        Title.Caption = #29983#29986#22522#22320
        Width = 48
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 804
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 6
      Width = 50
      Height = 25
      Caption = #25209#26495#26399
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 57
      Top = 6
      Width = 72
      Height = 25
      Caption = #21407#26448#26009#38283#22987
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 128
      Top = 6
      Width = 73
      Height = 25
      Caption = #21407#26448#26009#20633#40778
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 344
      Top = 6
      Width = 81
      Height = 25
      Caption = #24288#38283#22987#29983#29986#26399
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 424
      Top = 6
      Width = 49
      Height = 25
      Caption = #38626#24288#26399
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 472
      Top = 6
      Width = 58
      Height = 25
      Caption = #23433#25490#26085#24046
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 529
      Top = 6
      Width = 58
      Height = 25
      Caption = #25976#38913#24373#25976
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 586
      Top = 6
      Width = 73
      Height = 25
      Caption = #31532#19968#24373#25976#38913
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 658
      Top = 6
      Width = 81
      Height = 25
      Caption = #26368#21518#19968#24373#25976#38913
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 738
      Top = 6
      Width = 41
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 200
      Top = 6
      Width = 73
      Height = 25
      Caption = #37197#22871#26009#38283#22987
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 10
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 272
      Top = 6
      Width = 73
      Height = 25
      Caption = #37197#22871#26009#20633#40778
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 11
      OnClick = BitBtn12Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_carte_sopc1 where projectno='#39'WARN-1345'#39)
    Left = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 208
  end
end
