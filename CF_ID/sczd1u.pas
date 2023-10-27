unit sczd1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Buttons, Db, DBTables, Variants, GridsEh;

type
  Tfrmsczd1 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    Database1: TDatabase;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Query4: TQuery;
    Query5: TQuery;
    DataSource1: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsczd1: Tfrmsczd1;

implementation
uses dmfcu, fcu, gczdu;
{$R *.DFM}

procedure Tfrmsczd1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsczd1.SpeedButton1Click(Sender: TObject);
begin
  if frmgczd=nil then frmgczd:=tfrmgczd.create(self);
  frmgczd.label1.caption:='gch';
  frmgczd.label2.caption:='phis';
  frmgczd.show;
end;

procedure Tfrmsczd1.SpeedButton2Click(Sender: TObject);
begin
  if frmgczd=nil then frmgczd:=tfrmgczd.create(self);
  frmgczd.label1.caption:='zdh';
  frmgczd.label2.caption:='phis';
  frmgczd.show;
end;

procedure Tfrmsczd1.Edit3Change(Sender: TObject);
begin
  if edit3.text<>'' then begin
    with query1 do begin
      close;
      sql.clear;
      sql.add('select distinct a.j_no,a.j2_job,a.j2_art_c,a.j2_ddate_c,b.color from project2 a,projass4 b where b.j2_job=a.j2_job and a.j_no=:j_no');
      prepare;
      params[0].asstring:=edit3.text;
      open;
    end;
  end;
end;

procedure Tfrmsczd1.Edit1Change(Sender: TObject);
begin
  if edit1.text<>'' then begin
    with query1 do begin
      close;
      sql.clear;
      sql.add('select distinct a.j_no,a.j2_job,a.j2_art_c,a.j2_ddate_c,b.color from project2 a,projass4 b where b.j2_job=a.j2_job and a.j2_job=:j2_job');
      prepare;
      params[0].asstring:=edit1.text;
      open;
    end;
  end;
end;

procedure Tfrmsczd1.BitBtn1Click(Sender: TObject);
var
  zlc,zlt:string;
  zds:integer;
