unit gcfz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Mask, rxToolEdit;

type
  Tfrmgcfz = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DateEdit1: TDateEdit;
    zd: TQuery;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgcfz: Tfrmgcfz;

implementation
uses dmfcu, fcu;
{$R *.DFM}

procedure Tfrmgcfz.FormShow(Sender: TObject);
begin
  label2.caption:='';label5.caption:='';label7.caption:='';label8.caption:='';
  combobox1.items.clear;
  zd.close;
  zd.open;
  zd.first;
  while not zd.eof do
  begin
    combobox1.items.add(zd.fieldbyname('zdh').value);
    zd.next;
  end;
  combobox1change(self);
end;

procedure Tfrmgcfz.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgcfz.BitBtn1Click(Sender: TObject);
begin
 if combobox1.text<>'' then
 begin
  if (edit1.text<>'') and (edit2.text<>'') and (edit3.text<>'') and (edit4.text<>'') then
  begin
    frmfc.fczd1.append;
    frmfc.fczd1.fieldbyname('gch').value:=edit1.text;
    frmfc.fczd1.fieldbyname('ccrq').value:=dateedit1.text;
    frmfc.fczd1.fieldbyname('zdh').value:=edit2.text;
    frmfc.fczd1.fieldbyname('kh').value:=edit3.text;
    frmfc.fczd1.fieldbyname('sh').value:=edit4.text;
    frmfc.fczd1.fieldbyname('zlc').value:='';
    frmfc.fczd1.fieldbyname('zlt').value:='';
    frmfc.fczd1.fieldbyname('xj').value:='';
    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from fcwl where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh');
    query1.prepare;
    query1.params[0].asstring:=label2.caption;
    query1.params[1].asstring:=label5.caption;
    query1.params[2].asstring:=label7.caption;
    query1.params[3].asstring:=label8.caption;
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select * from fcwl');
        query2.open;
        query2.append;
        query2.fieldbyname('gch').value:=edit1.text;
        query2.fieldbyname('zdh').value:=edit2.text;
        query2.fieldbyname('kh').value:=edit3.text;
        query2.fieldbyname('sh').value:=edit4.text;
        query2.fieldbyname('wl').value:=query1.fieldbyname('wl').value;
        query2.post;
        query1.next;
      end;
    end;
  end;
 end
 else
 begin
  if (edit1.text<>'') and (edit2.text<>'') and (edit3.text<>'') and (edit4.text<>'') then
  begin
    frmfc.fczd1.append;
    frmfc.fczd1.fieldbyname('gch').value:=edit1.text;
    frmfc.fczd1.fieldbyname('ccrq').value:=dateedit1.text;
    frmfc.fczd1.fieldbyname('zdh').value:=edit2.text;
    frmfc.fczd1.fieldbyname('kh').value:=edit3.text;
    frmfc.fczd1.fieldbyname('sh').value:=edit4.text;
    frmfc.fczd1.fieldbyname('zlc').value:='';
    frmfc.fczd1.fieldbyname('zlt').value:='';
    frmfc.fczd1.fieldbyname('xj').value:='';
  end;
 end;
 close;
end;

procedure Tfrmgcfz.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text<>'' then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select * from fczd1 where zdh=:zdh');
    query1.prepare;
    query1.params[0].asstring:=combobox1.text;
    query1.open;
    if query1.recordcount>0 then
    begin
      edit1.text:=query1.fieldbyname('gch').value;
      label2.caption:=query1.fieldbyname('gch').value;
      edit2.text:=query1.fieldbyname('zdh').value;
      label5.caption:=query1.fieldbyname('zdh').value;
      edit3.text:=query1.fieldbyname('kh').value;
      label7.caption:=query1.fieldbyname('kh').value;
      edit4.text:=query1.fieldbyname('sh').value;
      label8.caption:=query1.fieldbyname('sh').value;
      dateedit1.text:=datetostr(query1.fieldbyname('ccrq').value);
    end;
  end
  else
  begin
    edit1.text:='';
    edit2.text:='';
    edit3.text:='';
    edit4.text:='';
    dateedit1.text:='    /  /  ';
  end;
end;

end.
