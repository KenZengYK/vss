unit cgdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ppCtrls, myChkBox, ppBands, ppClass, ppStrtch, ppRegion, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, Db, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, DBTables, StdCtrls, Buttons, Grids, DBGridEh,
  ExtCtrls, DBCtrls, Mask, ComCtrls, ppViewr, ppMemo, DBClient, ppSubRpt,
  ppModule, raCodMod, GridsEh;

type
  Tfrmcgd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppBDEPipeline3: TppBDEPipeline;
    ppBDEPipeline4: TppBDEPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel39: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel44: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel49: TppLabel;
    ppDBText34: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppRegion4: TppRegion;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppShape19: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppDBText15: TppDBText;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppDBText24: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppRegion5: TppRegion;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    query1: TClientDataSet;
    query2: TClientDataSet;
    query3: TClientDataSet;
    query4: TClientDataSet;
    query5: TClientDataSet;
    query6: TClientDataSet;
    query7: TClientDataSet;
    lbjhm: TClientDataSet;
    lbjhd: TClientDataSet;
    lbwld: TClientDataSet;
    lbwlm: TClientDataSet;
    cgd1: TClientDataSet;
    dscgd1: TDataSource;
    cgd3: TClientDataSet;
    dscgd3: TDataSource;
    cgdwl: TClientDataSet;
    dscgdwl: TDataSource;
    cgd2: TClientDataSet;
    dscgd2: TDataSource;
    cgd2Prjno: TStringField;
    cgd2Xh: TIntegerField;
    cgd2Wl: TStringField;
    cgd2Kh: TStringField;
    cgd2Id: TAutoIncField;
    cgd2Cm: TStringField;
    cgd2Gch: TStringField;
    cgd2Zdh: TStringField;
    cgd2Sh: TStringField;
    cgd2Mjjs: TIntegerField;
    cgd2Mjs: TFloatField;
    cgd2Zds: TIntegerField;
    cgd2Ys: TIntegerField;
    cgd2Jc: TIntegerField;
    cgd2Bz: TStringField;
    ppReport2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel28: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel29: TppLabel;
    ppDBText23: TppDBText;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel74: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel58: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel77: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape18: TppShape;
    ppShape17: TppShape;
    wl: TppDBText;
    ppShape20: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand1: TppFooterBand;
    cgd3Prjno: TStringField;
    cgd3Xh: TIntegerField;
    cgd3Wl: TStringField;
    cgd3Mjh: TStringField;
    cgd3Mjfd: TIntegerField;
    cgd3Ysmjfd: TIntegerField;
    cgd3Mjcd: TFloatField;
    cgd3Mjypzbc: TFloatField;
    cgd3Jhlbzs: TIntegerField;
    cgd3Jhdzlbcd: TFloatField;
    cgd3Jhwlcd: TFloatField;
    cgd3Ybl: TFloatField;
    cgd3Jhcgsj: TFloatField;
    cgd3Jhscsh: TFloatField;
    cgd3Pbl: TFloatField;
    cgd3Hsl: TFloatField;
    N1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton9: TSpeedButton;
    Label22: TLabel;
    SpeedButton2: TSpeedButton;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ComboBox1: TComboBox;
    DBEdit17: TDBEdit;
    DBEdit21: TDBEdit;
    ComboBox2: TComboBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    tc: TSpeedButton;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit19: TDBEdit;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    cgd2cup: TStringField;
    cgd2siz1: TIntegerField;
    cgd2gmc: TStringField;
    cgd2gmt: TStringField;
    cgd2gm: TIntegerField;
    cgd2jyl: TFloatField;
    procedure SpeedButton9Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure cgd1AfterPost(DataSet: TDataSet);
    procedure cgd2AfterPost(DataSet: TDataSet);
    procedure cgd3AfterPost(DataSet: TDataSet);
    procedure dscgd1DataChange(Sender: TObject; Field: TField);
    procedure cgd2MjsChange(Sender: TField);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure dslbjhmDataChange(Sender: TObject; Field: TField);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cgd1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcgd: Tfrmcgd;

implementation
uses mainu, xglbzsu, zdsu, lbyldyu;
{$R *.DFM}

procedure Tfrmcgd.SpeedButton9Click(Sender: TObject);
begin
  if frmzds=nil then frmzds:=tfrmzds.create(self);
  frmzds.caption:='已作拉布計劃之工程編號';
  frmzds.label2.caption:='cgd';
  frmzds.show;
