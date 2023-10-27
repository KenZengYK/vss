unit pocx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Db, DBTables, Buttons;

type
  Tfrmpocx = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    combobox1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combobox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combobox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpocx: Tfrmpocx;

implementation
uses bglyu, ybjly5u, hbjlu, hbbgu, impqcdm;
{$R *.DFM}

procedure Tfrmpocx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpocx.FormShow(Sender: TObject);
begin
  combobox1.text:='';
  combobox1.items.clear;
  if label2.caption='yb' then
  begin
    qcdm.qry3.close;
    qcdm.qry3.params.clear;
    qcdm.qry3.commandtext:='select distinct ph from yb3';
    qcdm.qry3.open;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      while not qcdm.qry3.eof do
      begin
        if not qcdm.qry3.fieldbyname('ph').isnull then
          combobox1.items.add(qcdm.qry3.fieldbyname('ph').value);
        qcdm.qry3.next;
      end;
    end;
    qcdm.qry1.close;
    qcdm.qry1.params.clear;
    qcdm.qry1.commandtext:='select rno,jh,rch from yb3';
    qcdm.qry1.open;
  end
  else
  begin
    qcdm.qry3.close;
    qcdm.qry3.params.clear;
    qcdm.qry3.commandtext:='select distinct ph from yhb3';
    qcdm.qry3.open;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      while not qcdm.qry3.eof do
      begin
        if not qcdm.qry3.fieldbyname('ph').isnull then
          combobox1.items.add(qcdm.qry3.fieldbyname('ph').value);
        qcdm.qry3.next;
      end;
    end;
    qcdm.qry1.close;
    qcdm.qry1.params.clear;
    qcdm.qry1.commandtext:='select rno,jh,rch from yhb3';
    qcdm.qry1.open;
  end;
end;

procedure Tfrmpocx.combobox1Change(Sender: TObject);
begin
  if  combobox1.text<>'' then
  begin
    if label2.caption='yb' then
    begin
      qcdm.qry1.close;
      qcdm.qry1.params.clear;
      qcdm.qry1.params.createparam(ftstring,'ph',ptinput);
      qcdm.qry1.commandtext:='select rno,jh,rch from yb3 where ph=:ph';
      qcdm.qry1.params[0].asstring:=combobox1.text;
      qcdm.qry1.open;
    end
    else
    begin
      qcdm.qry1.close;
      qcdm.qry1.params.clear;
      qcdm.qry1.params.createparam(ftstring,'ph',ptinput);
      qcdm.qry1.commandtext:='select rno,jh,rch from yhb3 where ph=:ph';
      qcdm.qry1.params[0].asstring:=combobox1.text;
      qcdm.qry1.open;
    end;
  end;
end;

procedure Tfrmpocx.BitBtn1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then
  begin
    if label2.caption='yb' then
    begin
      qcdm.yb1.findnearest([dbgrideh1.fields[0].value]);
      if frmybjly5=nil then frmybjly5:=tfrmybjly5.create(self);
      qcdm.yb3.findnearest([dbgrideh1.fields[0].value,dbgrideh1.fields[1].value,dbgrideh1.fields[2].value]);
      frmybjly5.show;
    end
    else
    begin
      qcdm.yhb1.findnearest([dbgrideh1.fields[0].value]);
      if frmhbjl=nil then frmhbjl:=tfrmhbjl.create(self);
      qcdm.yhb3.findnearest([dbgrideh1.fields[0].value,dbgrideh1.fields[1].value,dbgrideh1.fields[2].value]);
      frmhbjl.show;
    end;
  end;
  close;
end;

procedure Tfrmpocx.combobox1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  if  combobox1.text<>'' then
  begin
    if label2.caption='yb' then
    begin
      qcdm.qry1.close;
      qcdm.qry1.params.clear;
      qcdm.qry1.params.createparam(ftstring,'ph',ptinput);
      qcdm.qry1.commandtext:='select rno,jh,rch from yb3 where ph=:ph';
      qcdm.qry1.params[0].asstring:=combobox1.text;
      qcdm.qry1.open;
    end
    else
    begin
      qcdm.qry1.close;
      qcdm.qry1.params.clear;
      qcdm.qry1.params.createparam(ftstring,'ph',ptinput);
      qcdm.qry1.commandtext:='select rno,jh,rch from yhb3 where ph=:ph';
      qcdm.qry1.params[0].asstring:=combobox1.text;
      qcdm.qry1.open;
    end;
  end;
 end;
end;

end.
