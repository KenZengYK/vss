unit xgkhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient, Variants, ADODB;

type
  Tfrmxgkh = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Query1: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgkh: Tfrmxgkh;

implementation
uses mainu, fcjyu, lbjhu;
{$R *.DFM}

procedure Tfrmxgkh.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgkh.BitBtn1Click(Sender: TObject);
var
  prjno,wl:string;
  xh:integer;
begin
  screen.cursor:=crHourglass;
  if edit3.text<>'' then begin
    if edit3.text<>edit2.text then begin
      with query1 do begin
        close;
        sql.text:='execute cut_xgkh :prjno,:okh,:nkh';
        parameters[0].value:=edit1.text;
        parameters[1].value:=edit2.text;
        parameters[2].value:=edit3.text;
        execsql;
      end;
      if label4.caption='fcjh' then begin
        prjno:=frmfcjy.fcjy1.fieldbyname('prjno').value;
        wl:=frmfcjy.fcjy1.fieldbyname('wl').value;
        xh:=frmfcjy.fcjy1.fieldbyname('xh').value;
        with frmfcjy.fcjy1 do begin
          close;
          commandtext:='select * from cut_fcjy1 where prjno=:prjno';
          parameters[0].value:=prjno;
          open;
          locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
        end;
      end
      else begin
        if label4.caption='lbjh' then begin
          prjno:=frmlbjh.lbjh1.fieldbyname('prjno').value;
          wl:=frmlbjh.lbjh1.fieldbyname('wl').value;
          xh:=frmlbjh.lbjh1.fieldbyname('xh').value;
          with frmlbjh.lbjh1 do begin
            close;
            //params.clear;
            //params.createparam(ftstring,'prjno',ptinput);
            commandtext:='select * from cut_lbjh1 where prjno=:prjno';
            parameters[0].value:=prjno;
            open;
            locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
          end;
        end;
      end;
    end;
  end;
  close;
  screen.cursor:=crDefault;
end;

procedure Tfrmxgkh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgkh:=nil;
end;

end.
