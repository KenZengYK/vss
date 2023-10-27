object frmaql1: Tfrmaql1
  Left = 192
  Top = 110
  Caption = 'AQL Report'
  ClientHeight = 446
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 305
    Width = 810
    Height = 2
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 688
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 305
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 116
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 810
      Height = 13
      Align = alTop
      Caption = 'PULL The Following Garments / SKU ('#25353'SKU'#25277#26597#20214#25976')  : - '
      ExplicitWidth = 286
    end
    object DBGridEh5: TDBGridEh
      Left = 0
      Top = 13
      Width = 810
      Height = 292
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      DataSource = frmaqlmain.DataSource8
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SIZ'
          Footers = <>
          Title.Caption = 'Size ('#23610#30908')'
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q1'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 1'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q2'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 2'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q3'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 3'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q4'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 4'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q5'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 5'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q6'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 6'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q7'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 7'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q8'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 8'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q9'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 9'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q10'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 10'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q11'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 11'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q12'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 12'
          Width = 50
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 307
    Width = 810
    Height = 98
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 116
    ExplicitHeight = 102
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 810
      Height = 13
      Align = alTop
      Caption = 'PULL The Following Cases / SKU ('#25353'SKU'#25277#31665#25976') : - '
      ExplicitWidth = 255
    end
    object Label3: TLabel
      Left = 0
      Top = 85
      Width = 810
      Height = 13
      Align = alBottom
      Caption = 
        'These cases will send to be checked for CASE Accuracy  ('#36889#20123#31665#25976#38656#35201#36914#34892 +
        #31665#27298#26597') '
      ExplicitTop = 89
      ExplicitWidth = 417
    end
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 13
      Width = 810
      Height = 72
      Align = alClient
      AllowedOperations = [alopUpdateEh]
      DataSource = frmaqlmain.DataSource9
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SIZ'
          Footers = <>
          Title.Caption = 'Size ('#23610#30908')'
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q1'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 1'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q2'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 2'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q3'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 3'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q4'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 4'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q5'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 5'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q6'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 6'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q7'
          Footer.DisplayFormat = '0.0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 7'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q8'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 8'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q9'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 9'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q10'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 10'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q11'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 11'
          Width = 50
        end
        item
          DisplayFormat = '0.0;-0.0; '
          EditButtons = <>
          FieldName = 'Q12'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Color ('#38991#33394')| 12'
          Width = 50
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 405
    Width = 810
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = -41
    ExplicitWidth = 116
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object xh1: TRadioGroup
      Left = 192
      Top = 3
      Width = 145
      Height = 33
      Caption = 'Decimal Point ('#23567#25976#20301')'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        '0'
        '1')
      TabOrder = 1
      OnClick = xh1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
end
