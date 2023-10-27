unit xsjlbu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, Grids, DBGridEh, ppVar, ppBands,
  ppClass, ppCtrls, ppPrnabl, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, ppViewr, Menus, ExtCtrls, GridsEh, ppParameter;

type
  Tfrmxsjlb = class(TForm)
    mxsb: TClientDataSet;
    DataSource1: TDataSource;
    query3: TClientDataSet;
    query4: TClientDataSet;
    query2: TClientDataSet;
    query1: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape2: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    zzds: TppLabel;
    zlhs: TppLabel;
    xsb: TClientDataSet;
    DataSource2: TDataSource;
    fh1: TppLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLine15: TppLine;
    ppLine16: TppLine;
    zjzds: TppLabel;
    zjycs: TppLabel;
    zjlhs: TppLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    opt1: TRadioButton;
    opt2: TRadioButton;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    mxsbGch: TStringField;
    mxsbZdh: TStringField;
    mxsbKh: TStringField;
    mxsbSh: TStringField;
    mxsbCs: TIntegerField;
    mxsbId: TIntegerField;
    mxsbCup: TStringField;
    mxsbSiz1: TIntegerField;
    mxsbCm: TStringField;
    mxsbZds: TIntegerField;
    mxsbYcs: TIntegerField;
    mxsbXjs: TIntegerField;
    mxsbGjzds: TBooleanField;
    mxsbXgsl: TIntegerField;
    mxsbBxgsl: TIntegerField;
    mxsbBclhs: TIntegerField;
    mxsbLjlhs: TIntegerField;
    mxsbWlhs: TIntegerField;
    mxsbRq: TDateField;
    mxsbTm: TTimeField;
    ppLabel20: TppLabel;
    ppDBText11: TppDBText;
    ppLabel21: TppLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    SpeedButton3: TSpeedButton;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    bclhs: TppLabel;
    ljlhs: TppLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure mxsbAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure frommxsb2xsb(var zdh,sh:string; xjs,cs:integer);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure mxsbBxgslChange(Sender: TField);
    procedure mxsbBclhsChange(Sender: TField);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxsjlb: Tfrmxsjlb;

implementation
uses dlu, zdlru, zmzyu, zmdu;
{$R *.DFM}

procedure Tfrmxsjlb.SpeedButton1Click(Sender: TObject);
begin
  if frmzdlr=nil then frmzdlr:=tfrmzdlr.create(self);
  frmzdlr.label4.caption:='xsb';
  frmzdlr.show;
end;

procedure Tfrmxsjlb.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxsjlb.SpeedButton2Click(Sender: TObject);
var
  zdh,sh:string;
  xjs,fh:integer;
