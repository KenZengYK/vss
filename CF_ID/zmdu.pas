unit zmdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons, Db, DBClient, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppViewr, Mask, rxToolEdit,
  GridsEh, ppParameter;

type
  Tfrmzmd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    SpeedButton2: TSpeedButton;
    zmd: TClientDataSet;
    query1: TClientDataSet;
    query2: TClientDataSet;
    query3: TClientDataSet;
    DataSource1: TDataSource;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DataSource2: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    lbl1: TppLabel;
    lbl2: TppLabel;
    lbl3: TppLabel;
    lbl4: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    zds: TppDBText;
    ppDBText2: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    zmdGch: TStringField;
    zmdZdh: TStringField;
    zmdKh: TStringField;
    zmdSh: TStringField;
    zmdId: TIntegerField;
    zmdCup: TStringField;
    zmdSiz1: TIntegerField;
    zmdSiz: TStringField;
    zmdXh: TIntegerField;
    zmdZds: TIntegerField;
    zmdYcs: TIntegerField;
    zmdXjs: TIntegerField;
    zmdZxs: TIntegerField;
    zmdXs: TIntegerField;
    zmdBxjs: TIntegerField;
    zmdFh: TIntegerField;
    zmdCh: TIntegerField;
    zmdBcxs: TIntegerField;
    zmdYzm: TBooleanField;
    zmdGjzds: TBooleanField;
    zmdZmrq: TDateField;
    zmdZmsj: TTimeField;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    opt1: TRadioButton;
    opt2: TRadioButton;
    opt3: TRadioButton;
    Panel4: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox3: TComboBox;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    DateEdit2: TDateEdit;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Label11: TLabel;
    Edit4: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    zmdCs: TIntegerField;
    procedure SpeedButton5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure zmdAfterPost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure zmdYzmChange(Sender: TField);
    procedure ComboBox3Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzmd: Tfrmzmd;

implementation
uses dlu, printzmd1u, shtzdu;
{$R *.DFM}

procedure Tfrmzmd.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmzmd.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmzmd.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  if combobox3.text<>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      commandtext:='select distinct zdh from mxsb where gch=:gch';
      params[0].asstring:=combobox3.text;
      open;
      first;
      while not eof do begin
        combobox1.items.add(fieldbyname('zdh').value);
        next;
      end;
    end;
  end
  else begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct zdh from mxsb';
      open;
      first;
      while not eof do begin
        combobox1.items.add(fieldbyname('zdh').value);
        next;
      end;
    end;
  end;
end;

procedure Tfrmzmd.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if combobox1.text<>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'zdh',ptinput);
      commandtext:='select distinct sh from mxsb where zdh=:zdh';
      params[0].asstring:=combobox1.text;
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('sh').value);
        next;
      end;
    end;
  end;
end;

procedure Tfrmzmd.SpeedButton2Click(Sender: TObject);
begin
  if zmd.state=dsedit then zmd.post;
end;

