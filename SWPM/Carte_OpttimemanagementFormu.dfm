object frmCarte_Opttimemanagement: TfrmCarte_Opttimemanagement
  Left = 0
  Top = 0
  Caption = 'COP - Operations Time Management'
  ClientHeight = 301
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 260
    Width = 732
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 120
    ExplicitTop = 264
    ExplicitWidth = 185
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 732
    Height = 219
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 48
    ExplicitTop = 56
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