begin
  screen.cursor:=crHourglass;
  if (edit1.text>'') and (edit2.text>'') then begin
    zdh:=edit1.text;
    sh:=edit2.text;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select * from mxsb where zdh=:zdh and sh=:sh';
      params[0].asstring:=zdh;
      params[1].asstring:=sh;
      open;
      if recordcount=0 then begin
        if opt1.checked=true then
        //frmxtdl.SocketConnection1.AppServer.jsxsb(zdh,sh,0,'1')
        //else frmxtdl.SocketConnection1.AppServer.jsxsb(zdh,sh,0,'0');
      end;
    end;
    with mxsb do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=1';
      params[0].asstring:=zdh;
      params[1].asstring:=sh;
      open;
      if not fieldbyname('xjs').isnull then edit3.text:=fieldbyname('xjs').asstring
      else edit3.text:='0';
    end;
    {with query1 do begin
      close;
      params.clear;
      commandtext:='select max(fh) as fh1 from xsb';
      open;
      if not fieldbyname('fh1').isnull then begin
        //edit4.text:=inttostr(fieldbyname('fh1').value+1);
        //edit4.readonly:=true;
        fh:=fieldbyname('fh1').value;
      end
      else begin
        edit4.text:=inputbox('','請輸入初始飛號!','');
        if edit4.text='' then exit;
      end;
    end;
    if mxsb.active=true then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select max(cs) as cs1 from mxsb where zdh=:zdh and sh=:sh';
        params[0].asstring:=zdh;
        params[1].asstring:=sh;
        open;
        if fieldbyname('cs1').value=1 then begin
          if (edit3.text<>mxsb.fieldbyname('xjs').asstring) or (opt1.checked=true and mxsb.fieldbyname('gjzds').value=false) or (opt1.checked=false and mxsb.fieldbyname('gjzds').value=true) then begin
            edit4.text:=inttostr(fh);
            xjs:=strtoint(edit3.text);
            if opt1.checked=true then begin
              with query2 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'xjs',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='update mxsb set xjs=:xjs,xgsl=zds,bxgsl=zds,bclhs=zds,ljlhs=zds,gjzds=true where zdh=:zdh and sh=:sh and cs=1';
                params[0].asinteger:=xjs;
                params[1].asstring:=zdh;
                params[2].asstring:=sh;
                execute;
              end;
            end
            else begin
              with query2 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'xjs',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='update mxsb set xjs=:xjs,xgsl=ycs,bxgsl=ycs,bclhs=ycs,ljlhs=ycs,gjzds=false where zdh=:zdh and sh=:sh and cs=1';
                params[0].asinteger:=xjs;
                params[1].asstring:=zdh;
                params[2].asstring:=sh;
                execute;
              end;
            end;
            frommxsb2xsb(zdh,sh,xjs,1);
            with mxsb do begin
              close;
              params.clear;
              params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=1';
              params[0].asstring:=zdh;
              params[1].asstring:=sh;
              open;
            end;
          end;
        end;
      end;
    end
    else begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=1';
        params[0].asstring:=zdh;
        params[1].asstring:=sh;
        open;
        if recordcount=0 then begin
          edit4.text:=inttostr(fh);
          xjs:=strtoint(edit3.text);
          if opt1.checked=true then
          frmxtdl.SocketConnection1.AppServer.jsxsb(zdh,sh,xjs,'1')
          else frmxtdl.SocketConnection1.AppServer.jsxsb(zdh,sh,xjs,'0');
          frommxsb2xsb(zdh,sh,xjs,1);
        end;
      end;
      with mxsb do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=1';
        params[0].asstring:=zdh;
        params[1].asstring:=sh;
        open;
        edit3.text:=fieldbyname('xjs').asstring;
      end;
    end;
    edit4.readonly:=true;}
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxsjlb.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if mxsb.state=dsbrowse then begin
    if mxsb.fieldbyname('gjzds').value=true then opt1.checked:=true
    else opt2.checked:=true;
    edit3.text:=mxsb.fieldbyname('xjs').asstring;
  end;
end;

procedure Tfrmxsjlb.mxsbAfterPost(DataSet: TDataSet);
begin
  if mxsb.applyupdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'xgsl',ptinput);
      params.createparam(ftinteger,'bclhs',ptinput);
      params.createparam(ftinteger,'ljlhs',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftinteger,'cs',ptinput);
      params.createparam(ftinteger,'id',ptinput);
      params.createparam(ftstring,'siz',ptinput);
      commandtext:='update mxsb set xgsl=:xgsl,bclhs=:bclhs,ljlhs=:ljlhs where zdh=:zdh and sh=:sh and cs=:cs and id=:id and cm=:siz';
      params[0].asinteger:=mxsb.fieldbyname('xgsl').value;
      params[1].asinteger:=mxsb.fieldbyname('bclhs').value;
      params[2].asinteger:=mxsb.fieldbyname('ljlhs').value;
      params[3].asstring:=mxsb.fieldbyname('zdh').value;
      params[4].asstring:=mxsb.fieldbyname('sh').value;
      params[5].asinteger:=mxsb.fieldbyname('cs').value;
      params[6].asinteger:=mxsb.fieldbyname('id').value;
      params[7].asstring:=mxsb.fieldbyname('CM').value;
      execute;
    end;
  end;
end;

procedure Tfrmxsjlb.BitBtn1Click(Sender: TObject);
var
  zdh,sh:string;
  xjs:integer;
