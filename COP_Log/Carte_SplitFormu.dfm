object frmCarte_Split: TfrmCarte_Split
  Left = 0
  Top = 0
  Caption = 'Split CWO'
  ClientHeight = 369
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 0
    Width = 513
    Height = 369
    Active = True
    Align = alClient
    GradientColorStart = 14216405
    GradientColorStop = 16776176
    GradientDirection = gdVerticalEnd
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = -636
    ExplicitTop = 1
    ExplicitWidth = 1149
    ExplicitHeight = 39
  end
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 95
    Height = 13
    Caption = 'CWO Qty (Clr Dpd) '
  end
  object rEdit1: TRzNumericEdit
    Left = 129
    Top = 21
    Width = 65
    Height = 21
    TabOrder = 0
    DisplayFormat = ',0;(,0)'
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 59
    Width = 449
    Height = 70
    Caption = 'I - Material full receiving date'
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Def. start  '
    end
    object Label3: TLabel
      Left = 111
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Def. finish '
    end
    object Label4: TLabel
      Left = 240
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Act. start '
    end
    object Label5: TLabel
      Left = 343
      Top = 24
      Width = 51
      Height = 13
      Caption = 'Act. finish '
    end
    object DateEdit1: TDateEdit
      Left = 8
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 111
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 1
    end
    object DateEdit3: TDateEdit
      Left = 240
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
    end
    object DateEdit4: TDateEdit
      Left = 343
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 143
    Width = 241
    Height = 66
    Caption = 'J - SW start date'
    TabOrder = 2
    object Label6: TLabel
      Left = 8
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Def.  '
    end
    object Label7: TLabel
      Left = 135
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Act.   '
    end
    object DateEdit5: TDateEdit
      Left = 8
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit6: TDateEdit
      Left = 135
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 227
    Width = 321
    Height = 70
    Caption = 'K - Ex-fty date'
    TabOrder = 3
    object Label8: TLabel
      Left = 8
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Def. '
    end
    object Label9: TLabel
      Left = 111
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Adj*  '
    end
    object Label10: TLabel
      Left = 214
      Top = 24
      Width = 36
      Height = 13
      Caption = 'Latest  '
    end
    object DateEdit7: TDateEdit
      Left = 8
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 0
    end
    object DateEdit8: TDateEdit
      Left = 111
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 1
    end
    object DateEdit9: TDateEdit
      Left = 214
      Top = 40
      Width = 97
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 312
    Width = 81
    Height = 25
    Caption = 'Confirm'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
end
