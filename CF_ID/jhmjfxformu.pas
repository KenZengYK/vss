unit jhmjfxformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons, Variants,
  GridsEh, ADODB;

type
  Tfrmjhmjfx = class(TForm)
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1: TADODataSet;
    Query1Prjno: TStringField;
    Query1Sh: TStringField;
    Query1Wl: TStringField;
    Query1Gch: TStringField;
    Query1Zdh: TStringField;
    Query1Kh: TStringField;
    Query1Mjfd: TFloatField;
    Query1Syfd: TFloatField;
    Query1Cacjyl: TFloatField;
    Query1Jhjyl: TFloatField;
    Query1Diff: TFloatField;
    Query1Zds: TFloatField;
    Query1Mjjs: TFloatField;
    Query1Dcs: TFloatField;
    Query1Cacyl: TFloatField;
    Query1Dcpercent: TFloatField;
    Query1Ylxc: TFloatField;
    Query2: TADOQuery;
    Query3: TADOQuery;
    Query4: TADOQuery;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1ZdsChange(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmjhmjfx: Tfrmjhmjfx;

implementation
uses mainu, lbyl1dyu, Carte_MailFormu, Marker_remarksFormu;
{$R *.DFM}

procedure Tfrmjhmjfx.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmjhmjfx.Query1ZdsChange(Sender: TField);
begin
  IF QUERY1.STATE=DSEDIT THEN BEGIN
  if not query1.fieldbyname('zds').isnull then begin
    query1.fieldbyname('cacyl').value:=query1.fieldbyname('cacjyl').value*query1.fieldbyname('zds').value;
    //query1.fieldbyname('zds').value:=0;
  end else query1.fieldbyname('cacyl').value:=0;
  if query1.fieldbyname('cacjyl').value>0 then
  query1.fieldbyname('diff').value:=(query1.fieldbyname('cacjyl').value-query1.fieldbyname('jhjyl').value)*100/query1.fieldbyname('cacjyl').value
  else query1.fieldbyname('diff').value:=0;
  if not query1.fieldbyname('mjjs').isnull then begin
    query1.fieldbyname('dcpercent').value:=query1.fieldbyname('jhjyl').value*query1.fieldbyname('mjjs').value;
    //query1.fieldbyname('mjjs').value:=0;
  end else query1.fieldbyname('dcpercent').value:=0;
  if query1.fieldbyname('zds').value>0 then
    query1.fieldbyname('dcs').value:=(query1.fieldbyname('zds').value-query1.fieldbyname('mjjs').value)*100/query1.fieldbyname('zds').value
  else query1.fieldbyname('dcs').value:=0;
  query1.fieldbyname('ylxc').value:=query1.fieldbyname('cacyl').value-query1.fieldbyname('dcpercent').value;
  END;
end;

procedure Tfrmjhmjfx.BitBtn2Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if query1.state=dsedit then query1.post;
  if frmlbyl1dy=nil then frmlbyl1dy:=tfrmlbyl1dy.create(self);
  {with frmlbyl1dy.lbwlm do begin
    Close;
    params.Clear;
    params.createparam(ftstring,'prjno',ptinput);
    //commandtext:='select * from lbwldy where prjno=:prjno';
    commandtext:='select distinct prjno,wl,gch,zdh,kh,sh,mjfd,syfd,cacjyl,jhjyl,diff,sum(zds) as zds,sum(mjjs) as mjjs,(sum(mjjs)-sum(zds))*100/sum(zds) as dcs,sum(cacyl) as cacyl,sum(dcpercent) as dcpercent,sum(cacyl)-sum(dcpercent) as ylxc from lbwl2 '
                +'where prjno=:prjno group by prjno,wl,gch,zdh,kh,sh,mjfd,syfd,cacjyl,jhjyl,diff';
    params[0].asstring:=dbedit1.text;
    open;
  end;}
  frmlbyl1dy.ppreport2.print;
  screen.cursor:=crDefault;
end;

procedure Tfrmjhmjfx.BitBtn1Click(Sender: TObject);
var
  prjno,sh,sh1:string;
begin
  screen.cursor:=crHourglass;
  prjno:=query1.fieldbyname('prjno').value;
  sh1:=query1.fieldbyname('sh').value;
  sh:=inputbox('計劃嘜架分析','請輸入色號:','');
  if sh>'' then begin
    with query2 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'sh',ptinput);
      //params.createparam(ftstring,'sh1',ptinput);
      sql.text:='execute cut_pcpylbwl21 :prjno,:sh,:sh1';
      parameters[0].value:=prjno;
      parameters[1].value:=sh1;
      parameters[2].value:=sh;
      execsql;
    end;
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbwl21 where prjno=:prjno';
      parameters[0].value:=prjno;
      open;
    end;
    {with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select * from cut_lbwl21 where prjno=:prjno and sh=:sh';
      params[0].asstring:=query1.fieldbyname('prjno').value;
      params[1].asstring:=query1.fieldbyname('sh').value;
      open;
      first;
      while not eof do begin
        query1.append;
        query1.fieldbyname('prjno').value:=query2.fieldbyname('prjno').value;
        query1.fieldbyname('wl').value:=query2.fieldbyname('wl').value;
        query1.fieldbyname('gch').value:=query2.fieldbyname('gch').value;
        query1.fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
        query1.fieldbyname('kh').value:=query2.fieldbyname('kh').value;
        query1.fieldbyname('sh').value:=sh;
        query1.fieldbyname('mjfd').value:=query2.fieldbyname('mjfd').value;
        query1.fieldbyname('syfd').value:=query2.fieldbyname('syfd').value;
        query1.fieldbyname('zds').value:=query2.fieldbyname('zds').value;
        query1.fieldbyname('mjjs').value:=query2.fieldbyname('mjjs').value;
        query1.fieldbyname('dcs').value:=query2.fieldbyname('dcs').value;
        query1.fieldbyname('cacjyl').value:=query2.fieldbyname('cacjyl').value;
        query1.fieldbyname('jhjyl').value:=query2.fieldbyname('jhjyl').value;
        query1.fieldbyname('diff').value:=query2.fieldbyname('diff').value;
        query1.fieldbyname('cacyl').value:=query2.fieldbyname('cacyl').value;
        query1.fieldbyname('dcpercent').value:=query2.fieldbyname('dcpercent').value;
        query1.fieldbyname('ylxc').value:=query2.fieldbyname('ylxc').value;
        query1.post;
        application.ProcessMessages;
        next;
      end;
    end;}
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmjhmjfx.Query1AfterPost(DataSet: TDataSet);
begin
  Query1.UpdateBatch(arAll);
  {
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'zds',ptinput);
      params.createparam(ftinteger,'mjjs',ptinput);
      params.createparam(ftfloat,'dcpercent',ptinput);
      params.createparam(ftfloat,'cacyl',ptinput);
      params.createparam(ftfloat,'ylxc',ptinput);
      params.createparam(ftfloat,'jhjyl',ptinput);
      params.createparam(ftfloat,'diff',ptinput);
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='update cut_lbwl21 set zds=:zds,mjjs=:mjjs,dcpercent=:dcpercent,cacyl=:cacyl,ylxc=:ylxc,jhjyl=:jhjyl,diff=:diff where prjno=:prjno and wl=:wl and zdh=:zdh and sh=:sh';
      params[0].asinteger:=query1.fieldbyname('zds').value;
      params[1].asinteger:=query1.fieldbyname('mjjs').value;
      params[2].asfloat:=query1.fieldbyname('dcpercent').value;
      params[3].asfloat:=query1.fieldbyname('cacyl').value;
      params[4].asfloat:=query1.fieldbyname('ylxc').value;
      params[5].asfloat:=query1.fieldbyname('jhjyl').value;
      params[6].asfloat:=query1.fieldbyname('diff').value;
      params[6].asstring:=query1.fieldbyname('prjno').value;
      params[7].asstring:=query1.fieldbyname('wl').value;
      params[8].asstring:=query1.fieldbyname('zdh').value;
      params[9].asstring:=query1.fieldbyname('sh').value;
      execute;
    end;
  end;
  }
