unit cgbgu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGridEh, ExtCtrls, Buttons, Db, DBTables,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppBands, ppPrnabl, ppCtrls, myChkBox, ppStrtch, ppRegion, ppViewr,
  ComCtrls, ppSubRpt, ppVar, Math, Menus, DBClient, GridsEh;

type
  Tfrmcgbg = class(TForm)
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
    SpeedButton2: TSpeedButton;
    DBCheckBox17: TDBCheckBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton6: TSpeedButton;
    cgbg1: TClientDataSet;
    dscgbg1: TDataSource;
    cgbg2: TClientDataSet;
    dscgbg2: TDataSource;
    cgbg3: TClientDataSet;
    dscgbg3: TDataSource;
    cgbgylfx: TClientDataSet;
    dscgbgylfx: TDataSource;
    cgbgslfx: TClientDataSet;
    dscgbgslfx: TDataSource;
    query1: TClientDataSet;
    query2: TClientDataSet;
    query3: TClientDataSet;
    query4: TClientDataSet;
    query5: TClientDataSet;
    query6: TClientDataSet;
    query7: TClientDataSet;
    cgbg1Prjno: TStringField;
    cgbg1Wl: TStringField;
    cgbg1Xh: TIntegerField;
    cgbg1Mjh: TStringField;
    cgbg1Lbzs: TIntegerField;
    cgbg1Lbzs1: TIntegerField;
    cgbg1Lbzs2: TIntegerField;
    cgbg1Scmjcd: TFloatField;
    cgbg1Ysmjfd: TFloatField;
    cgbg1Scmjfd: TFloatField;
    cgbg1Dzmjps: TIntegerField;
    cgbg1Scmjyl: TFloatField;
    cgbg1Ybl: TFloatField;
    cgbg1Cgsj: TFloatField;
    cgbg1Scmjzc: TFloatField;
    cgbg1Zdypcd: TFloatField;
    cgbg1Mjjs: TFloatField;
    cgbg1Mjstatus: TStringField;
    cgbg1Zp: TBooleanField;
    cgbg1Rq: TDateField;
    cgbg1Bzmj: TBooleanField;
    cgbg1Zbmj: TBooleanField;
    cgbg1Twmj: TBooleanField;
    cgbg1Pzx: TBooleanField;
    cgbg1Yymj: TBooleanField;
    cgbg1Dk: TBooleanField;
    cgbg1Hk: TBooleanField;
    cgbg1Ds: TBooleanField;
    cgbg1Hs: TBooleanField;
    cgbg1Dzd: TBooleanField;
    cgbg1Hzd: TBooleanField;
    cgbg1Ldz: TBooleanField;
    cgbg1Lhz: TBooleanField;
    cgbg1Yqxg: TBooleanField;
    cgbg1Zysc: TBooleanField;
    cgbg1Oaps: TStringField;
    cgbg1Scmjcd1: TFloatField;
    cgbg1Scmjcd2: TFloatField;
    cgbg1Ysmjfd1: TFloatField;
    cgbg1Ysmjfd2: TFloatField;
    cgbg1Scmjfd1: TFloatField;
    cgbg1Scmjfd2: TFloatField;
    cgbg1Ybl1: TFloatField;
    cgbg1Ybl2: TFloatField;
    cgbg1Cgsj1: TFloatField;
    cgbg1Cgsj2: TFloatField;
    cgbg1Scmjzc1: TFloatField;
    cgbg1Scmjzc2: TFloatField;
    cgbg1Cfm: TBooleanField;
    cgbg1Yxh: TIntegerField;
    cgbg1Tm: TTimeField;
    cgbg1Ylbzs: TIntegerField;
    cgbg1Ylbzs1: TIntegerField;
    cgbg1Ylbzs2: TIntegerField;
    cgbg3Prjno: TStringField;
    cgbg3Wl: TStringField;
    cgbg3Cs: TIntegerField;
    cgbg3Idno: TStringField;
    cgbg3Oaps: TStringField;
    cgbg3Oacm: TStringField;
    cgbg3Rq: TDateField;
    cgbg3Tm: TTimeField;
    cgbg3Qr: TBooleanField;
    cgbgylfxPrjno: TStringField;
    cgbgylfxWl: TStringField;
    cgbgylfxGch: TStringField;
    cgbgylfxZdh: TStringField;
    cgbgylfxKh: TStringField;
    cgbgylfxSh: TStringField;
    cgbgylfxYsfd: TFloatField;
    cgbgylfxSyfd: TFloatField;
    cgbgylfxZds: TIntegerField;
    cgbgylfxYcs: TIntegerField;
    cgbgylfxDc: TFloatField;
    cgbgylfxCacyl: TFloatField;
    cgbgylfxJhyl: TFloatField;
    cgbgylfxYlxc: TFloatField;
    cgbgylfxYbl: TFloatField;
    cgbgylfxHsl: TFloatField;
    cgbgylfxScsh: TFloatField;
    cgbgylfxCutyl: TFloatField;
    cgbgylfxSjyl: TFloatField;
    cgbgylfxYfsl: TFloatField;
    procedure tcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure dscgbg1DataChange(Sender: TObject; Field: TField);
    procedure cgbg1AfterPost(DataSet: TDataSet);
    procedure cgbg3AfterPost(DataSet: TDataSet);
    procedure cgbgylfxAfterPost(DataSet: TDataSet);
    procedure cgbg1LbzsChange(Sender: TField);
    procedure cgbgylfxYfslChange(Sender: TField);
    procedure cgbg3QrChange(Sender: TField);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcgbg: Tfrmcgbg;

implementation
uses mainu, dlu, zdzlu, zdsu, dycgbgu, cgbgfxu, lhjlu;
{$R *.DFM}

procedure Tfrmcgbg.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcgbg.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct prjno from cgd1 where not prjno is null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('prjno').value);
      next;
    end;
  end;
  pagecontrol1.activepage:=tabsheet1;
end;