procedure Tfrmzmd.zmdAfterPost(DataSet: TDataSet);
begin
  if zmd.applyupdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'yzm',ptinput);
      params.createparam(ftdate,'zmrq',ptinput);
      params.createparam(fttime,'zmsj',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftstring,'siz',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      commandtext:='update xsb set yzm=:yzm,zmrq=:zmrq,zmsj=:zmsj where zdh=:zdh and sh=:sh and siz=:siz and xh=:xh';
      params[0].asboolean:=zmd.fieldbyname('yzm').value;
      if not zmd.fieldbyname('zmrq').isnull then
      params[1].asdate:=zmd.fieldbyname('zmrq').value
      else params[1].asdate:=0;
      if not zmd.fieldbyname('zmsj').isnull then
      params[2].astime:=zmd.fieldbyname('zmsj').value
      else params[2].astime:=0;
      params[3].asstring:=zmd.fieldbyname('zdh').value;
      params[4].asstring:=zmd.fieldbyname('sh').value;
      params[5].asstring:=zmd.fieldbyname('siz').value;
      params[6].asinteger:=zmd.fieldbyname('xh').value;
      execute;
    end;
  end;
end;

procedure Tfrmzmd.SpeedButton4Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if zmd.active=true then begin
  if zmd.state=dsedit then zmd.post;
  with query1 do begin
    close;
    params.clear;
    if combobox3.text<>'' then begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='delete from zmgzb where zdh=:zdh and sh=:sh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          execute;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='delete from zmgzb where zdh=:zdh';
          params[0].asstring:=combobox1.text;
          execute;
        end;
      end
      else begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'gchh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='delete from zmgzb where gch=:gch and sh=:sh';
          params[0].asstring:=combobox3.text;
          params[1].asstring:=combobox2.text;
          execute;
        end
        else begin
          params.createparam(ftstring,'gch',ptinput);
          commandtext:='delete from zmgzb where gch=:gch';
          params[0].asstring:=combobox3.text;
          execute;
        end;
      end;
    end
    else begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='delete from zmgzb where zdh=:zdh and sh=:sh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          execute;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='delete from zmgzb where zdh=:zdh';
          params[0].asstring:=combobox1.text;
          execute;
        end;
      end;
    end;
    //execute;
    close;
    params.clear;
    if combobox3.text<>'' then begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select distinct gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.zdh=:zdh and mxsb.sh=:sh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          execute;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select distinct gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.zdh=:zdh';
          params[0].asstring:=combobox1.text;
          execute;
        end;
      end
      else begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select distinct gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.gch=:gch and mxsb.sh=:sh';
          params[0].asstring:=combobox3.text;
          params[1].asstring:=combobox2.text;
          execute;
        end
        else begin
          params.createparam(ftstring,'gch',ptinput);
          commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select distinct gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.gch=:gch';
          params[0].asstring:=combobox3.text;
          execute;
        end;
      end;
    end
    else begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select distinct gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.zdh=:zdh and mxsb.sh=:sh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          execute;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select distinct gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.zdh=:zdh';
          params[0].asstring:=combobox1.text;
          execute;
        end;
      end;
    end;
    //execute;
  end;
  with query1 do begin
    close;
    params.clear;
    if combobox3.text<>'' then begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and yzm=true '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and yzm=true '
                      +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end
      else begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and sh=:sh and yzm=true '
                      +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox3.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'gch',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and yzm=true '
                      +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox3.text;
          open;
        end;
      end;
    end
    else begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and yzm=true '
                      +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and yzm=true '
                      +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end;
    end;
    //open;
    first;
    while not eof do begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'zxs',ptinput);
        params.createparam(ftinteger,'xs',ptinput);
        params.createparam(ftinteger,'bxjs',ptinput);
        params.createparam(ftinteger,'wxs',ptinput);
        params.createparam(ftinteger,'wxjs',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'id',ptinput);
        params.createparam(ftstring,'cup',ptinput);
        params.createparam(ftstring,'siz',ptinput);
        commandtext:='update zmgzb set zxs=:zxs,xs=:xs,bxjs=:bxjs,wxs=zxs-:wxs,wxjs=xgsl-:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
        params[0].asinteger:=query1.fieldbyname('zxs').value;
        params[1].asinteger:=query1.fieldbyname('xs').value;
        params[2].asinteger:=query1.fieldbyname('bxjs').value;
        params[3].asinteger:=query1.fieldbyname('xs').value;
        params[4].asinteger:=query1.fieldbyname('bxjs').value;
        params[5].asstring:=query1.fieldbyname('zdh').value;//combobox1.text;
        params[6].asstring:=query1.fieldbyname('sh').value;//combobox2.text;
        params[7].asinteger:=query1.fieldbyname('id').value;
        params[8].asstring:=query1.fieldbyname('cup').value;
        params[9].asstring:=query1.fieldbyname('siz').value;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    if combobox3.text<>'' then begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end
      else begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and sh=:sh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox3.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'gch',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox3.text;
          open;
        end;
      end;
    end
    else begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end;
    end;
    //open;
    first;
    while not eof do begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'zxs',ptinput);
        params.createparam(ftinteger,'xs',ptinput);
        params.createparam(ftinteger,'bxjs',ptinput);
        params.createparam(ftinteger,'wxs',ptinput);
        params.createparam(ftinteger,'wxjs',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'id',ptinput);
        params.createparam(ftstring,'cup',ptinput);
        params.createparam(ftstring,'siz',ptinput);
        commandtext:='update zmgzb set zxs=:zxs,xs=zxs-:xs,bxjs=xgsl-:bxjs,wxs=:wxs,wxjs=:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
        params[0].asinteger:=query1.fieldbyname('zxs').value;
        params[1].asinteger:=query1.fieldbyname('xs').value;
        params[2].asinteger:=query1.fieldbyname('bxjs').value;
        params[3].asinteger:=query1.fieldbyname('xs').value;
        params[4].asinteger:=query1.fieldbyname('bxjs').value;
        params[5].asstring:=query1.fieldbyname('zdh').value;//combobox1.text;
        params[6].asstring:=query1.fieldbyname('sh').value;//combobox2.text;
        params[7].asinteger:=query1.fieldbyname('id').value;
        params[8].asstring:=query1.fieldbyname('cup').value;
        params[9].asstring:=query1.fieldbyname('siz').value;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    if combobox3.text<>'' then begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from zmgzb where zdh=:zdh and sh=:sh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select * from zmgzb where zdh=:zdh';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end
      else begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from zmgzb where gch=:gch and sh=:sh';
          params[0].asstring:=combobox3.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'gch',ptinput);
          commandtext:='select * from zmgzb where gch=:gch';
          params[0].asstring:=combobox3.text;
          open;
        end;
      end;
    end
    else begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from zmgzb where zdh=:zdh and sh=:sh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end
        else begin
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select * from zmgzb where zdh=:zdh';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end;
    end;
    //open;
    if recordcount>0 then begin
      ppreport1.print;
    end;
  end;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmzmd.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if zmd.active=true then begin
    if zmd.state=dsedit then zmd.post;
  end;
  //if zmd.active=true then begin
    if (edit1.text>'') and (edit2.text>'') then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'zmrq',ptinput);
        params.createparam(fttime,'zmsj',ptinput);
        params.createparam(ftinteger,'fh1',ptinput);
        params.createparam(ftinteger,'fh2',ptinput);
        commandtext:='update xsb set yzm=true,zmrq=:zmrq,zmsj=:zmsj where fh>=:fh1 and fh<=:fh2 and yzm=false';
        params[0].asdate:=date;
        params[1].astime:=time;
        params[2].asinteger:=strtoint(edit1.text);
        params[3].asinteger:=strtoint(edit2.text);
        execute;
      end;
    end;
  //end;
  speedbutton3click(speedbutton3);
  screen.cursor:=crDefault;
end;

