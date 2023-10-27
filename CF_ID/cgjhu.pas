unit cgjhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGridEh, ExtCtrls, Buttons, Db, DBTables,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppBands, ppPrnabl, ppCtrls, myChkBox, ppStrtch, ppRegion, ppViewr,
  ComCtrls, ppSubRpt, ppVar, Math, Menus;

type
  Tfrmcgjh = class(TForm)
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGridEh2: TDBGridEh;
    DBEdit17: TDBEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    tc: TSpeedButton;
    Label17: TLabel;
    ComboBox1: TComboBox;
    SpeedButton9: TSpeedButton;
    gcbh: TQuery;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Query4: TQuery;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBText1: TDBText;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Bevel1: TBevel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    Query5: TQuery;
    DBGridEh1: TDBGridEh;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBGridEh3: TDBGridEh;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    Label19: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBGridEh4: TDBGridEh;
    BitBtn1: TBitBtn;
    SpeedButton11: TSpeedButton;
    procedure tcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBGridEh2Enter(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcgjh: Tfrmcgjh;

implementation
uses mainu, dmfcu, zdzlu, lbgccxu, dycgjhu, cgfxu, sclfxu;
{$R *.DFM}

procedure Tfrmcgjh.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcgjh.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  gcbh.close;
  gcbh.sql.clear;
  gcbh.sql.add('select distinct prjno from fcwl2');
  gcbh.open;
  if gcbh.recordcount>0 then
  begin
    gcbh.first;
    while not gcbh.eof do
    begin
      if not gcbh.fieldbyname('prjno').isnull then
        combobox1.items.add(gcbh.fieldbyname('prjno').value);
      gcbh.next;
    end;
  end;
  if not dmfcjh.lbjh1.fieldbyname('prjno').isnull then
    combobox1.text:=dmfcjh.lbjh1.fieldbyname('prjno').value
  else combobox1.text:='';
  combobox1change(self);
end;

procedure Tfrmcgjh.ComboBox1Change(Sender: TObject);
var
  mjbh,mjstatus,gch,zdh,kh,sh:string;
  mjdiv,zds,ycs,ycs1,zds1,i,j:integer;
  mjjs,ysfd,syfd,cacyl,jhyl,scmjyl:double;
  jhlbzs:array[1..3] of integer;
  scmjcd,ysmjfd,scmjfd,ybl,scmjzc,cgsj:array[1..3] of double;
begin
  screen.Cursor:=crhourglass;
  if combobox1.text<>'' then
  begin
    with query1 do begin
      close;
      sql.clear;
      sql.add('select prjno from cgjh1 where prjno=:prjno');
      prepare;
      params[0].asstring:=combobox1.text;
      open;
      if recordcount=0 then begin
        with query1 do begin
          close;
          sql.clear;
          sql.add('select * from lbjh1,fcwl2 where fcwl2.prjno=lbjh1.prjno and fcwl2.xh=lbjh1.xh and fcwl2.wl=lbjh1.wl and lbjh1.prjno=:prjno');
          prepare;
          params[0].asstring:=combobox1.text;
          open;
          first;
          while not eof do begin
            mjbh:='';mjjs:=0.00;mjdiv:=1;scmjyl:=0.00;
            for i:=1 to 3 do begin
              jhlbzs[i]:=0;scmjcd[i]:=0.00;ysmjfd[i]:=0.00;scmjfd[i]:=0.00;
              ybl[i]:=0.00;scmjzc[i]:=0.00;cgsj[i]:=0.00;
            end;
            if not query1.fieldbyname('mjstatus').isnull then mjstatus:=query1.fieldbyname('mjstatus').value
            else mjstatus:='';
            if copy(mjstatus,1,4)='封度' then begin
              mjstatus:=copy(mjstatus,7,2);
              if mjstatus='半' then mjdiv:=2
              else if mjstatus='四' then mjdiv:=4
              else mjdiv:=strtoint(mjstatus);
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select mjh,jhlbzs,mjcd,ysmjfd,mjfd,ybl,mjypzbc,jhcgsj from lbjh3 where prjno=:prjno and xh=:xh and wl=:wl');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asinteger:=query1.fieldbyname('xh').value;
              params[2].asstring:=query1.fieldbyname('wl').value;
              open;
              if recordcount>0 then begin
                last;
                j:=recordcount;
                first;
                //while not eof do begin
                for i:=1 to j do begin
                  if not fieldbyname('mjh').isnull then begin
                    if mjbh<>'' then mjbh:=mjbh+','+fieldbyname('mjh').value
                    else mjbh:=fieldbyname('mjh').value;
                  end;
                  jhlbzs[i]:=fieldbyname('jhlbzs').value;
                  scmjcd[i]:=fieldbyname('mjcd').value;
                  ysmjfd[i]:=fieldbyname('ysmjfd').value;
                  scmjfd[i]:=fieldbyname('mjfd').value;
                  ybl[i]:=fieldbyname('ybl').value;
                  scmjzc[i]:=fieldbyname('mjypzbc').value;
                  cgsj[i]:=fieldbyname('jhcgsj').value;
                  next;
                end;
              end
              else begin
                jhlbzs[1]:=query1.fieldbyname('lbzs').value;
              end;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select sum(mjs) as mjjs from lbjh2 where prjno=:prjno and wl=:wl and xh=:xh');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asstring:=query1.fieldbyname('wl').value;
              params[2].asinteger:=query1.fieldbyname('xh').value;
              open;
              if not fieldbyname('mjjs').isnull then mjjs:=fieldbyname('mjjs').value;
            end;
            if query1.fieldbyname('zp').value=false then begin
              with query2 do begin
                close;
                sql.clear;
                sql.add('select sum(mjcd*jhlbzs)/sum(jhlbzs) as scmjyl from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
                prepare;
                params[0].asstring:=query1.fieldbyname('prjno').value;
                params[1].asstring:=query1.fieldbyname('wl').value;
                params[2].asinteger:=query1.fieldbyname('xh').value;
                open;
                scmjyl:=fieldbyname('scmjyl').value/mjdiv;
              end;
            end
            else begin
              scmjyl:=query1.fieldbyname('mjyl').value;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select * from cgjh1');
              open;
              append;
              fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
              fieldbyname('wl').value:=query1.fieldbyname('wl').value;
              fieldbyname('xh').value:=query1.fieldbyname('xh').value;
              fieldbyname('lbzs').value:=jhlbzs[1];//query1.fieldbyname('lbzs').value;
              fieldbyname('lbzs1').value:=jhlbzs[2];
              fieldbyname('lbzs2').value:=jhlbzs[3];
              fieldbyname('ybl').value:=ybl[1];//query1.fieldbyname('ybl').value;
              fieldbyname('ybl1').value:=ybl[2];
              fieldbyname('ybl2').value:=ybl[3];
              fieldbyname('scmjcd').value:=scmjcd[1];//query1.fieldbyname('mjzcd').value;
              fieldbyname('scmjcd1').value:=scmjcd[2];
              fieldbyname('scmjcd2').value:=scmjcd[3];
              fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
              if fieldbyname('lbzs1').value>0 then
              fieldbyname('ysmjfd1').value:=query1.fieldbyname('ysmjfd').value
              else fieldbyname('ysmjfd1').value:=0.00;
              if fieldbyname('lbzs2').value>0 then
              fieldbyname('ysmjfd2').value:=query1.fieldbyname('ysmjfd').value
              else fieldbyname('ysmjfd2').value:=0.00;
              fieldbyname('scmjfd').value:=scmjfd[1];//query1.fieldbyname('pjmjfd').value;
              fieldbyname('scmjfd1').value:=scmjfd[2];
              fieldbyname('scmjfd2').value:=scmjfd[3];
              fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
              fieldbyname('scmjyl').value:=scmjyl*fieldbyname('lbzs').value;
              fieldbyname('mjh').value:=mjbh;
              fieldbyname('mjjs').value:=mjjs;
              fieldbyname('cgsj').value:=cgsj[1];//query1.fieldbyname('jhcgzsj').value;
              fieldbyname('cgsj1').value:=cgsj[2];
              fieldbyname('cgsj2').value:=cgsj[3];
              fieldbyname('scmjzc').value:=scmjzc[1];//query1.fieldbyname('mjypzbzc').value;
              fieldbyname('scmjzc1').value:=scmjzc[2];
              fieldbyname('scmjzc2').value:=scmjzc[3];
              fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
              if not query1.fieldbyname('mjstatus').isnull then
              fieldbyname('mjstatus').value:=query1.fieldbyname('mjstatus').value;
              if not query1.fieldbyname('zp').isnull then
              fieldbyname('zp').value:=query1.fieldbyname('zp').value;
              fieldbyname('rq').value:=date;
              fieldbyname('tm').value:=time;
              fieldbyname('bzmj').value:=query1.fieldbyname('bzmj').value;
              fieldbyname('zbmj').value:=query1.fieldbyname('zbmj').value;
              fieldbyname('twmj').value:=query1.fieldbyname('twmj').value;
              fieldbyname('pzx').value:=query1.fieldbyname('pzx').value;
              fieldbyname('yymj').value:=query1.fieldbyname('yymj').value;
              fieldbyname('dk').value:=query1.fieldbyname('dk').value;
              fieldbyname('hk').value:=query1.fieldbyname('hk').value;
              fieldbyname('ds').value:=query1.fieldbyname('ds').value;
              fieldbyname('hs').value:=query1.fieldbyname('hs').value;
              fieldbyname('dzd').value:=query1.fieldbyname('dzd').value;
              fieldbyname('hzd').value:=query1.fieldbyname('hzd').value;
              fieldbyname('ldz').value:=query1.fieldbyname('ldz').value;
              fieldbyname('lhz').value:=query1.fieldbyname('lhz').value;
              fieldbyname('yqxg').value:=query1.fieldbyname('yqxg').value;
              fieldbyname('zysc').value:=query1.fieldbyname('zysc').value;
              post;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select gch,zdh,kh,sh,id,cm,mjjs,mjs from lbjh2 where prjno=:prjno and wl=:wl and xh=:xh order by kh,id,gch,zdh,sh');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asstring:=query1.fieldbyname('wl').value;
              params[2].asinteger:=query1.fieldbyname('xh').value;
              open;
              first;
              while not eof do begin
                with query3 do begin
                  close;
                  sql.clear;
                  sql.add('select * from cgjh2');
                  open;
                  append;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('gch').value:=query2.fieldbyname('gch').value;
                  fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
                  fieldbyname('kh').value:=query2.fieldbyname('kh').value;
                  fieldbyname('sh').value:=query2.fieldbyname('sh').value;
                  fieldbyname('cm').value:=query2.fieldbyname('cm').value;
                  fieldbyname('mjjs').value:=query2.fieldbyname('mjjs').value;
                  fieldbyname('mjs').value:=query2.fieldbyname('mjs').value;
                  fieldbyname('ymjjs').value:=fieldbyname('mjjs').value;
                  post;
                end;
                application.ProcessMessages;
                next;
              end;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        with query1 do begin
          close;
          sql.clear;
          sql.add('select distinct wl from cgjh1 where prjno=:prjno');
          prepare;
          params[0].asstring:=combobox1.text;
          open;
          first;
          while not eof do begin
            gch:='';zdh:='';kh:='';sh:='';ysfd:=0.00;syfd:=0.00;zds:=0;ycs:=0;cacyl:=0.00;jhyl:=0.00;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select * from cgjh3');
              open;
              append;
              fieldbyname('prjno').value:=combobox1.text;
              fieldbyname('wl').value:=query1.fieldbyname('wl').value;
              fieldbyname('qr').value:=false;
              post;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select distinct gch from cgjh2 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              first;
              while not eof do begin
                if not fieldbyname('gch').isnull then begin
                  if gch='' then gch:=fieldbyname('gch').value
                  else gch:=gch+','+fieldbyname('gch').value;
                end;
                next;
              end;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select distinct zdh from cgjh2 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              first;
              while not eof do begin
                if not fieldbyname('zdh').isnull then begin
                  if zdh='' then zdh:=fieldbyname('zdh').value
                  else zdh:=zdh+'/'+fieldbyname('zdh').value;
                end;
                next;
              end;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select distinct kh from cgjh2 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              first;
              while not eof do begin
                if not fieldbyname('kh').isnull then begin
                  if kh='' then kh:=fieldbyname('kh').value
                  else kh:=kh+'/'+fieldbyname('kh').value;
                end;
                next;
              end;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select distinct sh from cgjh2 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              first;
              while not eof do begin
                if not fieldbyname('sh').isnull then begin
                  if sh='' then sh:=fieldbyname('sh').value
                  else sh:=sh+'/'+fieldbyname('sh').value;
                end;
                next;
              end;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select distinct kh,jyl from fcjy3 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              first;
              while not eof do begin
                with query3 do begin
                  close;
                  sql.clear;
                  sql.add('select distinct gch,zdh,kh,sh from fcjy3 where prjno=:prjno and kh=:kh and wl=:wl');
                  prepare;
                  params[0].asstring:=combobox1.text;
                  params[1].asstring:=query2.fieldbyname('kh').value;
                  params[2].asstring:=query1.fieldbyname('wl').value;
                  open;
                  first;
                  while not eof do begin
                    with query4 do begin
                      close;
                      sql.clear;
                      sql.add('select sum(zds) as zds from fczd1 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh');
                      prepare;
                      params[0].asstring:=query3.fieldbyname('gch').value;
                      params[1].asstring:=query3.fieldbyname('zdh').value;
                      params[2].asstring:=query3.fieldbyname('kh').value;
                      params[3].asstring:=query3.fieldbyname('sh').value;
                      open;
                    end;
                    zds:=zds+query4.fieldbyname('zds').value;
                    cacyl:=cacyl+query4.fieldbyname('zds').value*query2.fieldbyname('jyl').value;
                    next;
                  end;
                end;
                next;
              end;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select ysmjfd from cgjh1 where prjno=:prjno and wl=:wl and xh=1');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              if not fieldbyname('ysmjfd').isnull then ysfd:=fieldbyname('ysmjfd').value;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select sum(scmjfd*lbzs)/sum(lbzs) as syfd,sum(scmjyl) as jhyl from cgjh1 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              if not fieldbyname('syfd').isnull then syfd:=fieldbyname('syfd').value;
              if not fieldbyname('jhyl').isnull then jhyl:=fieldbyname('jhyl').value;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select sum(mjjs) as ycs from cgjh2 where prjno=:prjno and wl=:wl');
              prepare;
              params[0].asstring:=combobox1.text;
              params[1].asstring:=query1.fieldbyname('wl').value;
              open;
              if not fieldbyname('ycs').isnull then ycs:=fieldbyname('ycs').value;
            end;
            with query2 do begin
              close;
              sql.clear;
              sql.add('select * from cgylfx');
              open;
              append;
              fieldbyname('prjno').value:=combobox1.text;
              fieldbyname('wl').value:=query1.fieldbyname('wl').value;
              fieldbyname('gch').value:=gch;
              fieldbyname('zdh').value:=zdh;
              fieldbyname('kh').value:=kh;
              fieldbyname('sh').value:=sh;
              fieldbyname('ysfd').value:=ysfd;
              fieldbyname('syfd').value:=syfd;
              fieldbyname('zds').value:=zds;
              fieldbyname('ycs').value:=ycs;
              fieldbyname('dc').value:=(ycs-zds)*100/zds;
              fieldbyname('cacyl').value:=cacyl;
              fieldbyname('jhyl').value:=jhyl;
              fieldbyname('ybl').value:=0.00;
              fieldbyname('hsl').value:=0.00;
              fieldbyname('scsh').value:=0.00;
              fieldbyname('cutyl').value:=jhyl;
              fieldbyname('ylxc').value:=cacyl-jhyl;
              post;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
    end;
    dmfcjh.cgjh2.refresh;
    dmfcjh.cgjh1.refresh;
    dmfcjh.cgylfx.refresh;
    dmfcjh.cgjh3.refresh;
    dmfcjh.cgjh1.locate('prjno',combobox1.text,[]);
    if dbedit22.text>'0' then dbedit22.readonly:=false
    else dbedit22.readonly:=true;
    if dbedit23.text>'0' then dbedit23.readonly:=false
    else dbedit23.readonly:=true;
  end;
  screen.Cursor:=crdefault;
end;

procedure Tfrmcgjh.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if dbedit1.text<>combobox1.text then
  combobox1.text:=dbedit1.text;
  if dbedit22.text>'0' then dbedit22.readonly:=false
  else dbedit22.readonly:=true;
  if dbedit22.text>'0' then dbedit23.readonly:=false
  else dbedit23.readonly:=true;
end;

procedure Tfrmcgjh.SpeedButton9Click(Sender: TObject);
begin
  if frmlbgccx=nil then frmlbgccx:=tfrmlbgccx.create(self);
  frmlbgccx.label1.caption:='cgjh';
  frmlbgccx.show;
end;

procedure Tfrmcgjh.DBGridEh2Enter(Sender: TObject);
begin
  dmfcjh.cgjh1.refresh;
end;

procedure Tfrmcgjh.N2Click(Sender: TObject);
begin
  if dbedit1.text<>'' then begin
    if application.messagebox('要刪除此工程嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      query5.close;
      query5.sql.clear;
      query5.sql.add('delete from cgjh2 where prjno=:prjno');
      query5.prepare;
      query5.params[0].asstring:=dbedit1.text;
      query5.execsql;
      query5.close;
      query5.sql.clear;
      query5.sql.add('delete from cgjh3 where prjno=:prjno');
      query5.prepare;
      query5.params[0].asstring:=dbedit1.text;
      query5.execsql;
      query5.close;
      query5.sql.clear;
      query5.sql.add('delete from cgylfx where prjno=:prjno');
      query5.prepare;
      query5.params[0].asstring:=dbedit1.text;
      query5.execsql;
      query5.close;
      query5.sql.clear;
      query5.sql.add('delete from cgslfx where prjno=:prjno');
      query5.prepare;
      query5.params[0].asstring:=dbedit1.text;
      query5.execsql;
      query5.close;
      query5.sql.clear;
      query5.sql.add('delete from cgjh1 where prjno=:prjno');
      query5.prepare;
      query5.params[0].asstring:=dbedit1.text;
      query5.execsql;
    end;
    dmfcjh.cgjh1.refresh;
  end;
  if dbedit1.text<>combobox1.text then
  combobox1.text:=dbedit1.text;
end;

procedure Tfrmcgjh.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if dmfcjh.cgjh2.state=dsedit then dmfcjh.cgjh2.post;
  if dmfcjh.cgjh1.state=dsedit then dmfcjh.cgjh1.post;
  if dbedit1.text<>'' then begin
    if dmfcjh.cgjh1.recordcount>0 then begin
      if frmdycgjh=nil then frmdycgjh:=tfrmdycgjh.create(self);
      with frmdycgjh.query1 do begin
        close;
        sql.clear;
        sql.add('select * from cgjh1,cgjh2 where cgjh2.prjno=cgjh1.prjno and cgjh2.wl=cgjh1.wl and cgjh2.xh=cgjh1.xh and cgjh1.prjno=:prjno order by prjno,wl,xh,kh,id');
        prepare;
        params[0].asstring:=dbedit1.text;
        open;
        if recordcount>0 then frmdycgjh.ppreport1.print;
      end;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgjh.SpeedButton8Click(Sender: TObject);
var
  ycs:integer;
  jhyl:double;
begin
  screen.Cursor:=crhourglass;
  if dmfcjh.cgjh2.state=dsedit then dmfcjh.cgjh2.post;
  if dmfcjh.cgjh1.state=dsedit then dmfcjh.cgjh1.post;
  if dbedit1.text<>'' then begin
    with query1 do begin
      close;
      sql.clear;
      sql.add('select distinct wl from cgjh1 where prjno=:prjno');
      prepare;
      params[0].asstring:=dbedit1.text;
      open;
      first;
      while not eof do begin
        ycs:=0;jhyl:=0.00;
        with query2 do begin
          close;
          sql.clear;
          sql.add('select sum(mjjs) as ycs from cgjh2 where prjno=:prjno and wl=:wl');
          prepare;
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('ycs').isnull then ycs:=fieldbyname('ycs').value;
        end;
        with query2 do begin
          close;
          sql.clear;
          sql.add('select sum(scmjyl) as jhyl from cgjh1 where prjno=:prjno and wl=:wl');
          prepare;
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('jhyl').isnull then jhyl:=fieldbyname('jhyl').value;
        end;
        with query2 do begin
          close;
          sql.clear;
          sql.add('select * from cgylfx where prjno=:prjno and wl=:wl');
          prepare;
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          edit;
          fieldbyname('ycs').value:=ycs;
          fieldbyname('dc').value:=(fieldbyname('ycs').value-fieldbyname('zds').value)*100/fieldbyname('zds').value;
          fieldbyname('jhyl').value:=jhyl;
          fieldbyname('cutyl').value:=jhyl*100*100*100/((100-fieldbyname('ybl').value)*(100-fieldbyname('hsl').value)*(100-fieldbyname('scsh').value));
          fieldbyname('ylxc').value:=fieldbyname('cacyl').value-fieldbyname('cutyl').value;
          post;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    {with query1 do begin
      close;
      sql.clear;
      sql.add('select * from cgslfx where prjno=:prjno');
      prepare;
      params[0].asstring:=dbedit1.text;
      open;
      first;
      while not eof do begin
        with query2 do begin
          close;
          sql.clear;
          sql.add('select distinct wl,sum(ymjjs) as ymjjs,sum(mjjs) as mjjs from cgjh2 where prjno=:prjno and kh=:kh and cm=:cm and gch=:gch and zdh=:zdh and sh=:sh group by wl order by mjjs');
          prepare;
          params[0].asstring:=query1.fieldbyname('prjno').value;
          params[1].asstring:=query1.fieldbyname('kh').value;
          params[2].asstring:=query1.fieldbyname('cm').value;
          params[3].asstring:=query1.fieldbyname('gch').value;
          params[4].asstring:=query1.fieldbyname('zdh').value;
          params[5].asstring:=query1.fieldbyname('sh').value;
          open;
        end;
        if query2.fieldbyname('ymjjs').value<>query2.fieldbyname('mjjs').value then begin
          edit;
          fieldbyname('ycs').value:=query2.fieldbyname('mjjs').value;
          fieldbyname('dc').value:=fieldbyname('ycs').value-fieldbyname('zds').value;
          fieldbyname('dcp').value:=fieldbyname('dc').value*100/fieldbyname('zds').value;
          post;
        end;
        application.ProcessMessages;
        next;
      end;
    end;}
    if frmcgfx=nil then frmcgfx:=tfrmcgfx.create(self);
    with frmcgfx.query1 do begin
      close;
      sql.clear;
      sql.add('select * from cgylfx a,cgjh3 b where a.prjno=b.prjno and a.wl=b.wl and a.prjno=:prjno order by prjno,wl');
      prepare;
      params[0].asstring:=dbedit1.text;
      open;
      if recordcount>0 then frmcgfx.ppreport1.print;
    end;
    with frmcgfx.query2 do begin
      close;
      sql.clear;
      sql.add('select * from cgslfx where prjno=:prjno order by prjno,kh,id');
      prepare;
      params[0].asstring:=dbedit1.text;
      open;
      if recordcount>0 then frmcgfx.ppreport2.print;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgjh.PageControl1Change(Sender: TObject);
var
  ycs,ycs1,zds1,gm:integer;
  jhyl:double;
begin
  screen.cursor:=crhourglass;
  if pagecontrol1.activepage=tabsheet2 then begin
    if dmfcjh.cgjh2.state=dsedit then dmfcjh.cgjh2.post;
    if dmfcjh.cgjh1.state=dsedit then dmfcjh.cgjh1.post;
    if dbedit1.text<>'' then begin
     with query1 do begin
      close;
      sql.clear;
      sql.add('select distinct wl from cgjh1 where prjno=:prjno');
      prepare;
      params[0].asstring:=dbedit1.text;
      open;
      first;
      while not eof do begin
        ycs:=0;jhyl:=0.00;
        with query2 do begin
          close;
          sql.clear;
          sql.add('select sum(mjjs) as ycs from cgjh2 where prjno=:prjno and wl=:wl');
          prepare;
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('ycs').isnull then ycs:=fieldbyname('ycs').value;
        end;
        with query2 do begin
          close;
          sql.clear;
          sql.add('select sum(scmjyl) as jhyl from cgjh1 where prjno=:prjno and wl=:wl');
          prepare;
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('jhyl').isnull then jhyl:=fieldbyname('jhyl').value;
        end;
        with query2 do begin
          close;
          sql.clear;
          sql.add('select * from cgylfx where prjno=:prjno and wl=:wl');
          prepare;
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          edit;
          fieldbyname('ycs').value:=ycs;
          fieldbyname('dc').value:=(fieldbyname('ycs').value-fieldbyname('zds').value)*100/fieldbyname('zds').value;
          fieldbyname('jhyl').value:=jhyl;
          fieldbyname('cutyl').value:=jhyl*100*100*100/((100-fieldbyname('ybl').value)*(100-fieldbyname('hsl').value)*(100-fieldbyname('scsh').value));
          fieldbyname('ylxc').value:=fieldbyname('cacyl').value-fieldbyname('cutyl').value;
          post;
        end;
        application.ProcessMessages;
        next;
      end;
     end;
    end;
    dmfcjh.cgylfx.refresh;
  end
  else begin
   if pagecontrol1.activepage=tabsheet3 then begin
    if dmfcjh.cgjh2.state=dsedit then dmfcjh.cgjh2.post;
    if dmfcjh.cgjh1.state=dsedit then dmfcjh.cgjh1.post;
    if dmfcjh.cgylfx.state=dsedit then dmfcjh.cgylfx.post;
    if dmfcjh.cgjh3.state=dsedit then dmfcjh.cgjh3.post;
    if dbedit1.text<>'' then begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('delete from cgtemp');
        execsql;
        close;
        sql.clear;
        sql.add('insert into cgtemp(prjno,gch,zdh,kh,sh,wl) select distinct prjno,gch,zdh,kh,sh,wl from fcjy3 where prjno=:prjno');
        prepare;
        params[0].asstring:=dbedit1.text;
        execsql;
        close;
        sql.clear;
        sql.add('select wl from cgjh3 where prjno=:prjno and qr=:qr and cs=1');
        prepare;
        params[0].asstring:=dbedit1.text;
        params[1].asboolean:=false;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            sql.clear;
            sql.add('select distinct kh from cgtemp where wl=:wl');
            prepare;
            params[0].asstring:=query1.fieldbyname('wl').value;
            open;
            first;
            while not eof do begin
              with query3 do begin
                close;
                sql.clear;
                sql.add('delete from cgtemp where kh=:kh');
                prepare;
                params[0].asstring:=query2.fieldbyname('kh').value;
                execsql;
                close;
                sql.clear;
                sql.add('delete from cgslfx where prjno=:prjno and kh=:kh');
                prepare;
                params[0].asstring:=dmfcjh.cgjh1.fieldbyname('prjno').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                execsql;
              end;
              application.processmessages;
              next;
            end;
          end;
          application.ProcessMessages;
          next;
        end;
        close;
        sql.clear;
        sql.add('select distinct prjno,gch,zdh,kh,sh from cgtemp');
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            sql.clear;
            sql.add('select * from cgslfx where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh');
            prepare;
            params[0].asstring:=query1.fieldbyname('prjno').value;
            params[1].asstring:=query1.fieldbyname('gch').value;
            params[2].asstring:=query1.fieldbyname('zdh').value;
            params[3].asstring:=query1.fieldbyname('kh').value;
            params[4].asstring:=query1.fieldbyname('sh').value;
            open;
            if recordcount=0 then begin
              with query2 do begin
                close;
                sql.clear;
                sql.add('select id,cm,zds from fczd2 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by id');
                prepare;
                params[0].asstring:=query1.fieldbyname('gch').value;
                params[1].asstring:=query1.fieldbyname('zdh').value;
                params[2].asstring:=query1.fieldbyname('kh').value;
                params[3].asstring:=query1.fieldbyname('sh').value;
                open;
                first;
                while not eof do begin
                  with query3 do begin
                    close;
                    sql.clear;
                    sql.add('select * from cgslfx');
                    open;
                    append;
                    fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                    fieldbyname('gch').value:=query1.fieldbyname('gch').value;
                    fieldbyname('zdh').value:=query1.fieldbyname('zdh').value;
                    fieldbyname('kh').value:=query1.fieldbyname('kh').value;
                    fieldbyname('sh').value:=query1.fieldbyname('sh').value;
                    fieldbyname('cm').value:=query2.fieldbyname('cm').value;
                    fieldbyname('zds').value:=query2.fieldbyname('zds').value;
                    fieldbyname('ycs').value:=0;
                    fieldbyname('dc').value:=0;
                    fieldbyname('dcp').value:=0.00;
                    post;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
            end;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query4 do begin
        close;
        sql.clear;
        sql.add('select * from cgslfx where prjno=:prjno');
        prepare;
        params[0].asstring:=dbedit1.text;
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            sql.clear;
            sql.add('select wl,sum(mjjs) as ycs from cgjh2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs');
            //sql.add('select a.wl,sum(a.mjjs)+sum(b.gm) as ycs from cgjh2 a,fcjy2 b where a.prjno=b.prjno and a.xh=b.xh and a.wl=b.wl and a.kh=b.kh and a.sh=b.sh and a.cm=b.cm ');
            //sql.add('and a.prjno=:prjno and a.kh=:kh and a.sh=:sh and a.cm=:cm group by a.wl order by ycs');
            prepare;
            params[0].asstring:=query4.fieldbyname('prjno').value;
            params[1].asstring:=query4.fieldbyname('kh').value;
            params[2].asstring:=query4.fieldbyname('sh').value;
            params[3].asstring:=query4.fieldbyname('cm').value;
            open;
            if not fieldbyname('ycs').isnull then ycs1:=fieldbyname('ycs').value
            else ycs1:=0;
          end;
          with query3 do begin
            close;
            sql.clear;
            sql.add('select wl,sum(gm) as gm from fcjy2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by gm desc');
            prepare;
            params[0].asstring:=query4.fieldbyname('prjno').value;
            params[1].asstring:=query4.fieldbyname('kh').value;
            params[2].asstring:=query4.fieldbyname('sh').value;
            params[3].asstring:=query4.fieldbyname('cm').value;
            open;
            if not fieldbyname('gm').isnull then gm:=fieldbyname('gm').value
            else gm:=0;
          end;
          with query3 do begin
            close;
            sql.clear;
            sql.add('select sum(zds) as zds from fczd2 where gch=:gch and kh=:kh and sh=:sh and cm=:cm');// and zdh=:zdh');
            prepare;
            params[0].asstring:=query4.fieldbyname('gch').value;
            params[1].asstring:=query4.fieldbyname('kh').value;
            params[2].asstring:=query4.fieldbyname('sh').value;
            params[3].asstring:=query4.fieldbyname('cm').value;
            //params[4].asstring:=query4.fieldbyname('zdh').value;
            open;
            if not fieldbyname('zds').isnull then zds1:=fieldbyname('zds').value
            else zds1:=0;
          end;
          edit;
          fieldbyname('ycs').asinteger:=round((ycs1+gm)/zds1*fieldbyname('zds').value);
          fieldbyname('dc').value:=fieldbyname('ycs').value-fieldbyname('zds').value;
          fieldbyname('dcp').value:=fieldbyname('dc').value*100/fieldbyname('zds').value;
          post;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
    dmfcjh.cgslfx.refresh;
   end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgjh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmfcjh.cgjh2.state=dsedit then dmfcjh.cgjh2.post;
  if dmfcjh.cgjh3.state=dsedit then dmfcjh.cgjh3.post;
  if dmfcjh.cgjh1.state=dsedit then dmfcjh.cgjh1.post;
  if dmfcjh.cgylfx.state=dsedit then dmfcjh.cgylfx.post;
  if dmfcjh.cgslfx.state=dsedit then dmfcjh.cgslfx.post;
end;

procedure Tfrmcgjh.BitBtn1Click(Sender: TObject);
begin
  if not dbgrideh4.Fields[0].isnull then begin
    if application.MessageBox('確定要新增IDO#/IOU#嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select prjno,wl,cs from cgjh3 where prjno=:prjno and wl=:wl order by cs desc');
        prepare;
        params[0].asstring:=dmfcjh.cgjh3.fieldbyname('prjno').value;
        params[1].asstring:=dmfcjh.cgjh3.fieldbyname('wl').value;
        open;
      end;
      with query2 do begin
        close;
        sql.clear;
        sql.add('select * from cgjh3');
        open;
        append;
        fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
        fieldbyname('wl').value:=query1.fieldbyname('wl').value;
        fieldbyname('cs').value:=query1.fieldbyname('cs').value+1;
        post;
      end;
      dmfcjh.cgjh3.refresh;
    end;
  end;
end;

procedure Tfrmcgjh.SpeedButton11Click(Sender: TObject);
begin
  if frmsclfx=nil then frmsclfx:=tfrmsclfx.create(self);
  frmsclfx.dateedit1.text:='    /  /  ';
  frmsclfx.dateedit2.text:='    /  /  ';
  frmsclfx.edit1.text:=dbedit1.text;
  frmsclfx.label4.caption:='cgjh';
  frmsclfx.show;
end;

end.