begin
  screen.cursor:=crHourglass;
  if mxsb.active=true then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftinteger,'cs',ptinput);
      commandtext:='select sum(zds) as zzds,sum(ycs) as zycs,sum(bclhs) as zlhs,sum(ljlhs) as zljlhs from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
      params[0].asstring:=edit1.text;
      params[1].asstring:=edit2.text;
      params[2].asinteger:=mxsb.fieldbyname('cs').value;
      open;
      zzds.caption:=fieldbyname('zzds').asstring;
      zjzds.caption:=fieldbyname('zzds').asstring;
      zjycs.caption:=fieldbyname('zycs').asstring;
      zlhs.caption:=fieldbyname('zlhs').asstring;
      zjlhs.caption:=fieldbyname('zlhs').asstring;
      bclhs.Caption:=fieldbyname('zlhs').asstring;
      ljlhs.Caption:=fieldbyname('zljlhs').asstring;
    end;
    with xsb do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftinteger,'cs',ptinput);
      commandtext:='select distinct a.gch,a.zdh,a.kh,a.sh,a.cs,a.id,a.cup,a.siz1,a.siz,a.zds,a.ycs,a.bxjs,a.ch,b.bclhs,b.ljlhs,sum(a.xs) as xs '
                  +'from xsb a,mxsb b where a.zdh=b.zdh and a.sh=b.sh and a.cs=b.cs and a.id=b.id and a.cup=b.cup and a.siz1=b.siz1 and a.zdh=:zdh and a.sh=:sh and a.cs=:cs '
                  +'group by a.gch,a.zdh,a.kh,a.sh,a.cs,a.id,a.cup,a.siz1,a.siz,a.zds,a.ycs,a.bxjs,a.ch,b.bclhs,b.ljlhs order by a.gch,a.zdh,a.kh,a.sh,a.cs,a.id,a.cup,a.siz1,a.ch,a.bxjs desc';
      params[0].asstring:=edit1.text;
      params[1].asstring:=edit2.text;
      params[2].asinteger:=mxsb.fieldbyname('cs').value;
      open;
      if recordcount>0 then ppreport1.print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxsjlb.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmxsjlb.frommxsb2xsb(var zdh, sh: string; xjs,cs:integer);
