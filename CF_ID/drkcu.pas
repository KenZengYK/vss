unit drkcu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ppBands, ppCtrls, ppClass, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Db, DBTables, Mask,
  rxToolEdit, ppViewr;

type
  Tfrmdrkc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Query2: TQuery;
    Query1: TQuery;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText17: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel28: TppLabel;
    ppDBText14: TppDBText;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query3: TQuery;
    Query4: TQuery;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdrkc: Tfrmdrkc;

implementation

{$R *.DFM}

procedure Tfrmdrkc.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmdrkc.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdrkc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmdrkc:=nil;
end;

procedure Tfrmdrkc.BitBtn1Click(Sender: TObject);
var
  gch,sh:array[1..2] of string;
  mjh:array[1..3] of string;
  bz1:string;
  i:integer;
begin
  with query1 do begin
    close;
    sql.clear;
    sql.add('delete from drkc');
    execsql;
  end;
  if dateedit1.text<>'    /  /  ' then begin
    if dateedit2.text<>'    /  /  ' then begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select * from cgbg1 where cfm=true and rq>=:rq1 and rq<=:rq2');
        prepare;
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit2.date;
        open;
        first;
        while not eof do begin
          for i:=1 to 2 do begin
            gch[i]:='';sh[i]:='';
          end;
          for i:=1 to 3 do begin
            mjh[i]:='';
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select distinct gch,sh from fcjy3 where prjno=:prjno');
            prepare;
            params[0].asstring:=query1.fieldbyname('prjno').value;
            open;
            gch[1]:=fieldbyname('gch').value;
            sh[1]:=fieldbyname('sh').value;
            next;
            if not eof then begin
              gch[2]:=fieldbyname('gch').value;
              sh[2]:=fieldbyname('sh').value;
            end;
          end;
          if fieldbyname('lbzs2').value>0 then begin
            with query2 do begin
              close;
              sql.clear;
              sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asstring:=query1.fieldbyname('wl').value;
              params[2].asinteger:=query1.fieldbyname('yxh').value;
              open;
              mjh[1]:=fieldbyname('mjh').value;
              next;
              mjh[2]:=fieldbyname('mjh').value;
              next;
              mjh[3]:=fieldbyname('mjh').value;
            end;
          end
          else begin
            if fieldbyname('lbzs1').value>0 then begin
              with query2 do begin
                close;
                sql.clear;
                sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
                prepare;
                params[0].asstring:=query1.fieldbyname('prjno').value;
                params[1].asstring:=query1.fieldbyname('wl').value;
                params[2].asinteger:=query1.fieldbyname('yxh').value;
                open;
                mjh[1]:=fieldbyname('mjh').value;
                next;
                mjh[2]:=fieldbyname('mjh').value;
              end;
            end
            else begin
              mjh[1]:=fieldbyname('mjh').value;
            end;
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select * from drkc');
            open;
            append;
            fieldbyname('rq').value:=query1.fieldbyname('rq').value;
            fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
            fieldbyname('gch').value:=gch[1];
            fieldbyname('wl').value:=query1.fieldbyname('wl').value;
            fieldbyname('sh').value:=sh[1];
            fieldbyname('mjh').value:=mjh[1];
            fieldbyname('xh').value:=query1.fieldbyname('xh').value;
            fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
            fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
            fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
            fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
            fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
            fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
            fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
            fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
            fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
            fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
            fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
            if not query1.fieldbyname('mjstatus').isnull then
            bz1:=query1.fieldbyname('mjstatus').value
            else bz1:='';
            if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
            if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
            if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
            if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
            if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
            if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
            if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
            if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
            if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
            if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
            if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
            if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
            if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
            if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
            fieldbyname('bz').value:=bz1;
            post;
            if mjh[3]>'' then begin
              if gch[2]>'' then begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[1];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end
              else begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end;
            end
            else begin
              if mjh[2]>'' then begin
                if gch[2]>'' then begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[1];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end
                else begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end;
              end;
            end;
          end;
          next;
        end;
      end;
    end
    else begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select * from cgbg1 where cfm=true and rq>=:rq1');
        prepare;
        params[0].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          for i:=1 to 2 do begin
            gch[i]:='';sh[i]:='';
          end;
          for i:=1 to 3 do begin
            mjh[i]:='';
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select distinct gch,sh from fcjy3 where prjno=:prjno');
            prepare;
            params[0].asstring:=query1.fieldbyname('prjno').value;
            open;
            gch[1]:=fieldbyname('gch').value;
            sh[1]:=fieldbyname('sh').value;
            next;
            if not eof then begin
              gch[2]:=fieldbyname('gch').value;
              sh[2]:=fieldbyname('sh').value;
            end;
          end;
          if fieldbyname('lbzs2').value>0 then begin
            with query2 do begin
              close;
              sql.clear;
              sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asstring:=query1.fieldbyname('wl').value;
              params[2].asinteger:=query1.fieldbyname('yxh').value;
              open;
              mjh[1]:=fieldbyname('mjh').value;
              next;
              mjh[2]:=fieldbyname('mjh').value;
              next;
              mjh[3]:=fieldbyname('mjh').value;
            end;
          end
          else begin
            if fieldbyname('lbzs1').value>0 then begin
              with query2 do begin
                close;
                sql.clear;
                sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
                prepare;
                params[0].asstring:=query1.fieldbyname('prjno').value;
                params[1].asstring:=query1.fieldbyname('wl').value;
                params[2].asinteger:=query1.fieldbyname('yxh').value;
                open;
                mjh[1]:=fieldbyname('mjh').value;
                next;
                mjh[2]:=fieldbyname('mjh').value;
              end;
            end
            else begin
              mjh[1]:=fieldbyname('mjh').value;
            end;
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select * from drkc');
            open;
            append;
            fieldbyname('rq').value:=query1.fieldbyname('rq').value;
            fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
            fieldbyname('gch').value:=gch[1];
            fieldbyname('wl').value:=query1.fieldbyname('wl').value;
            fieldbyname('sh').value:=sh[1];
            fieldbyname('mjh').value:=mjh[1];
            fieldbyname('xh').value:=query1.fieldbyname('xh').value;
            fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
            fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
            fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
            fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
            fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
            fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
            fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
            fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
            fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
            fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
            fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
            if not query1.fieldbyname('mjstatus').isnull then
            bz1:=query1.fieldbyname('mjstatus').value
            else bz1:='';
            if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
            if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
            if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
            if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
            if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
            if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
            if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
            if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
            if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
            if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
            if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
            if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
            if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
            if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
            fieldbyname('bz').value:=bz1;
            post;
            if mjh[3]>'' then begin
              if gch[2]>'' then begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[1];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end
              else begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end;
            end
            else begin
              if mjh[2]>'' then begin
                if gch[2]>'' then begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[1];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end
                else begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end;
              end;
            end;
          end;
          next;
        end;
      end;
    end;
  end
  else begin
    if dateedit2.text<>'    /  /  ' then begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select * from cgbg1 where cfm=true and rq<=:rq2');
        prepare;
        params[0].asdate:=dateedit2.date;
        open;
        first;
        while not eof do begin
          for i:=1 to 2 do begin
            gch[i]:='';sh[i]:='';
          end;
          for i:=1 to 3 do begin
            mjh[i]:='';
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select distinct gch,sh from fcjy3 where prjno=:prjno');
            prepare;
            params[0].asstring:=query1.fieldbyname('prjno').value;
            open;
            gch[1]:=fieldbyname('gch').value;
            sh[1]:=fieldbyname('sh').value;
            next;
            if not eof then begin
              gch[2]:=fieldbyname('gch').value;
              sh[2]:=fieldbyname('sh').value;
            end;
          end;
          if fieldbyname('lbzs2').value>0 then begin
            with query2 do begin
              close;
              sql.clear;
              sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asstring:=query1.fieldbyname('wl').value;
              params[2].asinteger:=query1.fieldbyname('yxh').value;
              open;
              mjh[1]:=fieldbyname('mjh').value;
              next;
              mjh[2]:=fieldbyname('mjh').value;
              next;
              mjh[3]:=fieldbyname('mjh').value;
            end;
          end
          else begin
            if fieldbyname('lbzs1').value>0 then begin
              with query2 do begin
                close;
                sql.clear;
                sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
                prepare;
                params[0].asstring:=query1.fieldbyname('prjno').value;
                params[1].asstring:=query1.fieldbyname('wl').value;
                params[2].asinteger:=query1.fieldbyname('yxh').value;
                open;
                mjh[1]:=fieldbyname('mjh').value;
                next;
                mjh[2]:=fieldbyname('mjh').value;
              end;
            end
            else begin
              mjh[1]:=fieldbyname('mjh').value;
            end;
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select * from drkc');
            open;
            append;
            fieldbyname('rq').value:=query1.fieldbyname('rq').value;
            fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
            fieldbyname('gch').value:=gch[1];
            fieldbyname('wl').value:=query1.fieldbyname('wl').value;
            fieldbyname('sh').value:=sh[1];
            fieldbyname('mjh').value:=mjh[1];
            fieldbyname('xh').value:=query1.fieldbyname('xh').value;
            fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
            fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
            fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
            fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
            fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
            fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
            fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
            fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
            fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
            fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
            fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
            if not query1.fieldbyname('mjstatus').isnull then
            bz1:=query1.fieldbyname('mjstatus').value
            else bz1:='';
            if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
            if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
            if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
            if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
            if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
            if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
            if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
            if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
            if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
            if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
            if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
            if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
            if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
            if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
            fieldbyname('bz').value:=bz1;
            post;
            if mjh[3]>'' then begin
              if gch[2]>'' then begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[1];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end
              else begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end;
            end
            else begin
              if mjh[2]>'' then begin
                if gch[2]>'' then begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[1];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end
                else begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end;
              end;
            end;
          end;
          next;
        end;
      end;
    end
    else begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select * from cgbg1 where cfm=true');
        open;
        first;
        while not eof do begin
          for i:=1 to 2 do begin
            gch[i]:='';sh[i]:='';
          end;
          for i:=1 to 3 do begin
            mjh[i]:='';
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select distinct gch,sh from fcjy3 where prjno=:prjno');
            prepare;
            params[0].asstring:=query1.fieldbyname('prjno').value;
            open;
            gch[1]:=fieldbyname('gch').value;
            sh[1]:=fieldbyname('sh').value;
            next;
            if not eof then begin
              gch[2]:=fieldbyname('gch').value;
              sh[2]:=fieldbyname('sh').value;
            end;
          end;
          if fieldbyname('lbzs2').value>0 then begin
            with query2 do begin
              close;
              sql.clear;
              sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
              prepare;
              params[0].asstring:=query1.fieldbyname('prjno').value;
              params[1].asstring:=query1.fieldbyname('wl').value;
              params[2].asinteger:=query1.fieldbyname('yxh').value;
              open;
              mjh[1]:=fieldbyname('mjh').value;
              next;
              mjh[2]:=fieldbyname('mjh').value;
              next;
              mjh[3]:=fieldbyname('mjh').value;
            end;
          end
          else begin
            if fieldbyname('lbzs1').value>0 then begin
              with query2 do begin
                close;
                sql.clear;
                sql.add('select mjh from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh');
                prepare;
                params[0].asstring:=query1.fieldbyname('prjno').value;
                params[1].asstring:=query1.fieldbyname('wl').value;
                params[2].asinteger:=query1.fieldbyname('yxh').value;
                open;
                mjh[1]:=fieldbyname('mjh').value;
                next;
                mjh[2]:=fieldbyname('mjh').value;
              end;
            end
            else begin
              mjh[1]:=fieldbyname('mjh').value;
            end;
          end;
          with query2 do begin
            close;
            sql.clear;
            sql.add('select * from drkc');
            open;
            append;
            fieldbyname('rq').value:=query1.fieldbyname('rq').value;
            fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
            fieldbyname('gch').value:=gch[1];
            fieldbyname('wl').value:=query1.fieldbyname('wl').value;
            fieldbyname('sh').value:=sh[1];
            fieldbyname('mjh').value:=mjh[1];
            fieldbyname('xh').value:=query1.fieldbyname('xh').value;
            fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
            fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
            fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
            fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
            fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
            fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
            fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
            fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
            fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
            fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
            fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
            if not query1.fieldbyname('mjstatus').isnull then
            bz1:=query1.fieldbyname('mjstatus').value
            else bz1:='';
            if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
            if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
            if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
            if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
            if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
            if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
            if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
            if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
            if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
            if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
            if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
            if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
            if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
            if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
            fieldbyname('bz').value:=bz1;
            post;
            if mjh[3]>'' then begin
              if gch[2]>'' then begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[1];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[2];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[2];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end
              else begin
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[2];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
                append;
                fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                fieldbyname('gch').value:=gch[1];
                fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                fieldbyname('sh').value:=sh[1];
                fieldbyname('mjh').value:=mjh[3];
                fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd2').value;
                fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc2').value;
                fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd2').value;
                fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd2').value;
                fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs2').value;
                fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                fieldbyname('ybl').value:=query1.fieldbyname('ybl2').value;
                fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj2').value;
                fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                if not query1.fieldbyname('mjstatus').isnull then
                bz1:=query1.fieldbyname('mjstatus').value
                else bz1:='';
                if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                fieldbyname('bz').value:=bz1;
                post;
              end;
            end
            else begin
              if mjh[2]>'' then begin
                if gch[2]>'' then begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[1];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[2];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[2];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end
                else begin
                  append;
                  fieldbyname('rq').value:=query1.fieldbyname('rq').value;
                  fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
                  fieldbyname('gch').value:=gch[1];
                  fieldbyname('wl').value:=query1.fieldbyname('wl').value;
                  fieldbyname('sh').value:=sh[1];
                  fieldbyname('mjh').value:=mjh[2];
                  fieldbyname('xh').value:=query1.fieldbyname('xh').value;
                  fieldbyname('mjcd').value:=query1.fieldbyname('scmjcd1').value;
                  fieldbyname('mjypzbc').value:=query1.fieldbyname('scmjzc1').value;
                  fieldbyname('ysmjfd').value:=query1.fieldbyname('ysmjfd1').value;
                  fieldbyname('mjfd').value:=query1.fieldbyname('scmjfd1').value;
                  fieldbyname('jhlbzs').value:=query1.fieldbyname('lbzs1').value;
                  fieldbyname('dzmjps').value:=query1.fieldbyname('dzmjps').value;
                  fieldbyname('zdypcd').value:=query1.fieldbyname('zdypcd').value;
                  fieldbyname('ybl').value:=query1.fieldbyname('ybl1').value;
                  fieldbyname('jhcgsj').value:=query1.fieldbyname('cgsj1').value;
                  fieldbyname('scmjyl').value:=fieldbyname('mjcd').value*fieldbyname('jhlbzs').value;
                  fieldbyname('mjs').value:=query1.fieldbyname('mjjs').value;
                  if not query1.fieldbyname('mjstatus').isnull then
                  bz1:=query1.fieldbyname('mjstatus').value
                  else bz1:='';
                  if query1.fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
                  if query1.fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
                  if query1.fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
                  if query1.fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
                  if query1.fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
                  if query1.fieldbyname('dk').value=true then bz1:=bz1+' 單款';
                  if query1.fieldbyname('hk').value=true then bz1:=bz1+' 混款';
                  if query1.fieldbyname('ds').value=true then bz1:=bz1+' 單色';
                  if query1.fieldbyname('hs').value=true then bz1:=bz1+' 混色';
                  if query1.fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
                  if query1.fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
                  if query1.fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
                  if query1.fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
                  if query1.fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
                  fieldbyname('bz').value:=bz1;
                  post;
                end;
              end;
            end;
          end;
          next;
        end;
      end;
    end;
  end;
  with query1 do begin
    close;
    sql.clear;
    sql.add('select * from drkc order by prjno');
    open;
    if recordcount>0 then ppreport1.print;
  end;
end;

end.
