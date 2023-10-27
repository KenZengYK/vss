unit sampletblu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, Db, DBTables, StdCtrls, Mask,
  Grids, DBGridEh, Buttons, ppDB, ppDBPipe, ppDBBDE,
  ppBands, myChkBox, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppModule, daDatMod, DBClient,
  ShellApi, variants, GridsEh, rxToolEdit, RXDBCtrl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit;

type
  Tfrmsampletbl = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label7: TLabel;
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBGridEh2: TDBGridEh;
    DBNavigator2: TDBNavigator;
    SpeedButton5: TSpeedButton;
    Label8: TLabel;
    DBEdit18: TDBEdit;
    Label9: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    SpeedButton6: TSpeedButton;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    Edit1: TEdit;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Table1: TClientDataSet;
    Table2: TClientDataSet;
    Table3: TClientDataSet;
    bastbl: TClientDataSet;
    Query1: TClientDataSet;
    Query5: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    Table2Stylno: TStringField;
    Table2Projno: TStringField;
    Table2Jobno: TStringField;
    Table2Size1: TStringField;
    Table2Size2: TStringField;
    Table2Size3: TStringField;
    Table2Size4: TStringField;
    Table2Size5: TStringField;
    Table2Size6: TStringField;
    Table2Size7: TStringField;
    Table2Size8: TStringField;
    Table2Size9: TStringField;
    Table2Size10: TStringField;
    Table2Size11: TStringField;
    Table2Size12: TStringField;
    Table2Csiz1: TStringField;
    Table2Csiz2: TStringField;
    Table2Csiz3: TStringField;
    Table2Csiz4: TStringField;
    Table2Csiz5: TStringField;
    Table2Csiz6: TStringField;
    Table2Csiz7: TStringField;
    Table2Csiz8: TStringField;
    Table2Csiz9: TStringField;
    Table2Csiz10: TStringField;
    Table2Csiz11: TStringField;
    Table2Csiz12: TStringField;
    Table2Size13: TStringField;
    Table2Size14: TStringField;
    Table2Size15: TStringField;
    Table2Size16: TStringField;
    Table2Size17: TStringField;
    Table2Size18: TStringField;
    Table2Size19: TStringField;
    Table2Size20: TStringField;
    Table2Size21: TStringField;
    Table2Size22: TStringField;
    Table2Size24: TStringField;
    Table2Csiz13: TStringField;
    Table2Csiz14: TStringField;
    Table2Csiz15: TStringField;
    Table2Csiz16: TStringField;
    Table2Csiz17: TStringField;
    Table2Csiz18: TStringField;
    Table2Csiz19: TStringField;
    Table2Csiz20: TStringField;
    Table2Csiz21: TStringField;
    Table2Csiz22: TStringField;
    Table2Csiz23: TStringField;
    Table2Csiz24: TStringField;
    Table2Size23: TStringField;
    Table2Size25: TStringField;
    Table2Size26: TStringField;
    Table2Size27: TStringField;
    Table2Size28: TStringField;
    Table2Size29: TStringField;
    Table2Size30: TStringField;
    Table2Size31: TStringField;
    Table2Size32: TStringField;
    Table2Size33: TStringField;
    Table2Size34: TStringField;
    Table2Size35: TStringField;
    Table2Size36: TStringField;
    Table2Csiz25: TStringField;
    Table2Csiz26: TStringField;
    Table2Csiz27: TStringField;
    Table2Csiz28: TStringField;
    Table2Csiz29: TStringField;
    Table2Csiz30: TStringField;
    Table2Csiz31: TStringField;
    Table2Csiz32: TStringField;
    Table2Csiz33: TStringField;
    Table2Csiz34: TStringField;
    Table2Csiz35: TStringField;
    Table2Csiz36: TStringField;
    Table3Stylno: TStringField;
    Table3Cde: TStringField;
    Table3Id: TIntegerField;
    Table3Projno: TStringField;
    Table3Jobno: TStringField;
    Table3Cmeas: TStringField;
    Table3Emeas: TStringField;
    Table3Uom: TStringField;
    Table3Methd: TStringField;
    Table3Tolerence: TStringField;
    Table3Rst1: TStringField;
    Table3Rst2: TStringField;
    Table3Rst3: TStringField;
    Table3Rst4: TStringField;
    Table3Rst5: TStringField;
    Table3Rst6: TStringField;
    Table3Rst7: TStringField;
    Table3Rst8: TStringField;
    Table3Rst9: TStringField;
    Table3Rst10: TStringField;
    Table3Rst11: TStringField;
    Table3Rst12: TStringField;
    Table3Diff1: TFloatField;
    Table3Diff2: TFloatField;
    Table3Diff3: TFloatField;
    Table3Diff4: TFloatField;
    Table3Diff5: TFloatField;
    Table3Diff6: TFloatField;
    Table3Diff7: TFloatField;
    Table3Diff8: TFloatField;
    Table3Diff9: TFloatField;
    Table3Diff10: TFloatField;
    Table3Diff11: TFloatField;
    Table3Diff12: TFloatField;
    Table3Flg1: TStringField;
    Table3Flg2: TStringField;
    Table3Rst13: TStringField;
    Table3Rst14: TStringField;
    Table3Rst15: TStringField;
    Table3Rst16: TStringField;
    Table3Rst17: TStringField;
    Table3Rst18: TStringField;
    Table3Rst19: TStringField;
    Table3Rst20: TStringField;
    Table3Rst21: TStringField;
    Table3Rst22: TStringField;
    Table3Rst23: TStringField;
    Table3Rst24: TStringField;
    Table3Diff13: TFloatField;
    Table3Diff14: TFloatField;
    Table3Diff15: TFloatField;
    Table3Diff16: TFloatField;
    Table3Diff17: TFloatField;
    Table3Diff18: TFloatField;
    Table3Diff19: TFloatField;
    Table3Diff20: TFloatField;
    Table3Diff21: TFloatField;
    Table3Diff22: TFloatField;
    Table3Diff23: TFloatField;
    Table3Diff24: TFloatField;
    Table3Rst25: TStringField;
    Table3Rst26: TStringField;
    Table3Rst27: TStringField;
    Table3Rst28: TStringField;
    Table3Rst29: TStringField;
    Table3Rst30: TStringField;
    Table3Rst31: TStringField;
    Table3Rst32: TStringField;
    Table3Rst33: TStringField;
    Table3Rst34: TStringField;
    Table3Rst35: TStringField;
    Table3Rst36: TStringField;
    Table3Diff25: TFloatField;
    Table3Diff26: TFloatField;
    Table3Diff27: TFloatField;
    Table3Diff28: TFloatField;
    Table3Diff29: TFloatField;
    Table3Diff30: TFloatField;
    Table3Diff31: TFloatField;
    Table3Diff32: TFloatField;
    Table3Diff33: TFloatField;
    Table3Diff34: TFloatField;
    Table3Diff35: TFloatField;
    Table3Diff36: TFloatField;
    Table3Kh: TBooleanField;
    Table3Emethd: TStringField;
    Table3Tmeas: TStringField;
    Table3Tmethd: TStringField;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    SpeedButton10: TSpeedButton;
    Image1: TImage;
    SpeedButton11: TSpeedButton;
    Image2: TImage;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    wwDBDateTimePicker1: TcxDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Table3CdeChange(Sender: TField);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure Table2AfterPost(DataSet: TDataSet);
    procedure Table3AfterPost(DataSet: TDataSet);
    procedure Table2Size1Change(Sender: TField);
    procedure Table2Size2Change(Sender: TField);
    procedure Table2Size3Change(Sender: TField);
    procedure Table2Size4Change(Sender: TField);
    procedure Table2Size5Change(Sender: TField);
    procedure Table2Size6Change(Sender: TField);
    procedure Table2Size7Change(Sender: TField);
    procedure Table2Size8Change(Sender: TField);
    procedure Table2Size9Change(Sender: TField);
    procedure Table2Size10Change(Sender: TField);
    procedure Table2Size11Change(Sender: TField);
    procedure Table2Size12Change(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBDateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Table2Size13Change(Sender: TField);
    procedure Table2Size14Change(Sender: TField);
    procedure Table2Size15Change(Sender: TField);
    procedure Table2Size16Change(Sender: TField);
    procedure Table2Size17Change(Sender: TField);
    procedure Table2Size18Change(Sender: TField);
    procedure Table2Size19Change(Sender: TField);
    procedure Table2Size20Change(Sender: TField);
    procedure Table2Size21Change(Sender: TField);
    procedure Table2Size22Change(Sender: TField);
    procedure Table2Size24Change(Sender: TField);
    procedure Table2Size23Change(Sender: TField);
    procedure Table2Size25Change(Sender: TField);
    procedure Table2Size26Change(Sender: TField);
    procedure Table2Size27Change(Sender: TField);
    procedure Table2Size28Change(Sender: TField);
    procedure Table2Size29Change(Sender: TField);
    procedure Table2Size30Change(Sender: TField);
    procedure Table2Size31Change(Sender: TField);
    procedure Table2Size32Change(Sender: TField);
    procedure Table2Size33Change(Sender: TField);
    procedure Table2Size34Change(Sender: TField);
    procedure Table2Size35Change(Sender: TField);
    procedure Table2Size36Change(Sender: TField);
    procedure Table3MethdChange(Sender: TField);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit36KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit57KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit61KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit66KeyPress(Sender: TObject; var Key: Char);
    procedure table2NewRecord(DataSet: TDataSet);
    procedure table3NewRecord(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit50KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit51KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit69KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit70KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit72KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit73KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit74KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit75KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit76KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit77KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit78KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure DBEdit9DblClick(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit20DblClick(Sender: TObject);
    procedure DBEdit21DblClick(Sender: TObject);
    procedure DBEdit22DblClick(Sender: TObject);
    procedure DBEdit23DblClick(Sender: TObject);
    procedure DBEdit24DblClick(Sender: TObject);
    procedure DBEdit25DblClick(Sender: TObject);
    procedure DBEdit32DblClick(Sender: TObject);
    procedure DBEdit33DblClick(Sender: TObject);
    procedure DBEdit34DblClick(Sender: TObject);
    procedure DBEdit35DblClick(Sender: TObject);
    procedure DBEdit36DblClick(Sender: TObject);
    procedure DBEdit37DblClick(Sender: TObject);
    procedure DBEdit38DblClick(Sender: TObject);
    procedure DBEdit39DblClick(Sender: TObject);
    procedure DBEdit40DblClick(Sender: TObject);
    procedure DBEdit41DblClick(Sender: TObject);
    procedure DBEdit42DblClick(Sender: TObject);
    procedure DBEdit43DblClick(Sender: TObject);
    procedure DBEdit56DblClick(Sender: TObject);
    procedure DBEdit57DblClick(Sender: TObject);
    procedure DBEdit58DblClick(Sender: TObject);
    procedure DBEdit59DblClick(Sender: TObject);
    procedure DBEdit60DblClick(Sender: TObject);
    procedure DBEdit61DblClick(Sender: TObject);
    procedure DBEdit62DblClick(Sender: TObject);
    procedure DBEdit63DblClick(Sender: TObject);
    procedure DBEdit64DblClick(Sender: TObject);
    procedure DBEdit65DblClick(Sender: TObject);
    procedure DBEdit66DblClick(Sender: TObject);
    procedure Table1BeforeDelete(DataSet: TDataSet);
    procedure Table2BeforeDelete(DataSet: TDataSet);
    procedure Table3BeforeDelete(DataSet: TDataSet);
    procedure Table1AfterScroll(DataSet: TDataSet);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Table1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsampletbl: Tfrmsampletbl;

implementation
uses  wzxzu, stcpy1u, mtolu, loginu, stylu, insertsiz1u, print2u;
{$R *.DFM}

procedure Tfrmsampletbl.FormShow(Sender: TObject);
begin
  with Table1 do begin
    close;
    open;
  end;
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r10 from SZ_athtbl where usr=:usr';
//    prepare;
    params[0].asstring:=frmlogin.combobox1.text;
    open;
    if fieldbyname('r10').value=true then begin
      speedbutton1.Enabled:=true;speedbutton2.Enabled:=true;speedbutton6.Enabled:=true;
      dbedit1.readonly:=false;dbedit2.ReadOnly:=false;dbedit3.ReadOnly:=false;
      dbedit4.ReadOnly:=false;dbedit5.ReadOnly:=false;dbmemo1.ReadOnly:=false;
      dbcheckbox1.ReadOnly:=false;dbcheckbox2.ReadOnly:=false;
    end
    else begin
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;speedbutton6.Enabled:=false;
      dbedit1.readonly:=true;dbedit2.ReadOnly:=true;dbedit3.ReadOnly:=true;
      dbedit4.ReadOnly:=true;dbedit5.ReadOnly:=true;dbmemo1.ReadOnly:=true;
      dbcheckbox1.ReadOnly:=true;dbcheckbox2.ReadOnly:=true;
    end;
  end;
  edit1.text:='';
  dbgrideh2.Columns[0].PickList.clear;
  bastbl.close;
  bastbl.open;
  bastbl.first;
  while not bastbl.eof do
  begin
    dbgrideh2.Columns[0].PickList.add(bastbl.fieldbyname('cde').value);
    bastbl.next;
  end;
  query1.close;
  query1.params.clear;
  query1.params.createparam(ftstring,'usr',ptinput);
  query1.commandtext:='select r6 from SZ_athtbl where usr=:usr';
//  query1.prepare;
  query1.params[0].asstring:=frmlogin.combobox1.text;
  query1.open;
  if query1.recordcount>0 then
  begin
    if query1.fieldbyname('r6').value=true then
     speedbutton7.enabled:=true
    else speedbutton7.enabled:=false;
  end
  else
  begin
    speedbutton7.enabled:=true;
  end;
  pagecontrol1.ActivePage:=tabsheet1;
  {(table3rst1 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst2 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst3 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst4 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst5 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst6 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst7 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst8 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst9 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst10 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst11 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst12 as tfloatfield).displayformat:='###0.0;;''';}
  (table3diff1 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff2 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff3 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff4 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff5 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff6 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff7 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff8 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff9 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff10 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff11 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff12 as tfloatfield).displayformat:='###0.0;;''';
  {(table3rst13 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst14 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst15 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst16 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst17 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst18 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst19 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst20 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst21 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst22 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst23 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst24 as tfloatfield).displayformat:='###0.0;;''';}
  (table3diff13 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff14 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff15 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff16 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff17 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff18 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff19 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff20 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff21 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff22 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff23 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff24 as tfloatfield).displayformat:='###0.0;;''';
  {(table3rst25 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst26 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst27 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst28 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst29 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst30 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst31 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst32 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst33 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst34 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst35 as tfloatfield).displayformat:='###0.0;;''';
  (table3rst36 as tfloatfield).displayformat:='###0.0;;''';}
  (table3diff25 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff26 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff27 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff28 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff29 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff30 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff31 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff32 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff33 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff34 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff35 as tfloatfield).displayformat:='###0.0;;''';
  (table3diff36 as tfloatfield).displayformat:='###0.0;;''';
end;

procedure Tfrmsampletbl.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsampletbl.SpeedButton1Click(Sender: TObject);
begin
  table1.append;
  dbedit1.setfocus;
end;

procedure Tfrmsampletbl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (table3.state=dsinsert) or (table3.state=dsedit) then
    table3.post;
  if (table2.state=dsinsert) or (table3.state=dsedit) then
    table2.post;
  if (table1.state=dsinsert) or (table3.state=dsedit) then
    table1.post;
end;

procedure Tfrmsampletbl.SpeedButton2Click(Sender: TObject);
begin
  if dbedit5.text<>'' then
  begin
    if application.messagebox('�n�R�����ڤؤo����?','���ܫH��',mb_iconquestion+mb_okcancel)=idok then
    begin
      query1.close;
      query1.params.clear;
      query1.params.createparam(ftstring,'stylno',ptinput);
      query1.commandtext:='delete from SZ_sampsize1 where stylno=:stylno';
//      query1.prepare;
      query1.params[0].asstring:=dbedit5.text;
      query1.Execute;
      query1.close;
      query1.params.clear;
      query1.params.createparam(ftstring,'stylno',ptinput);
      query1.commandtext:='delete from SZ_sampsize2 where stylno=:stylno';
//      query1.prepare;
      query1.params[0].asstring:=dbedit5.text;
      query1.Execute;
      table1.delete;
    end;
  end;
end;

procedure Tfrmsampletbl.TabSheet1Exit(Sender: TObject);
begin
  if (table1.state=dsinsert) or (table1.state=dsedit) then
    table1.post;
end;

procedure Tfrmsampletbl.TabSheet2Exit(Sender: TObject);
begin
  if (table2.state=dsinsert) or (table2.state=dsedit) then
    table2.post;
end;

procedure Tfrmsampletbl.TabSheet3Exit(Sender: TObject);
begin
  if (table3.state=dsinsert) or (table3.state=dsedit) then
    table3.post;
end;

procedure Tfrmsampletbl.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    sendmessage(dbgrideh2.handle,wm_keydown,vk_tab,0);
  end;
end;

procedure Tfrmsampletbl.Table3CdeChange(Sender: TField);
begin
  if not table3cde.isnull then
  begin
    query1.close;
    query1.params.clear;
    query1.params.createparam(ftstring,'cde',ptinput);
    query1.commandtext:='select cmeas,emeas,uom,methd,tolerence from SZ_bastbl where cde=:cde';
//    query1.prepare;
    query1.params[0].asstring:=table3cde.value;
    query1.open;
    if query1.recordcount>1 then
    begin
      if frmwzxz=nil then frmwzxz:=tfrmwzxz.create(self);
      frmwzxz.label1.caption:='sampletbl';
      frmwzxz.show;
    end
    else
    begin
     if not query1.fieldbyname('cmeas').isnull then
      table3cmeas.value:=query1.fieldbyname('cmeas').value;
     if not query1.fieldbyname('emeas').isnull then
      table3emeas.value:=query1.fieldbyname('emeas').value;
     if not query1.fieldbyname('uom').isnull then
      table3uom.value:=query1.fieldbyname('uom').value;
     if not query1.fieldbyname('methd').isnull then
      table3methd.value:=query1.fieldbyname('methd').value;
     if not query1.fieldbyname('tolerence').isnull then
      table3tolerence.value:=query1.fieldbyname('tolerence').value;
    end;
  end;
end;

procedure Tfrmsampletbl.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
  Table1AfterScroll(nil);
end;

procedure Tfrmsampletbl.Table2AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmsampletbl.Table3AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmsampletbl.Table2Size1Change(Sender: TField);
begin
  if not table2size1.isnull then
    table2csiz1.value:=table2size1.Value;
end;

procedure Tfrmsampletbl.Table2Size2Change(Sender: TField);
begin
  if not table2size2.isnull then
    table2csiz2.value:=table2size2.Value;
end;

procedure Tfrmsampletbl.Table2Size3Change(Sender: TField);
begin
  if not table2size3.isnull then
    table2csiz3.value:=table2size3.Value;
end;

procedure Tfrmsampletbl.Table2Size4Change(Sender: TField);
begin
  if not table2size4.isnull then
    table2csiz4.value:=table2size4.Value;
end;

procedure Tfrmsampletbl.Table2Size5Change(Sender: TField);
begin
  if not table2size5.isnull then
    table2csiz5.value:=table2size5.Value;
end;

procedure Tfrmsampletbl.Table2Size6Change(Sender: TField);
begin
  if not table2size6.isnull then
    table2csiz6.value:=table2size6.Value;
end;

procedure Tfrmsampletbl.Table2Size7Change(Sender: TField);
begin
  if not table2size7.isnull then
    table2csiz7.value:=table2size7.Value;
end;

procedure Tfrmsampletbl.Table2Size8Change(Sender: TField);
begin
  if not table2size8.isnull then
    table2csiz8.value:=table2size8.Value;
end;

procedure Tfrmsampletbl.Table2Size9Change(Sender: TField);
begin
  if not table2size9.isnull then
    table2csiz9.value:=table2size9.Value;
end;

procedure Tfrmsampletbl.Table2Size10Change(Sender: TField);
begin
  if not table2size10.isnull then
    table2csiz10.value:=table2size10.Value;
end;

procedure Tfrmsampletbl.Table2Size11Change(Sender: TField);
begin
  if not table2size11.isnull then
    table2csiz11.value:=table2size11.Value;
end;

procedure Tfrmsampletbl.Table2Size12Change(Sender: TField);
begin
  if not table2size12.isnull then
    table2csiz12.value:=table2size12.Value;
end;

procedure Tfrmsampletbl.PageControl1Change(Sender: TObject);
begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r10 from SZ_athtbl where usr=:usr';
//    prepare;
    params[0].asstring:=frmlogin.combobox1.text;
    open;
    if fieldbyname('r10').value=true then begin
      speedbutton1.Enabled:=true;speedbutton2.Enabled:=true;speedbutton6.Enabled:=true;
      dbedit1.readonly:=false;dbedit2.ReadOnly:=false;dbedit3.ReadOnly:=false;
      dbedit4.ReadOnly:=false;dbedit5.ReadOnly:=false;dbmemo1.ReadOnly:=false;
      dbcheckbox1.ReadOnly:=false;dbcheckbox2.ReadOnly:=false;speedbutton8.Enabled:=true;speedbutton9.Enabled:=true;dbgrideh2.ReadOnly:=false;
      dbedit6.readonly:=false;dbedit7.readonly:=false;dbedit8.readonly:=false;dbedit9.readonly:=false;
      dbedit10.readonly:=false;dbedit20.readonly:=false;dbedit21.readonly:=false;dbedit22.readonly:=false;
      dbedit23.readonly:=false;dbedit24.readonly:=false;dbedit25.readonly:=false;dbedit32.readonly:=false;
      dbedit33.readonly:=false;dbedit34.readonly:=false;dbedit35.readonly:=false;dbedit36.readonly:=false;
      dbedit37.readonly:=false;dbedit38.readonly:=false;dbedit39.readonly:=false;dbedit40.readonly:=false;
    end
    else begin
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;speedbutton6.Enabled:=false;
      dbedit1.readonly:=true;dbedit2.ReadOnly:=true;dbedit3.ReadOnly:=true;
      dbedit4.ReadOnly:=true;dbedit5.ReadOnly:=true;dbmemo1.ReadOnly:=true;
      dbcheckbox1.ReadOnly:=true;dbcheckbox2.ReadOnly:=true;speedbutton8.Enabled:=false;speedbutton9.Enabled:=false;dbgrideh2.ReadOnly:=true;
      dbedit6.readonly:=true;dbedit7.readonly:=true;dbedit8.readonly:=true;dbedit9.readonly:=true;
      dbedit10.readonly:=true;dbedit20.readonly:=true;dbedit21.readonly:=true;dbedit22.readonly:=true;
      dbedit23.readonly:=true;dbedit24.readonly:=true;dbedit25.readonly:=true;dbedit32.readonly:=true;
      dbedit33.readonly:=true;dbedit34.readonly:=true;dbedit35.readonly:=true;dbedit36.readonly:=true;
      dbedit37.readonly:=true;dbedit38.readonly:=true;dbedit39.readonly:=true;dbedit40.readonly:=true;
    end;
  end;
  if pagecontrol1.activepage=tabsheet3 then
  begin
    if table1.recordcount>0 then
    begin
     query2.close;
     query2.params.clear;
     query2.params.createparam(ftstring,'stylno',ptinput);
     query2.commandtext:='select * from SZ_sampsize2 where stylno=:stylno';
//     query2.prepare;
     query2.params[0].asstring:=table1.fieldbyname('stylno').value;
     query2.open;
     if query2.recordcount>0 then
     begin
      if not query2.fieldbyname('size1').isnull then
       dbgrideh2.Columns[6].Title.caption:='�ؽX|'+query2.fieldbyname('size1').value
      else dbgrideh2.columns[6].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size2').isnull then
       dbgrideh2.Columns[7].Title.caption:='�ؽX|'+query2.fieldbyname('size2').value
      else dbgrideh2.columns[7].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size3').isnull then
       dbgrideh2.Columns[8].Title.caption:='�ؽX|'+query2.fieldbyname('size3').value
      else dbgrideh2.columns[8].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size4').isnull then
       dbgrideh2.Columns[9].Title.caption:='�ؽX|'+query2.fieldbyname('size4').value
      else dbgrideh2.columns[9].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size5').isnull then
       dbgrideh2.Columns[10].Title.caption:='�ؽX|'+query2.fieldbyname('size5').value
      else dbgrideh2.columns[10].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size6').isnull then
       dbgrideh2.Columns[11].Title.caption:='�ؽX|'+query2.fieldbyname('size6').value
      else dbgrideh2.columns[11].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size7').isnull then
       dbgrideh2.Columns[19].Title.caption:='�ؽX|'+query2.fieldbyname('size7').value
      else dbgrideh2.columns[19].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size8').isnull then
       dbgrideh2.Columns[20].Title.caption:='�ؽX|'+query2.fieldbyname('size8').value
      else dbgrideh2.columns[20].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size9').isnull then
       dbgrideh2.Columns[21].Title.caption:='�ؽX|'+query2.fieldbyname('size9').value
      else dbgrideh2.columns[21].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size10').isnull then
       dbgrideh2.Columns[22].Title.caption:='�ؽX|'+query2.fieldbyname('size10').value
      else dbgrideh2.columns[22].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size11').isnull then
       dbgrideh2.Columns[23].Title.caption:='�ؽX|'+query2.fieldbyname('size11').value
      else dbgrideh2.columns[23].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size12').isnull then
       dbgrideh2.Columns[24].Title.caption:='�ؽX|'+query2.fieldbyname('size12').value
      else dbgrideh2.columns[24].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size13').isnull then
       dbgrideh2.Columns[32].Title.caption:='�ؽX|'+query2.fieldbyname('size13').value
      else dbgrideh2.columns[32].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size14').isnull then
       dbgrideh2.Columns[33].Title.caption:='�ؽX|'+query2.fieldbyname('size14').value
      else dbgrideh2.columns[33].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size15').isnull then
       dbgrideh2.Columns[34].Title.caption:='�ؽX|'+query2.fieldbyname('size15').value
      else dbgrideh2.columns[34].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size16').isnull then
       dbgrideh2.Columns[35].Title.caption:='�ؽX|'+query2.fieldbyname('size16').value
      else dbgrideh2.columns[35].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size17').isnull then
       dbgrideh2.Columns[36].Title.caption:='�ؽX|'+query2.fieldbyname('size17').value
      else dbgrideh2.columns[36].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size18').isnull then
       dbgrideh2.Columns[37].Title.caption:='�ؽX|'+query2.fieldbyname('size18').value
      else dbgrideh2.columns[37].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size19').isnull then
       dbgrideh2.Columns[44].Title.caption:='�ؽX|'+query2.fieldbyname('size19').value
      else dbgrideh2.columns[44].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size20').isnull then
       dbgrideh2.Columns[45].Title.caption:='�ؽX|'+query2.fieldbyname('size20').value
      else dbgrideh2.columns[45].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size21').isnull then
       dbgrideh2.Columns[46].Title.caption:='�ؽX|'+query2.fieldbyname('size21').value
      else dbgrideh2.columns[46].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size22').isnull then
       dbgrideh2.Columns[47].Title.caption:='�ؽX|'+query2.fieldbyname('size22').value
      else dbgrideh2.columns[47].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size23').isnull then
       dbgrideh2.Columns[48].Title.caption:='�ؽX|'+query2.fieldbyname('size23').value
      else dbgrideh2.columns[48].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size24').isnull then
       dbgrideh2.Columns[49].Title.caption:='�ؽX|'+query2.fieldbyname('size24').value
      else dbgrideh2.columns[49].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size25').isnull then
       dbgrideh2.Columns[56].Title.caption:='�ؽX|'+query2.fieldbyname('size25').value
      else dbgrideh2.columns[56].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size26').isnull then
       dbgrideh2.Columns[57].Title.caption:='�ؽX|'+query2.fieldbyname('size26').value
      else dbgrideh2.columns[57].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size27').isnull then
       dbgrideh2.Columns[58].Title.caption:='�ؽX|'+query2.fieldbyname('size27').value
      else dbgrideh2.columns[58].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size28').isnull then
       dbgrideh2.Columns[59].Title.caption:='�ؽX|'+query2.fieldbyname('size28').value
      else dbgrideh2.columns[59].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size29').isnull then
       dbgrideh2.Columns[60].Title.caption:='�ؽX|'+query2.fieldbyname('size29').value
      else dbgrideh2.columns[60].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size30').isnull then
       dbgrideh2.Columns[61].Title.caption:='�ؽX|'+query2.fieldbyname('size30').value
      else dbgrideh2.columns[61].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size31').isnull then
       dbgrideh2.Columns[68].Title.caption:='�ؽX|'+query2.fieldbyname('size31').value
      else dbgrideh2.columns[68].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size32').isnull then
       dbgrideh2.Columns[69].Title.caption:='�ؽX|'+query2.fieldbyname('size32').value
      else dbgrideh2.columns[69].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size33').isnull then
       dbgrideh2.Columns[70].Title.caption:='�ؽX|'+query2.fieldbyname('size33').value
      else dbgrideh2.columns[70].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size34').isnull then
       dbgrideh2.Columns[71].Title.caption:='�ؽX|'+query2.fieldbyname('size34').value
      else dbgrideh2.columns[71].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size35').isnull then
       dbgrideh2.Columns[72].Title.caption:='�ؽX|'+query2.fieldbyname('size35').value
      else dbgrideh2.columns[72].title.caption:='�ؽX| ';
      if not query2.fieldbyname('size36').isnull then
       dbgrideh2.Columns[73].Title.caption:='�ؽX|'+query2.fieldbyname('size36').value
      else dbgrideh2.columns[73].title.caption:='�ؽX| ';
     end;
    end;
  end
  else begin
    if pagecontrol1.activepage=tabsheet2 then begin
      if table2.fieldbyname('stylno').isnull then begin
        table2.append;
        table2.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
        table2.post;
      end;
      table2.locate('stylno',vararrayof([table1.fieldbyname('stylno').value]),[lopartialkey]);
    end;
  end;
  DataSource1Datachange(nil,nil);
end;

procedure Tfrmsampletbl.SpeedButton3Click(Sender: TObject);
begin
  if frmprint2=nil then frmprint2:=tfrmprint2.create(self);
  frmprint2.label1.caption:='sampletbl';
  frmprint2.show;
end;

procedure Tfrmsampletbl.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit2.setfocus;
end;

procedure Tfrmsampletbl.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  wwdbdatetimepicker1.setfocus;
end;

procedure Tfrmsampletbl.wwDBDateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then  dbedit3.setfocus;
end;

procedure Tfrmsampletbl.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit4.setfocus;
end;

procedure Tfrmsampletbl.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit5.setfocus;
end;

procedure Tfrmsampletbl.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbmemo1.setfocus;
end;

procedure Tfrmsampletbl.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit7.setfocus;
end;

procedure Tfrmsampletbl.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit8.setfocus;
end;

procedure Tfrmsampletbl.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit9.setfocus;
end;

procedure Tfrmsampletbl.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit10.setfocus;
end;

procedure Tfrmsampletbl.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit11.setfocus;
end;

procedure Tfrmsampletbl.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit20.setfocus;
end;

procedure Tfrmsampletbl.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit21.setfocus;
end;

procedure Tfrmsampletbl.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit22.setfocus;
end;

procedure Tfrmsampletbl.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit23.setfocus;
end;

procedure Tfrmsampletbl.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit24.setfocus;
end;

procedure Tfrmsampletbl.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit25.setfocus;
end;

procedure Tfrmsampletbl.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit32.setfocus;
end;

procedure Tfrmsampletbl.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit13.setfocus;
end;

procedure Tfrmsampletbl.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit14.setfocus;
end;

procedure Tfrmsampletbl.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit15.setfocus;
end;

procedure Tfrmsampletbl.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit16.setfocus;
end;

procedure Tfrmsampletbl.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit17.setfocus;
end;

procedure Tfrmsampletbl.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit26.setfocus;
end;

procedure Tfrmsampletbl.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit27.setfocus;
end;

procedure Tfrmsampletbl.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit28.setfocus;
end;

procedure Tfrmsampletbl.DBEdit28KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit29.setfocus;
end;

procedure Tfrmsampletbl.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit30.setfocus;
end;

procedure Tfrmsampletbl.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit31.setfocus;
end;

procedure Tfrmsampletbl.SpeedButton6Click(Sender: TObject);
begin
  if frmstcpy1=nil then frmstcpy1:=tfrmstcpy1.create(self);
  frmstcpy1.show;
end;

procedure Tfrmsampletbl.Table2Size13Change(Sender: TField);
begin
  if not table2size13.isnull then
    table2csiz13.value:=table2size13.Value;
end;

procedure Tfrmsampletbl.Table2Size14Change(Sender: TField);
begin
  if not table2size14.isnull then
    table2csiz14.value:=table2size14.Value;
end;

procedure Tfrmsampletbl.Table2Size15Change(Sender: TField);
begin
  if not table2size15.isnull then
    table2csiz15.value:=table2size15.Value;
end;

procedure Tfrmsampletbl.Table2Size16Change(Sender: TField);
begin
  if not table2size16.isnull then
    table2csiz16.value:=table2size16.Value;
end;

procedure Tfrmsampletbl.Table2Size17Change(Sender: TField);
begin
  if not table2size17.isnull then
    table2csiz17.value:=table2size17.Value;
end;

procedure Tfrmsampletbl.Table2Size18Change(Sender: TField);
begin
  if not table2size18.isnull then
    table2csiz18.value:=table2size18.Value;
end;

procedure Tfrmsampletbl.Table2Size19Change(Sender: TField);
begin
  if not table2size19.isnull then
    table2csiz19.value:=table2size19.Value;
end;

procedure Tfrmsampletbl.Table2Size20Change(Sender: TField);
begin
  if not table2size20.isnull then
    table2csiz20.value:=table2size20.Value;
end;

procedure Tfrmsampletbl.Table2Size21Change(Sender: TField);
begin
  if not table2size21.isnull then
    table2csiz21.value:=table2size21.Value;
end;

procedure Tfrmsampletbl.Table2Size22Change(Sender: TField);
begin
  if not table2size22.isnull then
    table2csiz22.value:=table2size22.Value;
end;

procedure Tfrmsampletbl.Table2Size24Change(Sender: TField);
begin
  if not table2size24.isnull then
    table2csiz24.value:=table2size24.Value;
end;

procedure Tfrmsampletbl.Table2Size23Change(Sender: TField);
begin
  if not table2size23.isnull then
    table2csiz23.value:=table2size23.Value;
end;

procedure Tfrmsampletbl.Table2Size25Change(Sender: TField);
begin
  if not table2size25.isnull then
    table2csiz25.value:=table2size25.Value;
end;

procedure Tfrmsampletbl.Table2Size26Change(Sender: TField);
begin
  if not table2size26.isnull then
    table2csiz26.value:=table2size26.Value;
end;

procedure Tfrmsampletbl.Table2Size27Change(Sender: TField);
begin
  if not table2size27.isnull then
    table2csiz27.value:=table2size27.Value;
end;

procedure Tfrmsampletbl.Table2Size28Change(Sender: TField);
begin
  if not table2size28.isnull then
    table2csiz28.value:=table2size28.Value;
end;

procedure Tfrmsampletbl.Table2Size29Change(Sender: TField);
begin
  if not table2size29.isnull then
    table2csiz29.value:=table2size29.Value;
end;

procedure Tfrmsampletbl.Table2Size30Change(Sender: TField);
begin
  if not table2size30.isnull then
    table2csiz30.value:=table2size30.Value;
end;

procedure Tfrmsampletbl.Table2Size31Change(Sender: TField);
begin
  if not table2size31.isnull then
    table2csiz31.value:=table2size31.Value;
end;

procedure Tfrmsampletbl.Table2Size32Change(Sender: TField);
begin
  if not table2size32.isnull then
    table2csiz32.value:=table2size32.Value;
end;

procedure Tfrmsampletbl.Table2Size33Change(Sender: TField);
begin
  if not table2size33.isnull then
    table2csiz33.value:=table2size33.Value;
end;

procedure Tfrmsampletbl.Table2Size34Change(Sender: TField);
begin
  if not table2size34.isnull then
    table2csiz34.value:=table2size34.Value;
end;

procedure Tfrmsampletbl.Table2Size35Change(Sender: TField);
begin
  if not table2size35.isnull then
    table2csiz35.value:=table2size35.Value;
end;

procedure Tfrmsampletbl.Table2Size36Change(Sender: TField);
begin
  if not table2size36.isnull then
    table2csiz36.value:=table2size36.Value;
end;

procedure Tfrmsampletbl.Table3MethdChange(Sender: TField);
begin
  if not table3methd.IsNull then
  begin
    if table3methd.value='����' then
    begin
      table3emethd.Value:='Flat';
    end
    else
    begin
     if table3methd.value='����' then
     begin
      table3emethd.value:='Slant';
     end
     else
     begin
      if table3methd.value='����' then
      begin
       table3emethd.value:='Strt.';
      end
      else
      begin
       if table3methd.value='���' then
        table3emethd.value:='Refl.'
       else if table3methd.value='�ԫ�' then
        table3emethd.value:='Stre.'
       else table3emethd.value:='';
      end;
     end;
    end;
  end
  else
  begin
    table3emethd.value:='';
  end;
end;

procedure Tfrmsampletbl.SpeedButton7Click(Sender: TObject);
begin
  if not dbgrideh2.fields[0].isnull then
  begin
    if frmmtol=nil then frmmtol:=tfrmmtol.create(self);
    if not table3.fieldbyname('tolerence').isnull then
     frmmtol.edit2.text:=table3.fieldbyname('tolerence').value;
    frmmtol.label4.caption:='samp';
    frmmtol.show;
  end;
end;

procedure Tfrmsampletbl.SpeedButton12Click(Sender: TObject);
begin
  if frmstyl=nil then frmstyl:=tfrmstyl.create(self);
  frmstyl.label2.caption:='samp';
  frmstyl.show;
end;

procedure Tfrmsampletbl.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit33.setfocus;
end;

procedure Tfrmsampletbl.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit34.setfocus;
end;

procedure Tfrmsampletbl.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit35.setfocus;
end;

procedure Tfrmsampletbl.DBEdit35KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit36.setfocus;
end;

procedure Tfrmsampletbl.DBEdit36KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit37.setfocus;
end;

procedure Tfrmsampletbl.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit38.setfocus;
end;

procedure Tfrmsampletbl.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit39.setfocus;
end;

procedure Tfrmsampletbl.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit40.setfocus;
end;

procedure Tfrmsampletbl.DBEdit40KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit41.setfocus;
end;

procedure Tfrmsampletbl.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit42.setfocus;
end;

procedure Tfrmsampletbl.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit43.setfocus;
end;

procedure Tfrmsampletbl.DBEdit43KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit56.setfocus;
end;

procedure Tfrmsampletbl.DBEdit56KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit57.setfocus;
end;

procedure Tfrmsampletbl.DBEdit57KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit58.setfocus;
end;

procedure Tfrmsampletbl.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit59.setfocus;
end;

procedure Tfrmsampletbl.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit60.setfocus;
end;

procedure Tfrmsampletbl.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit61.setfocus;
end;

procedure Tfrmsampletbl.DBEdit61KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit62.setfocus;
end;

procedure Tfrmsampletbl.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit63.setfocus;
end;

procedure Tfrmsampletbl.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit64.setfocus;
end;

procedure Tfrmsampletbl.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit65.setfocus;
end;

procedure Tfrmsampletbl.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit66.setfocus;
end;

procedure Tfrmsampletbl.DBEdit66KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit67.setfocus;
end;

procedure Tfrmsampletbl.table2NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
end;

procedure Tfrmsampletbl.table3NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('id').value:=GetSeq('sz_sampsize1','id');
  dataset.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
  dataset.fieldbyname('kh').value:=False;  
end;

procedure Tfrmsampletbl.Edit1Change(Sender: TObject);
begin
  table1.locate('stylno',vararrayof([edit1.text]),[lopartialkey]);
end;

procedure Tfrmsampletbl.SpeedButton8Click(Sender: TObject);
begin
  table3.append;
end;

procedure Tfrmsampletbl.SpeedButton9Click(Sender: TObject);
begin
    if application.messagebox('�n�R�����ؤo��?','���ܫH��',mb_iconquestion+mb_okcancel)=idok then
    begin
      table3.delete;
    end;
end;

procedure Tfrmsampletbl.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit44.setfocus;
end;

procedure Tfrmsampletbl.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit45.setfocus;
end;

procedure Tfrmsampletbl.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit46.setfocus;
end;

procedure Tfrmsampletbl.DBEdit46KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit47.setfocus;
end;

procedure Tfrmsampletbl.DBEdit47KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit48.setfocus;
end;

procedure Tfrmsampletbl.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit49.setfocus;
end;

procedure Tfrmsampletbl.DBEdit49KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit50.setfocus;
end;

procedure Tfrmsampletbl.DBEdit50KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit51.setfocus;
end;

procedure Tfrmsampletbl.DBEdit51KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit52.setfocus;
end;

procedure Tfrmsampletbl.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit53.setfocus;
end;

procedure Tfrmsampletbl.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit54.setfocus;
end;

procedure Tfrmsampletbl.DBEdit54KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit55.setfocus;
end;

procedure Tfrmsampletbl.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit68.setfocus;
end;

procedure Tfrmsampletbl.DBEdit68KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit69.setfocus;
end;

procedure Tfrmsampletbl.DBEdit69KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit70.setfocus;
end;

procedure Tfrmsampletbl.DBEdit70KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit71.setfocus;
end;

procedure Tfrmsampletbl.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit72.setfocus;
end;

procedure Tfrmsampletbl.DBEdit72KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit73.setfocus;
end;

procedure Tfrmsampletbl.DBEdit73KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit74.setfocus;
end;

procedure Tfrmsampletbl.DBEdit74KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit75.setfocus;
end;

procedure Tfrmsampletbl.DBEdit75KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit76.setfocus;
end;

procedure Tfrmsampletbl.DBEdit76KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit77.setfocus;
end;

procedure Tfrmsampletbl.DBEdit77KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit78.setfocus;
end;

procedure Tfrmsampletbl.DBEdit78KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit79.setfocus;
end;

procedure Tfrmsampletbl.DBEdit6DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit6.text;
  frminsertsiz1.label5.caption:='1';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit7DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit7.text;
  frminsertsiz1.label5.caption:='2';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit8DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit8.text;
  frminsertsiz1.label5.caption:='3';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit9DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit9.text;
  frminsertsiz1.label5.caption:='4';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit10DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit10.text;
  frminsertsiz1.label5.caption:='5';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit11DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit11.text;
  frminsertsiz1.label5.caption:='6';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit20DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit20.text;
  frminsertsiz1.label5.caption:='7';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit21DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit21.text;
  frminsertsiz1.label5.caption:='8';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit22DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit22.text;
  frminsertsiz1.label5.caption:='9';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit23DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit23.text;
  frminsertsiz1.label5.caption:='10';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit24DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit24.text;
  frminsertsiz1.label5.caption:='11';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit25DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit25.text;
  frminsertsiz1.label5.caption:='12';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit32DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit32.text;
  frminsertsiz1.label5.caption:='13';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit33DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit33.text;
  frminsertsiz1.label5.caption:='14';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit34DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit34.text;
  frminsertsiz1.label5.caption:='15';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit35DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit35.text;
  frminsertsiz1.label5.caption:='16';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit36DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit36.text;
  frminsertsiz1.label5.caption:='17';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit37DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit37.text;
  frminsertsiz1.label5.caption:='18';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit38DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit38.text;
  frminsertsiz1.label5.caption:='19';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit39DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit39.text;
  frminsertsiz1.label5.caption:='20';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit40DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit40.text;
  frminsertsiz1.label5.caption:='21';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit41DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit41.text;
  frminsertsiz1.label5.caption:='22';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit42DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit42.text;
  frminsertsiz1.label5.caption:='23';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit43DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit43.text;
  frminsertsiz1.label5.caption:='24';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit56DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit56.text;
  frminsertsiz1.label5.caption:='25';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit57DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit57.text;
  frminsertsiz1.label5.caption:='26';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit58DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit58.text;
  frminsertsiz1.label5.caption:='27';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit59DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit59.text;
  frminsertsiz1.label5.caption:='28';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit60DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit60.text;
  frminsertsiz1.label5.caption:='29';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit61DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit61.text;
  frminsertsiz1.label5.caption:='30';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit62DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit62.text;
  frminsertsiz1.label5.caption:='31';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit63DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit63.text;
  frminsertsiz1.label5.caption:='32';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit64DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit64.text;
  frminsertsiz1.label5.caption:='33';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit65DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit65.text;
  frminsertsiz1.label5.caption:='34';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.DBEdit66DblClick(Sender: TObject);
begin
  if frminsertsiz1=nil then frminsertsiz1:=tfrminsertsiz1.create(self);
  frminsertsiz1.label2.caption:=dbedit66.text;
  frminsertsiz1.label5.caption:='35';
  frminsertsiz1.show;
end;

procedure Tfrmsampletbl.Table1BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet);
end;

procedure Tfrmsampletbl.Table2BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet);
end;

procedure Tfrmsampletbl.Table3BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet);
end;