begin
  screen.cursor:=crhourglass;
  zlc:='';zlt:='';zds:=0;
  if query1.recordcount>0 then begin
    with query4 do begin
      close;
      sql.clear;
      sql.add('select gch,zdh,kh,sh from fczd1 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh');
      prepare;
      params[0].asstring:=dbgrideh1.fields[0].asstring;
      params[1].asstring:=dbgrideh1.fields[1].asstring;
      params[2].asstring:=dbgrideh1.fields[2].asstring;
      params[3].asstring:=dbgrideh1.fields[3].asstring;
      open;
      if recordcount=0 then begin
        with query2 do begin
          close;
          sql.clear;
          sql.add('select distinct sz_name,sz1 from projass4 where j2_job=:j2_job and color=:color');
          prepare;
          params[0].asstring:=dbgrideh1.fields[1].asstring;
          params[1].asstring:=dbgrideh1.fields[3].asstring;
          open;
          if recordcount>0 then begin
            zlc:=fieldbyname('sz_name').value;
            last;
            zlt:=fieldbyname('sz_name').value;
            first;
            while not eof do begin
              with query3 do begin
                close;
                sql.clear;
                sql.add('select * from fczd2');
                open;
                append;
                fieldbyname('gch').value:=dbgrideh1.fields[0].asstring;
                fieldbyname('zdh').value:=dbgrideh1.fields[1].asstring;
                fieldbyname('kh').value:=dbgrideh1.fields[2].asstring;
                fieldbyname('sh').value:=dbgrideh1.fields[3].asstring;
                fieldbyname('cm').value:=query2.fieldbyname('sz_name').value;
                fieldbyname('yzds').value:=query2.fieldbyname('sz1').value;
                fieldbyname('tzs').value:=0;
                fieldbyname('zds').value:=fieldbyname('yzds').value;
                post;
              end;
              zds:=zds+fieldbyname('sz1').value;
              application.ProcessMessages;
              next;
            end;
            with query3 do begin
              close;
              sql.clear;
              sql.add('select * from fczd1');
              open;
              append;
              fieldbyname('gch').value:=dbgrideh1.fields[0].asstring;
              fieldbyname('zdh').value:=dbgrideh1.fields[1].asstring;
              fieldbyname('kh').value:=dbgrideh1.fields[2].asstring;
              fieldbyname('sh').value:=dbgrideh1.fields[3].asstring;
              if not query1.fieldbyname('j2_ddate_c').isnull then
                fieldbyname('ccrq').value:=query1.fieldbyname('j2_ddate_c').value
              else fieldbyname('ccrq').value:=date;
              fieldbyname('zlc').value:=zlc;
              fieldbyname('zlt').value:=zlt;
              fieldbyname('zds').value:=zds;
              post;
            end;
            with query5 do begin
              close;
              sql.clear;
              //sql.add('select distinct a.mattype+"-"+a.s_code as wl,b.x2_usagewo from stock2r a,style2 b where a.mattype=b.x2_mattype and a.s_code=b.x2_artcode and a.j2_job=:j2_job and a.color=:color and b.x_art=:x_art');
              sql.add('select distinct mattype+"-"+s_code as wl from stock2r where j2_job=:j2_job and color=:color');
              prepare;
              params[0].asstring:=dbgrideh1.fields[1].asstring;
              params[1].asstring:=dbgrideh1.fields[3].asstring;
              //params[2].asstring:=copy(dbgrideh1.fields[2].asstring,1,pos('-',dbgrideh1.fields[2].asstring)-1);
              open;
              first;
              while not eof do begin
                with query3 do begin
                  close;
                  sql.clear;
                  sql.add('select * from fcwl');
                  open;
                  append;
                  fieldbyname('gch').value:=dbgrideh1.fields[0].asstring;
                  fieldbyname('zdh').value:=dbgrideh1.fields[1].asstring;
                  fieldbyname('kh').value:=dbgrideh1.fields[2].asstring;
                  fieldbyname('sh').value:=dbgrideh1.fields[3].asstring;
                  fieldbyname('wl').value:=query5.fieldbyname('wl').value;
                  fieldbyname('zds').value:=zds;
                  fieldbyname('jyl').value:=0.00;//query5.fieldbyname('x2_usagewo').value;
                  fieldbyname('zyl').value:=0.00;//zds*fieldbyname('jyl').value;
                  post;
                end;
                application.ProcessMessages;
                next;
              end;
            end;
            with query3 do begin
              close;
              sql.clear;
              sql.add('select * from fcwl where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh');
              prepare;
              params[0].asstring:=dbgrideh1.fields[0].asstring;
              params[1].asstring:=dbgrideh1.fields[1].asstring;
              params[2].asstring:=dbgrideh1.fields[2].asstring;
              params[3].asstring:=dbgrideh1.fields[3].asstring;
              open;
              first;
              while not eof do begin
                with query5 do begin
                  close;
                  sql.clear;
                  sql.add('select x2_usagewo from style2 where x2_mattype=:x2_mattye and x2_artcode=:x2_artcode and x_art=:x_art');
                  prepare;
                  params[0].asstring:=copy(query3.fieldbyname('wl').value,1,pos('-',query3.fieldbyname('wl').value)-1);
                  params[1].asstring:=copy(query3.fieldbyname('wl').value,pos('-',query3.fieldbyname('wl').value)+1,15);
                  params[2].asstring:=copy(query3.fieldbyname('kh').value,1,pos('-',query3.fieldbyname('kh').value)-1);
                  open;
                end;
                edit;
                if not query5.fieldbyname('x2_usagewo').isnull then
                  fieldbyname('jyl').value:=query5.fieldbyname('x2_usagewo').value;
                fieldbyname('zyl').value:=fieldbyname('zds').value*fieldbyname('jyl').value;
                post;
                application.ProcessMessages;
                next;
              end;
            end;
          end;
        end;
      end
      else begin
        application.messagebox('此制單已存在!','提示信息',mb_iconinformation+mb_ok);
      end;
    end;
    //frmfc.fczd1.locate('gch;zdh;kh;sh',vararrayof([dbgrideh1.fields[0].asstring,dbgrideh1.fields[1].asstring,dbgrideh1.fields[2].asstring,dbgrideh1.fields[3].asstring]),[]);
  end;
  screen.cursor:=crdefault;
end;

end.