procedure Tfrmcgbg.ComboBox1Change(Sender: TObject);
begin
  screen.Cursor:=crhourglass;
  if combobox1.text<>'' then
  begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select prjno from cgbg1 where prjno=:prjno';
      params[0].asstring:=combobox1.text;
      open;
      if recordcount=0 then begin
        //frmxtdl.SocketConnection1.appserver.cgd2cgbg(combobox1.text);
        with cgbg1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cgbg1 where prjno=:prjno';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end
      else begin
        with cgbg1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cgbg1 where prjno=:prjno';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end;
    end;
    if dbcheckbox17.checked then begin
      dbedit3.readonly:=true;
      dbedit22.readonly:=true;
      dbedit24.readonly:=true;
      dbedit30.readonly:=true;
      dbedit32.readonly:=true;
      dbedit23.readonly:=true;
      dbedit25.readonly:=true;
      dbedit31.readonly:=true;
      dbedit33.readonly:=true;
      dbedit5.readonly:=true;
      dbedit10.readonly:=true;
      dbedit11.readonly:=true;
      dbedit9.readonly:=true;
      dbedit6.readonly:=true;
      dbedit7.readonly:=true;
      dbedit12.readonly:=true;
      dbedit13.readonly:=true;
      dbedit26.readonly:=true;
      dbedit27.readonly:=true;
      dbedit28.readonly:=true;
      dbedit29.readonly:=true;
      dbedit34.readonly:=true;
      dbedit35.readonly:=true;
      dbcheckbox2.readonly:=true;
      dbcheckbox3.readonly:=true;
      dbcheckbox4.readonly:=true;
      dbcheckbox5.readonly:=true;
      dbcheckbox6.readonly:=true;
      dbcheckbox7.readonly:=true;
      dbcheckbox8.readonly:=true;
      dbcheckbox9.readonly:=true;
      dbcheckbox10.readonly:=true;
      dbcheckbox11.readonly:=true;
      dbcheckbox12.readonly:=true;
      dbcheckbox13.readonly:=true;
      dbcheckbox14.readonly:=true;
      dbcheckbox15.readonly:=true;
      dbcheckbox16.readonly:=true;
      dbrichedit1.ReadOnly:=true;
    end
    else begin
     dbedit9.readonly:=false;
     dbedit12.readonly:=false;
     dbcheckbox2.readonly:=false;
     dbcheckbox3.readonly:=false;
     dbcheckbox4.readonly:=false;
     dbcheckbox5.readonly:=false;
     dbcheckbox6.readonly:=false;
     dbcheckbox7.readonly:=false;
     dbcheckbox8.readonly:=false;
     dbcheckbox9.readonly:=false;
     dbcheckbox10.readonly:=false;
     dbcheckbox11.readonly:=false;
     dbcheckbox12.readonly:=false;
     dbcheckbox13.readonly:=false;
     dbcheckbox14.readonly:=false;
     dbcheckbox15.readonly:=false;
     dbcheckbox16.readonly:=false;
     dbrichedit1.ReadOnly:=false;
     if dbedit3.text>'0' then begin
       dbedit3.readonly:=false;
       dbedit5.readonly:=false;
       dbedit6.readonly:=false;
       dbedit7.readonly:=false;
       dbedit10.readonly:=false;
       dbedit11.readonly:=false;
       dbedit13.readonly:=false;
     end
     else begin
       dbedit3.readonly:=true;
       dbedit5.readonly:=true;
       dbedit6.readonly:=true;
       dbedit7.readonly:=true;
       dbedit10.readonly:=true;
       dbedit11.readonly:=true;
       dbedit13.readonly:=true;
     end;
     if dbedit22.text>'0' then begin
       dbedit22.readonly:=false;
       dbedit24.readonly:=false;
       dbedit26.readonly:=false;
       dbedit28.readonly:=false;
       dbedit30.readonly:=false;
       dbedit32.readonly:=false;
       dbedit34.readonly:=false;
     end
     else begin
       dbedit22.readonly:=true;
       dbedit24.readonly:=true;
       dbedit26.readonly:=true;
       dbedit28.readonly:=true;
       dbedit30.readonly:=true;
       dbedit32.readonly:=true;
       dbedit34.readonly:=true;
     end;
     if dbedit23.text>'0' then begin
       dbedit23.readonly:=false;
       dbedit25.readonly:=false;
       dbedit27.readonly:=false;
       dbedit29.readonly:=false;
       dbedit31.readonly:=false;
       dbedit33.readonly:=false;
       dbedit35.readonly:=false;
     end
     else begin
       dbedit23.readonly:=true;
       dbedit25.readonly:=true;
       dbedit27.readonly:=true;
       dbedit29.readonly:=true;
       dbedit31.readonly:=true;
       dbedit33.readonly:=true;
       dbedit35.readonly:=true;
     end;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgbg.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if dbcheckbox17.checked then begin
      dbedit3.readonly:=true;
      dbedit22.readonly:=true;
      dbedit24.readonly:=true;
      dbedit30.readonly:=true;
      dbedit32.readonly:=true;
      dbedit23.readonly:=true;
      dbedit25.readonly:=true;
      dbedit31.readonly:=true;
      dbedit33.readonly:=true;
      dbedit5.readonly:=true;
      dbedit10.readonly:=true;
      dbedit11.readonly:=true;
      dbedit9.readonly:=true;
      dbedit6.readonly:=true;
      dbedit7.readonly:=true;
      dbedit12.readonly:=true;
      dbedit13.readonly:=true;
      dbedit26.readonly:=true;
      dbedit27.readonly:=true;
      dbedit28.readonly:=true;
      dbedit29.readonly:=true;
      dbedit34.readonly:=true;
      dbedit35.readonly:=true;
      dbcheckbox2.readonly:=true;
      dbcheckbox3.readonly:=true;
      dbcheckbox4.readonly:=true;
      dbcheckbox5.readonly:=true;
      dbcheckbox6.readonly:=true;
      dbcheckbox7.readonly:=true;
      dbcheckbox8.readonly:=true;
      dbcheckbox9.readonly:=true;
      dbcheckbox10.readonly:=true;
      dbcheckbox11.readonly:=true;
      dbcheckbox12.readonly:=true;
      dbcheckbox13.readonly:=true;
      dbcheckbox14.readonly:=true;
      dbcheckbox15.readonly:=true;
      dbcheckbox16.readonly:=true;
      dbrichedit1.ReadOnly:=true;
    end
    else begin
     dbedit9.readonly:=false;
     dbedit12.readonly:=false;
     dbcheckbox2.readonly:=false;
     dbcheckbox3.readonly:=false;
     dbcheckbox4.readonly:=false;
     dbcheckbox5.readonly:=false;
     dbcheckbox6.readonly:=false;
     dbcheckbox7.readonly:=false;
     dbcheckbox8.readonly:=false;
     dbcheckbox9.readonly:=false;
     dbcheckbox10.readonly:=false;
     dbcheckbox11.readonly:=false;
     dbcheckbox12.readonly:=false;
     dbcheckbox13.readonly:=false;
     dbcheckbox14.readonly:=false;
     dbcheckbox15.readonly:=false;
     dbcheckbox16.readonly:=false;
     dbrichedit1.ReadOnly:=false;
     if dbedit3.text>'0' then begin
       dbedit3.readonly:=false;
       dbedit5.readonly:=false;
       dbedit6.readonly:=false;
       dbedit7.readonly:=false;
       dbedit10.readonly:=false;
       dbedit11.readonly:=false;
       dbedit13.readonly:=false;
     end
     else begin
       dbedit3.readonly:=true;
       dbedit5.readonly:=true;
       dbedit6.readonly:=true;
       dbedit7.readonly:=true;
       dbedit10.readonly:=true;
       dbedit11.readonly:=true;
       dbedit13.readonly:=true;
     end;
     if dbedit22.text>'0' then begin
       dbedit22.readonly:=false;
       dbedit24.readonly:=false;
       dbedit26.readonly:=false;
       dbedit28.readonly:=false;
       dbedit30.readonly:=false;
       dbedit32.readonly:=false;
       dbedit34.readonly:=false;
     end
     else begin
       dbedit22.readonly:=true;
       dbedit24.readonly:=true;
       dbedit26.readonly:=true;
       dbedit28.readonly:=true;
       dbedit30.readonly:=true;
       dbedit32.readonly:=true;
       dbedit34.readonly:=true;
     end;
     if dbedit23.text>'0' then begin
       dbedit23.readonly:=false;
       dbedit25.readonly:=false;
       dbedit27.readonly:=false;
       dbedit29.readonly:=false;
       dbedit31.readonly:=false;
       dbedit33.readonly:=false;
       dbedit35.readonly:=false;
     end
     else begin
       dbedit23.readonly:=true;
       dbedit25.readonly:=true;
       dbedit27.readonly:=true;
       dbedit29.readonly:=true;
       dbedit31.readonly:=true;
       dbedit33.readonly:=true;
       dbedit35.readonly:=true;
     end;
    end;