procedure Tfrmsampletbl.Table1AfterScroll(DataSet: TDataSet);
var
  stylno:string;
begin
  if not Table1.FieldByName('stylno').isnull then stylno:=Table1.FieldByName('stylno').asstring else exit;
  with Table2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'stylno',ptinput);
    commandtext:='select * from sz_sampsize2 where stylno=:stylno';
    params[0].asstring:=Stylno;
    open;
  end;
  with Table3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'stylno',ptinput);
    commandtext:='select * from sz_sampsize1 where stylno=:stylno';
    params[0].asstring:=Stylno;
    open;
  end;
end;

procedure Tfrmsampletbl.SpeedButton10Click(Sender: TObject);
begin
  if opendialog1.execute then
  begin
   if pos('-',opendialog1.filename)>0 then begin
     application.MessageBox('�����W�D�k,�Э��s�R�W�έ��s��ܹϤ����!','ĵ�i',mb_iconwarning);
   end
   else begin
    image1.picture.loadfromfile(opendialog1.filename);
    Table1.edit;
    Table1.fieldbyname('tpwj1').value:=opendialog1.filename;//openpicturedialog1.FileName;
    Table1.post;
   end;
  end;
end;

procedure Tfrmsampletbl.FormCreate(Sender: TObject);
begin
  opendialog1.Filter := GraphicFilter(TGraphic);
  DragAcceptFiles(Handle, True);
