object frmfinished: Tfrmfinished
  Left = 153
  Top = 87
  Caption = 'Shipped Records'
  ClientHeight = 520
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #26032#32048#26126#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 762
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 184
      Top = 16
      Width = 21
      Height = 13
      Caption = 'Line'
    end
    object SpeedButton1: TSpeedButton
      Left = 624
      Top = 16
      Width = 65
      Height = 22
      Caption = 'OK'
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
    object Label3: TLabel
      Left = 552
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object Label4: TLabel
      Left = 296
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Style'
    end
    object Label5: TLabel
      Left = 456
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Cust Style'
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 208
      Top = 16
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 328
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Edit4: TEdit
      Left = 512
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 471
    Width = 754
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 473
    ExplicitWidth = 762
    object BitBtn2: TBitBtn
      Left = 15
      Top = 8
      Width = 78
      Height = 33
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
      ModalResult = 8
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 93
      Top = 8
      Width = 78
      Height = 33
      Caption = 'Preview'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 171
      Top = 8
      Width = 94
      Height = 33
      Caption = 'Transit Flow'
      DoubleBuffered = True
      Enabled = False
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
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 265
      Top = 8
      Width = 112
      Height = 33
      Caption = 'Transit Summary'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 377
      Top = 8
      Width = 57
      Height = 33
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 754
    Height = 422
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    ExplicitWidth = 762
    ExplicitHeight = 424
    object cxView1: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.ImmediateEditor = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.HeaderAutoHeight = True
      Styles.Inactive = cxStyle6
      Styles.Selection = cxStyle6
      OnColumnHeaderClick = cxView1ColumnHeaderClick
      Bands = <
        item
          Caption = 'A'
          FixedKind = fkLeft
        end
        item
          Caption = 'B'
          FixedKind = fkLeft
          Width = 79
        end
        item
          Caption = 'C'
          FixedKind = fkLeft
          Width = 50
        end
        item
          Caption = 'D'
          FixedKind = fkLeft
          Width = 96
        end
        item
          Caption = 'E'
          FixedKind = fkLeft
          Width = 122
        end
        item
          Caption = 'F'
          FixedKind = fkLeft
          Width = 33
        end
        item
          Caption = 'G'
          FixedKind = fkLeft
          Width = 28
        end
        item
          Caption = 'H'
          FixedKind = fkLeft
          Width = 28
        end
        item
          Caption = 'I'
          FixedKind = fkLeft
          Width = 68
        end
        item
          Caption = 'J'
          Width = 29
        end
        item
          Caption = 'K'
          Width = 34
        end
        item
          Caption = 'L'
          Width = 43
        end
        item
          Caption = 'M'
          Width = 43
        end
        item
          Caption = 'N'
          Width = 36
        end
        item
          Caption = 'O'
          Width = 122
        end
        item
          Caption = 'P'
          Width = 39
        end
        item
          Caption = 'S'
          Width = 39
        end
        item
          Caption = 'T'
          Width = 93
        end
        item
          Caption = 'U'
          Width = 41
        end
        item
          Caption = 'V'
          Width = 173
        end
        item
          Caption = 'Total Section Hr'
          Position.BandIndex = 17
          Position.ColIndex = 0
        end
        item
          Caption = 'RWO FW Start Date'
          Position.BandIndex = 19
          Position.ColIndex = 0
          Width = 183
        end
        item
          Caption = 'W'
          Width = 31
        end
        item
          Caption = 'X'
          Width = 31
        end
        item
          Caption = 'Y'
          Width = 97
        end
        item
          Caption = 'Z'
          Width = 37
        end
        item
          Caption = 'AA'
          Width = 40
        end
        item
          Caption = 'AB'
          Width = 38
        end
        item
          Caption = 'AC'
          Width = 38
        end
        item
          Caption = 'AD'
          Width = 39
        end
        item
          Caption = 'AE'
          Width = 38
        end
        item
          Caption = 'AF'
          Visible = False
        end
        item
          Caption = 'AG'
          Width = 45
        end
        item
          Caption = 'AH'
          Width = 38
        end
        item
          Caption = 'AI'
          Width = 51
        end
        item
          Caption = 'AJ'
          Width = 33
        end
        item
          Caption = 'AK'
          Width = 41
        end
        item
          Caption = 'AL'
          Width = 51
        end
        item
          Caption = 'AN'
          Width = 57
        end
        item
          Caption = 'AO'
          Width = 38
        end
        item
          Caption = 'AQ'
          Width = 57
        end
        item
          Caption = 'AR'
          Width = 49
        end
        item
          Caption = 'AS'
          Width = 33
        end
        item
          Caption = 'AU'
          Width = 38
        end
        item
          Caption = 'AV'
          Width = 38
        end
        item
          Caption = 'AM'
          Width = 69
        end>
      object cxView1PLINE: TcxGridDBBandedColumn
        Caption = 'Line'
        DataBinding.FieldName = 'PLINE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle4
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FLAG1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG1'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1J_NO: TcxGridDBBandedColumn
        Caption = 'Project'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle4
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1J2_JOB: TcxGridDBBandedColumn
        Caption = 'WO #'
        DataBinding.FieldName = 'J2_JOB'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CWO: TcxGridDBBandedColumn
        Caption = 'WOc # Suffix'
        DataBinding.FieldName = 'CWO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Width = 31
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1RWO: TcxGridDBBandedColumn
        Caption = 'RWO # Suffix'
        DataBinding.FieldName = 'RWO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1FCCS: TcxGridDBBandedColumn
        Caption = 'QN # Suffix'
        DataBinding.FieldName = 'FCCS'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Width = 35
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1FLAG6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG6'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 20
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1CSTYLE: TcxGridDBBandedColumn
        Caption = 'Cust Style'
        DataBinding.FieldName = 'CSTYLE'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Width = 76
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1JHRS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JHRS'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 29
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1QTY: TcxGridDBBandedColumn
        Caption = 'RWO QTY'
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle4
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1ACOL: TcxGridDBBandedColumn
        Caption = 'Clr Code'
        DataBinding.FieldName = 'ACOL'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle4
        Width = 27
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1DBZS: TcxGridDBBandedColumn
        Caption = 'Imp. Code'
        DataBinding.FieldName = 'DBZS'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 66
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FLAG4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG4'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 35
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1SCQTY: TcxGridDBBandedColumn
        Caption = 'QN QTY'
        DataBinding.FieldName = 'SCQTY'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxView1SCQTYPropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Width = 38
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1LSTRS: TcxGridDBBandedColumn
        Caption = 'Def Work force'
        DataBinding.FieldName = 'LSTRS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1SJRS: TcxGridDBBandedColumn
        Caption = 'Actual Work force'
        DataBinding.FieldName = 'SJRS'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TRS: TcxGridDBBandedColumn
        Caption = 'Def Machine Qty'
        DataBinding.FieldName = 'TRS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1SJYC: TcxGridDBBandedColumn
        Caption = 'Actual Machine Qty'
        DataBinding.FieldName = 'SJYC'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TBU: TcxGridDBBandedColumn
        Caption = 'LBU %'
        DataBinding.FieldName = 'TBU'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FLAG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG2'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 21
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1TMU: TcxGridDBBandedColumn
        Caption = 'Def Line SAH (W/Ave)'
        DataBinding.FieldName = 'TMU'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = False
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 14
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxView1JXJS: TcxGridDBBandedColumn
        Caption = 'Def Each Section O/P'
        DataBinding.FieldName = 'JXJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 15
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1PHISZJS: TcxGridDBBandedColumn
        Caption = 'Total Sect Hr (on-std)'
        DataBinding.FieldName = 'PHISZJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Position.BandIndex = 16
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FLAG7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG7'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 20
        Position.BandIndex = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1LFLAG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LFLAG'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 20
        Position.BandIndex = 20
        Position.ColIndex = 1
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1SHJS: TcxGridDBBandedColumn
        Caption = 'Default consolidate lost'
        DataBinding.FieldName = 'SHJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Position.BandIndex = 20
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1ZJS: TcxGridDBBandedColumn
        Caption = 'Total Section Hr (opt perf)'
        DataBinding.FieldName = 'ZJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Position.BandIndex = 18
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1PLAN_DATE: TcxGridDBBandedColumn
        Caption = 'Default'
        DataBinding.FieldName = 'PLAN_DATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle4
        Width = 45
        Position.BandIndex = 21
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CPLAN: TcxGridDBBandedColumn
        Caption = 'Curr'
        DataBinding.FieldName = 'CPLAN'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Width = 43
        Position.BandIndex = 21
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1XC4: TcxGridDBBandedColumn
        Caption = 'Diff'
        DataBinding.FieldName = 'XC4'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Width = 29
        Position.BandIndex = 21
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1FYFS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FYFS'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 20
        Position.BandIndex = 21
        Position.ColIndex = 3
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1UNBAL: TcxGridDBBandedColumn
        Caption = 'Locked Diff (day)'
        DataBinding.FieldName = 'UNBAL'
        HeaderAlignmentHorz = taCenter
        Width = 36
        Position.BandIndex = 21
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxView1XC1: TcxGridDBBandedColumn
        Caption = 'QN Start Date Cycle Time (day)'
        DataBinding.FieldName = 'XC1'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle3
        Styles.Header = cxStyle3
        Position.BandIndex = 22
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1WEEK: TcxGridDBBandedColumn
        Caption = 'QN Start Week #'
        DataBinding.FieldName = 'WEEK'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Width = 35
        Position.BandIndex = 23
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FLAG3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG3'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 23
        Position.BandIndex = 24
        Position.ColIndex = 1
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1CFKSRQ: TcxGridDBBandedColumn
        Caption = 'LW Start Date'
        DataBinding.FieldName = 'CFKSRQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Width = 35
        Position.BandIndex = 24
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxView1CFKSJS: TcxGridDBBandedColumn
        Caption = 'QN 1st Sect S-Time'
        DataBinding.FieldName = 'CFKSJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 25
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1ZKTD: TcxGridDBBandedColumn
        Caption = 'QN Curr Sect Hr (Diff)'
        DataBinding.FieldName = 'ZKTD'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Position.BandIndex = 26
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1SCLHJS: TcxGridDBBandedColumn
        Caption = 'QN Behind Section Hr'
        DataBinding.FieldName = 'SCLHJS'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Position.BandIndex = 27
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1QYJS: TcxGridDBBandedColumn
        Caption = 'QN Ahead Section Hr'
        DataBinding.FieldName = 'QYJS'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Position.BandIndex = 28
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1ZHJS: TcxGridDBBandedColumn
        Caption = 'QN Chase Time Chase back Section Hr'
        DataBinding.FieldName = 'ZHJS'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Position.BandIndex = 29
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1BCJS: TcxGridDBBandedColumn
        Caption = 'QN Chase Time Used Section Hr'
        DataBinding.FieldName = 'BCJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 30
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1DBXL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DBXL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 31
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CFWCRQ: TcxGridDBBandedColumn
        Caption = 'QN T2 Date'
        DataBinding.FieldName = 'CFWCRQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Position.BandIndex = 32
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1CKJS: TcxGridDBBandedColumn
        Caption = 'QN T2 End Time (Sect)'
        DataBinding.FieldName = 'CKJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 33
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1NSHJS: TcxGridDBBandedColumn
        Caption = 'Non Production Day'
        DataBinding.FieldName = 'NSHJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Position.BandIndex = 34
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1KDJS: TcxGridDBBandedColumn
        Caption = 'QN time GAP'
        DataBinding.FieldName = 'KDJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 35
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1BZJS: TcxGridDBBandedColumn
        Caption = 'Packing / Inspect Section Hr'
        DataBinding.FieldName = 'BZJS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 36
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1TZLCRQ: TcxGridDBBandedColumn
        Caption = 'Ex-fty Date QN Organized'
        DataBinding.FieldName = 'TZLCRQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle5
        Position.BandIndex = 37
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1YQLCRQ: TcxGridDBBandedColumn
        Caption = 'Ex-fty Date RWO '
        DataBinding.FieldName = 'YQLCRQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle4
        Position.BandIndex = 38
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1RQXC: TcxGridDBBandedColumn
        Caption = 'Ex-fty Date Current Diff (day)'
        DataBinding.FieldName = 'RQXC'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Position.BandIndex = 39
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1FLAG5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAG5'
        HeaderAlignmentHorz = taCenter
        HeaderGlyph.Data = {
          CE000000424DCE0000000000000076000000280000000D0000000B0000000100
          04000000000058000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF2FFFFFFFF
          F000FF332FFFFFFFF000FF382FFFFFFFF000FF33222FFFFFF000FF3823332FFF
          F000FF382333322FF000FF3823A3A3A2F000FF382873333FF000FF3828333FFF
          F000FF73333FFFFFF000FFFFFFFFFFFFF000}
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        Width = 20
        Position.BandIndex = 40
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxView1QRXC: TcxGridDBBandedColumn
        Caption = 'Ex-fty Date Locked Diff (day)'
        DataBinding.FieldName = 'QRXC'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle5
        Width = 41
        Position.BandIndex = 40
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1XC2: TcxGridDBBandedColumn
        Caption = 'QN Organized Cycle Time (day)'
        DataBinding.FieldName = 'XC2'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle3
        Styles.Header = cxStyle3
        Position.BandIndex = 41
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1XC3: TcxGridDBBandedColumn
        Caption = 'RWO Work CT (day)'
        DataBinding.FieldName = 'XC3'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle3
        Styles.Header = cxStyle3
        Position.BandIndex = 42
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1YSJHL: TcxGridDBBandedColumn
        Caption = 'Opt perf (%) Default'
        DataBinding.FieldName = 'YSJHL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 43
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1JHL: TcxGridDBBandedColumn
        Caption = 'Opt perf (%) Current'
        DataBinding.FieldName = 'JHL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Position.BandIndex = 44
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1YZH: TcxGridDBBandedColumn
        Caption = 'Shpd'
        DataBinding.FieldName = 'YZH'
        HeaderAlignmentHorz = taCenter
        Width = 27
        Position.BandIndex = 45
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1PD8: TcxGridDBBandedColumn
        Caption = 'Ex-fty Date QN Actual'
        DataBinding.FieldName = 'PD8'
        HeaderAlignmentHorz = taCenter
        Width = 42
        Position.BandIndex = 45
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1DSQN: TcxGridDBBandedColumn
        Caption = 'QN PII'
        DataBinding.FieldName = 'DSQN'
        Options.Editing = False
        Width = 21
        Position.BandIndex = 24
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxView1IECLS: TcxGridDBBandedColumn
        Caption = 'Class'
        DataBinding.FieldName = 'IECLS'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          '1A'
          '2A'
          '2B'
          '3A'
          '3B'
          '3C'
          '4A'
          '4B'
          '4C'
          '4D'
          '4E'
          '4F')
        Width = 28
        Position.BandIndex = 14
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxView1IECLS1: TcxGridDBBandedColumn
        Caption = 'Class Suffix'
        DataBinding.FieldName = 'IECLS1'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        Width = 30
        Position.BandIndex = 14
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object DataSource1: TDataSource
    DataSet = tblshedule
    Left = 56
    Top = 456
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 456
  end
  object tblshedule: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblshedule where pline='#39'T001U'#39' and yzh=0'
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'CFKSRQ'
        DataType = ftDate
      end
      item
        Name = 'CFKSJS'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 22
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
        Name = 'WEEK'
        DataType = ftInteger
      end
      item
        Name = 'PLAN_DATE'
        DataType = ftDate
      end
      item
        Name = 'KHZL'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'OKHRQ'
        DataType = ftDate
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'TMU'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftInteger
      end
      item
        Name = 'FYL'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftInteger
      end
      item
        Name = 'JXJS'
        DataType = ftFloat
      end
      item
        Name = 'ZJS'
        DataType = ftFloat
      end
      item
        Name = 'JHL'
        DataType = ftFloat
      end
      item
        Name = 'CFWCRQ'
        DataType = ftDate
      end
      item
        Name = 'YQLCRQ'
        DataType = ftDateTime
      end
      item
        Name = 'SCTD'
        DataType = ftInteger
      end
      item
        Name = 'PHISZJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'BCJS'
        DataType = ftInteger
      end
      item
        Name = 'PD4'
        DataType = ftDate
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'JHRS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'YSJHL'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'PD8'
        DataType = ftDate
      end
      item
        Name = 'BZJS'
        DataType = ftInteger
      end
      item
        Name = 'TZLCRQ'
        DataType = ftDate
      end
      item
        Name = 'FLAG1'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FLAG2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FLAG3'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG4'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RQXC'
        DataType = ftInteger
      end
      item
        Name = 'QRLCRQ'
        DataType = ftDate
      end
      item
        Name = 'KDJS'
        DataType = ftInteger
      end
      item
        Name = 'WEEK1'
        DataType = ftInteger
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'FYFS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CFWCJS'
        DataType = ftFloat
      end
      item
        Name = 'SOPNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG5'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CKTS'
        DataType = ftInteger
      end
      item
        Name = 'QRXC'
        DataType = ftInteger
      end
      item
        Name = 'YZH'
        DataType = ftBoolean
      end
      item
        Name = 'XS'
        DataType = ftInteger
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PFLAG1'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DBZS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LSTRS'
        DataType = ftFloat
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_W'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'YQ_W'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TZ_W'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RID'
        DataType = ftInteger
      end
      item
        Name = 'HC'
        DataType = ftInteger
      end
      item
        Name = 'LEARN'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NSHJS'
        DataType = ftInteger
      end
      item
        Name = 'UNBAL'
        DataType = ftFloat
      end
      item
        Name = 'XC1'
        DataType = ftInteger
      end
      item
        Name = 'XC2'
        DataType = ftInteger
      end
      item
        Name = 'XC3'
        DataType = ftInteger
      end
      item
        Name = 'SJRS'
        DataType = ftFloat
      end
      item
        Name = 'SJYC'
        DataType = ftFloat
      end
      item
        Name = 'CKJS'
        DataType = ftFloat
      end
      item
        Name = 'GRP'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RQXC1'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'TBU'
        DataType = ftFloat
      end
      item
        Name = 'CPLAN'
        DataType = ftDate
      end
      item
        Name = 'XC4'
        DataType = ftInteger
      end
      item
        Name = 'LTC_D'
        DataType = ftFloat
      end
      item
        Name = 'LTC_R'
        DataType = ftFloat
      end
      item
        Name = 'LTC_A'
        DataType = ftFloat
      end
      item
        Name = 'LTC_RM'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'LTC_KSRQ'
        DataType = ftDate
      end
      item
        Name = 'LTC_KSJS'
        DataType = ftFloat
      end
      item
        Name = 'DSQN'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAG7'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DTA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'IECLS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'IECLS1'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'pline;seq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = tblsheduleAfterOpen
    Left = 24
    Top = 456
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 456
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 456
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 184
    Top = 456
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 456
    object ExpandAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpandAll1Click
    end
    object Closed1: TMenuItem
      Caption = 'Collapse All'
      OnClick = Closed1Click
    end
    object CancelSorting1: TMenuItem
      Caption = 'Clear Sorting'
      OnClick = CancelSorting1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Removeshipped1: TMenuItem
      Caption = 'Remove shipped'
      OnClick = Removeshipped1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 14088905
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 14074287
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 136
    Top = 8
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 13092603
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 32
    Top = 24
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = 13499643
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 72
    Top = 16
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    OnPopup = cxGridPopupMenu1Popup
    AlwaysFireOnPopup = True
    Left = 512
    Top = 248
  end
end
