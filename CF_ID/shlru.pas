unit shlru;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGridEh,
  StdCtrls, Mask, Buttons, QuickRpt, Qrctrls;

type
  Tfrmshlr = class(TForm)
    Label1: TLabel;
    fcz: TEdit;
    Label2: TLabel;
    ppcfh: TEdit;
    Label3: TLabel;
    cadfh: TEdit;
    Label4: TLabel;
    pmr: TEdit;
    Label5: TLabel;
    zbr: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure fczKeyPress(Sender: TObject; var Key: Char);
    procedure ppcfhKeyPress(Sender: TObject; var Key: Char);
    procedure cadfhKeyPress(Sender: TObject; var Key: Char);
    procedure pmrKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmshlr: Tfrmshlr;

implementation
uses fcjyu;
{$R *.DFM}

procedure Tfrmshlr.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmshlr.fczKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ppcfh.SetFocus;
end;

procedure Tfrmshlr.ppcfhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    cadfh.SetFocus;
end;

procedure Tfrmshlr.cadfhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    pmr.SetFocus;
end;

procedure Tfrmshlr.pmrKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    zbr.SetFocus;
end;

procedure Tfrmshlr.FormShow(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.add('select * from dyxx where prjno=:prjno');
  query1.prepare;
  query1.params[0].asstring:=frmfcjy.DBEdit7.text;
  query1.open;
  if query1.recordcount>0 then
  begin
    if not query1.fieldbyname('fcz').isnull then
    fcz.text:=query1.fieldbyname('fcz').value
    else fcz.text:='';
    if not query1.fieldbyname('ppcfh').isnull then
    ppcfh.text:=query1.fieldbyname('ppcfh').value
    else ppcfh.text:='';
    if not query1.fieldbyname('cadfh').isnull then
    cadfh.text:=query1.fieldbyname('cadfh').value
    else cadfh.text:='';
    if not query1.fieldbyname('pmr').isnull then
    pmr.text:=query1.fieldbyname('pmr').value
    else pmr.text:='';
    if not query1.fieldbyname('zbr').isnull then
    zbr.text:=query1.fieldbyname('zbr').value
    else zbr.text:='';
  end;
end;

end.
