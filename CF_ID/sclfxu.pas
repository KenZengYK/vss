unit sclfxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Buttons, Db, DBTables, ppBands, ppCache,
  ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppCtrls, ppPrnabl, ppViewr, DBClient, ppParameter;

type
  Tfrmsclfx = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    BitBtn3: TBitBtn;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel27: TppLabel;
    mjyl: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    bz: TppLabel;
    mjjs: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel28: TppLabel;
    ppDBText14: TppDBText;
    ppLine1: TppLine;
    ppLabel32: TppLabel;
    ppDBText17: TppDBText;
    Label4: TLabel;
    query1: TClientDataSet;
    query2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsclfx: Tfrmsclfx;

implementation
USES dlu;
{$R *.DFM}

procedure Tfrmsclfx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsclfx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsclfx:=nil;
end;

procedure Tfrmsclfx.BitBtn1Click(Sender: TObject);
begin
  screen.Cursor:=crhourglass;
  ppreport1.allowprinttofile:=false;
  ppreport1.DeviceType:='Screen';
  if edit1.text='' then begin
    pplabel32.Visible:=false;
    ppdbtext17.Visible:=false;
    ppgroupheaderband1.Visible:=true;
    if dateedit1.text<>'    /  /  ' then begin
      if dateedit2.text<>'    /  /  ' then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'rq1',ptinput);
          params.createparam(ftdate,'rq2',ptinput);
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                      +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and c.rq>=:rq1 and c.rq<=:rq2';
          params[0].asdate:=dateedit1.date;
          params[1].asdate:=dateedit2.date;
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end
      else begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'rq1',ptinput);
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                      +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and c.rq>=:rq1';
          params[0].asdate:=dateedit1.date;
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end;
    end
    else begin
      if dateedit2.text<>'    /  /  ' then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'rq2',ptinput);
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                      +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and c.rq<=:rq2';
          params[0].asdate:=dateedit2.date;
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end
      else begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                      +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh';
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end;
    end;
  end
  else begin
    pplabel32.Visible:=true;
    ppdbtext17.Visible:=true;
    ppgroupheaderband1.Visible:=false;
    {if label4.caption='cgjh' then begin
      with query1 do begin
      end;
    end
    else begin}
     with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                  +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and b.prjno=:prjno';
      params[0].asstring:=edit1.text;
      open;
      if recordcount>0 then ppreport1.print;
     end;
    //end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmsclfx.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crhourglass;
  ppreport1.allowprinttofile:=true;
  ppreport1.DeviceType:='LotusFile';
  ppreport1.TextFileName:='C:\my documents\planning.123';
  if edit1.text='' then begin
    pplabel32.Visible:=false;
    ppdbtext17.Visible:=false;
    ppgroupheaderband1.Visible:=true;
    if dateedit1.text<>'    /  /  ' then begin
      if dateedit2.text<>'    /  /  ' then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'rq1',ptinput);
          params.createparam(ftdate,'rq2',ptinput);
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                      +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and c.rq>=:rq1 and c.rq<=:rq2';
          params[0].asdate:=dateedit1.date;
          params[1].asdate:=dateedit2.date;
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end
      else begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'rq1',ptinput);
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                      +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and c.rq>=:rq1';
          params[0].asdate:=dateedit1.date;
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end;
    end
    else begin
      if dateedit2.text<>'    /  /  ' then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'rq2',ptinput);
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                        +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and c.rq<=:rq2';
          params[0].asdate:=dateedit2.date;
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end
      else begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                        +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh';
          open;
          if recordcount>0 then ppreport1.print;
        end;
      end;
    end;
  end
  else begin
    pplabel32.Visible:=true;
    ppdbtext17.Visible:=true;
    ppgroupheaderband1.Visible:=false;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct b.prjno,b.gch,b.sh,c.rq as ccrq,c.wl,c.xh,c.mjyl,c.dzmjps,c.zdypcd,c.ybl,c.ysmjfd,d.mjh,d.mjcd,d.mjypzbc,d.jhlbzs,d.jhcgsj,d.mjfd '
                  +'from fcjy3 b,lbjh1 c,lbjh3 d where b.prjno=c.prjno and d.prjno=c.prjno and d.wl=c.wl and d.xh=c.xh and b.prjno=:prjno';
      params[0].asstring:=edit1.text;
      open;
      if recordcount>0 then ppreport1.print;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmsclfx.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmsclfx.ppDetailBand1BeforePrint(Sender: TObject);
