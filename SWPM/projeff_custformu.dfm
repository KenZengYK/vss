object frmprojeff_cust: Tfrmprojeff_cust
  Left = 192
  Top = 114
  Width = 633
  Height = 499
  Caption = 'Proj Eff% (LB6 vs Line GSD) for SAH (Benchmark)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 32
    Top = 24
    Width = 561
    Height = 377
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Factory'
        Width = 46
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUSN40'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust'
        Width = 46
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'SDIV35'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Brand|Code'
        Width = 37
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PRMD15'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Brand|Name'
        Width = 246
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Product Category'
        Width = 57
      end
      item
        DisplayFormat = '#,0.00;-#,0.00;'#39' '#39
        EditButtons = <>
        FieldName = 'LB63'
        Footers = <>
        Title.Caption = 'Proj Eff%'
        Width = 71
      end>
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 416
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 104
    Top = 416
    Width = 73
    Height = 25
    Caption = 'Confirm'
    TabOrder = 2
    Glyph.Data = {
      F2010000424DF201000000000000760000002800000024000000130000000100
      0400000000007C01000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
      3333333333388F3333333333000033334224333333333333338338F333333333
      0000333422224333333333333833338F33333333000033422222243333333333
      83333338F3333333000034222A22224333333338F33F33338F33333300003222
      A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
      38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
      2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
      0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
      333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
      33333A2224A2233333333338F338F83300003333333333A2224A333333333333
      8F338F33000033333333333A222433333333333338F338F30000333333333333
      A224333333333333338F38F300003333333333333A223333333333333338F8F3
      000033333333333333A3333333333333333383330000}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 416
    Width = 73
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cust_projeff where cusn40='#39'ETAM1'#39
    FieldDefs = <
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CUSN40'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SDIV35'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRMD15'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'LB63'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'sdiv35;flag6'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 8
    Top = 8
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PTYP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LST2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LST2D'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'PCOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FITS'
        DataType = ftInteger
      end
      item
        Name = 'SIZS'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROJ'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'QTOR'
        DataType = ftFloat
      end
      item
        Name = 'PSIZE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PFIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SQTOR'
        DataType = ftFloat
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 40
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PTYP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LST2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LST2D'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'PCOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FITS'
        DataType = ftInteger
      end
      item
        Name = 'SIZS'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROJ'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'QTOR'
        DataType = ftFloat
      end
      item
        Name = 'PSIZE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PFIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SQTOR'
        DataType = ftFloat
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 104
    Top = 8
  end
end
