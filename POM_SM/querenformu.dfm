object frmqueren: Tfrmqueren
  Left = 0
  Top = 0
  Caption = #30906#35469
  ClientHeight = 289
  ClientWidth = 329
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
  object Label1: TLabel
    Left = 59
    Top = 171
    Width = 39
    Height = 13
    Caption = #25812#30070#32773' '
  end
  object Label2: TLabel
    Left = 23
    Top = 203
    Width = 75
    Height = 13
    Caption = #21830#21697#35373#35336#20027#31649' '
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 281
    Height = 137
    Caption = #35352#20837#32773
    TabOrder = 0
    object Label3: TLabel
      Left = 61
      Top = 27
      Width = 14
      Height = 13
      Caption = '(1)'
    end
    object Label4: TLabel
      Left = 61
      Top = 54
      Width = 14
      Height = 13
      Caption = '(2)'
    end
    object Label5: TLabel
      Left = 61
      Top = 81
      Width = 14
      Height = 13
      Caption = '(3)'
    end
    object Label6: TLabel
      Left = 61
      Top = 108
      Width = 14
      Height = 13
      Caption = '(4)'
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 24
      Width = 153
      Height = 21
      DataField = 'User1'
      DataSource = frmsiztbl.DataSource7
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 51
      Width = 153
      Height = 21
      DataField = 'User2'
      DataSource = frmsiztbl.DataSource7
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 78
      Width = 153
      Height = 21
      DataField = 'User3'
      DataSource = frmsiztbl.DataSource7
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 105
      Width = 153
      Height = 21
      DataField = 'User4'
      DataSource = frmsiztbl.DataSource7
      ReadOnly = True
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 235
    Width = 81
    Height = 25
    Caption = #30906#35469
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
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBEdit5: TDBEdit
    Left = 104
    Top = 168
    Width = 153
    Height = 21
    DataField = 'User5'
    DataSource = frmsiztbl.DataSource7
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit6: TDBEdit
    Left = 104
    Top = 200
    Width = 153
    Height = 21
    DataField = 'User6'
    DataSource = frmsiztbl.DataSource7
    ReadOnly = True
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 235
    Width = 81
    Height = 25
    Caption = #36864#20986
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 268
    Top = 160
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 268
    Top = 208
  end
end