procedure Tfrmzmd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then edit2.setfocus
  else if not (key in [#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then key:=#0;
end;

procedure Tfrmzmd.zmdYzmChange(Sender: TField);
begin
  if zmd.fieldbyname('yzm').value=true then begin
    if (zmd.fieldbyname('zmrq').isnull) or (zmd.fieldbyname('zmrq').value=0) then begin
      zmd.fieldbyname('zmrq').value:=date;
      zmd.fieldbyname('zmsj').value:=time;
    end;
  end
  else begin
    if not zmd.fieldbyname('zmrq').isnull then begin
      zmd.fieldbyname('zmrq').value:=0;
      zmd.fieldbyname('zmsj').value:=0;
    end;
  end;
end;

procedure Tfrmzmd.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct gch from mxsb';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('gch').value);
      next;
    end;
  end;
end;

procedure Tfrmzmd.SpeedButton3Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if (edit3.text<>'') and (edit4.text<>'') then begin
    with zmd do begin
      close;
      params.clear;
      params.createparam(ftinteger,'fh1',ptinput);
      params.createparam(ftinteger,'fh2',ptinput);
      if opt1.checked=true then
      commandtext:='select * from xsb where fh>=:fh1 and fh<=:fh2 and yzm=false'
      else if opt2.checked=true then
      commandtext:='select * from xsb where fh>=:fh1 and fh<=:fh2 and yzm=true'
      else commandtext:='select * from xsb where fh>=:fh1 and fh<=:fh2';
      params[0].asinteger:=strtoint(edit3.text);
      params[1].asinteger:=strtoint(edit4.text);
      open;
    end;
    if opt1.checked=true then dbgrideh1.Fields[8].ReadOnly:=false
    else dbgrideh1.fields[8].readonly:=true;
  end
  else begin
    if combobox3.text<>'' then begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          if (dateedit1.date>0) and (dateedit2.date>0) then begin
            if (maskedit1.text>'  :  :  ') and (maskedit2.text>'  :  :  ') then begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and sh=:sh and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1';
                params[0].asstring:=combobox1.text;
                params[1].asstring:=combobox2.text;
                params[2].asdate:=dateedit1.date;
                params[3].asdate:=dateedit2.date;
                params[4].astime:=strtotime(maskedit1.text);
                params[5].astime:=strtotime(maskedit2.text);
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end
            else begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and sh=:sh and zmrq>=:zmrq and zmrq<=:zmrq1';
                params[0].asstring:=combobox1.text;
                params[1].asstring:=combobox2.text;
                params[2].asdate:=dateedit1.date;
                params[3].asdate:=dateedit2.date;
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end;
          end
          else begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              if opt1.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and sh=:sh and yzm=false'
              else if opt2.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and sh=:sh and yzm=true'
              else commandtext:='select * from xsb where zdh=:zdh and sh=:sh';
              params[0].asstring:=combobox1.text;
              params[1].asstring:=combobox2.text;
              open;
            end;
            if opt1.checked=true then dbgrideh1.fields[8].readonly:=false
            else dbgrideh1.fields[8].readonly:=true;
          end;
        end
        else begin
          if (dateedit1.date>0) and (dateedit2.date>0) then begin
            if (maskedit1.text>'  :  :  ') and (maskedit2.text>'  :  :  ') then begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1';
                params[0].asstring:=combobox1.text;
                params[1].asdate:=dateedit1.date;
                params[2].asdate:=dateedit2.date;
                params[3].astime:=strtotime(maskedit1.text);
                params[4].astime:=strtotime(maskedit2.text);
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end
            else begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and zmrq>=:zmrq and zmrq<=:zmrq1';
                params[0].asstring:=combobox1.text;
                params[1].asdate:=dateedit1.date;
                params[2].asdate:=dateedit2.date;
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end;
          end
          else begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftstring,'zdh',ptinput);
              if opt1.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and yzm=false'
              else if opt2.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and yzm=true'
              else commandtext:='select * from xsb where zdh=:zdh';
              params[0].asstring:=combobox1.text;
              open;
            end;
            if opt1.checked=true then dbgrideh1.fields[8].readonly:=false
            else dbgrideh1.fields[8].readonly:=true;
          end;
        end;
      end
      else begin
        if (dateedit1.date>0) and (dateedit2.date>0) then begin
          if (maskedit1.text>'  :  :  ') and (maskedit2.text>'  :  :  ') then begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftstring,'gch',ptinput);
              params.createparam(ftdate,'zmrq',ptinput);
              params.createparam(ftdate,'zmrq1',ptinput);
              params.createparam(fttime,'zmsj',ptinput);
              params.createparam(fttime,'zmsj1',ptinput);
              commandtext:='select * from xsb where gch=:gch and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1';
              params[0].asstring:=combobox3.text;
              params[1].asdate:=dateedit1.date;
              params[2].asdate:=dateedit2.date;
              params[3].astime:=strtotime(maskedit1.text);
              params[4].astime:=strtotime(maskedit2.text);
              open;
            end;
            dbgrideh1.fields[8].readonly:=true;
          end
          else begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftstring,'gch',ptinput);
              params.createparam(ftdate,'zmrq',ptinput);
              params.createparam(ftdate,'zmrq1',ptinput);
              commandtext:='select * from xsb where gch=:gch and zmrq>=:zmrq and zmrq<=:zmrq1';
              params[0].asstring:=combobox3.text;
              params[1].asdate:=dateedit1.date;
              params[2].asdate:=dateedit2.date;
              open;
            end;
            dbgrideh1.fields[8].readonly:=true;
          end;
        end
        else begin
          with zmd do begin
            close;
            params.clear;
            params.createparam(ftstring,'gch',ptinput);
            if opt1.checked=true then
            commandtext:='select * from xsb where gch=:gch and yzm=false'
            else if opt2.checked=true then
            commandtext:='select * from xsb where gch=:gch and yzm=true'
            else commandtext:='select * from xsb where gch=:gch';
            params[0].asstring:=combobox3.text;
            open;
          end;
          if opt1.checked=true then dbgrideh1.fields[8].readonly:=false
          else dbgrideh1.fields[8].readonly:=true;
        end;
      end;
    end
    else begin
      if combobox1.text<>'' then begin
        if combobox2.text<>'' then begin
          if (dateedit1.date>0) and (dateedit2.date>0) then begin
            if (maskedit1.text>'  :  :  ') and (maskedit2.text>'  :  :  ') then begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and sh=:sh and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1';
                params[0].asstring:=combobox1.text;
                params[1].asstring:=combobox2.text;
                params[2].asdate:=dateedit1.date;
                params[3].asdate:=dateedit2.date;
                params[4].astime:=strtotime(maskedit1.text);
                params[5].astime:=strtotime(maskedit2.text);
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end
            else begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and sh=:sh and zmrq>=:zmrq and zmrq<=:zmrq1';
                params[0].asstring:=combobox1.text;
                params[1].asstring:=combobox2.text;
                params[2].asdate:=dateedit1.date;
                params[3].asdate:=dateedit2.date;
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end;
          end
          else begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              if opt1.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and sh=:sh and yzm=false'
              else if opt2.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and sh=:sh and yzm=true'
              else commandtext:='select * from xsb where zdh=:zdh and sh=:sh';
              params[0].asstring:=combobox1.text;
              params[1].asstring:=combobox2.text;
              open;
            end;
            if opt1.checked=true then dbgrideh1.fields[8].readonly:=false
            else dbgrideh1.fields[8].readonly:=true;
          end;
        end
        else begin
          if (dateedit1.date>0) and (dateedit2.date>0) then begin
            if (maskedit1.text>'  :  :  ') and (maskedit2.text>'  :  :  ') then begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1';
                params[0].asstring:=combobox1.text;
                params[1].asdate:=dateedit1.date;
                params[2].asdate:=dateedit2.date;
                params[3].astime:=strtotime(maskedit1.text);
                params[4].astime:=strtotime(maskedit2.text);
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end
            else begin
              with zmd do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                commandtext:='select * from xsb where zdh=:zdh and zmrq>=:zmrq and zmrq<=:zmrq1';
                params[0].asstring:=combobox1.text;
                params[1].asdate:=dateedit1.date;
                params[2].asdate:=dateedit2.date;
                open;
              end;
              dbgrideh1.fields[8].readonly:=true;
            end;
          end
          else begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftstring,'zdh',ptinput);
              if opt1.checked=true then
              commandtext:='select * from xsb where zdh=:zdh and yzm=false'
              else if opt2.checked=true then
              commandtext:='select * from xsb where zdh=:zhd and yzm=true'
              else commandtext:='select * from xsb where zdh=:zdh';
              params[0].asstring:=combobox1.text;
              open;
            end;
            if opt1.checked=true then dbgrideh1.fields[8].readonly:=false
            else dbgrideh1.fields[8].readonly:=true;
          end;
        end;
      end
      else begin
        if (dateedit1.date>0) and (dateedit2.date>0) then begin
          if (maskedit1.text>'  :  :  ') and (maskedit2.text>'  :  :  ') then begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftdate,'zmrq',ptinput);
              params.createparam(ftdate,'zmrq1',ptinput);
              params.createparam(fttime,'zmsj',ptinput);
              params.createparam(fttime,'zmsj1',ptinput);
              commandtext:='select * from xsb where zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1';
              params[0].asdate:=dateedit1.date;
              params[1].asdate:=dateedit2.date;
              params[2].astime:=strtotime(maskedit1.text);
              params[3].astime:=strtotime(maskedit2.text);
              open;
            end;
            dbgrideh1.fields[8].readonly:=true;
          end
          else begin
            with zmd do begin
              close;
              params.clear;
              params.createparam(ftdate,'zmrq',ptinput);
              params.createparam(ftdate,'zmrq1',ptinput);
              commandtext:='select * from xsb where zmrq>=:zmrq and zmrq<=:zmrq1';
              params[0].asdate:=dateedit1.date;
              params[1].asdate:=dateedit2.date;
              open;
            end;
            dbgrideh1.fields[8].readonly:=true;
          end;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmzmd.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  combobox3.items.clear;
  combobox3enter(combobox3);
  combobox3.setfocus;
  zmd.close;