end;

procedure Tfrmsampletbl.SpeedButton11Click(Sender: TObject);
begin
  if opendialog1.execute then
  begin
   if pos('-',opendialog1.filename)>0 then begin
     application.MessageBox('�����W�D�k,�Э��s�R�W�έ��s��ܹϤ����!','ĵ�i',mb_iconwarning);
   end
   else begin
    image2.picture.loadfromfile(opendialog1.filename);
    Table1.edit;
    Table1.fieldbyname('tpwj2').value:=opendialog1.filename;//openpicturedialog1.FileName;
    Table1.post;
   end;
  end;
end;

procedure Tfrmsampletbl.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if pagecontrol1.ActivePage=tabsheet4 then begin
   try
    if (not Table1.fieldbyname('tpwj1').isnull) and (Table1.fieldbyname('tpwj1').value<>'')  then
    begin
      image1.Picture.LoadfromFile(Table1.fieldbyname('tpwj1').asstring);
    end else image1.picture:=nil;
   except
    image1.picture:=nil;
   end;
  end
  else if pagecontrol1.ActivePage=tabsheet5 then begin
   try
    if (not Table1.fieldbyname('tpwj2').isnull) and (Table1.fieldbyname('tpwj2').value<>'')  then
    begin
      image2.Picture.LoadfromFile(Table1.fieldbyname('tpwj2').asstring);
    end else image2.picture:=nil;
   except
    image2.picture:=nil;
   end;
  end;
end;

procedure Tfrmsampletbl.Table1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cprov').value:=False;
  DataSet.FieldByName('pprov').value:=False;  
end;

end.
