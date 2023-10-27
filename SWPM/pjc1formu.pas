unit pjc1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmpjc1 = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query1SEQ: TIntegerField;
    Query1CUST: TStringField;
    Query1CSTYLE: TStringField;
    Query1ACOL: TStringField;
    Query1QTY: TIntegerField;
    Query1ORN: TStringField;
    Query1JHRS: TStringField;
    Query1PJC1: TStringField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Query1JHRS1: TStringField;
    Query1JHRS2: TStringField;
    Query1FLAG6: TStringField;
    Query1DCDATE: TStringField;
    Query1SHPM: TStringField;
    Query1TOUT: TBooleanField;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Query1TPLANT: TStringField;
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpjc1: Tfrmpjc1;

implementation

uses mainformu, sloaformu, pjc1_1formu;

{$R *.dfm}

procedure Tfrmpjc1.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmpjc1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpjc1:=nil;
end;

procedure Tfrmpjc1.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmpjc1.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tbl_ord_prj';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('cust').value:=combobox1.text;
  query1.fieldbyname('pjc1').value:=combobox3.text;
  query1.fieldbyname('tplant').value:=combobox4.text;
end;

procedure Tfrmpjc1.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=1;
  query1.Append;
end;

procedure Tfrmpjc1.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_ord_prj where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmpjc1.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmpjc1.BitBtn4Click(Sender: TObject);
begin
  {
  screen.Cursor:=crSQLWait;
  try
  finally
    screen.Cursor:=crDefault;
  end;
  }
  if frmpjc1_1=nil then frmpjc1_1:=tfrmpjc1_1.Create(nil);
  frmpjc1_1.Show;
end;

procedure Tfrmpjc1.ComboBox1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_ord_prj where seq>0';
    if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and jhrs like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and pjc1='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and tplant='''+combobox4.text+'''';
    open;
  end;
  if combobox1.text='SALL' then begin
    dbgrideh1.Columns[5].Title.Caption:='Style Item';
    dbgrideh1.Columns[6].Title.Caption:='Range';
    dbgrideh1.Columns[7].Title.Caption:='DC Date';
  end else begin
    dbgrideh1.Columns[5].Title.Caption:='Collection';
    dbgrideh1.Columns[6].Title.Caption:='Style Description';
    dbgrideh1.Columns[7].Title.Caption:='Del. Date';
  end;
end;

end.