end;

procedure Tfrmcgbg.SpeedButton9Click(Sender: TObject);
begin
  if frmzds=nil then frmzds:=tfrmzds.create(self);
  frmzds.caption:='已作裁單之工程編號';
  frmzds.label2.caption:='cgbg';
  frmzds.show;
end;

procedure Tfrmcgbg.N2Click(Sender: TObject);
begin
  if dbedit1.text<>'' then begin
    if application.messagebox('要刪除此工程嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cgbg2 where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        execute;
      end;
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cgbg3 where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        execute;
      end;
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cgbgylfx where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        execute;
      end;
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cgbgslfx where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        execute;
      end;
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='delete from cgbg1 where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        execute;
      end;
      cgbg1.active:=false;
      cgbg2.active:=false;
      cgbg3.active:=false;
      cgbgylfx.active:=false;
      cgbgslfx.active:=false;
      combobox1.text:='';
    end;
  end;
end;

procedure Tfrmcgbg.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if cgbg1.state=dsedit then cgbg1.post;
  if dbedit1.text<>'' then begin
    if cgbg1.recordcount>0 then begin
      if frmdycgbg=nil then frmdycgbg:=tfrmdycgbg.create(self);
      with frmdycgbg.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cgbg1,cgbg2 where cgbg2.prjno=cgbg1.prjno and cgbg2.wl=cgbg1.wl and cgbg2.xh=cgbg1.xh and cgbg1.prjno=:prjno order by prjno,wl,xh,kh,id';
        params[0].asstring:=dbedit1.text;
        open;
        if recordcount>0 then frmdycgbg.ppreport1.print;
      end;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgbg.SpeedButton8Click(Sender: TObject);
var
  ycs,ycs1,zds1,gm1:integer;
  jhyl,sjyl:double;
  wl1,zdh1:string;
begin
  screen.Cursor:=crhourglass;
  if cgbg1.state=dsedit then cgbg1.post;
  if dbedit1.text<>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct wl from cgbg1 where prjno=:prjno';
      params[0].asstring:=dbedit1.text;
      open;
      first;
      while not eof do begin
        ycs:=0;jhyl:=0.00;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='select sum(mjjs) as ycs from cgbg2 where prjno=:prjno and wl=:wl';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('ycs').isnull then ycs:=fieldbyname('ycs').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='select sum(scmjyl) as jhyl from cgbg1 where prjno=:prjno and wl=:wl';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('jhyl').isnull then jhyl:=fieldbyname('jhyl').value
          else jhyl:=0.00;
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='select sum(scmjyl) as sjyl from cgbg1 where prjno=:prjno and wl=:wl and cfm=true';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('sjyl').isnull then sjyl:=fieldbyname('sjyl').value
          else sjyl:=0.00;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'ycs',ptinput);
          params.createparam(ftfloat,'jhyl',ptinput);
          params.createparam(ftfloat,'sjyl',ptinput);
          params.createparam(ftfloat,'cutyl',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='update cgbgylfx set ycs=:ycs,dc=(ycs-zds)*100/zds,jhyl=:jhyl,sjyl=:sjyl,cutyl=1000000/((100-ybl)*(100-hsl)*(100-scsh))*:cutyl,ylxc=yfsl-cutyl where prjno=:prjno and wl=:wl';
          params[0].asinteger:=ycs;
          params[1].asfloat:=jhyl;
          params[2].asfloat:=sjyl;
          params[3].asfloat:=sjyl;
          params[4].asstring:=dbedit1.text;
          params[5].asstring:=query1.fieldbyname('wl').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //{

      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select distinct prjno,gch,zdh,kh,sh from fcjy3 where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select * from cgbgslfx where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query2.fieldbyname('gch').value;
            params[2].asstring:=query2.fieldbyname('zdh').value;
            params[3].asstring:=query2.fieldbyname('kh').value;
            params[4].asstring:=query2.fieldbyname('sh').value;
            open;
            if recordcount=0 then begin
              with query4 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='select id,cm,zds from fczd2 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by id';
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query2.fieldbyname('zdh').value;
                params[2].asstring:=query2.fieldbyname('kh').value;
                params[3].asstring:=query2.fieldbyname('sh').value;
                open;
                first;
                while not eof do begin
                  with query5 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'prjno',ptinput);
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    params.createparam(ftinteger,'zds',ptinput);
                    commandtext:='insert into cgbgslfx(prjno,gch,zdh,kh,sh,cm,zds,ycs,dc,dcp) '
                                +'values(:prjno,:gch,:zdh,:kh,:sh,:cm,:zds,0,0,0)';
                    params[0].asstring:=query2.fieldbyname('prjno').value;
                    params[1].asstring:=query2.fieldbyname('gch').value;
                    params[2].asstring:=query2.fieldbyname('zdh').value;
                    params[3].asstring:=query2.fieldbyname('kh').value;
                    params[4].asstring:=query2.fieldbyname('sh').value;
                    params[5].asstring:=query4.fieldbyname('cm').value;
                    params[6].asinteger:=query4.fieldbyname('zds').value;
                    execute;
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
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select distinct prjno,kh,zdh,sh,cm from cgbgslfx where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        open;
        first;
        while not eof do begin
          with query4 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftstring,'cm',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            commandtext:='select a.wl,a.zdh,sum(a.mjjs) as ycs from cgbg2 a,cgbg1 b where a.prjno=b.prjno and a.wl=b.wl and a.xh=b.xh and b.cfm=true and '
                        +'a.prjno=:prjno and a.kh=:kh and a.sh=:sh and a.cm=:cm and a.zdh like :zdh group by a.wl,a.zdh order by ycs';
            params[0].asstring:=query3.fieldbyname('prjno').value;
            params[1].asstring:=query3.fieldbyname('kh').value;
            params[2].asstring:=query3.fieldbyname('sh').value;
            params[3].asstring:=query3.fieldbyname('cm').value;
            params[4].asstring:='%'+query3.fieldbyname('zdh').value+'%';
            open;
            if not fieldbyname('ycs').isnull then begin
              ycs1:=fieldbyname('ycs').value;
              wl1:=fieldbyname('wl').value;
              zdh1:=fieldbyname('zdh').value;
            end
            else begin
              ycs1:=0;
              wl1:='';
              zdh1:='';
            end;
          end;
          if wl1='' then begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              commandtext:='select wl,zdh,sum(gm) as gm from fcjy2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm and zdh like :zdh group by wl,zdh order by gm desc';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              params[4].asstring:='%'+query3.fieldbyname('zdh').value+'%';
              open;
              if not fieldbyname('gm').isnull then gm1:=fieldbyname('gm').value
              else gm1:=0;
            end;
          end
          else begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              params.createparam(ftstring,'wl',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              commandtext:='select wl,zdh,sum(gm) as gm from fcjy2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm and wl=:wl and zdh like :zdh group by wl,zdh';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              params[4].asstring:=wl1;
              params[5].asstring:='%'+query3.fieldbyname('zdh').value+'%';
              open;
              if not fieldbyname('gm').isnull then gm1:=fieldbyname('gm').value
              else gm1:=0;
            end;
          end;
          if zdh1=query3.fieldbyname('zdh').value then begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              commandtext:='select distinct gch from cgbgslfx where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm and zdh=:zdh';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              params[4].asstring:=query3.fieldbyname('zdh').value;
              open;
              zds1:=0;
              first;
              while not eof do begin
                with query5 do begin
                  close;
                  params.clear;
                  params.createparam(ftstring,'gch',ptinput);
                  params.createparam(ftstring,'zdh',ptinput);
                  params.createparam(ftstring,'kh',ptinput);
                  params.createparam(ftstring,'sh',ptinput);
                  params.createparam(ftstring,'cm',ptinput);
                  commandtext:='select sum(zds) as zds from fczd2 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and cm=:cm';
                  params[0].asstring:=query4.fieldbyname('gch').value;
                  params[1].asstring:=query3.fieldbyname('zdh').value;
                  params[2].asstring:=query3.fieldbyname('kh').value;
                  params[3].asstring:=query3.fieldbyname('sh').value;
                  params[4].asstring:=query3.fieldbyname('cm').value;
                  open;
                  if not fieldbyname('zds').isnull then zds1:=zds1+fieldbyname('zds').value;
                end;
                next;
              end;
            end;
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftfloat,'ycs',ptinput);
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='update cgbgslfx set ycs=zds*:ycs,dc=ycs-zds,dcp=dc*100/zds where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm';
              params[0].asfloat:=(ycs1+gm1)/zds1;
              params[1].asstring:=query3.fieldbyname('prjno').value;
              params[2].asstring:=query3.fieldbyname('kh').value;
              params[3].asstring:=query3.fieldbyname('sh').value;
              params[4].asstring:=query3.fieldbyname('cm').value;
              execute;
            end;
          end
          else begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='select distinct gch,zdh from cgbgslfx where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              open;
              zds1:=0;
              first;
              while not eof do begin
                with query5 do begin
                  close;
                  params.clear;
                  params.createparam(ftstring,'prjno',ptinput);
                  params.createparam(ftstring,'zdh',ptinput);
                  params.createparam(ftstring,'kh',ptinput);
                  params.createparam(ftstring,'sh',ptinput);
                  params.createparam(ftstring,'cm',ptinput);
                  commandtext:='select sum(zds) as zds from fczd2 where gch=:prjno and zdh=:zdh and kh=:kh and sh=:sh and cm=:cm';
                  params[0].asstring:=query4.fieldbyname('gch').value;
                  params[1].asstring:=query4.fieldbyname('zdh').value;
                  params[2].asstring:=query3.fieldbyname('kh').value;
                  params[3].asstring:=query3.fieldbyname('sh').value;
                  params[4].asstring:=query3.fieldbyname('cm').value;
                  open;
                  if not fieldbyname('zds').isnull then zds1:=zds1+fieldbyname('zds').value;
                end;
                next;
              end;
            end;
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftfloat,'ycs',ptinput);
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='update cgbgslfx set ycs=zds*:ycs,dc=ycs-zds,dcp=dc*100/zds where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm';
              params[0].asfloat:=(ycs1+gm1)/zds1;
              params[1].asstring:=query3.fieldbyname('prjno').value;
              params[2].asstring:=query3.fieldbyname('kh').value;
              params[3].asstring:=query3.fieldbyname('sh').value;
              params[4].asstring:=query3.fieldbyname('cm').value;
              execute;
            end;
          end;
          next;
        end;
      end;

     //}
    if frmcgbgfx=nil then frmcgbgfx:=tfrmcgbgfx.create(self);
    with frmcgbgfx.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cgbgylfx where prjno=:prjno order by prjno,wl';
      params[0].asstring:=dbedit1.text;
      open;
      if recordcount>0 then frmcgbgfx.ppreport1.print;
    end;
    with frmcgbgfx.query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cgbgslfx where prjno=:prjno and ycs>0 order by prjno,kh,id';
      params[0].asstring:=dbedit1.text;
      open;
      if recordcount>0 then frmcgbgfx.ppreport2.print;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgbg.PageControl1Change(Sender: TObject);
