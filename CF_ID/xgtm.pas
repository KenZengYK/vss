unit xgtm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBClient, Variants, ADODB;

type
  Tfrmxgtm = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    sgrid1: TStringGrid;
    Label2: TLabel;
    Query1: TADOQuery;
    Query2: TADOQuery;
    Query3: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgtm: Tfrmxgtm;

implementation
uses mainu, fcjyu, lbjhu;
{$R *.DFM}

procedure Tfrmxgtm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgtm.FormShow(Sender: TObject);
var
  i,j:integer;
begin
  edit1.text:='';
  edit1.setfocus;
  with sgrid1 do begin
    colcount:=3;
    cols[0].Text:='款號';
    cols[1].text:='尺碼';
    cols[2].text:='單張數';
  end;
  if label2.caption='lbjh' then begin
    with query2 do begin
      close;
      sql.text:='select distinct kh from cut_lbjh2 where prjno=:prjno and wl=:wl and xh=1 order by kh';
      parameters[0].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
      parameters[1].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
      open;
      last;
      j:=recordcount;
      sgrid1.RowCount:=j+1;
      first;
      for i:=1 to j do begin
        sgrid1.Cells[0,i]:=fieldbyname('kh').value;
        next;
      end;
    end;
  end
  else begin
    if label2.caption='lbjh1' then begin
      edit1.text:=frmlbjh.lbjh1.fieldbyname('lbzs').asstring;
      sgrid1.rowcount:=2;
      sgrid1.Cells[0,1]:=frmlbjh.lbjh2.fieldbyname('kh').value;
    end
    else begin
      with query2 do begin
        close;
        sql.text:='select distinct kh from cut_fcjy2 where prjno=:prjno and wl=:wl and xh=1 order by kh';
        parameters[0].value:=frmfcjy.fcjy1.fieldbyname('prjno').value;
        parameters[1].value:=frmfcjy.fcjy1.fieldbyname('wl').value;
        open;
        last;
        j:=recordcount;
        sgrid1.RowCount:=j+1;
        first;
        for i:=1 to j do begin
          sgrid1.Cells[0,i]:=fieldbyname('kh').value;
          next;
        end;
      end;
    end;
  end;
end;

procedure Tfrmxgtm.BitBtn1Click(Sender: TObject);
var
 prjno,wl,kh,cm:string;
 i:integer;
 lbzs:integer;
 mjs:double;
