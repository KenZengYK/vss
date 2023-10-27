object frmenqnotepad: Tfrmenqnotepad
  Left = 192
  Top = 114
  Width = 870
  Height = 640
  Caption = 'Notepad for Transit flow'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 862
    Height = 565
    Align = alClient
    DataSource = DataSource1
    DrawMemoText = True
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'WO#'
      end
      item
        EditButtons = <>
        FieldName = 'RWO'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Clr Code'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'QN'
        Footers = <>
        Title.Caption = 'QN #'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        Title.Caption = 'Line'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'REMARKS'
        Footers = <>
        Title.Caption = 'Notepad|T1'
      end
      item
        EditButtons = <>
        FieldName = 'SMARKS'
        Footers = <>
        Title.Caption = 'Notepad|Sewn'
      end
      item
        EditButtons = <>
        FieldName = 'T2MARKS'
        Footers = <>
        Title.Caption = 'Notepad|T2'
      end
      item
        EditButtons = <>
        FieldName = 'PMARKS'
        Footers = <>
        Title.Caption = 'Notepad|T3'
      end
      item
        EditButtons = <>
        FieldName = 'AQLMARKS'
        Footers = <>
        Title.Caption = 'Notepad|AQL'
      end
      item
        EditButtons = <>
        FieldName = 'T4MARKS'
        Footers = <>
        Title.Caption = 'Notepad|T4'
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 565
    Width = 862
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_tmp_notepad'
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
        Size = 10
      end
      item
        Name = 'QN'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'REMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'PMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'T4MARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'T2MARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'SMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'AQLMARKS'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol;did'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 128
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 72
  end
end
