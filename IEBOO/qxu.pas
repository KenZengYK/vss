unit qxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Buttons, Db, DBTables, ADODB, DBClient;

type
  Tfrmqx = class(TForm)
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Bevel1: TBevel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    query2: TClientDataSet;
    query1: TClientDataSet;
    Table1: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqx: Tfrmqx;

implementation

uses dlu;

{$R *.DFM}

procedure Tfrmqx.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmqx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
end;

procedure Tfrmqx.FormShow(Sender: TObject);
begin
  query1.close;
  query1.params.clear;
  query1.commandtext:='select nam from IE_yh';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    Query2.params.createparam(ftstring,'nam',ptinput);
    query2.commandtext:='select nam from IE_qx where nam=:nam';
//    query2.prepare;
    query2.params[0].value:=query1.fieldbyname('nam').value;
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
  query1.params.clear;
  query1.commandtext:='select * from IE_qx';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    Query2.params.createparam(ftstring,'nam',ptinput);
    query2.commandtext:='select * from IE_yh where nam=:nam';
//    query2.prepare;
    query2.params[0].value:=query1.fieldbyname('nam').value;
    query2.open;
    if query2.recordcount=0 then query1.delete;
    query1.next;
   end;
  end;
  if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
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

procedure Tfrmqx.ComboBox1Change(Sender: TObject);
begin
  table1.locate('nam',combobox1.text,[]);
end;

end.