var
  i,j,wxjs,fh:integer;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    params.createparam(ftinteger,'cs',ptinput);
    commandtext:='delete from xsb where zdh=:zdh and sh=:sh and cs=:cs';
    params[0].asstring:=zdh;
    params[1].asstring:=sh;
    params[2].asinteger:=cs;
    execute;
  end;
  fh:=strtoint(edit4.text);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    params.createparam(ftinteger,'cs',ptinput);
    commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
    params[0].asstring:=zdh;
    params[1].asstring:=sh;
    params[2].asinteger:=cs;
    open;
    first;
    while not eof do begin
      if (fieldbyname('bclhs').value div xjs)*xjs=fieldbyname('bclhs').value then begin
        j:=fieldbyname('bclhs').value div xjs;
        wxjs:=xjs;
      end
      else begin
        j:=(fieldbyname('bclhs').value div xjs)+1;
        wxjs:=fieldbyname('bclhs').value-(fieldbyname('bclhs').value div xjs)*xjs;
      end;
      for i:=1 to j-1 do begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftinteger,'cs',ptinput);
          params.createparam(ftinteger,'id',ptinput);
          params.createparam(ftinteger,'siz1',ptinput);
          params.createparam(ftstring,'cup',ptinput);
          params.createparam(ftstring,'siz',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          params.createparam(ftinteger,'zds',ptinput);
          params.createparam(ftinteger,'ycs',ptinput);
          params.createparam(ftinteger,'bxjs',ptinput);
          params.createparam(ftinteger,'zxs',ptinput);
          params.createparam(ftboolean,'gjzds',ptinput);
          params.createparam(ftinteger,'xjs',ptinput);
          commandtext:='insert into xsb(gch,zdh,kh,sh,cs,id,siz1,cup,siz,xh,zds,ycs,bxjs,zxs,xs,gjzds,yzm,xjs) '
                            +'values(:gch,:zdh,:kh,:sh,:cs,:id,:siz1,:cup,:siz,:xh,:zds,:ycs,:bxjs,:zxs,1,:gjzds,false,:xjs)';
          params[0].asstring:=query1.fieldbyname('gch').value;
          params[1].asstring:=zdh;
          params[2].asstring:=query1.fieldbyname('kh').value;
          params[3].asstring:=sh;
          params[4].asinteger:=cs;
          params[5].asinteger:=query1.fieldbyname('id').value;
          params[6].asinteger:=query1.fieldbyname('siz1').value;
          params[7].asstring:=query1.fieldbyname('cup').value;
          params[8].asstring:=query1.fieldbyname('cm').value;
          params[9].asinteger:=i;
          params[10].asinteger:=query1.fieldbyname('zds').value;
          params[11].asinteger:=query1.fieldbyname('ycs').value;
          params[12].asinteger:=xjs;
          params[13].asinteger:=j;
          params[14].asboolean:=query1.fieldbyname('gjzds').value;
          params[15].asinteger:=xjs;
          execute;
        end;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'cs',ptinput);
        params.createparam(ftinteger,'id',ptinput);
        params.createparam(ftinteger,'siz1',ptinput);
        params.createparam(ftstring,'cup',ptinput);
        params.createparam(ftstring,'siz',ptinput);
        params.createparam(ftinteger,'xh',ptinput);
        params.createparam(ftinteger,'zds',ptinput);
        params.createparam(ftinteger,'ycs',ptinput);
        params.createparam(ftinteger,'bxjs',ptinput);
        params.createparam(ftinteger,'zxs',ptinput);
        params.createparam(ftboolean,'gjzds',ptinput);
        params.createparam(ftinteger,'xjs',ptinput);
        commandtext:='insert into xsb(gch,zdh,kh,sh,cs,id,siz1,cup,siz,xh,zds,ycs,bxjs,zxs,xs,gjzds,yzm,xjs) '
                            +'values(:gch,:zdh,:kh,:sh,:cs,:id,:siz1,:cup,:siz,:xh,:zds,:ycs,:bxjs,:zxs,1,:gjzds,false,:xjs)';
        params[0].asstring:=query1.fieldbyname('gch').value;
        params[1].asstring:=zdh;
        params[2].asstring:=query1.fieldbyname('kh').value;
        params[3].asstring:=sh;
        params[4].asinteger:=cs;
        params[5].asinteger:=query1.fieldbyname('id').value;
        params[6].asinteger:=query1.fieldbyname('siz1').value;
        params[7].asstring:=query1.fieldbyname('cup').value;
        params[8].asstring:=query1.fieldbyname('cm').value;
        params[9].asinteger:=j;
        params[10].asinteger:=query1.fieldbyname('zds').value;
        params[11].asinteger:=query1.fieldbyname('ycs').value;
        params[12].asinteger:=wxjs;
        params[13].asinteger:=j;
        params[14].asboolean:=query1.fieldbyname('gjzds').value;
        params[15].asinteger:=xjs;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //frmxtdl.SocketConnection1.AppServer.jsxsbch(zdh,sh,cs);
  //frmxtdl.SocketConnection1.AppServer.jxxsbfh(zdh,sh,cs,fh);
  with query1 do begin
    close;
    params.clear;
    commandtext:='select max(fh) as maxfh from xsb';
    open;
    if not fieldbyname('maxfh').isnull then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'maxfh',ptinput);
        commandtext:='update maxfh set maxfh=:maxfh';
        params[0].asinteger:=query1.fieldbyname('maxfh').value;
        execute;
      end;
    end;
  end;
end;