begin
  if edit1.text>' ' then begin
    if label2.caption='lbjh' then begin
      prjno:=frmlbjh.lbjh1.fieldbyname('prjno').value;
      wl:=frmlbjh.lbjh1.fieldbyname('wl').value;
      lbzs:=strtoint(edit1.text);
      with query1 do begin
        close;
        sql.text:='delete from cut_lbjh1 where prjno=:prjno and wl=:wl and xh>1';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        execsql;
        close;
        sql.text:='delete from cut_lbjh2 where prjno=:prjno and wl=:wl and xh>1';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        execsql;
        close;
        sql.text:='delete from cut_lbjh3 where prjno=:prjno and wl=:wl and xh>1';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        execsql;
        close;
        sql.text:='delete from cut_fcwl2 where prjno=:prjno and wl=:wl and xh>1';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        execsql;
        close;
        sql.text:='update cut_lbjh1 set lbzs=:lbzs where prjno=:prjno and wl=:wl and xh=1';
        parameters[0].value:=lbzs;
        parameters[1].value:=prjno;
        parameters[2].value:=wl;
        execsql;
      end;
      with query1 do begin
        close;
        sql.text:='update cut_lbjh2 set mjs=0,mjjs=0 where prjno=:prjno and wl=:wl';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        execsql;
      end;
      for i:=1 to sgrid1.rowcount-1 do begin
        kh:=sgrid1.Cells[0,i];
        cm:=sgrid1.cells[1,i];
        mjs:=strtofloat(sgrid1.cells[2,i]);
        with query1 do begin
          close;
          sql.text:='execute cut_xgtm :prjno,:wl,:kh,:cm,:lbzs,:mjs';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          parameters[2].value:=kh;
          parameters[3].value:=cm;
          parameters[4].value:=lbzs;
          parameters[5].value:=mjs;
          execsql;
        end;
      end;
      with query1 do begin
        close;
        sql.text:='delete from cut_lbjh2 where mjs=0 and prjno=:prjno and wl=:wl';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        execsql;
      end;
      with frmlbjh.lbjh1 do begin
        close;
        //params.clear;
        //params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_lbjh1 where prjno=:prjno';
        parameters[0].value:=prjno;
        open;
        locate('prjno;wl;xh',vararrayof([prjno,wl,1]),[lopartialkey]);
      end;
    end
    else begin
      if label2.caption='lbjh1' then begin 
        prjno:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        wl:=frmlbjh.lbjh1.fieldbyname('wl').value;
        lbzs:=strtoint(edit1.text);
        kh:=frmlbjh.lbjh2.fieldbyname('kh').value;
        with query1 do begin
          close;
          sql.text:='delete from cut_lbjh2 where prjno=:prjno and wl=:wl and xh>1 and kh=:kh';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          parameters[2].value:=kh;
          execsql;
        end;
        with query1 do begin
          close;
          sql.text:='update cut_lbjh2 set mjs=0,mjjs=0 where prjno=:prjno and wl=:wl and kh=:kh';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          parameters[2].value:=kh;
          execsql;
        end;
        cm:=sgrid1.cells[1,1];
        mjs:=strtofloat(sgrid1.cells[2,1]);
        with query1 do begin
          close;
          sql.text:='execute cut_xgtm :prjno,:wl,:kh,:cm,:lbzs,:mjs';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          parameters[2].value:=kh;
          parameters[3].value:=cm;
          parameters[4].value:=lbzs;
          parameters[5].value:=mjs;
          execsql;
        end;
        with query1 do begin
          close;
          sql.text:='delete from cut_lbjh2 where mjs=0 and prjno=:prjno and wl=:wl';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          execsql;
        end;
        with frmlbjh.lbjh1 do begin
          close;
          //params.clear;
          //params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cut_lbjh1 where prjno=:prjno';
          parameters[0].value:=prjno;
          open;
          locate('prjno;wl;xh',vararrayof([prjno,wl,1]),[lopartialkey]);
        end;
      end
      else begin
        prjno:=frmfcjy.fcjy1.fieldbyname('prjno').value;
        wl:=frmfcjy.fcjy1.fieldbyname('wl').value;
        lbzs:=strtoint(edit1.text);
        with query1 do begin
          close;
          sql.text:='delete from cut_fcjy1 where prjno=:prjno and wl=:wl and xh>1';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          execsql;
          close;
          sql.text:='delete from cut_fcjy2 where prjno=:prjno and wl=:wl and xh>1';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          execsql;
          close;
          sql.text:='update cut_fcjy1 set lbzs=:lbzs where prjno=:prjno and wl=:wl and xh=1';
          parameters[0].value:=lbzs;
          parameters[1].value:=prjno;
          parameters[2].value:=wl;
          execsql;
        end;
        for i:=1 to sgrid1.rowcount-1 do begin
          kh:=sgrid1.Cells[0,i];
          cm:=sgrid1.cells[1,i];
          mjs:=strtofloat(sgrid1.cells[2,i]);
          with query1 do begin
            close;
            sql.text:='execute cut_xgtm1 :prjno,:wl,:kh,:cm,:lbzs,:mjs';
            parameters[0].value:=prjno;
            parameters[1].value:=wl;
            parameters[2].value:=kh;
            parameters[3].value:=cm;
            parameters[4].value:=lbzs;
            parameters[5].value:=mjs;
            execsql;
          end;
        end;
        with query1 do begin
          close;
          sql.text:='delete from cut_fcjy2 where prjno=:prjno and wl=:wl and zds=0';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          execsql;
        end;
        with query1 do begin
          close;
          sql.text:='execute cut_fcjy2post1 :prjno,:wl';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          execsql;
        end;
        with frmfcjy.fcjy1 do begin
          close;
          commandtext:='select * from cut_fcjy1 where prjno=:prjno';
          parameters[0].value:=prjno;
          open;
          locate('prjno;wl;xh',vararrayof([prjno,wl,1]),[lopartialkey]);
        end;
      end;
    end;
  end;
  close;
end;

procedure Tfrmxgtm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgtm:=nil;
end;

end.