end;

procedure Tfrmzmd.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then maskedit2.setfocus;
end;

procedure Tfrmzmd.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then key:=#0;
end;

procedure Tfrmzmd.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then edit4.setfocus
  else if not (key in [#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then key:=#0;
end;

procedure Tfrmzmd.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then key:=#0;
end;

procedure Tfrmzmd.SpeedButton6Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if zmd.active=true then begin
    if zmd.state=dsedit then zmd.post;
  end;
  if combobox1.text<>'' then begin
    if combobox2.text<>'' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='delete from zmgzb where zdh=:zdh and sh=:sh';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.zdh=:zdh and mxsb.sh=:sh';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and yzm=true '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'zxs',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftinteger,'bxjs',ptinput);
            params.createparam(ftinteger,'wxs',ptinput);
            params.createparam(ftinteger,'wxjs',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftstring,'siz',ptinput);
            commandtext:='update zmgzb set zxs=:zxs,xs=:xs,bxjs=:bxjs,wxs=zxs-:wxs,wxjs=xgsl-:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
            params[0].asinteger:=query1.fieldbyname('zxs').value;
            params[1].asinteger:=query1.fieldbyname('xs').value;
            params[2].asinteger:=query1.fieldbyname('bxjs').value;
            params[3].asinteger:=query1.fieldbyname('xs').value;
            params[4].asinteger:=query1.fieldbyname('bxjs').value;
            params[5].asstring:=query1.fieldbyname('zdh').value;
            params[6].asstring:=query1.fieldbyname('sh').value;
            params[7].asinteger:=query1.fieldbyname('id').value;
            params[8].asstring:=query1.fieldbyname('cup').value;
            params[9].asstring:=query1.fieldbyname('siz').value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'zxs',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftinteger,'bxjs',ptinput);
            params.createparam(ftinteger,'wxs',ptinput);
            params.createparam(ftinteger,'wxjs',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftstring,'siz',ptinput);
            commandtext:='update zmgzb set zxs=:zxs,xs=zxs-:xs,bxjs=xgsl-:bxjs,wxs=:wxs,wxjs=:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
            params[0].asinteger:=query1.fieldbyname('zxs').value;
            params[1].asinteger:=query1.fieldbyname('xs').value;
            params[2].asinteger:=query1.fieldbyname('bxjs').value;
            params[3].asinteger:=query1.fieldbyname('xs').value;
            params[4].asinteger:=query1.fieldbyname('bxjs').value;
            params[5].asstring:=query1.fieldbyname('zdh').value;
            params[6].asstring:=query1.fieldbyname('sh').value;
            params[7].asinteger:=query1.fieldbyname('id').value;
            params[8].asstring:=query1.fieldbyname('cup').value;
            params[9].asstring:=query1.fieldbyname('siz').value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
    end
    else begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='delete from zmgzb where zdh=:zdh';
        params[0].asstring:=combobox1.text;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.zdh=:zdh';
        params[0].asstring:=combobox1.text;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and yzm=true '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
        params[0].asstring:=combobox1.text;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'zxs',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftinteger,'bxjs',ptinput);
            params.createparam(ftinteger,'wxs',ptinput);
            params.createparam(ftinteger,'wxjs',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftstring,'siz',ptinput);
            commandtext:='update zmgzb set zxs=:zxs,xs=:xs,bxjs=:bxjs,wxs=zxs-:wxs,wxjs=xgsl-:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
            params[0].asinteger:=query1.fieldbyname('zxs').value;
            params[1].asinteger:=query1.fieldbyname('xs').value;
            params[2].asinteger:=query1.fieldbyname('bxjs').value;
            params[3].asinteger:=query1.fieldbyname('xs').value;
            params[4].asinteger:=query1.fieldbyname('bxjs').value;
            params[5].asstring:=query1.fieldbyname('zdh').value;
            params[6].asstring:=query1.fieldbyname('sh').value;
            params[7].asinteger:=query1.fieldbyname('id').value;
            params[8].asstring:=query1.fieldbyname('cup').value;
            params[9].asstring:=query1.fieldbyname('siz').value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
        params[0].asstring:=combobox1.text;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'zxs',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftinteger,'bxjs',ptinput);
            params.createparam(ftinteger,'wxs',ptinput);
            params.createparam(ftinteger,'wxjs',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftstring,'siz',ptinput);
            commandtext:='update zmgzb set zxs=:zxs,xs=zxs-:xs,bxjs=xgsl-:bxjs,wxs=:wxs,wxjs=:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
            params[0].asinteger:=query1.fieldbyname('zxs').value;
            params[1].asinteger:=query1.fieldbyname('xs').value;
            params[2].asinteger:=query1.fieldbyname('bxjs').value;
            params[3].asinteger:=query1.fieldbyname('xs').value;
            params[4].asinteger:=query1.fieldbyname('bxjs').value;
            params[5].asstring:=query1.fieldbyname('zdh').value;
            params[6].asstring:=query1.fieldbyname('sh').value;
            params[7].asinteger:=query1.fieldbyname('id').value;
            params[8].asstring:=query1.fieldbyname('cup').value;
            params[9].asstring:=query1.fieldbyname('siz').value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
  end
  else begin
    if combobox3.text<>'' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='delete from zmgzb where gch=:gch';
        params[0].asstring:=combobox3.text;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='insert into zmgzb(gch,zdh,kh,sh,id,cup,siz1,siz,zds,xgsl,xjs) select gch,zdh,kh,sh,id,cup,siz1,cm,zds,xgsl,xjs from mxsb where mxsb.gch=:gch';
        params[0].asstring:=combobox3.text;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and yzm=true '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
        params[0].asstring:=combobox3.text;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'zxs',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftinteger,'bxjs',ptinput);
            params.createparam(ftinteger,'wxs',ptinput);
            params.createparam(ftinteger,'wxjs',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftstring,'siz',ptinput);
            commandtext:='update zmgzb set zxs=:zxs,xs=:xs,bxjs=:bxjs,wxs=zxs-:wxs,wxjs=xgsl-:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
            params[0].asinteger:=query1.fieldbyname('zxs').value;
            params[1].asinteger:=query1.fieldbyname('xs').value;
            params[2].asinteger:=query1.fieldbyname('bxjs').value;
            params[3].asinteger:=query1.fieldbyname('xs').value;
            params[4].asinteger:=query1.fieldbyname('bxjs').value;
            params[5].asstring:=query1.fieldbyname('zdh').value;
            params[6].asstring:=query1.fieldbyname('sh').value;
            params[7].asinteger:=query1.fieldbyname('id').value;
            params[8].asstring:=query1.fieldbyname('cup').value;
            params[9].asstring:=query1.fieldbyname('siz').value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select distinct zdh,sh,id,cup,siz1,siz,zxs,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and yzm=false '
                +'group by zdh,sh,id,cup,siz1,siz,zxs order by zdh,sh,id,cup,siz1,siz';
        params[0].asstring:=combobox3.text;
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'zxs',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftinteger,'bxjs',ptinput);
            params.createparam(ftinteger,'wxs',ptinput);
            params.createparam(ftinteger,'wxjs',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftstring,'siz',ptinput);
            commandtext:='update zmgzb set zxs=:zxs,xs=zxs-:xs,bxjs=xgsl-:bxjs,wxs=:wxs,wxjs=:wxjs where zdh=:zdh and sh=:sh and id=:id and cup=:cup and siz=:siz';
            params[0].asinteger:=query1.fieldbyname('zxs').value;
            params[1].asinteger:=query1.fieldbyname('xs').value;
            params[2].asinteger:=query1.fieldbyname('bxjs').value;
            params[3].asinteger:=query1.fieldbyname('xs').value;
            params[4].asinteger:=query1.fieldbyname('bxjs').value;
            params[5].asstring:=query1.fieldbyname('zdh').value;
            params[6].asstring:=query1.fieldbyname('sh').value;
            params[7].asinteger:=query1.fieldbyname('id').value;
            params[8].asstring:=query1.fieldbyname('cup').value;
            params[9].asstring:=query1.fieldbyname('siz').value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    if combobox1.text<>'' then begin
      if combobox2.text<>'' then begin
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select distinct gch,zdh,kh,sh,sum(zxs) as zxs,xjs,sum(xgsl) as xgsl,sum(wxjs) as wxjs,sum(wxs) as wxs from zmgzb where zdh=:zdh and sh=:sh group by gch,zdh,kh,sh,xjs';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
      end
      else begin
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='select distinct gch,zdh,kh,sh,sum(zxs) as zxs,xjs,sum(xgsl) as xgsl,sum(wxjs) as wxjs,sum(wxs) as wxs from zmgzb where zdh=:zdh group by gch,zdh,kh,sh,xjs';
        params[0].asstring:=combobox1.text;
      end;
    end
    else begin
      if combobox3.text<>'' then begin
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select distinct gch,zdh,kh,sh,sum(zxs) as zxs,xjs,sum(xgsl) as xgsl,sum(wxjs) as wxjs,sum(wxs) as wxs from zmgzb where gch=:gch group by gch,zdh,kh,sh,xjs';
        params[0].asstring:=combobox3.text;
      end;
    end;
    open;
    if recordcount>0 then begin
      if frmprintzmd1=nil then frmprintzmd1:=tfrmprintzmd1.create(self);
      frmprintzmd1.ppreport1.print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmzmd.SpeedButton7Click(Sender: TObject);
