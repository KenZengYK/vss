object frmnewcap_style: Tfrmnewcap_style
  Left = 133
  Top = 110
  Caption = 'Sales Proj Vs Order fill-up, Level off & Prdn bal'
  ClientHeight = 462
  ClientWidth = 1183
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
  object Splitter1: TSplitter
    Left = 153
    Top = 57
    Width = 2
    Height = 364
    ExplicitHeight = 348
  end
  object DBGridEh1: TDBGridEh
    Left = 155
    Top = 57
    Width = 1028
    Height = 364
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 4
    FrozenCols = 10
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'TPLANT'
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Visible = False
        Width = 29
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUST'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Cust'#39's Proj Code'
        Width = 38
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'YR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Year'
        Visible = False
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            Value = '(Excl. Level off)'
            ValueType = fvtStaticText
          end>
        PickList.Strings = (
          'Open Style')
        Title.Caption = 'Style'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            Value = 'B'
            ValueType = fvtStaticText
          end
          item
            Value = 'K'
            ValueType = fvtStaticText
          end
          item
            Value = 'U'
            ValueType = fvtStaticText
          end
          item
            Value = 'TTL'
            ValueType = fvtStaticText
          end>
        PickList.Strings = (
          'B'
          'K'
          'U')
        Title.Caption = 'Prod Type'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'OLDNEW'
        Footer.ValueType = fvtStaticText
        Footers = <>
        PickList.Strings = (
          'New'
          'Flow'
          'Associate')
        Title.Caption = 'New or Flow'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'TOSTYLE'
        Footers = <>
        Title.Caption = 'Copy Style (SAH /  Eff%)'
        Width = 75
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TQ'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Periodic TTL|Del Qty'
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Periodic TTL|T3 Qty'
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Periodic TTL|aT3 Qty'
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TTL01'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Periodic TTL|Uneven Qty (for ref)|to Previous Month'
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TTL02'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Periodic TTL|Uneven Qty (for ref)|fm Next Month'
        Width = 60
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q01'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns10EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW01'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns13EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH01'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns14EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0101'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns15EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0102'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns16EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q02'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns12EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW02'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns18EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH02'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns19EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0201'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns20EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0202'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns21EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q03'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns17EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW03'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns23EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH03'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns24EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0301'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns25EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0302'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns26EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q04'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns22EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW04'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns28EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH04'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns29EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0401'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns30EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0402'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns31EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q05'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'May|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns27EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW05'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'May|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns33EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH05'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'May|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns34EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0501'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns35EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0502'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns36EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q06'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns32EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW06'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns38EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH06'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns39EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0601'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns40EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0602'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns41EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q07'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns37EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW07'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns43EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH07'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns44EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0701'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns45EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0702'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns46EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q08'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns42EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW08'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns48EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH08'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns49EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0801'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns50EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0802'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns51EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q09'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns47EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW09'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns53EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH09'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns54EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0901'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns55EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0902'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns56EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q10'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns52EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW10'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns58EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH10'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns59EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1001'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns60EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1002'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns61EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q11'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns57EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW11'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns63EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH11'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns64EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1101'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns65EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1102'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns66EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q12'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns62EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW12'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|T3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns68EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH12'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|Total SAH'
        Width = 60
        OnEditButtonClick = DBGridEh1Columns69EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1201'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns70EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1202'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Width = 50
        OnEditButtonClick = DBGridEh1Columns71EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'SAH'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 48
        OnEditButtonClick = DBGridEh1Columns8EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'E01'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Eff%|Past Perf'
        Width = 48
        OnEditButtonClick = DBGridEh1Columns8EditButtonClick
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'E101'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Eff%|Target from Sales'
        Width = 45
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CU1'
        Footers = <>
        Title.Caption = 'CU%'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 155
    Top = 57
    Width = 1028
    Height = 364
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 4
    FrozenCols = 8
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    PopupMenu = PopupMenu1
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'TPLANT'
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Visible = False
        Width = 29
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUST'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Cust'#39's Proj Code'
        Width = 38
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'YR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Year'
        Visible = False
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            Value = '(Excl. Level off)'
          end>
        PickList.Strings = (
          'Open Style')
        Title.Caption = 'Style'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            Value = 'B'
            ValueType = fvtStaticText
          end
          item
            Value = 'K'
            ValueType = fvtStaticText
          end
          item
            Value = 'U'
            ValueType = fvtStaticText
          end
          item
            Value = 'TTL'
            ValueType = fvtStaticText
          end>
        PickList.Strings = (
          'B'
          'K'
          'U')
        Title.Caption = 'Prod Type'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'OLDNEW'
        Footer.ValueType = fvtStaticText
        Footers = <>
        PickList.Strings = (
          'New'
          'Flow'
          'Associate')
        Title.Caption = 'New or Flow'
        Visible = False
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'TOSTYLE'
        Footers = <>
        Title.Caption = 'Copy Style (SAH /  Eff%)'
        Visible = False
        Width = 75
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TQ'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Periodic TTL|Ths mth del qty'#13#10#26412#26376#36208#36008#25976'|*based on orders'#39' del dd*'#13#10#22522 +
          #26044#35330#21333#20132#36008#26399
        Width = 80
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Periodic TTL|Ths mth stk-in dd (T3+aT3)'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)|T3'#13#10'On' +
          '-time'#13#10#25353#26178
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Periodic TTL|Ths mth stk-in dd (T3+aT3)'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)|aT3'#13#10'A' +
          'dvance'#13#10#25552#21069
        Width = 60
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TTL01'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Periodic TTL|Irregular lot (del/stk-in dd)'#13#10#19981#35215#21063#25209#27425'('#36208#36008#26399'/'#20837#20489#26399')|Ths m' +
          'th/last mth'#13#10#26412#26376'/'#19978#26376
        Width = 65
      end
      item
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TTL02'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Periodic TTL|Irregular lot (del/stk-in dd)'#13#10#19981#35215#21063#25209#27425'('#36208#36008#26399'/'#20837#20489#26399')|Next ' +
          'mth/this mth'#13#10#19979#26376'/'#26412#26376
        Width = 65
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q01'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns12EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW01'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns13EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH01'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns14EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0101'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns15EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0102'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jan|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns16EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q02'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns17EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW02'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns18EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH02'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns19EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0201'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns20EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0202'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Feb|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns21EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q03'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns22EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW03'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns23EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH03'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns24EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0301'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns25EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0302'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Mar|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns26EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q04'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns27EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW04'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns28EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH04'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns29EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0401'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns30EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0402'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Apr|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns31EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q05'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'May|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns32EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW05'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'May|T3 Qty   (Std Ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns33EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH05'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'May|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns34EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0501'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'May|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns35EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0502'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'May|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns36EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q06'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns37EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW06'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns38EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH06'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns39EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0601'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns40EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0602'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jun|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns41EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q07'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns42EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW07'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns43EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH07'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns44EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0701'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns45EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0702'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Jul|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns46EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q08'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns47EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW08'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns48EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH08'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns49EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0801'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns50EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0802'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Aug|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns51EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q09'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns52EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW09'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns53EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH09'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns54EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0901'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns55EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF0902'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Sep|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns56EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q10'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns57EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW10'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns58EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH10'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns59EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1001'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns60EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1002'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Oct|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns61EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q11'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns62EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW11'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns63EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH11'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns64EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1101'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns65EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1102'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Nov|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns66EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'Q12'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|Del Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns67EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TW12'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|T3 Qty   (Std ahead)'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns68EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'TSAH12'
        Footer.DisplayFormat = '#,0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            DisplayFormat = '#,0'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|aT3 Qty'
        Width = 60
        OnEditButtonClick = DBGridEh2Columns69EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1201'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|Stk-in Qty (T3/aT3)|Go to Previous'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns70EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 13499643
        DisplayFormat = '#,0'
        EditButtons = <>
        FieldName = 'REF1202'
        Footers = <
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Dec|Stk-in Qty (T3/aT3)|Come from future'
        Width = 50
        OnEditButtonClick = DBGridEh2Columns71EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'SAH'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 48
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'E01'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Eff%|Past Perf'
        Width = 48
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'E101'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Eff%|Target from Sales'
        Width = 45
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'CU1'
        Footers = <>
        Title.Caption = 'CU%'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1183
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1294
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Factory '
    end
    object Label2: TLabel
      Left = 144
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Year '
    end
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 142
      Height = 13
      Caption = 'Calculation backward Start on'
    end
    object Label6: TLabel
      Left = 288
      Top = 32
      Width = 15
      Height = 13
      Caption = 'for '
    end
    object Label7: TLabel
      Left = 352
      Top = 32
      Width = 34
      Height = 13
      Caption = 'months'
    end
    object Label4: TLabel
      Left = 256
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Division '
    end
    object Label9: TLabel
      Left = 376
      Top = 8
      Width = 77
      Height = 13
      Caption = 'Cust'#39's Proj Code'
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'CHINA'
      OnChange = ComboBox1Change
      Items.Strings = (
        'CHINA'
        'BD')
    end
    object SpinEdit1: TSpinEdit
      Left = 176
      Top = 8
      Width = 57
      Height = 22
      MaxValue = 2030
      MinValue = 2011
      TabOrder = 1
      Value = 2011
    end
    object DateEdit1: TDateEdit
      Left = 168
      Top = 32
      Width = 113
      Height = 21
      Enabled = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 304
      Top = 32
      Width = 41
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object xh1: TRadioGroup
      Left = 1288
      Top = -3
      Width = 145
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Summary'
        'Detail')
      TabOrder = 4
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 544
      Top = 8
      Width = 177
      Height = 41
      Caption = 'Month Period'
      TabOrder = 5
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 26
        Height = 13
        Caption = 'From '
      end
      object Label8: TLabel
        Left = 104
        Top = 16
        Width = 16
        Height = 13
        Caption = 'To '
      end
      object SpinEdit2: TSpinEdit
        Left = 48
        Top = 16
        Width = 49
        Height = 22
        MaxValue = 12
        MinValue = 1
        TabOrder = 0
        Value = 1
      end
      object SpinEdit3: TSpinEdit
        Left = 120
        Top = 16
        Width = 49
        Height = 22
        MaxValue = 12
        MinValue = 1
        TabOrder = 1
        Value = 12
      end
    end
    object ComboBox2: TComboBox
      Left = 296
      Top = 8
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      Text = 'ALL'
      OnChange = ComboBox2Change
      Items.Strings = (
        'ALL'
        'A'
        'B'
        'C'
        'D')
    end
    object ComboBox3: TComboBox
      Left = 456
      Top = 8
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
      OnChange = ComboBox3Change
      OnEnter = ComboBox3Enter
      Items.Strings = (
        'ALL'
        'A'
        'B'
        'C'
        'E')
    end
    object BitBtn15: TBitBtn
      Left = 736
      Top = 16
      Width = 57
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 8
      OnClick = BitBtn15Click
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 57
    Width = 153
    Height = 364
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    Images = ImageList1
    Indent = 19
    ReadOnly = True
    SortType = stText
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 1183
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 1294
    object BitBtn1: TBitBtn
      Left = 992
      Top = -8
      Width = 137
      Height = 25
      Caption = 'Progress Status Setup'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 1040
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Confirm'
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333377F3333333333000033334224333333333333337337F333333333
        0000333422224333333333333733337F33333333000033422222243333333333
        73333337F3333333000034222A22224333333337F33F33337F33333300003222
        A2A2224333333337F373F3337F33333300003A2A222A222433333337F7333F33
        37F33333000034A22222A22243333337733333F3337F333300004222A2222A22
        2433337F337F333F3337F3330000222A3A2224A22243337F3737F337F3337F33
        0000A2A333A2224A2224337F73337F337F3337F300003A33333A2224A2224337
        333337F337F3337F000033333333A2224A2243333333337F337F337F00003333
        33333A2224A2233333333337F337F73300003333333333A2224A333333333333
        7F337F33000033333333333A222433333333333337F337F30000333333333333
        A224333333333333337F37F300003333333333333A223333333333333337F7F3
        000033333333333333A3333333333333333373330000}
      NumGlyphs = 2
      TabOrder = 1
      Visible = False
    end
    object BitBtn3: TBitBtn
      Left = 888
      Top = 0
      Width = 49
      Height = 25
      Caption = 'Add'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330F03333
        3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
        3300333330F033333300333330F0333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 2
      Visible = False
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 936
      Top = 0
      Width = 57
      Height = 25
      Caption = 'Delete'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      TabOrder = 3
      Visible = False
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 1184
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Adjust T3'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 4
      Visible = False
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 24
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Level off Del Qty of Sale Proj'
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
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 192
      Top = 8
      Width = 57
      Height = 25
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
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 1112
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Adjust'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 7
      Visible = False
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 248
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Save && Close'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777744447777777777444444447777777444777744
        4777777447777774477777447777777744777744777777774477774477777777
        4477774477777777447777744777747447777774477774444777777777777444
        7777777777777444477777777777777777777777777777777777}
      TabOrder = 8
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 344
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Refresh'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 9
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 968
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 10
      Visible = False
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 416
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Action log'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 11
      OnClick = BitBtn12Click
    end
    object BitBtn13: TBitBtn
      Left = 685
      Top = 16
      Width = 105
      Height = 25
      Caption = '* Sales Locked'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 12
      Visible = False
      OnClick = BitBtn13Click
    end
    object BitBtn14: TBitBtn
      Left = 669
      Top = -8
      Width = 121
      Height = 25
      Caption = 'Styles Qty b/down'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
      TabOrder = 13
      Visible = False
      OnClick = BitBtn14Click
    end
    object BitBtn16: TBitBtn
      Left = 565
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 14
    end
    object BitBtn17: TBitBtn
      Left = 489
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Export'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 15
      OnClick = BitBtn17Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 155
    Top = 57
    Width = 1028
    Height = 364
    Align = alClient
    TabOrder = 5
    ExplicitLeft = 195
    ExplicitTop = 160
    ExplicitWidth = 1038
    ExplicitHeight = 247
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
    end
    object cxView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxView1CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Column = cxView1FLAG6
          DisplayText = 'TTL'
        end
        item
          Column = cxView1TQ
        end
        item
          Column = cxView1Q01
        end
        item
          Column = cxView1Q02
        end
        item
          Column = cxView1Q03
        end
        item
          Column = cxView1Q04
        end
        item
          Column = cxView1Q05
        end
        item
          Column = cxView1Q06
        end
        item
          Column = cxView1Q07
        end
        item
          Column = cxView1Q08
        end
        item
          Column = cxView1Q09
        end
        item
          Column = cxView1Q10
        end
        item
          Column = cxView1Q11
        end
        item
          Column = cxView1Q12
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T3TTL
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TTL01
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TTL02
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW01
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH01
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T301
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0101
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0102
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW02
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH02
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T302
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0201
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0202
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW03
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH03
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T303
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0301
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0302
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW04
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH04
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T304
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0401
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0402
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW05
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH05
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T305
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0501
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0502
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW06
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH06
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T306
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0601
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0602
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW07
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH07
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T307
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0701
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0702
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW08
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH08
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T308
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0801
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0802
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW09
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH09
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T309
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0901
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF0902
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW10
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH10
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T310
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF1001
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF1002
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW11
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH11
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T311
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF1101
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF1102
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TW12
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1TSAH12
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1T312
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF1201
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1REF1202
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.BandHeaderHeight = 32
      Bands = <
        item
          Caption = 'Cust/Style'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Periodic TTL'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Month'
          HeaderAlignmentVert = vaTop
          Styles.Header = cxStyle1
        end
        item
          Caption = 'Jan'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 0
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 3
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 3
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 3
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Feb'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 1
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 7
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 7
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 7
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Mar'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 2
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 11
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Apr'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 3
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 15
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'May'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 4
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 19
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 19
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 19
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Jun'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 5
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 23
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 23
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 23
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Jul'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 6
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 27
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 27
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 27
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Aug'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 7
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 31
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 31
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 31
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Sep'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 8
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 35
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 35
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 35
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Oct'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 9
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 39
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 39
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 39
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Nov'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 10
          Styles.Header = cxStyle3
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 43
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 43
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 43
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Dec'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 2
          Position.ColIndex = 11
          Styles.Header = cxStyle4
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 47
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 47
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 47
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'SAH/Eff%/CU%'
          Styles.Header = cxStyle2
        end
        item
          Caption = 'Ths mth del qty|'#13#10#26412#26376#36208#36008#25976
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 0
          Styles.Header = cxStyle5
        end
        item
          Caption = 'Ths mth stk-in dd (T3+aT3)|'#13#10#26412#26376#25104#21697#20837#20489#26399' (T3+aT3)'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 1
          Styles.Header = cxStyle6
        end
        item
          Caption = 'Irregular lot - on del <-> stk-in dd|'#13#10#19981#35215#21063#25209#27425' - '#22312#36208#36008#26399' <-> '#20837#20489#26399
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 1
          Position.ColIndex = 2
          Styles.Header = cxStyle7
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 52
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 53
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 54
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          FixedKind = fkLeft
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 54
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 4
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 5
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 6
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 6
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 8
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 9
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 10
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 10
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 12
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 13
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 14
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 14
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 16
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 17
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 18
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 18
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 20
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 21
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 22
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 22
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 24
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 25
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 26
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 26
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 28
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 29
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 30
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 30
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 32
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 33
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 34
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 34
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 36
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 37
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 38
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 38
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 40
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 41
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 42
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 42
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 44
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 45
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 46
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 46
          Position.ColIndex = 1
        end
        item
          Caption = 'Qty incl. Cde 2, excl. Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 48
          Position.ColIndex = 0
        end
        item
          Caption = 'Qty incl. Cde 3, excl. Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 49
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 2'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 50
          Position.ColIndex = 0
        end
        item
          Caption = 'Cde 3'
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 50
          Position.ColIndex = 1
        end>
      object cxView1CUST: TcxGridDBBandedColumn
        Caption = 'Cust'#39's'#13#10'Proj'#13#10'Cde'
        DataBinding.FieldName = 'CUST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CSTYLE: TcxGridDBBandedColumn
        Caption = 'Style'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1FLAG6: TcxGridDBBandedColumn
        Caption = 'Prod'#13#10'Type'
        DataBinding.FieldName = 'FLAG6'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1SAH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 51
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q01: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q01'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 59
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1E01: TcxGridDBBandedColumn
        Caption = 'Past Perf'
        DataBinding.FieldName = 'E01'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 51
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1E101: TcxGridDBBandedColumn
        DataBinding.FieldName = 'E101'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 51
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1TSAH01: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH01'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 60
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW01: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW01'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 60
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q02: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q02'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 63
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH02: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH02'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 64
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW02: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW02'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 64
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q03: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q03'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 67
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH03: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH03'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 68
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW03: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW03'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 68
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q04: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q04'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 71
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH04: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH04'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 72
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW04: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW04'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 72
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q05: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q05'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 75
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH05: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH05'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 76
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW05: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW05'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 76
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q06: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q06'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 79
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH06: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH06'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 80
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW06: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW06'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 80
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q07: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q07'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 83
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH07: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH07'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 84
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW07: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW07'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 84
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q08: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q08'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 87
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH08: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH08'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 88
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW08: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW08'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 88
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q09: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q09'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 91
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH09: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH09'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 92
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW09: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW09'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 92
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q10: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q10'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 95
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH10: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH10'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 96
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW10: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW10'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 96
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q11: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q11'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 99
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH11: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH11'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW11: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW11'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1Q12: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'Q12'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 103
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH12: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH12'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 104
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW12: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW12'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 104
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TQ: TcxGridDBBandedColumn
        Caption = '*based on orders'#39' del dd*|'#13#10#22522#26044#35330#21333#36208#36008#26399
        DataBinding.FieldName = 'TQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 55
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TSAH: TcxGridDBBandedColumn
        Caption = 'aT3 |'#13#10'Advance'#13#10#25552#21069
        DataBinding.FieldName = 'TSAH'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 56
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1TW: TcxGridDBBandedColumn
        Caption = 'T3 |'#13#10'On-time'#13#10#25353#26178
        DataBinding.FieldName = 'TW'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 56
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CU1: TcxGridDBBandedColumn
        Caption = 'CU%'
        DataBinding.FieldName = 'CU1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 51
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1REF0101: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0101'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 61
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0102: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0102'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 62
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0201: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0201'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 65
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0202: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0202'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 66
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0301: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0301'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 69
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0302: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0302'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 70
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0401: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0401'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 73
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0402: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0402'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 74
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0501: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0501'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 77
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0502: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0502'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 78
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0601: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0601'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 81
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0602: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0602'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 82
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0701: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0701'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 85
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0702: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0702'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 86
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0801: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0801'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 89
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0802: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0802'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 90
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0901: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF0901'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 93
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF0902: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF0902'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 94
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF1001: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF1001'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 97
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF1002: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF1002'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 98
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF1101: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF1101'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 101
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF1102: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF1102'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 102
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF1201: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'REF1201'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 105
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1REF1202: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'REF1202'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 106
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TTL01: TcxGridDBBandedColumn
        Caption = 'THIS mth <->'#13#10'last mth |'#13#10#26412#26376' <-> '#19978#26376
        DataBinding.FieldName = 'TTL01'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 57
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TTL02: TcxGridDBBandedColumn
        Caption = 'Next mth <->'#13#10'THIS mth |'#13#10#19979#26376' <-> '#26412#26376
        DataBinding.FieldName = 'TTL02'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 58
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1T301: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T301'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 60
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T302: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T302'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 64
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T303: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T303'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 68
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T304: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T304'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 72
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T305: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T305'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 76
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T306: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T306'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 80
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T307: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T307'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 84
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T308: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T308'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 88
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T309: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T309'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 92
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T310: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T310'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 96
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T311: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T311'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T312: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T312'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 104
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1T3TTL: TcxGridDBBandedColumn
        Caption = 'Ttl Qty |'#13#10#32317#25976
        DataBinding.FieldName = 'T3TTL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 56
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 160
    Top = 136
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tbl_cap_oa_style_new_sum where yr=2023 and tplant=' +
      #39'SL'#39' and cust='#39'ETAA'#39
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FLAG6'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'OLDNEW'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'Q01'
        DataType = ftInteger
      end
      item
        Name = 'E01'
        DataType = ftFloat
      end
      item
        Name = 'E101'
        DataType = ftFloat
      end
      item
        Name = 'TSAH01'
        DataType = ftFloat
      end
      item
        Name = 'TW01'
        DataType = ftFloat
      end
      item
        Name = 'Q02'
        DataType = ftInteger
      end
      item
        Name = 'TSAH02'
        DataType = ftFloat
      end
      item
        Name = 'TW02'
        DataType = ftFloat
      end
      item
        Name = 'Q03'
        DataType = ftInteger
      end
      item
        Name = 'TSAH03'
        DataType = ftFloat
      end
      item
        Name = 'TW03'
        DataType = ftFloat
      end
      item
        Name = 'Q04'
        DataType = ftInteger
      end
      item
        Name = 'TSAH04'
        DataType = ftFloat
      end
      item
        Name = 'TW04'
        DataType = ftFloat
      end
      item
        Name = 'Q05'
        DataType = ftInteger
      end
      item
        Name = 'TSAH05'
        DataType = ftFloat
      end
      item
        Name = 'TW05'
        DataType = ftFloat
      end
      item
        Name = 'Q06'
        DataType = ftInteger
      end
      item
        Name = 'TSAH06'
        DataType = ftFloat
      end
      item
        Name = 'TW06'
        DataType = ftFloat
      end
      item
        Name = 'Q07'
        DataType = ftInteger
      end
      item
        Name = 'TSAH07'
        DataType = ftFloat
      end
      item
        Name = 'TW07'
        DataType = ftFloat
      end
      item
        Name = 'Q08'
        DataType = ftInteger
      end
      item
        Name = 'TSAH08'
        DataType = ftFloat
      end
      item
        Name = 'TW08'
        DataType = ftFloat
      end
      item
        Name = 'Q09'
        DataType = ftInteger
      end
      item
        Name = 'TSAH09'
        DataType = ftFloat
      end
      item
        Name = 'TW09'
        DataType = ftFloat
      end
      item
        Name = 'Q10'
        DataType = ftInteger
      end
      item
        Name = 'TSAH10'
        DataType = ftFloat
      end
      item
        Name = 'TW10'
        DataType = ftFloat
      end
      item
        Name = 'Q11'
        DataType = ftInteger
      end
      item
        Name = 'TSAH11'
        DataType = ftFloat
      end
      item
        Name = 'TW11'
        DataType = ftFloat
      end
      item
        Name = 'Q12'
        DataType = ftInteger
      end
      item
        Name = 'TSAH12'
        DataType = ftFloat
      end
      item
        Name = 'TW12'
        DataType = ftFloat
      end
      item
        Name = 'E102'
        DataType = ftFloat
      end
      item
        Name = 'EDT1'
        DataType = ftDate
      end
      item
        Name = 'EDT2'
        DataType = ftDate
      end
      item
        Name = 'TOSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'GRP'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TQ'
        DataType = ftInteger
      end
      item
        Name = 'TSAH'
        DataType = ftFloat
      end
      item
        Name = 'TW'
        DataType = ftFloat
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'CU1'
        DataType = ftFloat
      end
      item
        Name = 'CU2'
        DataType = ftFloat
      end
      item
        Name = 'REF0101'
        DataType = ftFloat
      end
      item
        Name = 'REF0102'
        DataType = ftFloat
      end
      item
        Name = 'REF0201'
        DataType = ftFloat
      end
      item
        Name = 'REF0202'
        DataType = ftFloat
      end
      item
        Name = 'REF0301'
        DataType = ftFloat
      end
      item
        Name = 'REF0302'
        DataType = ftFloat
      end
      item
        Name = 'REF0401'
        DataType = ftFloat
      end
      item
        Name = 'REF0402'
        DataType = ftFloat
      end
      item
        Name = 'REF0501'
        DataType = ftFloat
      end
      item
        Name = 'REF0502'
        DataType = ftFloat
      end
      item
        Name = 'REF0601'
        DataType = ftFloat
      end
      item
        Name = 'REF0602'
        DataType = ftFloat
      end
      item
        Name = 'REF0701'
        DataType = ftFloat
      end
      item
        Name = 'REF0702'
        DataType = ftFloat
      end
      item
        Name = 'REF0801'
        DataType = ftFloat
      end
      item
        Name = 'REF0802'
        DataType = ftFloat
      end
      item
        Name = 'REF0901'
        DataType = ftFloat
      end
      item
        Name = 'REF0902'
        DataType = ftFloat
      end
      item
        Name = 'REF1001'
        DataType = ftFloat
      end
      item
        Name = 'REF1002'
        DataType = ftFloat
      end
      item
        Name = 'REF1101'
        DataType = ftFloat
      end
      item
        Name = 'REF1102'
        DataType = ftFloat
      end
      item
        Name = 'REF1201'
        DataType = ftFloat
      end
      item
        Name = 'REF1202'
        DataType = ftFloat
      end
      item
        Name = 'TTL01'
        DataType = ftFloat
      end
      item
        Name = 'TTL02'
        DataType = ftFloat
      end
      item
        Name = 'SAH01'
        DataType = ftFloat
      end
      item
        Name = 'SAH02'
        DataType = ftFloat
      end
      item
        Name = 'SAH03'
        DataType = ftFloat
      end
      item
        Name = 'SAH04'
        DataType = ftFloat
      end
      item
        Name = 'SAH05'
        DataType = ftFloat
      end
      item
        Name = 'SAH06'
        DataType = ftFloat
      end
      item
        Name = 'SAH07'
        DataType = ftFloat
      end
      item
        Name = 'SAH08'
        DataType = ftFloat
      end
      item
        Name = 'SAH09'
        DataType = ftFloat
      end
      item
        Name = 'SAH10'
        DataType = ftFloat
      end
      item
        Name = 'SAH11'
        DataType = ftFloat
      end
      item
        Name = 'SAH12'
        DataType = ftFloat
      end
      item
        Name = 'T301'
        DataType = ftInteger
      end
      item
        Name = 'T302'
        DataType = ftInteger
      end
      item
        Name = 'T303'
        DataType = ftInteger
      end
      item
        Name = 'T304'
        DataType = ftInteger
      end
      item
        Name = 'T305'
        DataType = ftInteger
      end
      item
        Name = 'T306'
        DataType = ftInteger
      end
      item
        Name = 'T307'
        DataType = ftInteger
      end
      item
        Name = 'T308'
        DataType = ftInteger
      end
      item
        Name = 'T309'
        DataType = ftInteger
      end
      item
        Name = 'T310'
        DataType = ftInteger
      end
      item
        Name = 'T311'
        DataType = ftInteger
      end
      item
        Name = 'T312'
        DataType = ftInteger
      end
      item
        Name = 'T3TTL'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;grp;cust;flag6;seq1;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 160
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 256
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnStateChange = DataSource1StateChange
    Left = 192
    Top = 104
  end
  object ImageList1: TImageList
    Left = 192
    Top = 136
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084848400C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000008484840084848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000848484008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF00000000000000000000000000000084848400C6C6C600000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      000000000000000000000000FF00C6C6C600000000008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF008484840084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000C6C6C600000000000000FF000000FF00000000008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00C6C6C6000000FF00000000008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF008484840084848400C6C6C600000000000000FF000000
      FF00000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000FF00C6C6C6000000FF000000FF000000FF000000
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00C6C6C600FF00FF00000000008484840084848400C6C6C6000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF00C6C6C6000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF00C6C6C600FF00FF00FF00FF00FF00FF00FF00FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000FF00C6C6C6000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00C6C6
      C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00C6C6C600FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FEFFFFFF00000000FC3FFFFF00000000
      F80FFFFF00000000F003FFFF00000000E003FF1F00000000C003FE0700000000
      C001FC0100000000C003F80100000000C001F00100000000C003F00300000000
      8007F007000000008007F80F00000000800FFE1F00000000C01FFFBF00000000
      F03FFFFF00000000FC7FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_tmp02'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'B01'
        DataType = ftInteger
      end
      item
        Name = 'K01'
        DataType = ftInteger
      end
      item
        Name = 'U01'
        DataType = ftInteger
      end
      item
        Name = 'T01'
        DataType = ftInteger
      end
      item
        Name = 'B02'
        DataType = ftInteger
      end
      item
        Name = 'K02'
        DataType = ftInteger
      end
      item
        Name = 'U02'
        DataType = ftInteger
      end
      item
        Name = 'T02'
        DataType = ftInteger
      end
      item
        Name = 'B03'
        DataType = ftInteger
      end
      item
        Name = 'K03'
        DataType = ftInteger
      end
      item
        Name = 'U03'
        DataType = ftInteger
      end
      item
        Name = 'T03'
        DataType = ftInteger
      end
      item
        Name = 'B04'
        DataType = ftInteger
      end
      item
        Name = 'K04'
        DataType = ftInteger
      end
      item
        Name = 'U04'
        DataType = ftInteger
      end
      item
        Name = 'T04'
        DataType = ftInteger
      end
      item
        Name = 'B05'
        DataType = ftInteger
      end
      item
        Name = 'K05'
        DataType = ftInteger
      end
      item
        Name = 'U05'
        DataType = ftInteger
      end
      item
        Name = 'T05'
        DataType = ftInteger
      end
      item
        Name = 'B06'
        DataType = ftInteger
      end
      item
        Name = 'K06'
        DataType = ftInteger
      end
      item
        Name = 'U06'
        DataType = ftInteger
      end
      item
        Name = 'T06'
        DataType = ftInteger
      end
      item
        Name = 'B07'
        DataType = ftInteger
      end
      item
        Name = 'K07'
        DataType = ftInteger
      end
      item
        Name = 'U07'
        DataType = ftInteger
      end
      item
        Name = 'T07'
        DataType = ftInteger
      end
      item
        Name = 'B08'
        DataType = ftInteger
      end
      item
        Name = 'K08'
        DataType = ftInteger
      end
      item
        Name = 'U08'
        DataType = ftInteger
      end
      item
        Name = 'T08'
        DataType = ftInteger
      end
      item
        Name = 'B09'
        DataType = ftInteger
      end
      item
        Name = 'K09'
        DataType = ftInteger
      end
      item
        Name = 'U09'
        DataType = ftInteger
      end
      item
        Name = 'T09'
        DataType = ftInteger
      end
      item
        Name = 'B10'
        DataType = ftInteger
      end
      item
        Name = 'K10'
        DataType = ftInteger
      end
      item
        Name = 'U10'
        DataType = ftInteger
      end
      item
        Name = 'T10'
        DataType = ftInteger
      end
      item
        Name = 'B11'
        DataType = ftInteger
      end
      item
        Name = 'K11'
        DataType = ftInteger
      end
      item
        Name = 'U11'
        DataType = ftInteger
      end
      item
        Name = 'T11'
        DataType = ftInteger
      end
      item
        Name = 'B12'
        DataType = ftInteger
      end
      item
        Name = 'K12'
        DataType = ftInteger
      end
      item
        Name = 'U12'
        DataType = ftInteger
      end
      item
        Name = 'T12'
        DataType = ftInteger
      end
      item
        Name = 'B13'
        DataType = ftInteger
      end
      item
        Name = 'K13'
        DataType = ftInteger
      end
      item
        Name = 'U13'
        DataType = ftInteger
      end
      item
        Name = 'T13'
        DataType = ftInteger
      end
      item
        Name = 'B14'
        DataType = ftInteger
      end
      item
        Name = 'K14'
        DataType = ftInteger
      end
      item
        Name = 'U14'
        DataType = ftInteger
      end
      item
        Name = 'T14'
        DataType = ftInteger
      end
      item
        Name = 'B15'
        DataType = ftInteger
      end
      item
        Name = 'K15'
        DataType = ftInteger
      end
      item
        Name = 'U15'
        DataType = ftInteger
      end
      item
        Name = 'T15'
        DataType = ftInteger
      end
      item
        Name = 'B16'
        DataType = ftInteger
      end
      item
        Name = 'K16'
        DataType = ftInteger
      end
      item
        Name = 'U16'
        DataType = ftInteger
      end
      item
        Name = 'T16'
        DataType = ftInteger
      end
      item
        Name = 'B17'
        DataType = ftInteger
      end
      item
        Name = 'K17'
        DataType = ftInteger
      end
      item
        Name = 'U17'
        DataType = ftInteger
      end
      item
        Name = 'T17'
        DataType = ftInteger
      end
      item
        Name = 'B18'
        DataType = ftInteger
      end
      item
        Name = 'K18'
        DataType = ftInteger
      end
      item
        Name = 'U18'
        DataType = ftInteger
      end
      item
        Name = 'T18'
        DataType = ftInteger
      end
      item
        Name = 'B19'
        DataType = ftInteger
      end
      item
        Name = 'K19'
        DataType = ftInteger
      end
      item
        Name = 'U19'
        DataType = ftInteger
      end
      item
        Name = 'T19'
        DataType = ftInteger
      end
      item
        Name = 'B20'
        DataType = ftInteger
      end
      item
        Name = 'K20'
        DataType = ftInteger
      end
      item
        Name = 'U20'
        DataType = ftInteger
      end
      item
        Name = 'T20'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 224
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 256
    Top = 136
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_oa_m'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YR'
        DataType = ftInteger
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'BQTY'
        DataType = ftInteger
      end
      item
        Name = 'KQTY'
        DataType = ftInteger
      end
      item
        Name = 'UQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'M1'
        DataType = ftInteger
      end
      item
        Name = 'M2'
        DataType = ftInteger
      end
      item
        Name = 'MR1'
        DataType = ftFloat
      end
      item
        Name = 'MR2'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;cust;yr;wk'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 160
    Top = 184
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 192
    Top = 184
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 160
    Top = 72
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 288
    Top = 104
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 320
    Top = 104
    Version = '11.08'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sales Projection Summary by Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 28310
        mmTop = 3969
        mmWidth = 221457
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 7408
        mmTop = 12965
        mmWidth = 10245
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPLANT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 19050
        mmTop = 12965
        mmWidth = 3471
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Year  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 12965
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'YR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 44979
        mmTop = 12965
        mmWidth = 6265
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 12965
        mmWidth = 14023
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 11642
        mmLeft = 1323
        mmTop = 17727
        mmWidth = 280459
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 10319
        mmTop = 19315
        mmWidth = 5334
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 25135
        mmTop = 19315
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 25135
        mmTop = 23548
        mmWidth = 5673
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'New '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 4784
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Flow '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 31485
        mmTop = 23548
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 42333
        mmTop = 19315
        mmWidth = 4911
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 62442
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 62706
        mmTop = 21696
        mmWidth = 219075
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 64029
        mmTop = 23548
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Past  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 48154
        mmTop = 19315
        mmWidth = 5419
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Perf%  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 48154
        mmTop = 22754
        mmWidth = 6943
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Def  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 56092
        mmTop = 19315
        mmWidth = 4487
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Eff%  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 56092
        mmTop = 22754
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 69850
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 76200
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 69850
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 75936
        mmTop = 25929
        mmWidth = 4149
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 80698
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Jan '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 70379
        mmTop = 18521
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Feb '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 88636
        mmTop = 18521
        mmWidth = 4233
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 98954
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 106892
        mmTop = 18521
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Apr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 124619
        mmTop = 18521
        mmWidth = 3969
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 117211
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 135467
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'May '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 142875
        mmTop = 18521
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Jun '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 160338
        mmTop = 18521
        mmWidth = 3969
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 263790
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 212461
        mmTop = 12965
        mmWidth = 15960
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 230188
        mmTop = 12965
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 250825
        mmTop = 12965
        mmWidth = 8996
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 261673
        mmTop = 12965
        mmWidth = 7112
        BandType = 0
      end
      object cust001: TppLabel
        UserName = 'cust001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 80963
        mmTop = 12965
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 2381
        mmTop = 19315
        mmWidth = 4953
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 153723
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 171980
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 190236
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 208492
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 226748
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 245005
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 82286
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 88106
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 94456
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 88106
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 94192
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 100542
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 106363
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 112713
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 106363
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 112448
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 118798
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 124619
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 130969
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 124619
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 130704
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 137054
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 142875
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 149225
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 142875
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 148961
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 155311
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 161132
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 167482
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 161132
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 167217
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 173567
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 179388
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 185738
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 179388
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 185473
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 191823
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 197644
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 203994
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 197644
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 203730
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Jul '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 179652
        mmTop = 18521
        mmWidth = 3344
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label702'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Aug '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 197644
        mmTop = 18521
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label703'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sep '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 215900
        mmTop = 18521
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Oct '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 233892
        mmTop = 18521
        mmWidth = 3895
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nov '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 252413
        mmTop = 18521
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dec '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 271198
        mmTop = 18521
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 210080
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 215900
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 222250
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 215900
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 221986
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 228336
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 234157
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 240507
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 234157
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 240242
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 246592
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 252413
        mmTop = 22490
        mmWidth = 3598
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 258763
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 252413
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 258498
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 264848
        mmTop = 23548
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 270669
        mmTop = 22490
        mmWidth = 3090
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 277019
        mmTop = 22490
        mmWidth = 2540
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2032
        mmLeft = 270669
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SAH '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        mmHeight = 2117
        mmLeft = 276755
        mmTop = 25929
        mmWidth = 4233
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 10319
        mmTop = 794
        mmWidth = 9271
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 25400
        mmTop = 794
        mmWidth = 1397
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OLDNEW'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 31485
        mmTop = 794
        mmWidth = 4191
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SAH'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 40746
        mmTop = 794
        mmWidth = 6519
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q01'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 64295
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'E01'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 49213
        mmTop = 794
        mmWidth = 5334
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'E101'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 56356
        mmTop = 794
        mmWidth = 5334
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW01'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 70009
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH01'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 76274
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2498
        mmLeft = 2117
        mmTop = 794
        mmWidth = 5842
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 82445
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 88266
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 94530
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q03'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 100701
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW03'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 107495
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH03'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 111814
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q04'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 118958
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW04'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 124778
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH04'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 131043
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q05'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 137214
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW05'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 144008
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH05'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 149299
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q06'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 155470
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW06'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 162264
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH06'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 167556
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q07'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 173727
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW07'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 180520
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH07'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 185812
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q08'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 191983
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW08'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 198776
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH08'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 204068
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q09'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 210239
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW09'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 216060
        mmTop = 794
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH09'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2032
        mmLeft = 222324
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 228579
        mmTop = 794
        mmWidth = 4784
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 235205
        mmTop = 794
        mmWidth = 3979
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 240497
        mmTop = 794
        mmWidth = 3979
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 246836
        mmTop = 794
        mmWidth = 4784
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 253461
        mmTop = 794
        mmWidth = 3979
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 258753
        mmTop = 794
        mmWidth = 3979
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Q12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 265092
        mmTop = 794
        mmWidth = 4784
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TW12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 271718
        mmTop = 794
        mmWidth = 3979
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        AutoSize = True
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSAH12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2117
        mmLeft = 277009
        mmTop = 794
        mmWidth = 3979
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 0
        mmWidth = 280459
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 96
    Top = 184
  end
  object query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 96
    Top = 232
  end
  object XLS1: TQExport4XLS
    DataSet = query6
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.6'
    Formats.FloatFormat = '#,###,##0'
    Formats.CurrencyFormat = '$#,###,##0'
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
    Left = 216
    Top = 232
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel files (*.xls)|*.xls'
    Left = 160
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 216
    object Exportdata1: TMenuItem
      Caption = 'Export data to Excel'
      OnClick = Exportdata1Click
    end
    object Refreshwithoutrecalculation1: TMenuItem
      Caption = 'Refresh without re-calculation'
      ShortCut = 49272
      Visible = False
      OnClick = Refreshwithoutrecalculation1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16634566
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16777204
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15395058
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = 16772328
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = 15007456
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 13756158
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 10732280
    end
  end
end
