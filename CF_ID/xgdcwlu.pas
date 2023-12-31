unit xgdcwlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, Variants;

type
  Tfrmxgdcwl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Query4: TQuery;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgdcwl: Tfrmxgdcwl;

implementation

{$R *.DFM}
uses dmfcu, lbjhu, fcu;
procedure Tfrmxgdcwl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgdcwl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgdcwl:=nil;
end;

procedure Tfrmxgdcwl.BitBtn1Click(Sender: TObject);
begin
  if (edit4.text<>'') and (edit5.text<>'') then begin
    if application.messagebox('確定要修改此床物料嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select distinct kh from lbjh2 where prjno=:prjno and wl=:wl and xh=:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            sql.clear;
            sql.add('select distinct gch,zdh,sh from fcjy3 where prjno=:prjno and wl=:wl and kh=:kh');
            prepare;
            params[0].asstring:=edit1.text;
            params[1].asstring:=edit3.text;
            params[2].asstring:=query1.fieldbyname('kh').value;
            open;
            first;
            while not eof do begin
              with query3 do begin
                close;
                sql.clear;
                sql.add('select zds from fczd1 where gch=:gch and kh=:kh and zdh=:zdh and sh=:sh');
                prepare;
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query1.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('zdh').value;
                params[3].asstring:=query2.fieldbyname('sh').value;
                open;
                with query4 do begin
                  close;
                  sql.clear;
                  sql.add('select * from fcwl');
                  open;
                  append;
                  fieldbyname('gch').value:=query2.fieldbyname('gch').value;
                  fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
                  fieldbyname('kh').value:=query1.fieldbyname('kh').value;
                  fieldbyname('sh').value:=query2.fieldbyname('sh').value;
                  fieldbyname('zds').value:=query3.fieldbyname('zds').value;
                  fieldbyname('wl').value:=edit4.text;
                  fieldbyname('jyl').value:=strtofloat(edit5.text);
                  fieldbyname('zyl').value:=fieldbyname('zds').value*fieldbyname('jyl').value;
                  post;
                  close;
                  sql.clear;
                  sql.add('select * from fcjy3');
                  open;
                  append;
                  fieldbyname('prjno').value:=edit1.text;
                  fieldbyname('gch').value:=query2.fieldbyname('gch').value;
                  fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
                  fieldbyname('kh').value:=query1.fieldbyname('kh').value;
                  fieldbyname('sh').value:=query2.fieldbyname('sh').value;
                  fieldbyname('wl').value:=edit4.text;
                  fieldbyname('jyl').value:=strtofloat(edit5.text);
                  post;
                end;
              end;
              next;
            end;
          end;
          next;
        end;
      end;
      with query1 do begin
        close;
        sql.clear;
        sql.add('update lbjh1 set wl=:wl,xh=1 where prjno=:prjno and wl=:wl1 and xh=:xh');
        prepare;
        params[0].asstring:=edit4.text;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update lbjh2 set wl=:wl,xh=1 where prjno=:prjno and wl=:wl1 and xh=:xh');
        prepare;
        params[0].asstring:=edit4.text;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update lbjh3 set wl=:wl,xh=1 where prjno=:prjno and wl=:wl1 and xh=:xh');
        prepare;
        params[0].asstring:=edit4.text;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update fcwl2 set wl=:wl,xh=1 where prjno=:prjno and wl=:wl1 and xh=:xh');
        prepare;
        params[0].asstring:=edit4.text;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update lbjh1 set xh=xh-1 where prjno=:prjno and wl=:wl and xh>:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update lbjh2 set xh=xh-1 where prjno=:prjno and wl=:wl and xh>:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update lbjh3 set xh=xh-1 where prjno=:prjno and wl=:wl and xh>:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update fcwl2 set xh=xh-1 where prjno=:prjno and wl=:wl and xh>:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update fcjy1 set wl=:wl,xh=1 where prjno=:prjno and wl=:wl1 and xh=:xh');
        prepare;
        params[0].asstring:=edit4.text;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update fcjy2 set wl=:wl,xh=1 where prjno=:prjno and wl=:wl1 and xh=:xh');
        prepare;
        params[0].asstring:=edit4.text;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update fcjy1 set xh=xh-1 where prjno=:prjno and wl=:wl and xh>:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        execsql;
        close;
        sql.clear;
        sql.add('update fcjy2 set xh=xh-1 where prjno=:prjno and wl=:wl and xh>:xh');
        prepare;
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit3.text;
        params[2].asinteger:=strtoint(edit2.text);
        execsql;
      end;
    end;
    //frmfc.fcwl.refresh;
    dmfcjh.lbjh1.refresh;
    dmfcjh.lbjh2.refresh;
    dmfcjh.lbjh3.refresh;
    dmfcjh.lbjh1.locate('prjno;wl;xh',vararrayof([edit1.text,edit4.text,1]),[]);
    close;
  end
  else begin
    application.messagebox('新物料和件用量都不可為空!','提示信息',mb_iconinformation+mb_ok);
    edit4.setfocus;
  end;
end;

procedure Tfrmxgdcwl.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    sql.clear;
    sql.add('select distinct jyl from fcjy3 where prjno=:prjno and wl=:wl');
    prepare;
    params[0].asstring:=edit1.text;
    params[1].asstring:=edit3.text;
    open;
    if not fieldbyname('jyl').isnull then
      edit5.text:=floattostr(fieldbyname('jyl').asfloat)
    else edit5.text:='0.00000';
  end;
end;

end.
