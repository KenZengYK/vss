unit mjxxu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Buttons, DBTables, Db;

type
  Tfrmmjxx = class(TForm)
    Shape1: TShape;
    bzmj: TDBCheckBox;
    zbmj: TDBCheckBox;
    twmj: TDBCheckBox;
    pzx: TDBCheckBox;
    yymj: TDBCheckBox;
    dk: TDBCheckBox;
    ds: TDBCheckBox;
    dzd: TDBCheckBox;
    ldz: TDBCheckBox;
    hk: TDBCheckBox;
    hs: TDBCheckBox;
    hzd: TDBCheckBox;
    lhz: TDBCheckBox;
    yqxg: TDBCheckBox;
    zysc: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    wl: TQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmjxx: Tfrmmjxx;

implementation
uses fcjyu;
{$R *.DFM}

procedure Tfrmmjxx.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmjxx.Table1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(table1.handle);
end;

procedure Tfrmmjxx.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmmjxx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  table1.refresh;
end;

procedure Tfrmmjxx.FormShow(Sender: TObject);
begin
  //combobox1.text:='';
  combobox1.items.clear;
  wl.close;
  wl.sql.clear;
  wl.sql.add('select distinct wl from fcwl1 where prjno=:prjno and xh=:xh');
  wl.prepare;
  wl.params[0].asstring:=frmfcjy.DBEdit7.text;
  wl.params[1].asinteger:=strtoint(frmfcjy.dbedit1.text);
  wl.open;
  if wl.recordcount>0 then
  begin
    wl.first;
    combobox1.text:=wl.fieldbyname('wl').value;
    while not wl.eof do
    begin
      combobox1.items.add(wl.fieldbyname('wl').value);
      wl.next;
    end;
  end
  else
  begin
   query1.close;
   query1.sql.clear;
   query1.sql.add('select distinct fcwl.wl,fcjy3.prjno from fcwl,fcjy3 ');
   query1.sql.add('where fcwl.gch=fcjy3.gch and fcwl.kh=fcjy3.kh and fcwl.zdh=fcjy3.zdh and fcjy3.prjno=:prjno');
   query1.prepare;
   query1.params[0].asstring:=frmfcjy.dbedit7.text;
   query1.open;
   if query1.recordcount>0 then
   begin
     query1.first;
     while not query1.eof do
     begin
       table1.append;
       table1.fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
       table1.fieldbyname('xh').value:=strtoint(frmfcjy.dbedit1.text);
       table1.fieldbyname('wl').value:=query1.fieldbyname('wl').value;
       table1.post;
       query1.next;
     end;
   end;
   wl.close;
   wl.sql.clear;
   wl.sql.add('select distinct wl from fcwl1 where prjno=:prjno and xh=:xh');
   wl.prepare;
   wl.params[0].asstring:=frmfcjy.dbedit7.text;
   wl.params[1].asinteger:=strtoint(frmfcjy.dbedit1.text);
   wl.open;
   wl.first;
   combobox1.text:=wl.fieldbyname('wl').value;
   while not wl.eof do
   begin
     combobox1.items.add(wl.fieldbyname('wl').value);
     wl.next;
   end;
  end;
  combobox1change(self);
end;

procedure Tfrmmjxx.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text<>'' then
  begin
    table1.findnearest([frmfcjy.dbedit7.text,strtoint(frmfcjy.dbedit1.text),combobox1.text]);
  end;
end;

end.
