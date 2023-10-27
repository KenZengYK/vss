unit worksheetsortingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, siComp;

type
  Tfrmworksheetsorting = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit6: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    ComboBox4: TComboBox;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    ComboBox5: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    siLang1: TsiLang;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure access_data;
    procedure show_data;
  end;

var
  frmworksheetsorting: Tfrmworksheetsorting;

implementation

uses mainformu, worksheet;

{$R *.dfm}

{ Tfrmworksheetsorting }

procedure Tfrmworksheetsorting.access_data;
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  worksheet1.edit6.Text:=edit1.text;
  worksheet1.Edit4.Text:=edit2.text;
  worksheet1.Edit2.Text:=edit3.text;
  worksheet1.ComboBox1.text:=combobox1.text;
  worksheet1.Edit7.Text:=edit4.text;
  worksheet1.Edit1.Text:=edit5.Text;
  worksheet1.edit8.Text:=edit6.text;
  worksheet1.ComboBox2.text:=combobox2.text;
  worksheet1.ComboBox3.text:=combobox3.text;
  worksheet1.Edit5.text:=edit7.text;
  worksheet1.Edit3.Text:=edit8.text;
  worksheet1.ComboBox4.text:=combobox4.text;
  worksheet1.ComboBox5.Text:=combobox5.text;
  //worksheet1.SpeedButton1click(self);
end;

procedure Tfrmworksheetsorting.BitBtn2Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=16 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[7].Visible:=false;
  worksheet1.cxView1.Bands[24].Visible:=true;
  for i:=27 to 29 do begin
    worksheet1.cxView1.Bands[i].Visible:=true;
  end;
  for i:=43 to 44 do begin
    worksheet1.cxView1.Bands[i].Visible:=true;
  end;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmworksheetsorting:=nil;
end;

procedure Tfrmworksheetsorting.BitBtn3Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=17 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=true;
  end;
  worksheet1.cxView1.Bands[31].Visible:=false;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.show_data;
begin
  worksheet1.SpeedButton1click(self);
  worksheet1.BringToFront;
  worksheet1.WindowState:=wsMaximized;
end;

procedure Tfrmworksheetsorting.BitBtn4Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=9 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[24].Visible:=true;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.BitBtn5Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=9 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[24].Visible:=true;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.BitBtn8Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=9 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[24].Visible:=true;
  worksheet1.cxView1.Bands[38].Visible:=true;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.BitBtn9Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=9 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[24].Visible:=true;
  worksheet1.cxView1.Bands[38].Visible:=true;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.BitBtn1Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=9 to 45 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[19].Visible:=true;
  worksheet1.cxView1.Bands[21].Visible:=true;
  worksheet1.cxView1.Bands[24].Visible:=true;
  worksheet1.cxView1.Bands[37].Visible:=true;
  worksheet1.cxView1.Bands[38].Visible:=true;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.BitBtn10Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  for i:=9 to 44 do begin
    worksheet1.cxView1.Bands[i].Visible:=false;
  end;
  worksheet1.cxView1.Bands[24].Visible:=true;
  worksheet1.cxView1.Bands[38].Visible:=true;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmworksheetsorting.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmworksheetsorting.BitBtn6Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  access_data;
  worksheet1.cxView1.Bands[19].Visible:=false;
  show_data;
  frmworksheetsorting.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