var
  ycs,ycs1,zds1,gm1:integer;
  jhyl,sjyl:double;
  wl1,zdh1:string;
begin
  screen.cursor:=crhourglass;
  if pagecontrol1.activepage=tabsheet2 then begin
    if cgbg1.state=dsedit then cgbg1.post;
    if dbedit1.text<>'' then begin
     with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct wl from cgbg1 where prjno=:prjno';
      params[0].asstring:=dbedit1.text;
      open;
      first;
      while not eof do begin
        ycs:=0;jhyl:=0.00;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='select sum(mjjs) as ycs from cgbg2 where prjno=:prjno and wl=:wl';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('ycs').isnull then ycs:=fieldbyname('ycs').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='select sum(scmjyl) as jhyl from cgbg1 where prjno=:prjno and wl=:wl';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('jhyl').isnull then jhyl:=fieldbyname('jhyl').value
          else jhyl:=0.00;
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='select sum(scmjyl) as sjyl from cgbg1 where prjno=:prjno and wl=:wl and cfm=true';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=query1.fieldbyname('wl').value;
          open;
          if not fieldbyname('sjyl').isnull then sjyl:=fieldbyname('sjyl').value
          else sjyl:=0.00;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'ycs',ptinput);
          params.createparam(ftfloat,'jhyl',ptinput);
          params.createparam(ftfloat,'sjyl',ptinput);
          params.createparam(ftfloat,'cutyl',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='update cgbgylfx set ycs=:ycs,dc=(ycs-zds)*100/zds,jhyl=:jhyl,sjyl=:sjyl,cutyl=1000000/((100-ybl)*(100-hsl)*(100-scsh))*:cutyl,ylxc=yfsl-cutyl where prjno=:prjno and wl=:wl';
          params[0].asinteger:=ycs;
          params[1].asfloat:=jhyl;
          params[2].asfloat:=sjyl;
          params[3].asfloat:=sjyl;
          params[4].asstring:=dbedit1.text;
          params[5].asstring:=query1.fieldbyname('wl').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
     end;
     with cgbgylfx do begin
       close;
       params.clear;
       params.createparam(ftstring,'prjno',ptinput);
       commandtext:='select * from cgbgylfx where prjno=:prjno';
       params[0].asstring:=dbedit1.text;
       open;
     end;
    end;
  end
  else begin
   if pagecontrol1.activepage=tabsheet3 then begin
    if cgbg1.state=dsedit then cgbg1.post;
    if dbedit1.text<>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select distinct prjno,gch,zdh,kh,sh from fcjy3 where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select * from cgbgslfx where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query2.fieldbyname('gch').value;
            params[2].asstring:=query2.fieldbyname('zdh').value;
            params[3].asstring:=query2.fieldbyname('kh').value;
            params[4].asstring:=query2.fieldbyname('sh').value;
            open;
            if recordcount=0 then begin
              with query4 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='select id,cm,zds from fczd2 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by id';
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query2.fieldbyname('zdh').value;
                params[2].asstring:=query2.fieldbyname('kh').value;
                params[3].asstring:=query2.fieldbyname('sh').value;
                open;
                first;
                while not eof do begin
                  with query5 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'prjno',ptinput);
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    params.createparam(ftinteger,'zds',ptinput);
                    commandtext:='insert into cgbgslfx(prjno,gch,zdh,kh,sh,cm,zds,ycs,dc,dcp) '
                                +'values(:prjno,:gch,:zdh,:kh,:sh,:cm,:zds,0,0,0)';
                    params[0].asstring:=query2.fieldbyname('prjno').value;
                    params[1].asstring:=query2.fieldbyname('gch').value;
                    params[2].asstring:=query2.fieldbyname('zdh').value;
                    params[3].asstring:=query2.fieldbyname('kh').value;
                    params[4].asstring:=query2.fieldbyname('sh').value;
                    params[5].asstring:=query4.fieldbyname('cm').value;
                    params[6].asinteger:=query4.fieldbyname('zds').value;
                    execute;
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
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select distinct prjno,kh,zdh,sh,cm from cgbgslfx where prjno=:prjno';
        params[0].asstring:=dbedit1.text;
        open;
        first;
        while not eof do begin
          with query4 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftstring,'cm',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            commandtext:='select a.wl,a.zdh,sum(a.mjjs) as ycs from cgbg2 a,cgbg1 b where a.prjno=b.prjno and a.wl=b.wl and a.xh=b.xh and b.cfm=true and '
                        +'a.prjno=:prjno and a.kh=:kh and a.sh=:sh and a.cm=:cm and a.zdh like :zdh group by a.wl,a.zdh order by ycs';
            params[0].asstring:=query3.fieldbyname('prjno').value;
            params[1].asstring:=query3.fieldbyname('kh').value;
            params[2].asstring:=query3.fieldbyname('sh').value;
            params[3].asstring:=query3.fieldbyname('cm').value;
            params[4].asstring:='%'+query3.fieldbyname('zdh').value+'%';
            open;
            if not fieldbyname('ycs').isnull then begin
              ycs1:=fieldbyname('ycs').value;
              wl1:=fieldbyname('wl').value;
              zdh1:=fieldbyname('zdh').value;
            end
            else begin
              ycs1:=0;
              wl1:='';
              zdh1:='';
            end;
          end;
          if wl1='' then begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              commandtext:='select wl,zdh,sum(gm) as gm from fcjy2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm and zdh like :zdh group by wl,zdh order by gm desc';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              params[4].asstring:='%'+query3.fieldbyname('zdh').value+'%';
              open;
              if not fieldbyname('gm').isnull then gm1:=fieldbyname('gm').value
              else gm1:=0;
            end;
          end
          else begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              params.createparam(ftstring,'wl',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              commandtext:='select wl,zdh,sum(gm) as gm from fcjy2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm and wl=:wl and zdh like :zdh group by wl,zdh';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              params[4].asstring:=wl1;
              params[5].asstring:='%'+query3.fieldbyname('zdh').value+'%';
              open;
              if not fieldbyname('gm').isnull then gm1:=fieldbyname('gm').value
              else gm1:=0;
            end;
          end;
          if zdh1=query3.fieldbyname('zdh').value then begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              commandtext:='select distinct gch from cgbgslfx where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm and zdh=:zdh';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              params[4].asstring:=query3.fieldbyname('zdh').value;
              open;
              zds1:=0;
              first;
              while not eof do begin
                with query5 do begin
                  close;
                  params.clear;
                  params.createparam(ftstring,'prjno',ptinput);
                  params.createparam(ftstring,'zdh',ptinput);
                  params.createparam(ftstring,'kh',ptinput);
                  params.createparam(ftstring,'sh',ptinput);
                  params.createparam(ftstring,'cm',ptinput);
                  commandtext:='select sum(zds) as zds from fczd2 where gch=:prjno and zdh=:zdh and kh=:kh and sh=:sh and cm=:cm';
                  params[0].asstring:=query4.fieldbyname('gch').value;
                  params[1].asstring:=query3.fieldbyname('zdh').value;
                  params[2].asstring:=query3.fieldbyname('kh').value;
                  params[3].asstring:=query3.fieldbyname('sh').value;
                  params[4].asstring:=query3.fieldbyname('cm').value;
                  open;
                  if not fieldbyname('zds').isnull then zds1:=zds1+fieldbyname('zds').value;
                end;
                next;
              end;
            end;
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftfloat,'ycs',ptinput);
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='update cgbgslfx set ycs=zds*:ycs,dc=ycs-zds,dcp=dc*100/zds where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm';
              params[0].asfloat:=(ycs1+gm1)/zds1;
              params[1].asstring:=query3.fieldbyname('prjno').value;
              params[2].asstring:=query3.fieldbyname('kh').value;
              params[3].asstring:=query3.fieldbyname('sh').value;
              params[4].asstring:=query3.fieldbyname('cm').value;
              open;
            end;
          end
          else begin
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='select distinct gch,zdh from cgbgslfx where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm';
              params[0].asstring:=query3.fieldbyname('prjno').value;
              params[1].asstring:=query3.fieldbyname('kh').value;
              params[2].asstring:=query3.fieldbyname('sh').value;
              params[3].asstring:=query3.fieldbyname('cm').value;
              open;
              zds1:=0;
              first;
              while not eof do begin
                with query5 do begin
                  close;
                  params.clear;
                  params.createparam(ftstring,'prjno',ptinput);
                  params.createparam(ftstring,'zdh',ptinput);
                  params.createparam(ftstring,'kh',ptinput);
                  params.createparam(ftstring,'sh',ptinput);
                  params.createparam(ftstring,'cm',ptinput);
                  commandtext:='select sum(zds) as zds from fczd2 where gch=:prjno and zdh=:zdh and kh=:kh and sh=:sh and cm=:cm';
                  params[0].asstring:=query4.fieldbyname('gch').value;
                  params[1].asstring:=query4.fieldbyname('zdh').value;
                  params[2].asstring:=query3.fieldbyname('kh').value;
                  params[3].asstring:=query3.fieldbyname('sh').value;
                  params[4].asstring:=query3.fieldbyname('cm').value;
                  open;
                  if not fieldbyname('zds').isnull then zds1:=zds1+fieldbyname('zds').value;
                end;
                next;
              end;
            end;
            with query4 do begin
              close;
              params.clear;
              params.createparam(ftfloat,'ycs',ptinput);
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='update cgbgslfx set ycs=zds*:ycs,dc=ycs-zds,dcp=dc*100/zds where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm';
              params[0].asfloat:=(ycs1+gm1)/zds1;
              params[1].asstring:=query3.fieldbyname('prjno').value;
              params[2].asstring:=query3.fieldbyname('kh').value;
              params[3].asstring:=query3.fieldbyname('sh').value;
              params[4].asstring:=query3.fieldbyname('cm').value;
              execute;
            end;
          end;
          next;
        end;
      end;
      with cgbgslfx do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cgbgslfx where prjno=:prjno';
        params[0].asstring:=cgbg1.fieldbyname('prjno').value;
        open;
      end;
    end;
   end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcgbg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcgbg:=nil;
