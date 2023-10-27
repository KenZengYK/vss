unit athru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, DBCtrls, Buttons, ExtCtrls, DBClient;

type
  Tfrmathr = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DataSource1: TDataSource;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    Table1: TClientDataSet;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmathr: Tfrmathr;

implementation

uses loginu;

{$R *.DFM}

procedure Tfrmathr.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmathr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  table1.refresh;
end;

procedure Tfrmathr.FormShow(Sender: TObject);
begin
  query1.close;
  query1.params.clear;
  query1.commandtext:='select usr from SZ_usrtbl';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    query2.params.createparam(ftstring,'nam',ptinput);    
    query2.commandtext:='select usr from SZ_usrtbl where usr=:nam';
//    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('usr').value;
    query2.open;
    if query2.recordcount=0 then
    begin
     table1.append;
     table1.fieldbyname('usr').value:=query1.fieldbyname('usr').value;
     table1.post;
    end;
    query1.next;
   end;
  end;
  query1.close;
  query1.params.clear;
  query1.commandtext:='select * from SZ_athtbl';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    query2.params.createparam(ftstring,'nam',ptinput);    
    query2.commandtext:='select * from SZ_usrtbl where usr=:nam';
//    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('usr').value;
    query2.open;
    if query2.recordcount=0 then query1.delete;
    query1.next;
   end;
  end;
  table1.refresh;
  combobox1.Items.Clear;
  if table1.recordcount>0 then
  begin
    table1.first;
    while not table1.eof do
    begin
      combobox1.items.add(table1.fieldbyname('usr').value);
      table1.next;
    end;
  end;
  table1.first;
  if not table1.fieldbyname('usr').isnull then
    combobox1.text:=table1.fieldbyname('usr').value;
end;

procedure Tfrmathr.ComboBox1Change(Sender: TObject);
begin
  table1.findnearest([combobox1.text]);
end;

procedure Tfrmathr.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmathr.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

end.
