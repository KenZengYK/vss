object frmapprovalprocessing: Tfrmapprovalprocessing
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'QN/QN PII Approval Processing'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'QNs'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 312
          Top = 8
          Width = 121
          Height = 25
          Caption = 'QN - View or Print'
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 432
          Top = 8
          Width = 105
          Height = 25
          Caption = 'Action'
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 41
        Width = 680
        Height = 374
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
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
            Footers = <>
            Title.Caption = 'Confirm'
            Width = 41
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = 'Hold'
            Width = 32
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = 'Reject'
            Width = 37
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = 'Cancel'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Pline'
            Footers = <>
            Title.Caption = 'Line'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'J_no'
            Footers = <>
            Title.Caption = 'Project'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'J2_job'
            Footers = <>
            Title.Caption = 'WO'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CSTYLE'
            Footers = <>
            Title.Caption = 'Cust Style'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Acol'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'CWO'
            Footers = <>
            Title.Caption = 'WOc Suffix'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'RWO'
            Footers = <>
            Title.Caption = 'RWO Suffix'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'FCCS'
            Footers = <>
            Title.Caption = 'QN Suffix'
            Width = 40
          end
          item
            Color = 14088905
            EditButtons = <>
            FieldName = 'Flag4'
            Footers = <>
            Title.Caption = 'QN Qty|?'
            Title.Color = 14088905
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'Scqty'
            Footers = <>
            Title.Caption = 'QN Qty|Qty'
            Width = 44
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'Plan_date'
            Footers = <>
            Title.Caption = 'RWO Fty Work Start Date|Default'
            Width = 55
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'CPLAN'
            Footers = <>
            Title.Caption = 'RWO Fty Work Start Date|Current'
            Width = 55
          end
          item
            Color = 14088905
            EditButtons = <>
            FieldName = 'Flag3'
            Footers = <>
            Title.Caption = 'QN Start Date|?'
            Title.Color = 14088905
            Width = 18
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'Cfksrq'
            Footers = <>
            Title.Caption = 'QN Start Date|'
            Width = 55
          end
          item
            DisplayFormat = '0.0'
            EditButtons = <>
            FieldName = 'CFKSJS'
            Footers = <>
            Title.Caption = 'QN Start Sect Hr'
            Width = 36
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'Cfwcrq'
            Footers = <>
            Title.Caption = 'Plan QN T2 Date'
            Width = 55
          end
          item
            DisplayFormat = 'yy/MM/dd hh'
            EditButtons = <>
            FieldName = 'YQLCRQ'
            Footers = <>
            Title.Caption = 'RWO Ex-fty Date'
            Width = 72
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'QN PIIs'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 312
          Top = 8
          Width = 121
          Height = 25
          Caption = 'QN PII - View or Print'
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 432
          Top = 8
          Width = 105
          Height = 25
          Caption = 'Action'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 40
          Width = 105
          Height = 17
          Caption = 'Combine QNs'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 160
          Top = 40
          Width = 105
          Height = 17
          Caption = 'Split QNs'
          TabOrder = 3
        end
        object RadioButton3: TRadioButton
          Left = 312
          Top = 40
          Width = 137
          Height = 17
          Caption = 'SKU Exchanged QNs'
          TabOrder = 4
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 65
        Width = 680
        Height = 350
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
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
            Footers = <>
            Title.Caption = 'Confirm'
            Width = 41
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = 'Hold'
            Width = 32
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = 'Reject'
            Width = 37
          end
          item
            EditButtons = <>
            Footers = <>
            Title.Caption = 'Cancel'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Pline'
            Footers = <>
            Title.Caption = 'Line'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'J_no'
            Footers = <>
            Title.Caption = 'Project'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'J2_job'
            Footers = <>
            Title.Caption = 'WO'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CSTYLE'
            Footers = <>
            Title.Caption = 'Cust Style'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Acol'
            Footers = <>
            Title.Caption = 'Clr Code'
          end
          item
            EditButtons = <>
            FieldName = 'CWO'
            Footers = <>
            Title.Caption = 'WOc Suffix'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'RWO'
            Footers = <>
            Title.Caption = 'RWO Suffix'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'FCCS'
            Footers = <>
            Title.Caption = 'QN Suffix'
            Width = 40
          end
          item
            Color = 14088905
            EditButtons = <>
            FieldName = 'Flag4'
            Footers = <>
            Title.Caption = 'QN Qty|?'
            Title.Color = 14088905
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'Scqty'
            Footers = <>
            Title.Caption = 'QN Qty|Qty'
            Width = 44
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'Plan_date'
            Footers = <>
            Title.Caption = 'RWO Fty Work Start Date|Default'
            Width = 55
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'CPLAN'
            Footers = <>
            Title.Caption = 'RWO Fty Work Start Date|Current'
            Width = 55
          end
          item
            Color = 14088905
            EditButtons = <>
            FieldName = 'Flag3'
            Footers = <>
            Title.Caption = 'QN Start Date|?'
            Title.Color = 14088905
            Width = 18
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'Cfksrq'
            Footers = <>
            Title.Caption = 'QN Start Date|'
            Width = 55
          end
          item
            DisplayFormat = '0.0'
            EditButtons = <>
            FieldName = 'CFKSJS'
            Footers = <>
            Title.Caption = 'QN Start Sect Hr'
            Width = 36
          end
          item
            DisplayFormat = 'yy/MM/dd'
            EditButtons = <>
            FieldName = 'Cfwcrq'
            Footers = <>
            Title.Caption = 'Plan QN T2 Date'
            Width = 55
          end
          item
            DisplayFormat = 'yy/MM/dd hh'
            EditButtons = <>
            FieldName = 'YQLCRQ'
            Footers = <>
            Title.Caption = 'RWO Ex-fty Date'
            Width = 72
          end>
      end
    end
  end
end