var
  scmjyl,mjs:double;
  mjstatus,bz1:string;
begin
  scmjyl:=0.00;mjs:=0.00;bz1:='';mjstatus:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    params.createparam(ftstring,'wl',ptinput);
    params.createparam(ftinteger,'xh',ptinput);
    commandtext:='select sum(mjs) as mjjs from lbjh2 where prjno=:prjno and wl=:wl and xh=:xh';
    params[0].asstring:=query1.fieldbyname('prjno').value;
    params[1].asstring:=query1.fieldbyname('wl').value;
    params[2].asinteger:=query1.fieldbyname('xh').value;
    open;
    if not fieldbyname('mjjs').isnull then mjs:=fieldbyname('mjjs').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    params.createparam(ftstring,'wl',ptinput);
    params.createparam(ftinteger,'xh',ptinput);
    commandtext:='select mjstatus from lbjh1 where prjno=:prjno and wl=:wl and xh=:xh';
    params[0].asstring:=query1.fieldbyname('prjno').value;
    params[1].asstring:=query1.fieldbyname('wl').value;
    params[2].asinteger:=query1.fieldbyname('xh').value;
    open;
    if not fieldbyname('mjstatus').isnull then mjstatus:=fieldbyname('mjstatus').value;
  end;
  if not query1.fieldbyname('mjh').isnull then begin
   with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    params.createparam(ftstring,'wl',ptinput);
    params.createparam(ftinteger,'xh',ptinput);
    params.createparam(ftstring,'mjh',ptinput);
    commandtext:='select jhlbzs*mjcd as scmjyl from lbjh3 where prjno=:prjno and wl=:wl and xh=:xh and mjh=:mjh';
    params[0].asstring:=query1.fieldbyname('prjno').value;
    params[1].asstring:=query1.fieldbyname('wl').value;
    params[2].asinteger:=query1.fieldbyname('xh').value;
    params[3].asstring:=query1.fieldbyname('mjh').value;
    open;
    if not fieldbyname('scmjyl').isnull then scmjyl:=fieldbyname('scmjyl').value;
   end;
  end
  else begin
   scmjyl:=query1.fieldbyname('mjyl').value;
  end;
  if mjstatus<>'' then begin
    if copy(mjstatus,7,2)='半' then
      scmjyl:=scmjyl/2
    else if copy(mjstatus,7,2)='四' then
      scmjyl:=scmjyl/4
    else scmjyl:=scmjyl/(strtoint(copy(mjstatus,7,1)));
  end;
  bz1:=mjstatus;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    params.createparam(ftstring,'wl',ptinput);
    params.createparam(ftinteger,'xh',ptinput);
    commandtext:='select * from fcwl2 where prjno=:prjno and wl=:wl and xh=:xh';
    params[0].asstring:=query1.fieldbyname('prjno').value;
    params[1].asstring:=query1.fieldbyname('wl').value;
    params[2].asinteger:=query1.fieldbyname('xh').value;
    open;
    if fieldbyname('bzmj').value=true then bz1:=bz1+' 標準嘜架';
    if fieldbyname('zbmj').value=true then bz1:=bz1+' 中邊色嘜架';
    if fieldbyname('twmj').value=true then bz1:=bz1+' 頭尾色嘜架';
    if fieldbyname('pzx').value=true then bz1:=bz1+' 碰撞線';
    if fieldbyname('yymj').value=true then bz1:=bz1+' 陰陽嘜架';
    if fieldbyname('dk').value=true then bz1:=bz1+' 單款';
    if fieldbyname('hk').value=true then bz1:=bz1+' 混款';
    if fieldbyname('ds').value=true then bz1:=bz1+' 單色';
    if fieldbyname('hs').value=true then bz1:=bz1+' 混色';
    if fieldbyname('dzd').value=true then bz1:=bz1+' 單制單';
    if fieldbyname('hzd').value=true then bz1:=bz1+' 混制單';
    if fieldbyname('ldz').value=true then bz1:=bz1+' 拉單張';
    if fieldbyname('lhz').value=true then bz1:=bz1+' 拉合掌';
    //if fieldbyname('yqxg').value=true then bz1:=bz1+' 標準嘜架';
    if fieldbyname('zysc').value=true then bz1:=bz1+' 注意色差(重新考慮裁床生產損耗)';
  end;
  mjjs.Caption:=formatfloat('#0.0',mjs);
  mjyl.Caption:=formatfloat('#0.0000',scmjyl);
  bz.Caption:=bz1;
  application.ProcessMessages;
end;

end.