end;

procedure Tfrmcgbg.SpeedButton2Click(Sender: TObject);
var
  jhlbzs1,jhlbzs2,jhlbzs3,xh1:integer;
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select sum(lbzs) as lbzs,sum(lbzs1) as lbzs1,sum(lbzs2) as lbzs2 from cgbg1 where prjno=:prjno and yxh=:yxh and wl=:wl';
    params[0].asstring:=dbedit1.text;
    params[1].asinteger:=cgbg1.fieldbyname('yxh').value;
    params[2].asstring:=dbedit17.text;
    open;
    jhlbzs1:=fieldbyname('lbzs').value;
    jhlbzs2:=fieldbyname('lbzs1').value;
    jhlbzs3:=fieldbyname('lbzs2').value;
    close;
    params.clear;
    //commandtext:='select lbzs,lbzs1,lbzs2 from cgjh1 where prjno=:prjno and xh=:xh and wl=:wl';
    commandtext:='select ylbzs,ylbzs1,ylbzs2 from cgbg1 where prjno=:prjno and xh=:xh and wl=:wl';
    params[0].asstring:=dbedit1.text;
    params[1].asinteger:=cgbg1.fieldbyname('yxh').value;
    params[2].asstring:=dbedit17.text;
    open;
    jhlbzs1:=fieldbyname('ylbzs').value-jhlbzs1;
    jhlbzs2:=fieldbyname('ylbzs1').value-jhlbzs2;
    jhlbzs3:=fieldbyname('ylbzs2').value-jhlbzs3;
    if (jhlbzs1>0) or (jhlbzs2>0) or (jhlbzs3>0) then begin
      if application.MessageBox('確定要拆分嘜架嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
        with query2 do begin
          close;
          params.clear;
          commandtext:='select max(xh) as xh from cgbg1 where prjno=:prjno and wl=:wl';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=dbedit17.text;
          open;
          xh1:=fieldbyname('xh').value+1;
          close;
          params.clear;
          commandtext:='select * from cgbg1 where prjno=:prjno and wl=:wl and xh=:xh';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=dbedit17.text;
          params[2].asinteger:=strtoint(dbedit2.text);
          open;
          with query3 do begin
            close;
            params.clear;
            commandtext:='select * from cgbg1';
            open;
            append;
            fieldbyname('prjno').value:=query2.fieldbyname('prjno').value;
            fieldbyname('wl').value:=query2.fieldbyname('wl').value;
            fieldbyname('cfm').value:=false;
            fieldbyname('xh').value:=xh1;//query2.fieldbyname('xh').value;
            fieldbyname('mjh').value:=query2.fieldbyname('mjh').value;
            fieldbyname('ylbzs').value:=query2.fieldbyname('ylbzs').value;
            fieldbyname('ylbzs1').value:=query2.fieldbyname('ylbzs1').value;
            fieldbyname('ylbzs2').value:=query2.fieldbyname('ylbzs2').value;
            fieldbyname('lbzs').value:=jhlbzs1;//query2.fieldbyname('lbzs').value;
            fieldbyname('lbzs1').value:=jhlbzs2;//query2.fieldbyname('lbzs1').value;
            fieldbyname('lbzs2').value:=jhlbzs3;//query2.fieldbyname('lbzs2').value;
            fieldbyname('scmjcd').value:=query2.fieldbyname('scmjcd').value;
            fieldbyname('scmjcd1').value:=query2.fieldbyname('scmjcd1').value;
            fieldbyname('scmjcd2').value:=query2.fieldbyname('scmjcd2').value;
            fieldbyname('ysmjfd').value:=query2.fieldbyname('ysmjfd').value;
            fieldbyname('ysmjfd1').value:=query2.fieldbyname('ysmjfd1').value;
            fieldbyname('ysmjfd2').value:=query2.fieldbyname('ysmjfd2').value;
            fieldbyname('scmjfd').value:=query2.fieldbyname('scmjfd').value;
            fieldbyname('scmjfd1').value:=query2.fieldbyname('scmjfd1').value;
            fieldbyname('scmjfd2').value:=query2.fieldbyname('scmjfd2').value;
            fieldbyname('dzmjps').value:=query2.fieldbyname('dzmjps').value;
            //fieldbyname('scmjyl').value:=query2.fieldbyname('scmjyl').value;
            fieldbyname('ybl').value:=query2.fieldbyname('ybl').value;
            fieldbyname('ybl1').value:=query2.fieldbyname('ybl1').value;
            fieldbyname('ybl2').value:=query2.fieldbyname('ybl2').value;
            fieldbyname('cgsj').value:=query2.fieldbyname('cgsj').value;
            fieldbyname('cgsj1').value:=query2.fieldbyname('cgsj1').value;
            fieldbyname('cgsj2').value:=query2.fieldbyname('cgsj2').value;
            fieldbyname('scmjzc').value:=query2.fieldbyname('scmjzc').value;
            fieldbyname('scmjzc1').value:=query2.fieldbyname('scmjzc1').value;
            fieldbyname('scmjzc2').value:=query2.fieldbyname('scmjzc2').value;
            fieldbyname('zdypcd').value:=query2.fieldbyname('zdypcd').value;
            fieldbyname('mjjs').value:=query2.fieldbyname('mjjs').value;
            if not query2.fieldbyname('mjstatus').isnull then
            fieldbyname('mjstatus').value:=query2.fieldbyname('mjstatus').value;
            fieldbyname('zp').value:=query2.fieldbyname('zp').value;
            if fieldbyname('zp').value=true then
              fieldbyname('scmjyl').value:=query2.fieldbyname('scmjyl').value
            else begin
              if fieldbyname('mjstatus').isnull then begin
                fieldbyname('scmjyl').value:=jhlbzs1*fieldbyname('scmjcd').value+jhlbzs2*fieldbyname('scmjcd1').value+jhlbzs3*fieldbyname('scmjcd2').value;
              end
              else begin
                if (copy(fieldbyname('mjstatus').value,1,4)='封度') and (copy(fieldbyname('mjstatus').value,7,2)='半') then begin
                  fieldbyname('scmjyl').value:=(jhlbzs1*fieldbyname('scmjcd').value+jhlbzs2*fieldbyname('scmjcd1').value+jhlbzs3*fieldbyname('scmjcd2').value)/2;
                end
                else begin
                  if (copy(fieldbyname('mjstatus').value,1,4)='封度') and (copy(fieldbyname('mjstatus').value,7,2)='四') then begin
                    fieldbyname('scmjyl').value:=(jhlbzs1*fieldbyname('scmjcd').value+jhlbzs2*fieldbyname('scmjcd1').value+jhlbzs3*fieldbyname('scmjcd2').value)/4;
                  end
                  else begin
                    if copy(fieldbyname('mjstatus').value,1,4)='封度' then begin
                      fieldbyname('scmjyl').value:=(jhlbzs1*fieldbyname('scmjcd').value+jhlbzs2*fieldbyname('scmjcd1').value+jhlbzs3*fieldbyname('scmjcd2').value)/strtoint(copy(fieldbyname('mjstatus').value,7,1));
                    end;
                  end;
                end;
              end;
            end;
            fieldbyname('bzmj').value:=query2.fieldbyname('bzmj').value;
            fieldbyname('zbmj').value:=query2.fieldbyname('zbmj').value;
            fieldbyname('twmj').value:=query2.fieldbyname('twmj').value;
            fieldbyname('pzx').value:=query2.fieldbyname('pzx').value;
            fieldbyname('yymj').value:=query2.fieldbyname('yymj').value;
            fieldbyname('dk').value:=query2.fieldbyname('dk').value;
            fieldbyname('hk').value:=query2.fieldbyname('hk').value;
            fieldbyname('ds').value:=query2.fieldbyname('ds').value;
            fieldbyname('hs').value:=query2.fieldbyname('hs').value;
            fieldbyname('dzd').value:=query2.fieldbyname('dzd').value;
            fieldbyname('hzd').value:=query2.fieldbyname('hzd').value;
            fieldbyname('ldz').value:=query2.fieldbyname('ldz').value;
            fieldbyname('lhz').value:=query2.fieldbyname('lhz').value;
            fieldbyname('yqxg').value:=query2.fieldbyname('yqxg').value;
            fieldbyname('zysc').value:=query2.fieldbyname('zysc').value;
            fieldbyname('rq').value:=date;
            fieldbyname('tm').value:=time;
            fieldbyname('yxh').value:=query2.fieldbyname('yxh').value;
            fieldbyname('oaps').value:='由第'+inttostr(fieldbyname('yxh').value)+'床嘜架拆分';
            post;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select * from cgbg2 where prjno=:prjno and wl=:wl and xh=:xh';
          params[0].asstring:=dbedit1.text;
          params[1].asstring:=dbedit17.text;
          params[2].asinteger:=strtoint(dbedit2.text);
          open;
          first;
          while not eof do begin
            with query3 do begin
              close;
              params.clear;
              commandtext:='select * from cgbg2';
              open;
              append;
              fieldbyname('prjno').value:=query2.fieldbyname('prjno').value;
              fieldbyname('wl').value:=query2.fieldbyname('wl').value;
              fieldbyname('xh').value:=xh1;
              fieldbyname('gch').value:=query2.fieldbyname('gch').value;
              fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
              fieldbyname('kh').value:=query2.fieldbyname('kh').value;
              fieldbyname('sh').value:=query2.fieldbyname('sh').value;
              fieldbyname('cm').value:=query2.fieldbyname('cm').value;
              fieldbyname('mjs').value:=query2.fieldbyname('mjs').value;
              fieldbyname('mjjs').value:=query2.fieldbyname('mjs').value*(jhlbzs1+jhlbzs2+jhlbzs3);
              post;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcgbg.SpeedButton3Click(Sender: TObject);
begin
  if cgbg1.fieldbyname('xh').value<>cgbg1.fieldbyname('yxh').value then begin
    if cgbg1.fieldbyname('cfm').value=false then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select max(xh) as xh from cgbg1 where prjno=:prjno and wl=:wl and yxh=:yxh';
        params[0].asstring:=dbedit1.text;
        params[1].asstring:=dbedit17.text;
        params[2].asinteger:=cgbg1.fieldbyname('yxh').value;
        open;
        if cgbg1.fieldbyname('xh').value=fieldbyname('xh').value then begin
          if application.MessageBox('要刪除此拆分嘜架嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
            with query2 do begin
              close;
              params.clear;
              commandtext:='delete from cgbg2 where prjno=:prjno and wl=:wl and xh=:xh';
              params[0].asstring:=dbedit1.text;
              params[1].asstring:=dbedit17.text;
              params[2].asinteger:=strtoint(dbedit2.text);
              execute;
            end;
            cgbg1.delete;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcgbg.SpeedButton4Click(Sender: TObject);
begin
  if cgbg1.recordcount>0 then begin
    if dbedit1.text<>'' then begin
      if dbcheckbox17.checked=false then begin
        cgbg1.edit;
        cgbg1.fieldbyname('cfm').value:=true;
        cgbg1.post;
        dbedit3.readonly:=true;
        dbedit6.readonly:=true;
        dbedit7.readonly:=true;
        dbedit9.readonly:=true;
        dbedit12.readonly:=true;
        dbedit13.readonly:=true;
        dbedit22.readonly:=true;
        dbedit24.readonly:=true;
        dbedit30.readonly:=true;
        dbedit32.readonly:=true;
        dbedit23.readonly:=true;
        dbedit25.readonly:=true;
        dbedit26.readonly:=true;
        dbedit27.readonly:=true;
        dbedit28.readonly:=true;
        dbedit29.readonly:=true;
        dbedit31.readonly:=true;
        dbedit33.readonly:=true;
        dbedit34.readonly:=true;
        dbedit35.readonly:=true;
        dbedit5.readonly:=true;
        dbedit10.readonly:=true;
        dbedit11.readonly:=true;
        dbcheckbox2.readonly:=true;
        dbcheckbox3.readonly:=true;
        dbcheckbox4.readonly:=true;
        dbcheckbox5.readonly:=true;
        dbcheckbox6.readonly:=true;
        dbcheckbox7.readonly:=true;
        dbcheckbox8.readonly:=true;
        dbcheckbox9.readonly:=true;
        dbcheckbox10.readonly:=true;
        dbcheckbox11.readonly:=true;
        dbcheckbox12.readonly:=true;
        dbcheckbox13.readonly:=true;
        dbcheckbox14.readonly:=true;
        dbcheckbox15.readonly:=true;
        dbcheckbox16.readonly:=true;
        dbrichedit1.ReadOnly:=true;
      end;
    end;
  end;
end;

procedure Tfrmcgbg.SpeedButton5Click(Sender: TObject);
begin
  if cgbg1.recordcount>0 then begin
    if dbcheckbox17.checked then begin
      if application.MessageBox('要取消確認嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
        cgbg1.edit;
        cgbg1.fieldbyname('cfm').value:=false;
        cgbg1.post;
        dbedit3.readonly:=false;
        dbedit6.readonly:=false;
        dbedit7.readonly:=false;
        dbedit9.readonly:=false;
        dbedit12.readonly:=false;
        dbedit13.readonly:=false;
        dbedit22.readonly:=false;
        dbedit24.readonly:=false;
        dbedit30.readonly:=false;
        dbedit32.readonly:=false;
        dbedit23.readonly:=false;
        dbedit25.readonly:=false;
        dbedit26.readonly:=false;
        dbedit27.readonly:=false;
        dbedit28.readonly:=false;
        dbedit29.readonly:=false;
        dbedit31.readonly:=false;
        dbedit33.readonly:=false;
        dbedit34.readonly:=false;
        dbedit35.readonly:=false;
        dbedit5.readonly:=false;
        dbedit10.readonly:=false;
        dbedit11.readonly:=false;
        dbcheckbox2.readonly:=false;
        dbcheckbox3.readonly:=false;
        dbcheckbox4.readonly:=false;
        dbcheckbox5.readonly:=false;
        dbcheckbox6.readonly:=false;
        dbcheckbox7.readonly:=false;
        dbcheckbox8.readonly:=false;
        dbcheckbox9.readonly:=false;
        dbcheckbox10.readonly:=false;
        dbcheckbox11.readonly:=false;
        dbcheckbox12.readonly:=false;
        dbcheckbox13.readonly:=false;
        dbcheckbox14.readonly:=false;
        dbcheckbox15.readonly:=false;
        dbcheckbox16.readonly:=false;
        dbrichedit1.ReadOnly:=false;
      end;
    end;
  end;
end;

procedure Tfrmcgbg.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmcgbg.dscgbg1DataChange(Sender: TObject; Field: TField);
begin
  if cgbg1.state=dsbrowse then begin
    with cgbg2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cgbg2 where prjno=:prjno and wl=:wl and xh=:xh';
      params[0].asstring:=cgbg1.fieldbyname('prjno').value;
      params[1].asstring:=cgbg1.fieldbyname('wl').value;
      params[2].asinteger:=cgbg1.fieldbyname('xh').value;
      open;
    end;
    with cgbg3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      commandtext:='select * from cgbg3 where prjno=:prjno';// and wl=:wl and xh=:xh';
      params[0].asstring:=cgbg1.fieldbyname('prjno').value;
      //params[1].asstring:=cgbg1.fieldbyname('wl').value;
      //params[2].asinteger:=cgbg1.fieldbyname('xh').value;
      open;
    end;
  end;
end;

procedure Tfrmcgbg.cgbg1AfterPost(DataSet: TDataSet);
begin
  if cgbg1.changecount>0 then cgbg1.applyupdates(0);
end;

procedure Tfrmcgbg.cgbg3AfterPost(DataSet: TDataSet);
begin
  if cgbg3.changecount>0 then cgbg3.applyupdates(0);
end;

procedure Tfrmcgbg.cgbgylfxAfterPost(DataSet: TDataSet);
begin
  if cgbgylfx.changecount>0 then cgbgylfx.applyupdates(0);
end;

procedure Tfrmcgbg.cgbg1LbzsChange(Sender: TField);
var
  mjdiv:integer;
begin
  {if cgbg1.state=dsedit then begin
    if cgbg1lbzs.isnull then cgbg1lbzs.value:=0;
    if cgbg1lbzs1.isnull then cgbg1lbzs1.value:=0;
    if cgbg1lbzs2.isnull then cgbg1lbzs2.value:=0;
    if cgbg1scmjcd.isnull then cgbg1scmjcd.value:=0.00;
    if cgbg1scmjcd1.isnull then cgbg1scmjcd1.value:=0.00;
    if cgbg1scmjcd2.isnull then cgbg1scmjcd2.value:=0.00;
  end;}
  if (not cgbg1lbzs.isnull) and (not cgbg1lbzs1.isnull) and (not cgbg1lbzs2.isnull) and (cgbg1.state=dsedit)
     and (not cgbg1scmjcd.isnull) and (not cgbg1scmjcd1.isnull) and (not cgbg1scmjcd2.isnull) then begin
    mjdiv:=1;
    if not cgbg1mjstatus.IsNull then begin
      if copy(cgbg1mjstatus.value,1,4)='封度' then begin
        if copy(cgbg1mjstatus.value,7,2)='半' then mjdiv:=2
        else if copy(cgbg1mjstatus.value,7,2)='四' then mjdiv:=4
        else mjdiv:=strtoint(copy(cgbg1mjstatus.value,7,1));
      end;
    end;
    cgbg1scmjyl.Value:=(cgbg1lbzs.value*cgbg1scmjcd.value)/mjdiv;//+cgbg1lbzs1.value*cgbg1scmjcd1.Value+cgbg1lbzs2.value*cgbg1scmjcd2.value)/mjdiv;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'mjjs',ptinput);
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      commandtext:='update cgbg2 set mjjs=mjs*:mjjs where prjno=:prjno and xh=:xh and wl=:wl';
      params[0].asinteger:=cgbg1lbzs.value;
      params[1].asstring:=cgbg1prjno.value;
      params[2].asinteger:=cgbg1xh.value;
      params[3].asstring:=cgbg1wl.value;
      execute;
    end;
    with cgbg2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      commandtext:='select * from cgbg2 where prjno=:prjno and xh=:xh and wl=:wl';
      params[0].asstring:=cgbg1prjno.value;
      params[1].asinteger:=cgbg1xh.value;
      params[2].asstring:=cgbg1wl.value;
      open;
    end;
    {query5.close;
    query5.sql.clear;
    query5.sql.add('select * from cgbg2 where prjno=:prjno and xh=:xh and wl=:wl');
    query5.prepare;
    query5.params[0].asstring:=cgbg1prjno.Value;
    query5.params[1].asinteger:=cgbg1xh.Value;
    query5.params[2].asstring:=cgbg1wl.value;
    query5.open;
    query5.first;
    while not query5.eof do
    begin
      query5.edit;
      query5.fieldbyname('mjjs').asinteger:=round(query5.fieldbyname('mjs').asfloat*(cgbg1lbzs.asinteger+cgbg1lbzs1.asinteger+cgbg1lbzs2.asinteger));
      query5.post;
      application.ProcessMessages;
      query5.next;
    end;
    cgbg2.refresh;}
  end;
end;

procedure Tfrmcgbg.cgbgylfxYfslChange(Sender: TField);
var
  ybl,hsl,scsh,sjyl,yfsl:double;
begin
  if not cgbgylfxybl.isnull then ybl:=cgbgylfxybl.value else ybl:=0;
  if not cgbgylfxhsl.isnull then hsl:=cgbgylfxhsl.value else hsl:=0;
  if not cgbgylfxscsh.isnull then scsh:=cgbgylfxscsh.value else scsh:=0;
  if not cgbgylfxsjyl.isnull then sjyl:=cgbgylfxsjyl.value else sjyl:=0;
  if not cgbgylfxyfsl.isnull then yfsl:=cgbgylfxyfsl.value else yfsl:=0;
  cgbgylfxcutyl.value:=sjyl*1000000/((100-ybl)*(100-hsl)*(100-scsh));
  cgbgylfxylxc.value:=yfsl-cgbgylfxcutyl.value;
end;

procedure Tfrmcgbg.cgbg3QrChange(Sender: TField);
begin
  if not cgbg3qr.isnull then begin
    if cgbg3qr.value=true then begin
      cgbg3rq.value:=date;
      cgbg3tm.value:=time;
    end
    else begin
      if not cgbg3rq.isnull then cgbg3rq.value:=0;
      if not cgbg3tm.isnull then cgbg3tm.value:=0;
    end;
  end;
end;

procedure Tfrmcgbg.SpeedButton6Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  screen.cursor:=crDefault;
end;

end.
