object frmtmuxz: Tfrmtmuxz
  Left = 258
  Top = 249
  Width = 385
  Height = 120
  BorderIcons = [biSystemMenu]
  Caption = '選擇時間'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 361
    Height = 65
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tj1'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        Title.Caption = '條件1'
        Title.Font.Charset = CHINESEBIG5_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '新細明體'
        Title.Font.Style = []
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tmu1'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        Title.Caption = '時間1'
        Title.Font.Charset = CHINESEBIG5_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '新細明體'
        Title.Font.Style = []
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tj2'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        Title.Caption = '條件2'
        Title.Font.Charset = CHINESEBIG5_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '新細明體'
        Title.Font.Style = []
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tmu2'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        Title.Caption = '時間2'
        Title.Font.Charset = CHINESEBIG5_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '新細明體'
        Title.Font.Style = []
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tj3'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        Title.Caption = '條件3'
        Title.Font.Charset = CHINESEBIG5_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '新細明體'
        Title.Font.Style = []
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tmu3'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '新細明體'
        Font.Style = []
        Title.Caption = '時間3'
        Title.Font.Charset = CHINESEBIG5_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '新細明體'
        Title.Font.Style = []
        Width = 48
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 76
    Top = 65528
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select tj1,tmu1,tj2,tmu2,tj3,tmu3 from ie_cfzyjsyb'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmxtdl.SocketConnection1
    Left = 48
    Top = 65528
  end
end