procedure Tfrmxsjlb.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton2click(speedbutton2)
  else if not (key in [#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then key:=#0;
end;

procedure Tfrmxsjlb.BitBtn3Click(Sender: TObject);
begin
  if mxsb.active=true then begin
    if mxsb.state=dsedit then mxsb.post;
    screen.cursor:=crHourglass;
    if frmzmzy=nil then frmzmzy:=tfrmzmzy.create(self);
    frmzmzy.SpeedButton1.visible:=false;
    frmzmzy.edit1.text:=edit1.text;
    frmzmzy.edit2.text:=edit2.text;
    frmzmzy.Label3.caption:=mxsb.fieldbyname('cs').asstring;
    frmzmzy.Edit1.readonly:=true;
    frmzmzy.edit2.readonly:=true;
    frmzmzy.show;
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmxsjlb.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    params.createparam(ftinteger,'cs',ptinput);
    params.createparam(ftstring,'siz',ptinput);
    params.createparam(ftinteger,'ch',ptinput);
    params.createparam(ftinteger,'bxjs',ptinput);
    commandtext:='select min(fh) as fh1,max(fh) as fh2 from xsb where zdh=:zdh and sh=:sh and cs=:cs and siz=:siz and ch=:ch and bxjs=:bxjs';
    params[0].asstring:=xsb.fieldbyname('zdh').value;
    params[1].asstring:=xsb.fieldbyname('sh').value;
    params[2].asinteger:=xsb.fieldbyname('cs').value;
    params[3].asstring:=xsb.fieldbyname('siz').value;
    params[4].asinteger:=xsb.fieldbyname('ch').value;
    params[5].asinteger:=xsb.fieldbyname('bxjs').value;
    open;
    if recordcount>0 then fh1.caption:=fieldbyname('fh1').asstring+'-'+fieldbyname('fh2').asstring;
  end;
end;

procedure Tfrmxsjlb.N1Click(Sender: TObject);
var
  cs:integer;
begin
  screen.cursor:=crHourglass;
  if mxsb.active=true then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select max(cs) as cs1 from mxsb where zdh=:zdh and sh=:sh';
      params[0].asstring:=mxsb.fieldbyname('zdh').value;
      params[1].asstring:=mxsb.fieldbyname('sh').value;
      open;
      cs:=fieldbyname('cs1').value;
    end;
    if cs=mxsb.fieldbyname('cs').value then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'cs',ptinput);
        commandtext:='delete from xsb where zdh=:zdh and sh=:sh and cs=:cs';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        params[2].asinteger:=mxsb.fieldbyname('cs').value;
        execute;
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'cs',ptinput);
        commandtext:='delete from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        params[2].asinteger:=mxsb.fieldbyname('cs').value;
        execute;
      end;
      showmessage('成功取消!');
      if cs>1 then begin
        with mxsb do begin
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftinteger,'cs',ptinput);
          commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
          params[0].asstring:=edit1.text;
          params[1].asstring:=edit2.text;
          params[2].asinteger:=cs-1;
          open;
        end;
      end
      else mxsb.close;
    end
    else begin
      showmessage('這不是最后一次,不能取消!');
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxsjlb.SpeedButton4Click(Sender: TObject);
var
  cs:integer;
begin
  screen.cursor:=crHourglass;
  if mxsb.active=true then begin
    if mxsb.fieldbyname('cs').value>1 then begin
      cs:=mxsb.fieldbyname('cs').value-1;
      with mxsb do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'cs',ptinput);
        commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        params[2].asinteger:=cs;
        open;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxsjlb.SpeedButton5Click(Sender: TObject);
var
  cs:integer;
begin
  screen.cursor:=crHourglass;
  if mxsb.active=true then begin
    cs:=mxsb.fieldbyname('cs').value;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select max(cs) as cs1 from mxsb where zdh=:zdh and sh=:sh';
      params[0].asstring:=edit1.text;
      params[1].asstring:=edit2.text;
      open;
      if fieldbyname('cs1').value>cs then begin
        with mxsb do begin
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftinteger,'cs',ptinput);
          commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
          params[0].asstring:=edit1.text;
          params[1].asstring:=edit2.text;
          params[2].asinteger:=cs+1;
          open;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxsjlb.SpeedButton6Click(Sender: TObject);
var
  zdh,sh:string;
  xjs,cs:integer;