end;

procedure Tfrmcgd.ComboBox1Change(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if combobox1.text<>'' then
  begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select prjno from cut_cgd1 where prjno=:prjno';
      params[0].asstring:=combobox1.text;
      open;
      if recordcount=0 then begin
        //frmxtdl.SocketConnection1.appserver.lbjh2cgd(combobox1.text);
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          commandtext:='execute cut_lb2cgd :prjno';
          params[0].asstring:=combobox1.text;
          execute;
        end;
        with cgd1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cut_cgd1 where prjno=:prjno';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end
      else begin
        with cgd1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cut_cgd1 where prjno=:prjno';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcgd.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcgd.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcgd.N2Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if dbedit1.text>'' then begin
    if application.MessageBox('要刪除此裁單嗎?','提示',mb_iconquestion+mb_okcancel)=idok then begin
     with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='delete from cut_cgd2 where prjno=:prjno';
      params[0].asstring:=dbedit1.text;
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='delete from cut_cgd3 where prjno=:prjno';
      params[0].asstring:=dbedit1.text;
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='delete from cut_cgdwl where prjno=:prjno';
      params[0].asstring:=dbedit1.text;
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='delete from cut_cgd1 where prjno=:prjno';
      params[0].asstring:=dbedit1.text;
      execute;
     end;
     cgd1.active:=false;
     cgd2.active:=false;
     cgd3.active:=false;
     combobox1.text:='';
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcgd.SpeedButton1Click(Sender: TObject);
var
  i:integer;
begin
  screen.cursor:=crHourglass;
  if cgd1.active=true then begin
    if cgd1.state=dsedit then cgd1.post;
    if cgd1.recordcount>0 then begin
      {query8.close;query9.close;
      if fileexists('c:\temp\cutplan.db') then deletefile('c:\temp\cutplan.db');
      if fileexists('c:\temp\cutplan1.db') then deletefile('c:\temp\cutplan1.db');
      with query8 do begin
        close;
        sql.clear;
        sql.add('create table cutplan(Prjno char(20),Wl char(20),Xh integer,Ylbzs integer,Lbzs integer,Sjlb integer,Pjmjfd numeric,Ybl numeric,Mjzcd numeric,Mjypzbzc numeric,Jhdzlbzc numeric,Jhwlzc numeric,Jhcgzsj numeric,Jhscsh numeric,');
        sql.add('Sjdzlbzc numeric,Sjwlzc numeric,Sjcgzsj numeric,Sjscsh numeric,Mjyl numeric,Zjs integer,Pbl numeric,Hsl numeric,Zdypcd numeric,Ysmjfd numeric,Zp Boolean,Dzmjps integer,Mjstatus char(15),Rq date,Xjs integer,Gzcs integer,');
        sql.add('mjh char(20),mjfd integer,mjcd numeric,mjypzbc numeric,jhlbzs integer,jhdzlbcd numeric,jhwlcd numeric,jhcgsj numeric,scmjyl numeric,bzmj Boolean,zbmj Boolean,twmj Boolean,pzx Boolean,yymj Boolean,dk Boolean,hk Boolean,ds Boolean,');
        sql.add('hs Boolean,dzd Boolean,hzd Boolean,ldz Boolean,lhz Boolean,yqxg Boolean,zysc Boolean,id integer,cm char(6),gch char(60),zdh char(60),kh char(20),sh char(30),mjjs integer,mjs numeric,zds integer)');
        execsql;
        close;
        sql.clear;
        sql.add('select * from cutplan');
        open;
      end;
      lbjhm.close;
      lbjhm.params.clear;
      if combobox2.text>'' then begin
        lbjhm.params.createparam(ftstring,'prjno',ptinput);
        lbjhm.params.createparam(ftstring,'wl',ptinput);
        lbjhm.commandtext:='select distinct a.*,b.mjh,b.mjfd,b.mjcd,b.mjypzbc,b.jhlbzs,b.jhdzlbcd,b.jhwlcd,b.jhcgsj,b.jhlbzs*b.mjcd as scmjyl,'
                        +'c.bzmj,c.zbmj,c.twmj,c.pzx,c.yymj,c.dk,c.hk,c.ds,c.hs,c.dzd,c.hzd,c.ldz,c.lhz,c.yqxg,c.zysc,'
                        +'d.id,d.cm,d.gch,d.zdh,d.kh,d.sh,d.mjjs,d.mjs,d.zds'
                        +' from cgd1 a,cgd3 b,cgdwl c,lbjh2 d '
                        +'where b.prjno=a.prjno and b.wl=a.wl and b.xh=a.xh and c.prjno=a.prjno and c.wl=a.wl and c.xh=a.xh'
                        +' and d.prjno=a.prjno and d.wl=a.wl and d.xh=a.sjlb and a.prjno=:prjno and a.wl=:wl order by a.prjno,a.wl,b.mjh,d.gch,d.zdh,d.kh,d.cm';
        lbjhm.params[0].asstring:=dbedit1.text;
        lbjhm.params[1].asstring:=dbedit17.text;
        lbjhm.open;
      end
      else begin
        lbjhm.params.createparam(ftstring,'prjno',ptinput);
        lbjhm.commandtext:='select distinct a.*,b.mjh,b.mjfd,b.mjcd,b.mjypzbc,b.jhlbzs,b.jhdzlbcd,b.jhwlcd,b.jhcgsj,b.jhlbzs*b.mjcd as scmjyl,'
                        +'c.bzmj,c.zbmj,c.twmj,c.pzx,c.yymj,c.dk,c.hk,c.ds,c.hs,c.dzd,c.hzd,c.ldz,c.lhz,c.yqxg,c.zysc,'
                        +'d.id,d.cm,d.gch,d.zdh,d.kh,d.sh,d.mjjs,d.mjs,d.zds'
                        +' from cgd1 a,cgd3 b,cgdwl c,lbjh2 d '
                        +'where b.prjno=a.prjno and b.wl=a.wl and b.xh=a.xh and c.prjno=a.prjno and c.wl=a.wl and c.xh=a.xh'
                        +' and d.prjno=a.prjno and d.wl=a.wl and d.xh=a.sjlb and a.prjno=:prjno order by a.prjno,a.wl,b.mjh,d.gch,d.zdh,d.kh,d.cm';
        lbjhm.params[0].asstring:=dbedit1.text;
        lbjhm.open;
      end;
      if lbjhm.recordcount>0 then
      begin
        while not lbjhm.Eof do begin
          query8.Append;
          for i:=0 to query8.fieldcount-1 do
            query8.Fields[i].value:=lbjhm.Fields[i].value;
          query8.Post;
          lbjhm.Next;
        end;
        with query9 do begin
          close;
          sql.clear;
          sql.add('create table cutplan1(Prjno char(20),Wl char(20),mjh char(20),Xh integer,seq char(3))');
          execsql;
          close;
          sql.clear;
          sql.add('select * from cutplan1');
          open;
        end;
        with query8 do begin
          close;
          sql.clear;
          sql.add('select distinct prjno,wl,mjh,xh from cutplan');
          open;
          first;
          while not eof do begin
            query9.Append;
            for i:=0 to fieldcount-1 do
              query9.Fields[i].value:=fields[i].value;
            query9.Post;
            next;
          end;
        end;
        with query8 do begin
          close;
          sql.clear;
          sql.Add('select prjno,wl,mjh,count(xh) as cac1 from cutplan1 group by prjno,wl,mjh ');
          open;
          while not eof do begin
            with query9 do begin
              close;
              sql.Clear;
              sql.add('select distinct xh from cutplan1 where prjno=:prjno and wl=:wl and mjh=:mjh');
              prepare;
              params[0].asstring:=query8.fieldbyname('prjno').asstring;
              params[1].asstring:=query8.fieldbyname('wl').asstring;
              params[2].asstring:=query8.fieldbyname('mjh').asstring;
              open;
              last;
              first;
              i:=1;
              while not eof do begin
                with query10 do begin
                  close;
                  sql.clear;
                  sql.add('update cutplan1 set seq=:seq where prjno=:prjno and wl=:wl and mjh=:mjh and xh=:xh ');
                  prepare;
                  params[0].asstring:=inttostr(i)+'/'+query8.fieldbyname('cac1').asstring;
                  params[1].asstring:=query8.fieldbyname('prjno').asstring;
                  params[2].asstring:=query8.fieldbyname('wl').asstring;
                  params[3].asstring:=query8.fieldbyname('mjh').asstring;
                  params[4].asinteger:=query9.fieldbyname('xh').asinteger;
                  execsql;
                end;
                next;
                i:=i+1;
              end;
            end;
            next;
          end;
        end;
        with query9 do begin
          close;
          sql.clear;
          sql.add('select distinct prjno,gch,zdh,kh,sh,cm,mjjs,mjs,id from cutplan  where mjh=:mjh   order by gch,zdh,kh,id');
        end;
        with query8 do begin
          close;
          sql.clear;
          sql.add('select distinct  Prjno,Wl,Xh,Ylbzs,Lbzs,Sjlb,Pjmjfd,Ybl,Mjzcd,Mjypzbzc,Jhdzlbzc,Jhwlzc,Jhcgzsj,Jhscsh,');
          sql.add('Sjdzlbzc,Sjwlzc,Sjcgzsj,Sjscsh,Mjyl,Zjs,Pbl,Hsl,Zdypcd,Ysmjfd,Zp,Dzmjps,Mjstatus,Rq,Xjs,Gzcs,');
          sql.add('mjh,mjfd,mjcd,mjypzbc,jhlbzs,jhdzlbcd,jhwlcd,jhcgsj,scmjyl,bzmj,zbmj,twmj,pzx,yymj,dk,hk,ds,');
          sql.add('hs,dzd,hzd,ldz,lhz,yqxg,zysc,seq from cutplan a,cutplan1 b where a.prjno=b.prjno and a.wl=b.wl and a.mjh=b.mjh and a.xh=b.xh order by prjno,wl,mjh,seq');
          open;
        end;
        ppreport1.print;
      end;}
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcgd.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppreport3.previewform.WindowState:=wsmaximized;
  tppviewer(ppreport3.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmcgd.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.previewform.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmcgd.SpeedButton2Click(Sender: TObject);
begin
  if frmxglbzs=nil then frmxglbzs:=tfrmxglbzs.create(self);
  frmxglbzs.label3.caption:='cgd';
  frmxglbzs.edit1.text:=dbedit21.text;
  frmxglbzs.edit2.text:='';
  frmxglbzs.show;
end;

procedure Tfrmcgd.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if dbedit1.text<>combobox1.text then
  combobox1.text:=dbedit1.text;
end;

procedure Tfrmcgd.SpeedButton8Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if dbedit1.text<>'' then
 begin
  //frmxtdl.SocketConnection1.AppServer.printcgdfx(dbedit1.text);
  //if frmlbyldy=nil then frmlbyldy:=tfrmlbyldy.create(self);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    commandtext:='execute cut_cgdfx :prjno';
    params[0].asstring:=cgd1.fieldbyname('prjno').value;
    execute;
  end;
  with lbwlm do begin
    Close;
    params.Clear;
    params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select * from cut_cgdwldy where prjno=:prjno';
    params[0].asstring:=dbedit1.text;
    open;
  end;
  ppreport2.print;
  lbwld.close;
  lbwld.params.clear;
  lbwld.params.createparam(ftstring,'prjno',ptinput);
  lbwld.commandtext:='select * from cut_cgwl1 where prjno=:prjno order by prjno,kh,id';
  lbwld.params[0].asstring:=dbedit1.text;
  lbwld.open;
  ppreport3.print;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmcgd.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct prjno from cut_lbjh1 where not prjno is null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('prjno').value);
      next;
    end;
  end;
end;

procedure Tfrmcgd.cgd1AfterPost(DataSet: TDataSet);
begin
  if cgd1.applyupdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'xjs',ptinput);
      params.createparam(ftinteger,'gzcs',ptinput);
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='update cut_cgd1 set xjs=:xjs,gzcs=:gzcs where prjno=:prjno and ((xjs is null) or (xjs=0))';
      if not cgd1.fieldbyname('xjs').isnull then
      params[0].asinteger:=cgd1.fieldbyname('xjs').value
      else params[0].asinteger:=0;
      if not cgd1.fieldbyname('gzcs').isnull then
      params[1].asinteger:=cgd1.fieldbyname('gzcs').value
      else params[1].asinteger:=0;
      params[2].asstring:=cgd1.fieldbyname('prjno').value;
      execute;
    end;
  end;