var
  fh:string;
  i,j:integer;
  fh1,fh2:integer;
begin
  screen.cursor:=crHourglass;
  if zmd.active=true then begin
    if zmd.state=dsedit then zmd.post;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='delete from shtzd';
    execute;
  end;
  {if dateedit1.date>0 then begin
    if dateedit2.date>0 then begin
      if maskedit1.text>'  :  :  ' then begin
        if maskedit2.text>'  :  :  ' then begin
          if combobox1.text<>'' then begin
            if combobox2.text<>'' then begin
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select distinct gch,zdh,kh,sh,id,cup,siz1,siz,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and sh=:sh and zmrq>=:zmrq and zmrq<=:zmrq1 '
                            +'and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true group by gch,zdh,kh,sh,id,cup,siz1,siz';
                params[0].asstring:=combobox1.text;
                params[1].asstring:=combobox2.text;
                params[2].asdate:=dateedit1.date;
                params[3].asdate:=dateedit2.date;
                params[4].astime:=strtotime(maskedit1.text);
                params[5].astime:=strtotime(maskedit2.text);
                open;
                first;
                while not eof do begin
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftdate,'zmrq',ptinput);
                    params.createparam(ftdate,'zmrq1',ptinput);
                    params.createparam(fttime,'zmsj',ptinput);
                    params.createparam(fttime,'zmsj1',ptinput);
                    commandtext:='select distinct fh from xsb where zdh=:zdh and sh=:sh and siz=:siz and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true order by fh';
                    params[0].asstring:=query1.fieldbyname('zdh').value;
                    params[1].asstring:=query1.fieldbyname('sh').value;
                    params[2].asstring:=query1.fieldbyname('siz').value;
                    params[3].asdate:=dateedit1.date;
                    params[4].asdate:=dateedit2.date;
                    params[5].astime:=strtotime(maskedit1.text);
                    params[6].astime:=strtotime(maskedit2.text);
                    open;
                    if recordcount>0 then begin
                      fh1:=fieldbyname('fh').value;
                      fh:=fieldbyname('fh').asstring;
                      next;
                      while not eof do begin
                        fh2:=fieldbyname('fh').value;
                        if fh2-fh1>1 then begin
                          fh:=fh+','+inttostr(fh2);
                        end
                        else begin
                          if copy(fh,length(fh)-length(inttostr(fh1)),length(inttostr(fh1)))='-'+inttostr(fh1) then begin
                            fh:=copy(fh,1,length(fh)-length(inttostr(fh1)))+inttostr(fh2);
                          end
                          else begin
                            fh:=fh+'-'+inttostr(fh2);
                          end;
                        end;
                        fh1:=fieldbyname('fh').value;
                        next;
                      end;
                    end;
                  end;
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftinteger,'id',ptinput);
                    params.createparam(ftstring,'cup',ptinput);
                    params.createparam(ftinteger,'siz1',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftinteger,'xs',ptinput);
                    params.createparam(ftinteger,'bxjs',ptinput);
                    params.createparam(ftstring,'fh',ptinput);
                    commandtext:='insert into shtzd(gch,zdh,kh,sh,id,cup,siz1,siz,xs,bxjs,fh) '
                                +'values(:gch,:zdh,:kh,:sh,:id,:cup,:siz1,:siz,:xs,:bxjs,:fh)';
                    params[0].asstring:=query1.fieldbyname('gch').value;
                    params[1].asstring:=query1.fieldbyname('zdh').value;
                    params[2].asstring:=query1.fieldbyname('kh').value;
                    params[3].asstring:=query1.fieldbyname('sh').value;
                    params[4].asinteger:=query1.fieldbyname('id').value;
                    if not query1.fieldbyname('cup').isnull then
                    params[5].asstring:=query1.fieldbyname('cup').value
                    else params[5].asstring:='';
                    params[6].asinteger:=query1.fieldbyname('siz1').value;
                    params[7].asstring:=query1.fieldbyname('siz').value;
                    params[8].asinteger:=query1.fieldbyname('xs').value;
                    params[9].asinteger:=query1.fieldbyname('bxjs').value;
                    params[10].asstring:=fh;
                    execute;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
            end
            else begin
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select distinct gch,zdh,kh,sh,id,cup,siz1,siz,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zdh=:zdh and zmrq>=:zmrq and zmrq<=:zmrq1 '
                            +'and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true group by gch,zdh,kh,sh,id,cup,siz1,siz';
                params[0].asstring:=combobox1.text;
                params[1].asdate:=dateedit1.date;
                params[2].asdate:=dateedit2.date;
                params[3].astime:=strtotime(maskedit1.text);
                params[4].astime:=strtotime(maskedit2.text);
                open;
                first;
                while not eof do begin
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftdate,'zmrq',ptinput);
                    params.createparam(ftdate,'zmrq1',ptinput);
                    params.createparam(fttime,'zmsj',ptinput);
                    params.createparam(fttime,'zmsj1',ptinput);
                    commandtext:='select distinct fh from xsb where zdh=:zdh and sh=:sh and siz=:siz and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true order by fh';
                    params[0].asstring:=query1.fieldbyname('zdh').value;
                    params[1].asstring:=query1.fieldbyname('sh').value;
                    params[2].asstring:=query1.fieldbyname('siz').value;
                    params[3].asdate:=dateedit1.date;
                    params[4].asdate:=dateedit2.date;
                    params[5].astime:=strtotime(maskedit1.text);
                    params[6].astime:=strtotime(maskedit2.text);
                    open;
                    if recordcount>0 then begin
                      fh1:=fieldbyname('fh').value;
                      fh:=fieldbyname('fh').asstring;
                      next;
                      while not eof do begin
                        fh2:=fieldbyname('fh').value;
                        if fh2-fh1>1 then begin
                          fh:=fh+','+inttostr(fh2);
                        end
                        else begin
                          if copy(fh,length(fh)-length(inttostr(fh1)),length(inttostr(fh1)))='-'+inttostr(fh1) then begin
                            fh:=copy(fh,1,length(fh)-length(inttostr(fh1)))+inttostr(fh2);
                          end
                          else begin
                            fh:=fh+'-'+inttostr(fh2);
                          end;
                        end;
                        fh1:=fieldbyname('fh').value;
                        next;
                      end;
                    end;
                  end;
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftinteger,'id',ptinput);
                    params.createparam(ftstring,'cup',ptinput);
                    params.createparam(ftinteger,'siz1',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftinteger,'xs',ptinput);
                    params.createparam(ftinteger,'bxjs',ptinput);
                    params.createparam(ftstring,'fh',ptinput);
                    commandtext:='insert into shtzd(gch,zdh,kh,sh,id,cup,siz1,siz,xs,bxjs,fh) '
                                +'values(:gch,:zdh,:kh,:sh,:id,:cup,:siz1,:siz,:xs,:bxjs,:fh)';
                    params[0].asstring:=query1.fieldbyname('gch').value;
                    params[1].asstring:=query1.fieldbyname('zdh').value;
                    params[2].asstring:=query1.fieldbyname('kh').value;
                    params[3].asstring:=query1.fieldbyname('sh').value;
                    params[4].asinteger:=query1.fieldbyname('id').value;
                    if not query1.fieldbyname('cup').isnull then
                    params[5].asstring:=query1.fieldbyname('cup').value
                    else params[5].asstring:='';
                    params[6].asinteger:=query1.fieldbyname('siz1').value;
                    params[7].asstring:=query1.fieldbyname('siz').value;
                    params[8].asinteger:=query1.fieldbyname('xs').value;
                    params[9].asinteger:=query1.fieldbyname('bxjs').value;
                    params[10].asstring:=fh;
                    execute;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
            end;
          end
          else begin
            if combobox3.text<>'' then begin
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select distinct gch,zdh,kh,sh,id,cup,siz1,siz,sum(xs) as xs,sum(bxjs) as bxjs from xsb where gch=:gch and zmrq>=:zmrq and zmrq<=:zmrq1 '
                            +'and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true group by gch,zdh,kh,sh,id,cup,siz1,siz';
                params[0].asstring:=combobox3.text;
                params[1].asdate:=dateedit1.date;
                params[2].asdate:=dateedit2.date;
                params[3].astime:=strtotime(maskedit1.text);
                params[4].astime:=strtotime(maskedit2.text);
                open;
                first;
                while not eof do begin
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftdate,'zmrq',ptinput);
                    params.createparam(ftdate,'zmrq1',ptinput);
                    params.createparam(fttime,'zmsj',ptinput);
                    params.createparam(fttime,'zmsj1',ptinput);
                    commandtext:='select distinct fh from xsb where zdh=:zdh and sh=:sh and siz=:siz and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true order by fh';
                    params[0].asstring:=query1.fieldbyname('zdh').value;
                    params[1].asstring:=query1.fieldbyname('sh').value;
                    params[2].asstring:=query1.fieldbyname('siz').value;
                    params[3].asdate:=dateedit1.date;
                    params[4].asdate:=dateedit2.date;
                    params[5].astime:=strtotime(maskedit1.text);
                    params[6].astime:=strtotime(maskedit2.text);
                    open;
                    if recordcount>0 then begin
                      fh1:=fieldbyname('fh').value;
                      fh:=fieldbyname('fh').asstring;
                      next;
                      while not eof do begin
                        fh2:=fieldbyname('fh').value;
                        if fh2-fh1>1 then begin
                          fh:=fh+','+inttostr(fh2);
                        end
                        else begin
                          if copy(fh,length(fh)-length(inttostr(fh1)),length(inttostr(fh1)))='-'+inttostr(fh1) then begin
                            fh:=copy(fh,1,length(fh)-length(inttostr(fh1)))+inttostr(fh2);
                          end
                          else begin
                            fh:=fh+'-'+inttostr(fh2);
                          end;
                        end;
                        fh1:=fieldbyname('fh').value;
                        next;
                      end;
                    end;
                  end;
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftinteger,'id',ptinput);
                    params.createparam(ftstring,'cup',ptinput);
                    params.createparam(ftinteger,'siz1',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftinteger,'xs',ptinput);
                    params.createparam(ftinteger,'bxjs',ptinput);
                    params.createparam(ftstring,'fh',ptinput);
                    commandtext:='insert into shtzd(gch,zdh,kh,sh,id,cup,siz1,siz,xs,bxjs,fh) '
                                +'values(:gch,:zdh,:kh,:sh,:id,:cup,:siz1,:siz,:xs,:bxjs,:fh)';
                    params[0].asstring:=query1.fieldbyname('gch').value;
                    params[1].asstring:=query1.fieldbyname('zdh').value;
                    params[2].asstring:=query1.fieldbyname('kh').value;
                    params[3].asstring:=query1.fieldbyname('sh').value;
                    params[4].asinteger:=query1.fieldbyname('id').value;
                    if not query1.fieldbyname('cup').isnull then
                    params[5].asstring:=query1.fieldbyname('cup').value
                    else params[5].asstring:='';
                    params[6].asinteger:=query1.fieldbyname('siz1').value;
                    params[7].asstring:=query1.fieldbyname('siz').value;
                    params[8].asinteger:=query1.fieldbyname('xs').value;
                    params[9].asinteger:=query1.fieldbyname('bxjs').value;
                    params[10].asstring:=fh;
                    execute;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
            end
            else begin
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftdate,'zmrq',ptinput);
                params.createparam(ftdate,'zmrq1',ptinput);
                params.createparam(fttime,'zmsj',ptinput);
                params.createparam(fttime,'zmsj1',ptinput);
                commandtext:='select distinct gch,zdh,kh,sh,id,cup,siz1,siz,sum(xs) as xs,sum(bxjs) as bxjs from xsb where zmrq>=:zmrq and zmrq<=:zmrq1 '
                            +'and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true group by gch,zdh,kh,sh,id,cup,siz1,siz';
                params[0].asdate:=dateedit1.date;
                params[1].asdate:=dateedit2.date;
                params[2].astime:=strtotime(maskedit1.text);
                params[3].astime:=strtotime(maskedit2.text);
                open;
                first;
                while not eof do begin
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftdate,'zmrq',ptinput);
                    params.createparam(ftdate,'zmrq1',ptinput);
                    params.createparam(fttime,'zmsj',ptinput);
                    params.createparam(fttime,'zmsj1',ptinput);
                    commandtext:='select distinct fh from xsb where zdh=:zdh and sh=:sh and siz=:siz and zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true order by fh';
                    params[0].asstring:=query1.fieldbyname('zdh').value;
                    params[1].asstring:=query1.fieldbyname('sh').value;
                    params[2].asstring:=query1.fieldbyname('siz').value;
                    params[3].asdate:=dateedit1.date;
                    params[4].asdate:=dateedit2.date;
                    params[5].astime:=strtotime(maskedit1.text);
                    params[6].astime:=strtotime(maskedit2.text);
                    open;
                    if recordcount>0 then begin
                      fh1:=fieldbyname('fh').value;
                      fh:=fieldbyname('fh').asstring;
                      next;
                      while not eof do begin
                        fh2:=fieldbyname('fh').value;
                        if fh2-fh1>1 then begin
                          fh:=fh+','+inttostr(fh2);
                        end
                        else begin
                          if copy(fh,length(fh)-length(inttostr(fh1)),length(inttostr(fh1)))='-'+inttostr(fh1) then begin
                            fh:=copy(fh,1,length(fh)-length(inttostr(fh1)))+inttostr(fh2);
                          end
                          else begin
                            fh:=fh+'-'+inttostr(fh2);
                          end;
                        end;
                        fh1:=fieldbyname('fh').value;
                        next;
                      end;
                    end;
                  end;
                  with query2 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftinteger,'id',ptinput);
                    params.createparam(ftstring,'cup',ptinput);
                    params.createparam(ftinteger,'siz1',ptinput);
                    params.createparam(ftstring,'siz',ptinput);
                    params.createparam(ftinteger,'xs',ptinput);
                    params.createparam(ftinteger,'bxjs',ptinput);
                    params.createparam(ftstring,'fh',ptinput);
                    commandtext:='insert into shtzd(gch,zdh,kh,sh,id,cup,siz1,siz,xs,bxjs,fh) '
                                +'values(:gch,:zdh,:kh,:sh,:id,:cup,:siz1,:siz,:xs,:bxjs,:fh)';
                    params[0].asstring:=query1.fieldbyname('gch').value;
                    params[1].asstring:=query1.fieldbyname('zdh').value;
                    params[2].asstring:=query1.fieldbyname('kh').value;
                    params[3].asstring:=query1.fieldbyname('sh').value;
                    params[4].asinteger:=query1.fieldbyname('id').value;
                    if not query1.fieldbyname('cup').isnull then
                    params[5].asstring:=query1.fieldbyname('cup').value
                    else params[5].asstring:='';
                    params[6].asinteger:=query1.fieldbyname('siz1').value;
                    params[7].asstring:=query1.fieldbyname('siz').value;
                    params[8].asinteger:=query1.fieldbyname('xs').value;
                    params[9].asinteger:=query1.fieldbyname('bxjs').value;
                    params[10].asstring:=fh;
                    execute;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
            end;
          end;
        end
        else begin
        end;
      end
      else begin
      end;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select * from shtzd';
    open;
    if recordcount>0 then begin
      if frmprintshtzd=nil then frmprintshtzd:=tfrmprintshtzd.create(self);
      frmprintshtzd.rq1.caption:=dateedit1.text+'-'+dateedit2.text;
      frmprintshtzd.sj1.caption:=maskedit1.text+'-'+maskedit2.text;
      frmprintshtzd.ppreport1.print;
    end;
  end;}
  with query3 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      if dateedit2.date>0 then begin
        if maskedit1.text>'  :  :  ' then begin
          if maskedit2.text>'  :  :  ' then begin
            params.createparam(ftdate,'zmrq',ptinput);
            params.createparam(ftdate,'zmrq1',ptinput);
            params.createparam(fttime,'zmsj',ptinput);
            params.createparam(fttime,'zmsj1',ptinput);
            commandtext:='select * from xsb where zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and zmsj<=:zmsj1 and yzm=true';
            params[0].asdate:=dateedit1.date;
            params[1].asdate:=dateedit2.date;
            params[2].astime:=strtotime(maskedit1.text);
            params[3].astime:=strtotime(maskedit2.text);
          end
          else begin
            params.createparam(ftdate,'zmrq',ptinput);
            params.createparam(ftdate,'zmrq1',ptinput);
            params.createparam(fttime,'zmsj',ptinput);
            commandtext:='select * from xsb where zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj>=:zmsj and yzm=true';
            params[0].asdate:=dateedit1.date;
            params[1].asdate:=dateedit2.date;
            params[2].astime:=strtotime(maskedit1.text);
          end;
        end
        else begin
          if maskedit2.text>'  :  :  ' then begin
            params.createparam(ftdate,'zmrq',ptinput);
            params.createparam(ftdate,'zmrq1',ptinput);
            params.createparam(fttime,'zmsj1',ptinput);
            commandtext:='select * from xsb where zmrq>=:zmrq and zmrq<=:zmrq1 and zmsj<=:zmsj1 and yzm=true';
            params[0].asdate:=dateedit1.date;
            params[1].asdate:=dateedit2.date;
            params[2].astime:=strtotime(maskedit2.text);
          end
          else begin
            params.createparam(ftdate,'zmrq',ptinput);
            params.createparam(ftdate,'zmrq1',ptinput);
            commandtext:='select * from xsb where zmrq>=:zmrq and zmrq<=:zmrq1 and yzm=true';
            params[0].asdate:=dateedit1.date;
            params[1].asdate:=dateedit2.date;
          end;
        end;
      end;
    end;
    open;
    if recordcount>0 then begin
      if frmprintshtzd=nil then frmprintshtzd:=tfrmprintshtzd.create(self);
      frmprintshtzd.rq1.caption:=dateedit1.text+'-'+dateedit2.text;
      frmprintshtzd.sj1.caption:=maskedit1.text+'-'+maskedit2.text;
      frmprintshtzd.ppreport1.print;
    end;
  end;
  screen.cursor:=crDefault;
end;

end.
