unit zjcxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Db, DBTables, Buttons;

type
  Tfrmzjcx = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzjcx: Tfrmzjcx;

implementation
uses bglyu, ybjly5u, hbbgu, hbjlu, impqcdm;
{$R *.DFM}

procedure Tfrmzjcx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmzjcx.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  //combobox1.text:='';combobox2.text:='';
  combobox2.text:='';
  if label3.caption='yb' then
  begin
    qcdm.qry3.close;
    qcdm.qry3.params.clear;
    qcdm.qry3.commandtext:='select distinct pname from yb1 where pname>""';
    qcdm.qry3.open;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      while not qcdm.qry3.eof do
      begin
        combobox1.items.add(qcdm.qry3.fieldbyname('pname').value);
        qcdm.qry3.next;
      end;
    end;
    qcdm.qry4.close;
    qcdm.qry4.params.clear;
    qcdm.qry4.commandtext:='select distinct pno from yb1 where pno>""';
    qcdm.qry4.open;
    if qcdm.qry4.recordcount>0 then
    begin
      qcdm.qry4.first;
      while not qcdm.qry4.eof do
      begin
        combobox2.items.add(qcdm.qry4.fieldbyname('pno').value);
        qcdm.qry4.next;
      end;
    end;
    if combobox1.text='' then begin
      qcdm.qry1.close;
      qcdm.qry1.params.clear;
      qcdm.qry1.commandtext:='select * from yb1';
      qcdm.qry1.open;
    end
    else begin
      qcdm.qry1.close;
      qcdm.qry1.params.clear;
      qcdm.qry1.params.createparam(ftstring,'pname',ptinput);
      qcdm.qry1.commandtext:='select * from yb1 where pname=:pname';
      qcdm.qry1.params[0].asstring:=combobox1.text;
      qcdm.qry1.open;
    end;
  end
  else
  begin
    qcdm.qry3.close;
    qcdm.qry3.params.clear;
    qcdm.qry3.commandtext:='select distinct pname from yhb1 where pname>""';
    qcdm.qry3.open;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      while not qcdm.qry3.eof do
      begin
        combobox1.items.add(qcdm.qry3.fieldbyname('pname').value);
        qcdm.qry3.next;
      end;
    end;
    qcdm.qry4.close;
    qcdm.qry4.params.clear;
    qcdm.qry4.commandtext:='select distinct pno from yhb1 where pno>""';
    qcdm.qry4.open;
    if qcdm.qry4.recordcount>0 then
    begin
      qcdm.qry4.first;
      while not qcdm.qry4.eof do
      begin
        combobox2.items.add(qcdm.qry4.fieldbyname('pno').value);
        qcdm.qry4.next;
      end;
    end;
    qcdm.qry1.close;
    qcdm.qry1.params.clear;
    qcdm.qry1.commandtext:='select * from yhb1';
    qcdm.qry1.open;
  end;
end;

procedure Tfrmzjcx.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text<>'' then
  begin
    combobox2.text:='';
    if label3.caption='yb' then
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pname',ptinput);
       commandtext:='select * from yb1 where pname=:pname';
       params[0].asstring:=combobox1.text;
       open;
      end;
    end
    else
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pname',ptinput);
       commandtext:='select * from yhb1 where pname=:pname';
       params[0].asstring:=combobox1.text;
       open;
      end;
    end;
  end;
end;

procedure Tfrmzjcx.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text<>'' then
  begin
    combobox1.text:='';
    if label3.caption='yb' then
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pno',ptinput);
       commandtext:='select * from yb1 where pno=:pno';
       params[0].asstring:=combobox2.text;
       open;
      end;
    end
    else
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pno',ptinput);
       commandtext:='select * from yhb1 where pno=:pno';
       params[0].asstring:=combobox2.text;
       open;
      end;
    end;
  end;
end;

procedure Tfrmzjcx.BitBtn1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then
  begin
    if label3.caption='yb' then
    begin
      qcdm.yb1.findnearest([dbgrideh1.fields[0].value]);
      if frmybjly5=nil then frmybjly5:=tfrmybjly5.create(self);
      frmybjly5.show;
    end
    else
    begin
      qcdm.yhb1.findnearest([dbgrideh1.fields[0].value]);
      if frmhbjl=nil then frmhbjl:=tfrmhbjl.create(self);
      frmhbjl.show;
    end;
    close;
  end;
end;

procedure Tfrmzjcx.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  if combobox1.text<>'' then
  begin
    combobox2.text:='';
    if label3.caption='yb' then
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pname',ptinput);
       commandtext:='select * from yb1 where pname=:pname';
       params[0].asstring:=combobox1.text;
       open;
      end;
    end
    else
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pname',ptinput);
       commandtext:='select * from yhb1 where pname=:pname';
       params[0].asstring:=combobox1.text;
       open;
      end;
    end;
  end;
 end;
end;

procedure Tfrmzjcx.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  if combobox2.text<>'' then
  begin
    combobox1.text:='';
    if label3.caption='yb' then
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pno',ptinput);
       commandtext:='select * from yb1 where pno=:pno';
       params[0].asstring:=combobox2.text;
       open;
      end;
    end
    else
    begin
      with qcdm.qry1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'pno',ptinput);
       commandtext:='select * from yhb1 where pno=:pno';
       params[0].asstring:=combobox2.text;
       open;
      end;
    end;
  end;
 end;
end;

end.
