unit fllru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Buttons, Db, DBTables, Menus, ppProd, ppClass, ppReport, ppComm, ppViewr,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache, ppCtrls, ppPrnabl,
  DBClient, ppVar, GridsEh, ppParameter;

type
  Tfrmfllr = class(TForm)
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    DataSource1: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    query2: TClientDataSet;
    query1: TClientDataSet;
    query3: TClientDataSet;
    query4: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    SpeedButton5: TSpeedButton;
    query1prjno: TStringField;
    query1gch: TStringField;
    query1zdh: TStringField;
    query1kh: TStringField;
    query1sh: TStringField;
    query1wl: TStringField;
    query1fd: TFloatField;
    query1zds: TIntegerField;
    query1cacjyl: TFloatField;
    query1cacyl: TFloatField;
    query1jyl1: TFloatField;
    query1jyl2: TFloatField;
    query1jyl3: TFloatField;
    query1jyl: TFloatField;
    query1jhyl: TFloatField;
    query1bz: TStringField;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLine9: TppLine;
    ppLine18: TppLine;
    ppDBText3: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppLine22: TppLine;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLine23: TppLine;
    ppLabel16: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure query1jyl1Change(Sender: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure query1AfterPost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfllr: Tfrmfllr;

implementation
uses mainu, xzzd1u, zdsu;
{$R *.DFM}

procedure Tfrmfllr.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmfllr.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmfllr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmfllr:=nil;
end;

procedure Tfrmfllr.SpeedButton2Click(Sender: TObject);
begin
  if query1.active then begin
    if application.messagebox('要刪除此工程嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cut_fljy3 where prjno=:prjno';
        params[0].asstring:=edit1.text;
        execute;
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cut_fljy1 where prjno=:prjno';
        params[0].asstring:=edit1.text;
        execute;
      end;
      query1.close;
      edit1.text:='';
    end;
  end;
end;

procedure Tfrmfllr.SpeedButton1Click(Sender: TObject);
begin
  edit1.setfocus;
  edit1.text:='';
end;

procedure Tfrmfllr.SpeedButton3Click(Sender: TObject);
begin
  if query1.active then begin
    {with query4 do begin
      close;
      sql.clear;
      sql.add('select * from cut_fljy1 where aitem2.stylno=aitem1.stylno and aitem1.stylno=:stylno');
      prepare;
      params[0].asstring:=dbedit1.text;
      open;}
    if query1.recordcount>0 then  ppreport1.print;
    //end;
  end;
end;

procedure Tfrmfllr.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmfllr.query1jyl1Change(Sender: TField);
var
  jyl1,jyl2:double;
begin
  if not query1.fieldbyname('jyl1').isnull then jyl1:=query1.fieldbyname('jyl1').value
  else jyl1:=0;
  if not query1.fieldbyname('jyl2').isnull then jyl2:=query1.fieldbyname('jyl2').value
  else jyl2:=0;
  query1.fieldbyname('jyl').value:=jyl1+jyl2;
  query1.fieldbyname('jhyl').value:=query1.fieldbyname('zds').value*(jyl1+jyl2);
end;

procedure Tfrmfllr.BitBtn1Click(Sender: TObject);
begin
  if edit1.text='' then
  begin
    application.messagebox('請先輸入工程編號','提示信息',mb_iconinformation+mb_ok);
    edit1.visible:=true;
    edit1.setfocus;
  end
  else
  begin
    if frmxzzd1=nil then frmxzzd1:=tfrmxzzd1.create(self);
    query2.close;
    query2.params.clear;
    query2.params.createparam(ftstring,'prjno',ptinput);
    query2.commandtext:='delete from cut_fljh where prjno=:prjno';
    query2.params[0].asstring:=edit1.text;
    query2.execute;

    with query2 do begin
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='insert into cut_fljh(prjno,gch,zdh,kh,sh,zds) select distinct prjno,gch,zdh,kh,sh,zds from cut_fljy3 where prjno=:prjno';
      params[0].asstring:=edit1.text;
      execute;
    end;

    with frmxzzd1.xzzd do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_fljh where prjno=:prjno';
      params[0].asstring:=edit1.text;
      open;
    end;
    frmxzzd1.show;
  end;
end;

procedure Tfrmfllr.query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'jyl1',ptinput);
      params.createparam(ftfloat,'jyl2',ptinput);
      params.createparam(ftfloat,'jyl3',ptinput);
      params.createparam(ftfloat,'jyl',ptinput);
      params.createparam(ftfloat,'jhyl',ptinput);
      params.createparam(ftstring,'bz',ptinput);
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      commandtext:='update cut_fljy1 set jyl1=:jyl1,jyl2=:jyl2,jyl3=:jyl3,jyl=:jyl,jhyl=:jhyl,bz=:bz where prjno=:prjno and kh=:kh and wl=:wl';
      params[0].asfloat:=query1.fieldbyname('jyl1').value;
      params[1].asfloat:=query1.fieldbyname('jyl2').value;
      params[2].asfloat:=query1.fieldbyname('jyl3').value;
      params[3].asfloat:=query1.fieldbyname('jyl').value;
      params[4].asfloat:=query1.fieldbyname('jhyl').value;
      params[5].asstring:=query1.fieldbyname('bz').value;
      params[6].asstring:=query1.fieldbyname('prjno').value;
      params[7].asstring:=query1.fieldbyname('kh').value;
      params[8].asstring:=query1.fieldbyname('wl').value;
      execute;
    end;
  end;
end;

procedure Tfrmfllr.SpeedButton5Click(Sender: TObject);
begin
  if frmzds=nil then frmzds:=tfrmzds.create(self);
  frmzds.caption:='副料計劃工程編號查詢';
  frmzds.label2.caption:='fljy';
  frmzds.show;
end;

procedure Tfrmfllr.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if edit1.text>'' then begin
    if key=#13 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_fljy1 where prjno=:prjno';
        params[0].asstring:=edit1.text;
        open;
      end;
    end;
  end;
end;

procedure Tfrmfllr.FormShow(Sender: TObject);
begin
  if (uppercase(frmmain.Label1.caption)='TAMMYLIN') or (uppercase(frmmain.Label1.caption)='PAUL') then begin
    speedbutton1.Enabled:=true;
    speedbutton2.Enabled:=true;
    bitbtn1.enabled:=true;
    dbgrideh1.ReadOnly:=false;
  end
  else begin
    speedbutton1.Enabled:=false;
    speedbutton2.Enabled:=false;
    bitbtn1.enabled:=false;
    dbgrideh1.ReadOnly:=true;
  end;
end;

end.
