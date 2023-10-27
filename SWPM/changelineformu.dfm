object frmchangeline: Tfrmchangeline
  Left = 408
  Top = 275
  Width = 289
  Height = 195
  Caption = 'Change Line'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 68
    Height = 13
    Caption = 'Original Line# '
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 55
    Height = 13
    Caption = 'New Line# '
  end
  object Edit1: TEdit
    Left = 120
    Top = 32
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 64
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 104
    Width = 73
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = BitBtn1Click
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
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 104
    Width = 73
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
  object query1: TClientDataSet
    Aggregates = <>
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
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'DATE1'
        DataType = ftDate
      end
      item
        Name = 'SHJS'
        DataType = ftFloat
      end
      item
        Name = 'ZKTD'
        DataType = ftFloat
      end
      item
        Name = 'SCLHJS'
        DataType = ftFloat
      end
      item
        Name = 'QYJS'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftString
        Size = 1
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
        Name = 'SJRS1'
        DataType = ftFloat
      end
      item
        Name = 'SJRS2'
        DataType = ftFloat
      end
      item
        Name = 'PQTY'
        DataType = ftFloat
      end
      item
        Name = 'AQTY'
        DataType = ftFloat
      end
      item
        Name = 'DIFF'
        DataType = ftFloat
      end
      item
        Name = 'AQTY1'
        DataType = ftFloat
      end
      item
        Name = 'EOT'
        DataType = ftFloat
      end
      item
        Name = 'EFF1'
        DataType = ftFloat
      end
      item
        Name = 'EFF2'
        DataType = ftFloat
      end
      item
        Name = 'XJS'
        DataType = ftFloat
      end
      item
        Name = 'PSECT'
        DataType = ftFloat
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
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
        Name = 'LSTR'
        DataType = ftFloat
      end
      item
        Name = 'KSJS'
        DataType = ftFloat
      end
      item
        Name = 'ZHJS'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TSHOP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT1'
        DataType = ftDate
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'DBXL'
        DataType = ftFloat
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FCCS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'FLAG3'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FLAGS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'LST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DFLAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MARKS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DSECT'
        DataType = ftFloat
      end
      item
        Name = 'LFLAG1'
        DataType = ftFloat
      end
      item
        Name = 'TRS'
        DataType = ftFloat
      end
      item
        Name = 'CEOT'
        DataType = ftFloat
      end
      item
        Name = 'PQTY1'
        DataType = ftFloat
      end
      item
        Name = 'MPSECT'
        DataType = ftFloat
      end
      item
        Name = 'PEFF'
        DataType = ftFloat
      end
      item
        Name = 'LST1'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KSJS1'
        DataType = ftFloat
      end
      item
        Name = 'MWFLB'
        DataType = ftFloat
      end
      item
        Name = 'MWFS'
        DataType = ftFloat
      end
      item
        Name = 'MWFA'
        DataType = ftFloat
      end
      item
        Name = 'MWFAC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBN'
        DataType = ftFloat
      end
      item
        Name = 'GSDMBN'
        DataType = ftFloat
      end
      item
        Name = 'RFIDP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MWFSC'
        DataType = ftFloat
      end
      item
        Name = 'MWFLBC'
        DataType = ftFloat
      end
      item
        Name = 'MWFBNC'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 8
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 40
  end
end
