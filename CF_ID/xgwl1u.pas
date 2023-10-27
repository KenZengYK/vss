unit xgwl1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient, Variants, ADODB;

type
  Tfrmxgwl1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Label4: TLabel;
    Query1: TADOQuery;
    Query2: TADOQuery;
    procedure ComboBox2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgwl1: Tfrmxgwl1;

implementation

uses mainu, fcjyu, LBJHU;

{$R *.DFM}

procedure Tfrmxgwl1.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if edit2.text<>'' then begin
    with query1 do begin
      close;
      sql.text:='select distinct wl from cut_fcjy3 where prjno=:prjno and not wl is null';
      parameters[0].value:=edit2.text;
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('wl').value);
        next;
      end;
    end;
  end;
end;

procedure Tfrmxgwl1.BitBtn1Click(Sender: TObject);
var
  prjno,wl:string;
  xh:integer;
begin
  screen.cursor:=crhourglass;
  if edit1.text<>'' then begin
    with query1 do begin
      close;
      sql.text:='select wl from cut_fcjy1 where prjno=:prjno and wl=:wl';
      parameters[0].value:=edit2.text;
      parameters[1].value:=edit1.text;
      open;
      if recordcount=0 then begin
        with query2 do begin
          close;
          sql.text:='execute cut_xgwl2 :prjno,:owl,:nwl';
          parameters[0].value:=edit2.text;
          parameters[1].value:=combobox2.text;
          parameters[2].value:=edit1.text;
          execsql;
        end;
      end
      else begin
        with query2 do begin
          close;
          sql.text:='execute cut_xgwl1 :prjno,:owl,:nwl';
          parameters[0].value:=edit2.text;
          parameters[1].value:=combobox2.text;
          parameters[2].value:=edit1.text;
          execsql;
        end;
      end;
      prjno:=edit2.text;
      IF LABEL4.CAPTION='FCJY' THEN BEGIN
        if combobox2.text<>frmfcjy.fcjy1.fieldbyname('wl').value then
          wl:=frmfcjy.fcjy1.fieldbyname('wl').value
        else wl:=edit1.text;
        xh:=frmfcjy.fcjy1.fieldbyname('xh').value;
        with frmfcjy.fcjy1 do begin
          close;
          commandtext:='select * from cut_fcjy1 where prjno=:prjno';
          parameters[0].value:=prjno;
          open;
          locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
        end;
      END
      ELSE BEGIN
        if combobox2.text<>frmLBJH.LBJH1.fieldbyname('wl').value then
          wl:=frmLBJH.LBJH1.fieldbyname('wl').value
        else wl:=edit1.text;
        xh:=frmLBJH.LBJH1.fieldbyname('xh').value;
        with frmLBJH.LBJH1 do begin
          close;
          //params.clear;
          //params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cut_LBJH1 where prjno=:prjno';
          parameters[0].value:=prjno;
          open;
          locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
        end;
      END;
    end;
  end;
  screen.cursor:=crdefault;
  close;
end;

procedure Tfrmxgwl1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgwl1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgwl1:=nil;
end;

end.
