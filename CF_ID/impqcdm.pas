unit impqcdm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, MConnect, SConnect, MidasCon;

type
  Tqcdm = class(TDataModule)
    Connection1: TSocketConnection;
    yb1: TClientDataSet;
    yb2: TClientDataSet;
    yb3: TClientDataSet;
    yb4: TClientDataSet;
    yhb1: TClientDataSet;
    yhb2: TClientDataSet;
    yhb3: TClientDataSet;
    yhb4: TClientDataSet;
    dsyb1: TDataSource;
    dsyb2: TDataSource;
    dsyb3: TDataSource;
    dsyb4: TDataSource;
    dsyhb1: TDataSource;
    dsyhb2: TDataSource;
    dsyhb3: TDataSource;
    dsyhb4: TDataSource;
    qry1: TClientDataSet;
    qry2: TClientDataSet;
    qry3: TClientDataSet;
    qry4: TClientDataSet;
    qry5: TClientDataSet;
    qry6: TClientDataSet;
    qry7: TClientDataSet;
    qry8: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure dsyb1DataChange(Sender: TObject; Field: TField);
    procedure dsyhb1DataChange(Sender: TObject; Field: TField);
    procedure dsyb3DataChange(Sender: TObject; Field: TField);
    procedure dsyhb3DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qcdm: Tqcdm;

implementation

{$R *.DFM}

procedure Tqcdm.DataModuleCreate(Sender: TObject);
begin
  yb1.active:=true;
  //yhb1.active:=true;
end;

procedure Tqcdm.dsyb1DataChange(Sender: TObject; Field: TField);
begin
  if yb1.recordcount>0 then
  begin
    with yb3 do
    begin
      close;
      params.clear;
      params.CreateParam(ftstring,'rno',ptinput);
      commandtext:='select * from yb3 where rno=:rno';
      params[0].asstring:=yb1.fieldbyname('rno').value;
      open;
    end;
  end;
end;

procedure Tqcdm.dsyhb1DataChange(Sender: TObject; Field: TField);
begin
  {if yhb1.recordcount>0 then
  begin
    with yhb3 do
    begin
      close;
      params.clear;
      params.CreateParam(ftstring,'rno',ptinput);
      commandtext:='select * from yhb3 where rno=:rno';
      params[0].asstring:=yhb1.fieldbyname('rno').value;
      open;
    end;
  end;}
end;

procedure Tqcdm.dsyb3DataChange(Sender: TObject; Field: TField);
begin
  if yb3.recordcount>0 then
  begin
    with yb2 do
    begin
      close;
      params.clear;
      params.createparam(ftstring,'rno',ptinput);
      params.createparam(ftinteger,'jh',ptinput);
      params.createparam(ftstring,'rch',ptinput);
      commandtext:='select * from yb2 where rno=:rno and jh=:jh and rch=:rch';
      params[0].asstring:=yb3.fieldbyname('rno').value;
      params[1].asinteger:=yb3.fieldbyname('jh').value;
      params[2].asstring:=yb3.fieldbyname('rch').value;
      open;
    end;
    with yb4 do
    begin
      close;
      params.clear;
      params.createparam(ftstring,'rno',ptinput);
      params.createparam(ftinteger,'jh',ptinput);
      params.createparam(ftstring,'rch',ptinput);
      commandtext:='select * from yb4 where rno=:rno and jh=:jh and rch=:rch';
      params[0].asstring:=yb3.fieldbyname('rno').value;
      params[1].asinteger:=yb3.fieldbyname('jh').value;
      params[2].asstring:=yb3.fieldbyname('rch').value;
      open;
    end;
  end;
end;

procedure Tqcdm.dsyhb3DataChange(Sender: TObject; Field: TField);
begin
  {if yhb3.recordcount>0 then
  begin
    with yhb2 do
    begin
      close;
      params.clear;
      params.createparam(ftstring,'rno',ptinput);
      params.createparam(ftinteger,'jh',ptinput);
      params.createparam(ftstring,'rch',ptinput);
      commandtext:='select * from yhb2 where rno=:rno and jh=:jh and rch=:rch';
      params[0].asstring:=yhb3.fieldbyname('rno').value;
      params[1].asinteger:=yhb3.fieldbyname('jh').value;
      params[2].asstring:=yhb3.fieldbyname('rch').value;
      open;
    end;
    with yhb4 do
    begin
      close;
      params.clear;
      params.createparam(ftstring,'rno',ptinput);
      params.createparam(ftinteger,'jh',ptinput);
      params.createparam(ftstring,'rch',ptinput);
      commandtext:='select * from yhb4 where rno=:rno and jh=:jh and rch=:rch';
      params[0].asstring:=yhb3.fieldbyname('rno').value;
      params[1].asinteger:=yhb3.fieldbyname('jh').value;
      params[2].asstring:=yhb3.fieldbyname('rch').value;
      open;
    end;
  end;}
end;

end.
