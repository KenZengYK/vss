object frmpdnsplit: Tfrmpdnsplit
  Left = 192
  Top = 114
  Width = 870
  Height = 600
  Caption = 'PDN Split'
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
    Top = 49
    Width = 862
    Height = 476
    ActivePage = TabSheet48
    Align = alClient
    Style = tsFlatButtons
    TabIndex = 47
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'RWOs'
      object Splitter1: TSplitter
        Left = 409
        Top = 0
        Width = 1
        Height = 445
        Cursor = crHSplit
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 409
        Height = 445
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 409
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 16
            Width = 114
            Height = 13
            Caption = 'RWOs of Original PDN: '
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 41
          Width = 409
          Height = 404
          Align = alClient
          DataSource = frmpdn.DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'J_NO'
              Footers = <>
              Title.Caption = 'Project No'
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'J2_JOB'
              Footers = <>
              Title.Caption = 'WO No'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'RWO'
              Footers = <>
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'ACOL'
              Footers = <>
              Title.Caption = 'Clr Code'
              Width = 53
            end>
        end
      end
      object Panel3: TPanel
        Left = 410
        Top = 0
        Width = 39
        Height = 445
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 176
          Width = 23
          Height = 22
          Caption = '>'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 8
          Top = 248
          Width = 23
          Height = 22
          Caption = '<'
          OnClick = SpeedButton2Click
        end
      end
      object Panel5: TPanel
        Left = 449
        Top = 0
        Width = 405
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 405
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 101
            Height = 13
            Caption = 'RWOs of New PDN: '
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 41
          Width = 405
          Height = 404
          Align = alClient
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'J_NO'
              Footers = <>
              Title.Caption = 'Project No'
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'J2_JOB'
              Footers = <>
              Title.Caption = 'WO No'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'RWO'
              Footers = <>
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'ACOL'
              Footers = <>
              Title.Caption = 'Clr Code'
              Width = 53
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh3: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh6: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object Splitter4: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh8: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
      object Splitter5: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh9: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh10: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      object Splitter6: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh11: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh12: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'TabSheet7'
      ImageIndex = 6
      object Splitter7: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh13: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh14: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'TabSheet8'
      ImageIndex = 7
      object Splitter8: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh15: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh16: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'TabSheet9'
      ImageIndex = 8
      object Splitter9: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh17: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh18: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'TabSheet10'
      ImageIndex = 9
      object Splitter10: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh19: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh20: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'TabSheet11'
      ImageIndex = 10
      object Splitter11: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh21: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh22: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'TabSheet12'
      ImageIndex = 11
      object Splitter12: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh23: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh24: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'TabSheet13'
      ImageIndex = 12
      object Splitter13: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh25: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh26: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'TabSheet14'
      ImageIndex = 13
      object Splitter14: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh27: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh28: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'TabSheet15'
      ImageIndex = 14
      object Splitter15: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh29: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh30: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'TabSheet16'
      ImageIndex = 15
      object Splitter16: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh31: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh32: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'TabSheet17'
      ImageIndex = 16
      object Splitter17: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh33: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh34: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'TabSheet18'
      ImageIndex = 17
      object Splitter18: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh35: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh36: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet19: TTabSheet
      Caption = 'TabSheet19'
      ImageIndex = 18
      object Splitter19: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh37: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh38: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet20: TTabSheet
      Caption = 'TabSheet20'
      ImageIndex = 19
      object Splitter20: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh39: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh40: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet21: TTabSheet
      Caption = 'TabSheet21'
      ImageIndex = 20
      object Splitter21: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh41: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh42: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet22: TTabSheet
      Caption = 'TabSheet22'
      ImageIndex = 21
      object Splitter22: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh43: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh44: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet23: TTabSheet
      Caption = 'TabSheet23'
      ImageIndex = 22
      object Splitter23: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh45: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh46: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet24: TTabSheet
      Caption = 'TabSheet24'
      ImageIndex = 23
      object Splitter24: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh47: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh48: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet25: TTabSheet
      Caption = 'TabSheet25'
      ImageIndex = 24
      object Splitter25: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh49: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh50: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet26: TTabSheet
      Caption = 'TabSheet26'
      ImageIndex = 25
      object Splitter26: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh51: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh52: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet27: TTabSheet
      Caption = 'TabSheet27'
      ImageIndex = 26
      object Splitter27: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh53: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh54: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet28: TTabSheet
      Caption = 'TabSheet28'
      ImageIndex = 27
      object Splitter28: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh55: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh56: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet29: TTabSheet
      Caption = 'TabSheet29'
      ImageIndex = 28
      object Splitter29: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh57: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh58: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet30: TTabSheet
      Caption = 'TabSheet30'
      ImageIndex = 29
      object Splitter30: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh59: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh60: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet31: TTabSheet
      Caption = 'TabSheet31'
      ImageIndex = 30
      object Splitter31: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh61: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh62: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet32: TTabSheet
      Caption = 'TabSheet32'
      ImageIndex = 31
      object Splitter32: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh63: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh64: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet33: TTabSheet
      Caption = 'TabSheet33'
      ImageIndex = 32
      object Splitter33: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh65: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh66: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet34: TTabSheet
      Caption = 'TabSheet34'
      ImageIndex = 33
      object Splitter34: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh67: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh68: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet35: TTabSheet
      Caption = 'TabSheet35'
      ImageIndex = 34
      object Splitter35: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh69: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh70: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet36: TTabSheet
      Caption = 'TabSheet36'
      ImageIndex = 35
      object Splitter36: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh71: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh72: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet37: TTabSheet
      Caption = 'TabSheet37'
      ImageIndex = 36
      object Splitter37: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh73: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh74: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet38: TTabSheet
      Caption = 'TabSheet38'
      ImageIndex = 37
      object Splitter38: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh75: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh76: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet39: TTabSheet
      Caption = 'TabSheet39'
      ImageIndex = 38
      object Splitter39: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh77: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh78: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet40: TTabSheet
      Caption = 'TabSheet40'
      ImageIndex = 39
      object Splitter40: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh79: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh80: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet41: TTabSheet
      Caption = 'TabSheet41'
      ImageIndex = 40
      object Splitter41: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh81: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh82: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet42: TTabSheet
      Caption = 'TabSheet42'
      ImageIndex = 41
      object Splitter42: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh83: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh84: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet43: TTabSheet
      Caption = 'TabSheet43'
      ImageIndex = 42
      object Splitter43: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh85: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh86: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet44: TTabSheet
      Caption = 'TabSheet44'
      ImageIndex = 43
      object Splitter44: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh87: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh88: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet45: TTabSheet
      Caption = 'TabSheet45'
      ImageIndex = 44
      object Splitter45: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh89: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh90: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet46: TTabSheet
      Caption = 'TabSheet46'
      ImageIndex = 45
      object Splitter46: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh91: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh92: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet47: TTabSheet
      Caption = 'TabSheet47'
      ImageIndex = 46
      object Splitter47: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh93: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh94: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet48: TTabSheet
      Caption = 'TabSheet48'
      ImageIndex = 47
      object Splitter48: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh95: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh96: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet49: TTabSheet
      Caption = 'TabSheet49'
      ImageIndex = 48
      object Splitter49: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh97: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh98: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet50: TTabSheet
      Caption = 'TabSheet50'
      ImageIndex = 49
      object Splitter50: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh99: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh100: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
    object TabSheet51: TTabSheet
      Caption = 'TabSheet51'
      ImageIndex = 50
      object Splitter51: TSplitter
        Left = 393
        Top = 0
        Width = 24
        Height = 445
        Cursor = crHSplit
      end
      object DBGridEh101: TDBGridEh
        Left = 0
        Top = 0
        Width = 393
        Height = 445
        Align = alLeft
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
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
            FieldName = 'ACOL'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = 'Size'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'RWO Qty'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 58
          end>
      end
      object DBGridEh102: TDBGridEh
        Left = 417
        Top = 0
        Width = 437
        Height = 445
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACOL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RWO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Plan Qty'
            Width = 55
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Original PDN '
    end
    object Label2: TLabel
      Left = 296
      Top = 16
      Width = 51
      Height = 13
      Caption = 'New PDN '
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 153
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 352
      Top = 16
      Width = 153
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 512
      Top = 16
      Width = 153
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 525
    Width = 862
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 0
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
      Left = 88
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_rwo'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq;dseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 40
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 104
    Top = 65528
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 136
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select j_no,j2_job,rwo,acol from tbl_erprwo  where exfty>'#39'2007-0' +
      '6-01'#39
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
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 168
    Top = 65528
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 65528
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 65528
  end
  object Query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 264
    Top = 65528
  end
  object Query8: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query8AfterPost
    Left = 296
    Top = 65528
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_m'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'MARKS'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
    Top = 65528
  end
  object DataSource4: TDataSource
    DataSet = Query8
    Left = 328
    Top = 65528
  end
end