end;

procedure Tfrmjhmjfx.BitBtn4Click(Sender: TObject);
var
  prjno,wl,sh:string;
begin
  screen.cursor:=crHourglass;
  prjno:=query1.fieldbyname('prjno').value;
  wl:=query1.fieldbyname('wl').value;
  sh:=inputbox('計劃嘜架分析','請輸入損耗:','');
  if sh>'' then begin
    with query2 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftfloat,'sh',ptinput);
      sql.text:='execute cut_lbwl21sh :prjno,:wl,:sh';
      parameters[0].value:=prjno;
      parameters[1].value:=wl;
      parameters[2].value:=strtofloat(sh);
      ExecSQL;
    end;
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbwl21 where prjno=:prjno';
      parameters[0].value:=prjno;
      open;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmjhmjfx.BitBtn5Click(Sender: TObject);
var
  prjno,sh,nwl:string;
begin
  screen.cursor:=crHourglass;
  prjno:=query1.fieldbyname('prjno').value;
  sh:=query1.fieldbyname('sh').value;
  nwl:=inputbox('請輸入新物料','提示','');
  if nwl>'' then begin
    nwl:=uppercase(nwl);
    with query2 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl1',ptinput);
      //params.createparam(ftstring,'zdh',ptinput);
      //params.createparam(ftstring,'sh',ptinput);
      //params.createparam(ftstring,'kh',ptinput);
      sql.text:='update cut_lbwl21 set wl=:wl where prjno=:prjno and wl=:wl1 and zdh=:zdh and sh=:sh and kh=:kh';
      parameters[0].value:=nwl;
      parameters[1].value:=prjno;
      parameters[2].value:=query1.fieldbyname('wl').value;
      parameters[3].value:=query1.fieldbyname('zdh').value;
      parameters[4].value:=sh;
      parameters[5].value:=query1.fieldbyname('kh').value;
      execsql;
    end;
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbwl21 where prjno=:prjno';
      parameters[0].value:=prjno;
      open;
      locate('prjno;sh;wl',vararrayof([prjno,sh,nwl]),[]);
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmjhmjfx.BitBtn6Click(Sender: TObject);
var
  prj1:string;
