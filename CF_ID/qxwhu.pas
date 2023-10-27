unit qxwhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, DBCtrls, Buttons, ExtCtrls;

type
  Tfrmqxwh = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Table1: TTable;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqxwh: Tfrmqxwh;

implementation
uses mainu;
{$R *.DFM}

procedure Tfrmqxwh.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmqxwh.ComboBox1Change(Sender: TObject);
begin
  table1.findnearest([combobox1.text]);
end;

procedure Tfrmqxwh.FormShow(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.add('select nam from yh');
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select nam from qx where nam=:nam');
    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('nam').value;
    query2.open;
    if query2.recordcount=0 then
    begin
     table1.append;
     table1.fieldbyname('nam').value:=query1.fieldbyname('nam').value;
     table1.post;
    end;
    query1.next;
   end;
  end;
  query1.close;
  query1.sql.clear;
  query1.sql.add('select * from qx');
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from yh where nam=:nam');
    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('nam').value;
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
      combobox1.items.add(table1.fieldbyname('nam').value);
      table1.next;
    end;
  end;
  table1.first;
  if not table1.fieldbyname('nam').isnull then
    combobox1.text:=table1.fieldbyname('nam').value;
end;

procedure Tfrmqxwh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  table1.refresh;
  frmmain.enabled:=true;
end;

end.
