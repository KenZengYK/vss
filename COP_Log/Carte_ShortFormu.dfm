object frmCarte_Short: TfrmCarte_Short
  Left = 0
  Top = 0
  Caption = #20986#36008#21512#20849#23569#25976
  ClientHeight = 193
  ClientWidth = 337
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
    Width = 337
    Height = 193
    Active = True
    Align = alClient
    GradientColorStart = 14216405
    GradientColorStop = 16776176
    GradientDirection = gdVerticalEnd
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = -812
    ExplicitTop = 1
    ExplicitWidth = 1149
    ExplicitHeight = 39
  end
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 27
    Height = 13
    Caption = #23569#35009' '
  end
  object Label2: TLabel
    Left = 184
    Top = 24
    Width = 27
    Height = 13
    Caption = #25578#26495' '
  end
  object Label3: TLabel
    Left = 32
    Top = 51
    Width = 27
    Height = 13
    Caption = #27425#21697' '
  end
  object Label4: TLabel
    Left = 184
    Top = 51
    Width = 27
    Height = 13
    Caption = #36986#22833' '
  end
  object Label5: TLabel
    Left = 32
    Top = 110
    Width = 75
    Height = 13
    Caption = #20986#36008#21512#20849#23569#25976' '
  end
  object Label6: TLabel
    Left = 32
    Top = 78
    Width = 39
    Height = 13
    Caption = #36978#35036#26009' '
  end
  object Label7: TLabel
    Left = 184
    Top = 78
    Width = 39
    Height = 13
    Caption = #36978#36208#36008' '
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 24
    Width = 81
    Height = 21
    DataField = 'qty_cutless'
    DataSource = frmCarte_Ordprocessing.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 216
    Top = 24
    Width = 81
    Height = 21
    DataField = 'qty_sample'
    DataSource = frmCarte_Ordprocessing.DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 64
    Top = 51
    Width = 81
    Height = 21
    DataField = 'qty_defect'
    DataSource = frmCarte_Ordprocessing.DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 216
    Top = 51
    Width = 81
    Height = 21
    DataField = 'qty_lost'
    DataSource = frmCarte_Ordprocessing.DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 113
    Top = 110
    Width = 81
    Height = 21
    DataField = 'qty_short'
    DataSource = frmCarte_Ordprocessing.DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 144
    Width = 81
    Height = 25
    Caption = 'OK'
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
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object DBEdit6: TDBEdit
    Left = 72
    Top = 78
    Width = 81
    Height = 21
    DataField = 'qty_rep'
    DataSource = frmCarte_Ordprocessing.DataSource1
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 224
    Top = 78
    Width = 81
    Height = 21
    DataField = 'qty_delay'
    DataSource = frmCarte_Ordprocessing.DataSource1
    TabOrder = 7
  end
end