begin
  if not query1.fieldbyname('prjno').isnull then begin
    if frmcarte_mail=nil then frmcarte_mail:=tfrmcarte_mail.create(nil);
    frmcarte_mail.edit5.text:='CF_ID#: '+query1.fieldbyname('prjno').value+' (Proj#: '+query1.fieldbyname('gch').value+') 已排好PU嘜架, 請檢查用量!';
    frmcarte_mail.memo1.lines.add('Dear MM,');
    frmcarte_mail.memo1.lines.add('');
    frmcarte_mail.memo1.lines.add('CF_ID#: '+query1.fieldbyname('prjno').value+' (Proj#: '+query1.fieldbyname('gch').value+') 已排好PU嘜架, 請檢查用量!');
    frmcarte_mail.show;
  end else showmessage('請選擇FRN#!');
end;

procedure Tfrmjhmjfx.BitBtn7Click(Sender: TObject);
begin
  with ADOQuery1 do begin
    close;
    sql.Text:='select * from cut_marker_remarks where prjno='''+Query1.FieldByName('prjno').Value+''' and wl='''+Query1.FieldByName('wl').Value+'''';
    Open;
    if FieldByName('prjno').IsNull then begin
      with ADOQuery2 do begin
        close;
        sql.Text:='insert into cut_marker_remarks(prjno,frn_no,sh,wl,dt,usr) values(:x1,:x2,:x3,:x4,:x5,:x6)';
        Parameters[0].Value:=query1.FieldByName('prjno').Value;
        Parameters[1].Value:=Copy(query1.FieldByName('prjno').Value,1,7);
        Parameters[2].Value:=query1.FieldByName('sh').Value;
        Parameters[3].Value:=query1.FieldByName('wl').Value;
        Parameters[4].Value:=Date;
        Parameters[5].Value:=frmmain.ComboBox1.Text;
        ExecSQL;
      end;
    end;
  end;
  if frmmarker_remarks=nil then frmmarker_remarks:=Tfrmmarker_remarks.Create(nil);
  with frmmarker_remarks.ADODataSet1 do begin
    close;
    commandtext:='select * from cut_marker_remarks where prjno='''+Query1.FieldByName('prjno').Value+''' and wl='''+Query1.FieldByName('wl').Value+'''';
    open;
  end;
  frmmarker_remarks.DBMemo1.Enabled:=true;
  frmmarker_remarks.BitBtn1.Enabled:=true;
  frmmarker_remarks.Show;
end;

end.