begin
  screen.cursor:=crHourglass;
  if mxsb.active=true then begin
    zdh:=edit1.text;
    sh:=edit2.text;
    xjs:=mxsb.fieldbyname('xjs').value;
    EDIT3.TEXT:=INTTOSTR(XJS);
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select max(cs) as cs1 from mxsb where zdh=:zdh and sh=:sh';
      params[0].asstring:=edit1.text;
      params[1].asstring:=edit2.text;
      open;
      cs:=fieldbyname('cs1').value;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftinteger,'cs',ptinput);
      commandtext:='select * from mxsb where zdh=:zdh and sh=:sh and cs=:cs and bxgsl-bclhs>0';
      params[0].asstring:=edit1.text;
      params[1].asstring:=edit2.text;
      params[2].asinteger:=cs;
      open;
      if recordcount>0 then begin
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'cs',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftinteger,'siz1',ptinput);
            params.createparam(ftstring,'cm',ptinput);
            params.createparam(ftinteger,'zds',ptinput);
            params.createparam(ftinteger,'ycs',ptinput);
            params.createparam(ftinteger,'xjs',ptinput);
            params.createparam(ftboolean,'gjzds',ptinput);
            params.createparam(ftinteger,'xgsl',ptinput);
            params.createparam(ftinteger,'bxgsl',ptinput);
            params.createparam(ftinteger,'bclhs',ptinput);
            params.createparam(ftinteger,'ljlhs',ptinput);
            params.createparam(ftinteger,'wlhs',ptinput);
            params.createparam(ftdate,'rq',ptinput);
            params.createparam(fttime,'tm',ptinput);
            commandtext:='insert into mxsb(gch,zdh,kh,sh,cs,id,cup,siz1,cm,zds,ycs,xjs,gjzds,xgsl,bxgsl,bclhs,ljlhs,wlhs,rq,tm) '
                        +'values(:gch,:zdh,:kh,:sh,:cs,:id,:cup,:siz1,:cm,:zds,:ycs,:xjs,:gjzds,:xgsl,:bxgsl,:bclhs,:ljlhs,:wlhs,:rq,:tm)';
            params[0].asstring:=query1.fieldbyname('gch').value;
            params[1].asstring:=query1.fieldbyname('zdh').value;
            params[2].asstring:=query1.fieldbyname('kh').value;
            params[3].asstring:=query1.fieldbyname('sh').value;
            params[4].asinteger:=query1.fieldbyname('cs').value+1;
            params[5].asinteger:=query1.fieldbyname('id').value;
            if not query1.fieldbyname('cup').isnull then
            params[6].asstring:=query1.fieldbyname('cup').value
            else params[6].asstring:='';
            if not query1.fieldbyname('siz1').isnull then
            params[7].asinteger:=query1.fieldbyname('siz1').value
            else params[7].asinteger:=0;
            params[8].asstring:=query1.fieldbyname('cm').value;
            params[9].asinteger:=query1.fieldbyname('zds').value;
            params[10].asinteger:=query1.fieldbyname('ycs').value;
            params[11].asinteger:=query1.fieldbyname('xjs').value;
            params[12].asboolean:=query1.fieldbyname('gjzds').value;
            params[13].asinteger:=query1.fieldbyname('xgsl').value;
            params[14].asinteger:=query1.fieldbyname('xgsl').value-query1.fieldbyname('ljlhs').value;//query1.fieldbyname('wlhs').value;
            params[15].asinteger:=query1.fieldbyname('xgsl').value-query1.fieldbyname('ljlhs').value;//query1.fieldbyname('wlhs').value;
            params[16].asinteger:=query1.fieldbyname('xgsl').value;//query1.fieldbyname('xgsl').value-query1.fieldbyname('wlhs').value;
            params[17].asinteger:=0;
            params[18].asdate:=date;
            params[19].astime:=time;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
        WITH MXSB DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'ZDH',PTINPUT);
          PARAMS.CREATEPARAM(FTSTRING,'SH',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'CS',PTINPUT);
          COMMANDTEXT:='SELECT * FROM MXSB WHERE ZDH=:ZDH AND SH=:SH AND CS=:CS';
          PARAMS[0].ASSTRING:=EDIT1.TEXT;
          PARAMS[1].ASSTRING:=EDIT2.TEXT;
          PARAMS[2].ASINTEGER:=CS+1;
          OPEN;
        END;
        //frommxsb2xsb(zdh,sh,xjs,cs+1);
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxsjlb.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton2click(speedbutton2);
end;

procedure Tfrmxsjlb.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then key:=#0;
end;

procedure Tfrmxsjlb.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0)
  else begin
    if (dbgrideh1.selectedindex=5) or (dbgrideh1.selectedindex=7) then begin
      {with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select max(cs) as cs1 from mxsb where zdh=:zdh and sh=:sh';
        params[0].asstring:=mxsb.fieldbyname('zdh').value;
        params[1].asstring:=mxsb.fieldbyname('sh').value;
        open;
        if mxsb.fieldbyname('cs').value<fieldbyname('cs1').value then key:=#0;
      end;}
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'cs',ptinput);
        commandtext:='select cs from xsb where zdh=:zdh and sh=:sh and cs=:cs';
        params[0].asstring:=mxsb.fieldbyname('zdh').value;
        params[1].asstring:=mxsb.fieldbyname('sh').value;
        params[2].asinteger:=mxsb.fieldbyname('cs').value;
        open;
        if recordcount>0 then key:=#0;
      end;
    end;
  end;