end;

procedure Tfrmcgd.cgd2AfterPost(DataSet: TDataSet);
begin
  if cgd2.applyupdates(-1)>0 then begin
  end;
end;

procedure Tfrmcgd.cgd3AfterPost(DataSet: TDataSet);
begin
  if cgd3.applyupdates(-1)>0 then begin
  end;
end;

procedure Tfrmcgd.dscgd1DataChange(Sender: TObject; Field: TField);
begin
  if cgd1.state=dsbrowse then begin
    with cgd2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cut_cgd2 where prjno=:prjno and wl=:wl and xh=:xh';
      params[0].asstring:=cgd1.fieldbyname('prjno').value;
      params[1].asstring:=cgd1.fieldbyname('wl').value;
      params[2].asinteger:=cgd1.fieldbyname('xh').value;
      open;
    end;
    with cgd3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cut_cgd3 where prjno=:prjno and wl=:wl and xh=:xh';
      params[0].asstring:=cgd1.fieldbyname('prjno').value;
      params[1].asstring:=cgd1.fieldbyname('wl').value;
      params[2].asinteger:=cgd1.fieldbyname('xh').value;
      open;
    end;
  end;
end;

procedure Tfrmcgd.cgd2MjsChange(Sender: TField);
begin
  if not cgd2mjs.isnull then
    cgd2mjjs.asinteger:=round(cgd2mjs.value*cgd1.fieldbyname('ylbzs').value);
