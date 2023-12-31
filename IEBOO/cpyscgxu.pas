unit cpyscgxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, ADODB, DBClient;

type
  Tfrmcpyscgx = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcpyscgx: Tfrmcpyscgx;

implementation
uses scgxu, cbgxu, dlu;
{$R *.DFM}

procedure Tfrmcpyscgx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcpyscgx.BitBtn1Click(Sender: TObject);
begin
 if label3.caption='scgx' then begin
  with query1 do begin
    close;
    params.Clear;
    params.CreateParam(ftstring,'kh',ptinput);
    commandtext:='select * from ie_zygx where kh=:kh';
    params[0].value:=edit2.text;
    open;
    if RecordCount>0 then begin
      showmessage('此款已經存在');
      exit;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    params.CreateParam(ftstring,'kh',ptinput);
    commandtext:='Execute ie_copyscgx :seq,:kh';
    params[0].value:=frmscgx.zygx.fieldbyname('seq').value;
    params[1].value:=edit2.text;
    execute;
  end;
  frmscgx.zygx.close;
  frmscgx.zygx.open;
  {frmscgx.zygx.editkey;
  frmscgx.zygx.indexfieldnames:='kh';
  frmscgx.zygx.setkey;
  frmscgx.zygx.findnearest([edit2.text]);}
 end
 else begin
  with query1 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    params.CreateParam(ftstring,'kh',ptinput);
    commandtext:='Execute ie_copycbgx :seq,:kh';
    params[0].value:=frmcbgx.zygx.fieldbyname('seq').value;
    params[1].value:=edit2.text;
    execute;
  end;
  frmcbgx.zygx.close;
  frmcbgx.zygx.open;
  {frmcbgx.zygx.editkey;
  frmcbgx.zygx.indexfieldnames:='kh';
  frmcbgx.zygx.setkey;
  frmcbgx.zygx.findnearest([edit2.text]);}
 end;
 close;
end;

end.