end;

procedure Tfrmxsjlb.mxsbBxgslChange(Sender: TField);
begin
  {if mxsb.state=dsedit then begin
    if not mxsb.fieldbyname('bxgsl').isnull then begin
      mxsb.fieldbyname('bclhs').value:=mxsb.fieldbyname('bxgsl').value;
      mxsb.fieldbyname('ljlhs').value:=mxsb.fieldbyname('xgsl').value;
      mxsb.fieldbyname('wlhs').value:=0;
    end;
  end;}
end;

procedure Tfrmxsjlb.mxsbBclhsChange(Sender: TField);
begin
  if mxsb.state=dsedit then begin
    if not mxsb.fieldbyname('bclhs').isnull then begin
      mxsb.fieldbyname('wlhs').value:=mxsb.fieldbyname('bxgsl').value-mxsb.fieldbyname('bclhs').value;
      mxsb.fieldbyname('ljlhs').value:=mxsb.fieldbyname('xgsl').value-mxsb.fieldbyname('wlhs').value;
    end;
  end;
end;

procedure Tfrmxsjlb.SpeedButton3Click(Sender: TObject);
var
  zdh,sh:string;
  xjs,cs:integer;
begin
  screen.cursor:=crHourglass;
  if mxsb.active=true then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftinteger,'cs',ptinput);
      commandtext:='select cs,xjs from xsb where zdh=:zdh and sh=:sh and cs=:cs';
      params[0].asstring:=mxsb.fieldbyname('zdh').value;
      params[1].asstring:=mxsb.fieldbyname('sh').value;
      params[2].asinteger:=mxsb.fieldbyname('cs').value;
      open;
      if recordcount=0 then begin
        zdh:=mxsb.fieldbyname('zdh').value;
        sh:=mxsb.fieldbyname('sh').value;
        cs:=mxsb.fieldbyname('cs').value;
        xjs:=strtoint(edit3.text);
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'xjs',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftinteger,'cs',ptinput);
          commandtext:='update mxsb set xjs=:xjs where zdh=:zdh and sh=:sh and cs=:cs';
          params[0].asinteger:=xjs;
          params[1].asstring:=mxsb.fieldbyname('zdh').value;
          params[2].asstring:=mxsb.fieldbyname('sh').value;
          params[3].asinteger:=mxsb.fieldbyname('cs').value;
          execute;
        end;
        with query1 do begin
          close;
          params.clear;
          //commandtext:='select max(fh) as fh1 from xsb';
          commandtext:='select maxfh as fh1 from maxfh';
          open;
          if not fieldbyname('fh1').isnull then begin
            edit4.text:=inttostr(fieldbyname('fh1').value+1);
          end
          else begin
            edit4.text:=inputbox('','請輸入初始飛號!','');
            if edit4.text='' then exit;
          end;
        end;
        if strtoint(edit4.text)>0 then begin
          frommxsb2xsb(zdh,sh,xjs,cs);
        end;
      end
      else begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftinteger,'cs',ptinput);
          commandtext:='select distinct xjs from mxsb where zdh=:zdh and sh=:sh and cs=:cs';
          params[0].asstring:=mxsb.fieldbyname('zdh').value;
          params[1].asstring:=mxsb.fieldbyname('sh').value;
          params[2].asinteger:=mxsb.fieldbyname('cs').value;
          open;
          if fieldbyname('xjs').value<>query1.fieldbyname('xjs').value then begin
            with query3 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'xjs',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftinteger,'cs',ptinput);
              commandtext:='update mxsb set xjs=:xjs where zdh=:zdh and sh=:sh and cs=:cs';
              params[0].asinteger:=query1.fieldbyname('xjs').value;
              params[1].asstring:=mxsb.fieldbyname('zdh').value;
              params[2].asstring:=mxsb.fieldbyname('sh').value;
              params[3].asinteger:=mxsb.fieldbyname('cs').value;
              execute;
            end;
          end;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

end.