end;

procedure Tfrmcgd.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if combobox1.text<>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct wl from cut_lbjh1 where prjno=:prjno';
      params[0].asstring:=combobox1.text;
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('wl').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmcgd.ComboBox2Change(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if cgd1.active=true then begin
    if combobox2.text<>'' then begin
      //frmxtdl.SocketConnection1.AppServer.lbjh2cgd1(dbedit1.text,combobox2.text);
      with cgd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_cgd1 where prjno=:prjno';
        params[0].asstring:=combobox1.text;
        open;
      end;
      cgd1.findnearest([combobox1.text,combobox2.text,1]);
      {with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        commandtext:='select * from cgd1 where prjno=:prjno and wl=:wl';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        open;
        if recordcount=0 then begin
          frmxtdl.SocketConnection1.AppServer.lbjh2cgd1(dbedit1.text,combobox2.text);
          with cgd1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            commandtext:='select * from cgd1 where prjno=:prjno';
            params[0].asstring:=combobox1.text;
            open;
          end;
        end;
      end;}
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcgd.dslbjhmDataChange(Sender: TObject; Field: TField);
begin
  {if lbjhm.active=true then begin
    with lbjhd do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      params.createparam(ftstring,'mjh',ptinput);
      //commandtext:='select * from cgd2 where prjno=:prjno and wl=:wl and xh=:xh';
      commandtext:='select a.* from lbjh2 a,lbjh3 b where a.prjno=b.prjno and a.wl=b.wl and a.xh=b.xh and a.prjno=:prjno and a.wl=:wl and a.xh=:xh and b.mjh=:mjh';
      params[0].asstring:=lbjhm.fieldbyname('prjno').value;
      params[1].asstring:=lbjhm.fieldbyname('wl').value;
      params[2].asinteger:=lbjhm.fieldbyname('sjlb').value;//lbjhm.fieldbyname('xh').value;
      params[3].asstring:=lbjhm.fieldbyname('mjh').value;
      open;
    end;
  end;}
end;

procedure Tfrmcgd.N1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if combobox2.text>'' then begin
    if application.MessageBox('要刪除此物料嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        commandtext:='delete from cut_cgd2 where prjno=:prjno and wl=:wl';
        params[0].asstring:=dbedit1.text;
        params[1].asstring:=dbedit17.text;
        execute;
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        commandtext:='delete from cut_cgd3 where prjno=:prjno and wl=:wl';
        params[0].asstring:=dbedit1.text;
        params[1].asstring:=dbedit17.text;
        execute;
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        commandtext:='delete from cut_cgdwl where prjno=:prjno and wl=:wl';
        params[0].asstring:=dbedit1.text;
        params[1].asstring:=dbedit17.text;
        execute;
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        commandtext:='delete from cut_cgd1 where prjno=:prjno and wl=:wl';
        params[0].asstring:=dbedit1.text;
        params[1].asstring:=dbedit17.text;
        execute;
      end;
      combobox2.text:='';
      with cgd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_cgd1 where prjno=:prjno';
        params[0].asstring:=combobox1.text;
        open;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcgd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcgd:=nil;
end;

procedure Tfrmcgd.cgd1AfterOpen(DataSet: TDataSet);
begin
  (cgd1.fieldbyname('jhcgzsj') as tfloatfield).displayformat:='#0.00';
end;

end.
