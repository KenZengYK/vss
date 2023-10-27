unit gxfxbu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Db, DBTables, Buttons,
  Menus, ADODB, DBClient,Variants;

type
  Tfrmgxfxb = class(TForm)
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    AddNew1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SpeedButton2: TSpeedButton;
    BitBtn5: TBitBtn;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    gxfxb: TClientDataSet;
    gxfxb1: TClientDataSet;
    gxfxb1Gxm: TStringField;
    gxfxb1Cf: TStringField;
    gxfxb1Seq: TIntegerField;
    gxfxb1Rid: TIntegerField;
    gxfxb1Bh: TStringField;
    gxfxb1Dzxxfx: TStringField;
    gxfxb1Tmu: TFloatField;
    gxfxb1Cs: TIntegerField;
    gxfxb1Js: TIntegerField;
    gxfxb1Tj: TStringField;
    gxfxb1Tmu1: TFloatField;
    gxfxb1Dz: TStringField;
    gxfxbGxm: TStringField;
    gxfxbCf: TStringField;
    gxfxbWlmc: TStringField;
    gxfxbZs: TStringField;
    gxfxbCd: TFloatField;
    gxfxbYclx: TStringField;
    gxfxbCzs: TIntegerField;
    gxfxbZb: TStringField;
    gxfxbYa: TStringField;
    gxfxbYj: TStringField;
    gxfxbXz: TStringField;
    gxfxbZh: TStringField;
    gxfxbFj: TStringField;
    gxfxbMjsj: TFloatField;
    gxfxbXh: TStringField;
    gxfxbKh: TStringField;
    gxfxbZd: TStringField;
    gxfxbDw: TStringField;
    gxfxbGxdh: TStringField;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure AddNew1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure gxfxb1BhChange(Sender: TField);
    procedure gxfxb1TmuChange(Sender: TField);
    procedure gxfxb1CsChange(Sender: TField);
    procedure gxfxb1JsChange(Sender: TField);
    procedure gxfxb1AfterPost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit17DblClick(Sender: TObject);
    procedure gxfxbAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure gxfxb1NewRecord(DataSet: TDataSet);
    procedure gxfxbAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgxfxb: Tfrmgxfxb;

implementation
uses tmuxzu, gxfxblyu, zyjsybu, fju, gxxzu, dzxzu, addgxu, dlu, xgdzu;
{$R *.DFM}

procedure Tfrmgxfxb.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourglass;
    if not gxfxb.fieldbyname('gxm').isnull then
    begin
      if application.messagebox('要刪除此記錄嗎?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      begin
        query1.close;
        query1.params.clear;
        Query1.Params.CreateParam(ftstring,'gxm',ptinput);
        Query1.Params.CreateParam(ftstring,'cf',ptinput);
        query1.commandtext:='delete from ie_gxfxb1 where gxm=:gxm and cf=:cf';
        query1.params[0].value:=dbedit1.text;
        query1.params[1].value:=gxfxb.fieldbyname('cf').value;
        query1.execute;
        ///////////
        query1.close;
        query1.params.clear;
        query1.commandtext:='delete from ie_gxfxb where gxm=:gxm and cf=:cf';
        query1.execute;
        gxfxb.delete;
      end;
    end;
  Screen.Cursor:=crDefault;    
end;

procedure Tfrmgxfxb.AddNew1Click(Sender: TObject);
begin
  gxfxb1.append;
  dbgrid1.selectedindex:=0;
end;

procedure Tfrmgxfxb.Save1Click(Sender: TObject);
begin
  if (gxfxb1.state=dsedit) or (gxfxb1.state=dsinsert) then
    gxfxb1.post;
end;

procedure Tfrmgxfxb.Delete1Click(Sender: TObject);
begin
  if gxfxb1.recordcount>0 then
  begin
    if not dbgrid1.fields[0].isnull then
    begin
      if application.messagebox('要刪除此記錄嗎?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      begin
        gxfxb1.delete;
        gxfxb1.Applyupdates(0);
      end;
    end;
  end;
end;

procedure Tfrmgxfxb.gxfxb1BhChange(Sender: TField);
begin
  if not gxfxb1.fieldbyname('bh').isnull then
  begin
    query1.close;
    query1.params.clear;
    Query1.Params.CreateParam(ftstring,'xh',ptinput);
    query1.commandtext:='select dzxxfx,tmu1 from IE_cfzyjsyb where xh=:xh';
//    query1.prepare;
    query1.params[0].value:=gxfxb1.fieldbyname('bh').value;
    query1.open;
    if query1.recordcount>0 then
    begin
      gxfxb1.fieldbyname('dzxxfx').value:=query1.fieldbyname('dzxxfx').value;
      gxfxb1.fieldbyname('tmu').value:=query1.fieldbyname('tmu1').value;
    end
    else
    begin
      query1.close;
      query1.params.clear;
      Query1.Params.CreateParam(ftstring,'xh',ptinput);
      query1.commandtext:='select dzxxfx,tmu1 from IE_zqjxjsyb where xh=:xh';
//      query1.prepare;
      query1.params[0].value:=gxfxb1.fieldbyname('bh').value;
      query1.open;
      if query1.recordcount>0 then
      begin
        gxfxb1.fieldbyname('dzxxfx').value:=query1.fieldbyname('dzxxfx').value;
        gxfxb1.fieldbyname('tmu').value:=query1.fieldbyname('tmu1').value;
      end;
    end;
  end;
end;

procedure Tfrmgxfxb.gxfxb1TmuChange(Sender: TField);
begin
  if (not gxfxb1.fieldbyname('tmu').isnull) and (gxfxb1.fieldbyname('js').asinteger<>0) then
  begin
    gxfxb1.fieldbyname('tmu1').asfloat:=gxfxb1.fieldbyname('tmu').value*gxfxb1.fieldbyname('cs').asinteger/gxfxb1.fieldbyname('js').asinteger;
  end;
end;

procedure Tfrmgxfxb.gxfxb1CsChange(Sender: TField);
begin
  if (not gxfxb1.fieldbyname('cs').isnull) and (gxfxb1.fieldbyname('js').asinteger<>0) then
  begin
    gxfxb1.fieldbyname('tmu1').asfloat:=gxfxb1.fieldbyname('tmu').value*gxfxb1.fieldbyname('cs').asinteger/gxfxb1.fieldbyname('js').asinteger;
  end;
end;

procedure Tfrmgxfxb.gxfxb1JsChange(Sender: TField);
begin
  if (not gxfxb1.fieldbyname('js').isnull) or (gxfxb1.fieldbyname('js').asinteger<>0) then
  begin
    gxfxb1.fieldbyname('tmu1').asfloat:=gxfxb1.fieldbyname('tmu').value*gxfxb1.fieldbyname('cs').asinteger/gxfxb1.fieldbyname('js').asinteger;
  end;
end;

procedure Tfrmgxfxb.gxfxb1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
  query2.close;
  query2.params.clear;
  Query2.Params.CreateParam(ftstring,'gxm',ptinput);
  query2.commandtext:='select sum(tmu1) as mjsj from IE_gxfxb1 where gxm=:gxm';
//  query2.prepare;
  query2.params[0].value:=dbedit1.text;
  query2.open;
  if query2.recordcount>0 then
  begin
    gxfxb.edit;
    gxfxb.fieldbyname('mjsj').asfloat:=query2.fieldbyname('mjsj').asfloat;
    gxfxb.post;
  end;
end;

procedure Tfrmgxfxb.DBGrid1DblClick(Sender: TObject);
begin
  if not dbgrid1.fields[0].isnull then
  begin
    if dbgrid1.selectedindex=3 then
    begin
     if gxfxb1.fieldbyname('dz').value='車縫' then
     begin
      if frmtmuxz=nil then frmtmuxz:=tfrmtmuxz.create(self);
      query5.close;
      query5.params.clear;
      Query5.Params.CreateParam(ftstring,'xh',ptinput);
      query5.commandtext:='select xh from IE_cfzyjsyb where xh=:xh';
//      query5.prepare;
      query5.params[0].value:=dbgrid1.fields[0].value;
      query5.open;
      if query5.recordcount>0 then
      begin
        frmtmuxz.Query1.close;
        frmtmuxz.query1.params.clear;
        frmtmuxz.Query1.Params.CreateParam(ftstring,'xh',ptinput);
        frmtmuxz.query1.commandtext:='select tj1,tmu1,tj2,tmu2,tj3,tmu3 from IE_cfzyjsyb where xh=:xh';
//        frmtmuxz.query1.prepare;
        frmtmuxz.query1.params[0].value:=dbgrid1.fields[0].value;
        frmtmuxz.query1.open;
      end;
     end
     else
     begin
      if frmtmuxz=nil then frmtmuxz:=tfrmtmuxz.create(self);
      query5.close;
      query5.params.clear;
      Query5.Params.CreateParam(ftstring,'bh',ptinput);
      query5.commandtext:='select xh from IE_zqjxjsyb where xh=:bh';
//      query5.prepare;
      query5.params[0].value:=dbgrid1.fields[0].value;
      query5.open;
      if query5.recordcount>0 then
      begin
        frmtmuxz.Query1.close;
        frmtmuxz.query1.params.clear;
        frmtmuxz.query1.params.CreateParam(ftstring,'xh',ptinput);
        frmtmuxz.query1.commandtext:='select tj1,tmu1,tj2,tmu2,tj3,tmu3 from IE_zqjxjsyb where xh=:xh';
//        frmtmuxz.query1.prepare;
        frmtmuxz.query1.params[0].value:=dbgrid1.fields[0].value;
        frmtmuxz.query1.open;
      end;
     end;
     frmtmuxz.show;
    end
    else
    begin
      if frmdzxz=nil then frmdzxz:=tfrmdzxz.create(self);
      frmdzxz.show;
    end;
  end
  else
  begin
    if frmdzxz=nil then frmdzxz:=tfrmdzxz.create(self);
    frmdzxz.show;
  end;
end;

procedure Tfrmgxfxb.BitBtn2Click(Sender: TObject);
begin
  if gxfxb.recordcount>0 then
  begin
    if frmgxfxbly=nil then frmgxfxbly:=tfrmgxfxbly.create(self);
    frmgxfxbly.quickrep1.preview;
  end;
end;

procedure Tfrmgxfxb.DBEdit17DblClick(Sender: TObject);
begin
 if (gxfxb.recordcount>0) and (dbedit1.text<>'') then
 begin
  if frmfj=nil then frmfj:=tfrmfj.create(self);
  frmfj.label2.caption:='gxfx';
  frmfj.show;
 end;
end;

procedure Tfrmgxfxb.gxfxbAfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
  if gxfxb.fieldbyname('cf').value='車種' then
  begin
   query7.close;
   query7.params.clear;
   Query7.params.createparam(ftstring,'mc',ptinput);
   Query7.params.createparam(ftfloat,'sj',ptinput);
   query7.commandtext:='update IE_lsgx set sj=:sj,dj1=sj*bzdj,dj2=sj*bzdj where mc=:mc and cza=1';
   query7.params[0].value:=gxfxb.fieldbyname('mjsj').value;
   query7.params[1].value:=dbedit1.text;
   query7.Execute;
  end
  else
  begin
   if gxfxb.fieldbyname('cf').value='縫合' then
   begin
    query7.close;
    query7.params.clear;
    Query7.params.createparam(ftstring,'mc',ptinput);
    Query7.params.createparam(ftfloat,'sj',ptinput);
    query7.commandtext:='update IE_lsgx set sj=:sj,dj1=sj*bzdj,dj2=sj*bzdj where mc=:mc and fha=1';
    query7.params[0].value:=gxfxb.fieldbyname('mjsj').value;
    query7.params[1].value:=dbedit1.text;
    query7.Execute;
   end;
  end;
end;

procedure Tfrmgxfxb.SpeedButton1Click(Sender: TObject);
begin
  if frmgxxz=nil then frmgxxz:=tfrmgxxz.create(self);
  frmgxxz.show;
end;

procedure Tfrmgxfxb.BitBtn3Click(Sender: TObject);
begin
  if frmaddgx=nil then frmaddgx:=tfrmaddgx.create(self);
  frmaddgx.op1.enabled:=true;
  frmaddgx.op2.enabled:=true;
  frmaddgx.dbcombobox1.enabled:=true;
  frmaddgx.dbedit1.enabled:=true;
  frmaddgx.dbedit2.enabled:=true;
  frmaddgx.dbedit3.enabled:=true;
  frmaddgx.dbedit4.enabled:=true;
  frmaddgx.dbedit5.enabled:=true;
  frmaddgx.dbedit6.enabled:=true;
  frmaddgx.dbedit7.enabled:=true;
  frmaddgx.dbedit8.enabled:=true;
  frmaddgx.dbedit9.enabled:=true;
  frmaddgx.dbedit10.enabled:=true;
  frmaddgx.dbedit11.enabled:=true;
  frmaddgx.dbedit12.enabled:=true;
  frmaddgx.dbedit13.enabled:=true;
  frmaddgx.dbedit14.enabled:=true;
  frmaddgx.dbedit15.enabled:=true;
  frmaddgx.speedbutton2.enabled:=true;
  frmaddgx.show;
  frmaddgx.table1.append;
  frmaddgx.op1.checked:=false;
  frmaddgx.op2.checked:=true;
end;

procedure Tfrmgxfxb.FormShow(Sender: TObject);
begin
  gxfxb.close;
  gxfxb.open;
  query6.close;
  query6.params.clear;
  Query6.params.createparam(ftstring,'nam',ptinput);
  query6.commandtext:='select r10,r13 from IE_qx where nam=:nam';
//  query6.prepare;
  query6.params[0].value:=frmxtdl.combobox1.text;
  query6.open;
  if query6.recordcount>0 then
  begin
    if query6.fieldbyname('r10').value=true then
     bitbtn3.enabled:=true
    else bitbtn3.enabled:=false;
    if query6.fieldbyname('r13').value=true then
     speedbutton2.enabled:=true
    else speedbutton2.enabled:=false;
  end;
end;

procedure Tfrmgxfxb.BitBtn4Click(Sender: TObject);
begin
  if frmxgdz=nil then frmxgdz:=tfrmxgdz.create(self);
  frmgxfxb.enabled:=false;
  frmxgdz.show;
end;

procedure Tfrmgxfxb.SpeedButton2Click(Sender: TObject);
begin
  if gxfxb.state=dsedit then gxfxb.post;
{  if gxfxb.fieldbyname('mjsj').asfloat>0.00 then
  begin
   if gxfxb.fieldbyname('cf').value='車種' then
   begin
    query1.close;
    query1.params.clear;
    Query1.params.CreateParam(ftstring,'mc',ptinput);
    Query1.params.CreateParam(ftfloat,'sj',ptinput);
    query1.commandtext:='update IE_bzgx set sj=:sj,sj1=sj*ndxs,sj2=sj*ndxs where mc=:mc';
    query1.params[0].value:=gxfxb.fieldbyname('mjsj').value/100000;
    query1.params[1].value:=dbedit1.text;
    query1.Execute;
    if query1.recordcount>0 then
    begin
      query1.edit;
      query1.fieldbyname('sj').value:=gxfxb.fieldbyname('mjsj').value/100000;
      query1.fieldbyname('sj1').value:=query1.fieldbyname('sj').value*query1.fieldbyname('ndxs').value;
      query1.fieldbyname('sj2').value:=query1.fieldbyname('sj').value*query1.fieldbyname('ndxs').value*query1.fieldbyname('cdxs').value;
      query1.post;
    end
    else
    begin
     query1.close;
     query1.params.clear;
     Query1.params.CreateParam(ftstring,'mc',ptinput);
     query1.commandtext:='select * from IE_lsgx where mc=:mc and cza=1';
//     query1.prepare;
     query1.params[0].value:=dbedit1.text;
     query1.open;
     if query1.recordcount>0 then
     begin
       query1.edit;
       query1.fieldbyname('sj').value:=gxfxb.fieldbyname('mjsj').value/100000;
       query1.post;
       query7.close;
       query7.params.clear;
       Query7.params.createparam(ftstring,'cz',ptinput);
       query7.commandtext:='select * from IE_cz where cz=:cz';
//       query7.prepare;
       query7.params[0].value:=query1.fieldbyname('cz').value;
       query7.open;
       if query7.recordcount=0 then
       begin
         query7.close;
         query7.params.clear;
         query7.commandtext:='select * from IE_cz';
         query7.open;
         query7.append;
         query7.fieldbyname('cz').value:=query1.fieldbyname('cz').value;
         query7.post;
       end;
       query7.close;
       query7.params.clear;
       query7.commandtext:='select * from IE_bzgx';
       query7.open;
       query7.append;
       query7.fieldbyname('cz').value:=query1.fieldbyname('cz').value;
       if not query1.fieldbyname('dh').isnull then
       query7.fieldbyname('dh').value:=query1.fieldbyname('dh').value;
       if not query1.fieldbyname('mc').isnull then
       query7.fieldbyname('mc').value:=query1.fieldbyname('mc').value;
       query7.fieldbyname('nd').value:=1;
       if not query1.fieldbyname('sj').isnull then
       query7.fieldbyname('sj').value:=query1.fieldbyname('sj').value/100000;
       if not query1.fieldbyname('sj').isnull then
       query7.fieldbyname('dj1').value:=query1.fieldbyname('sj').value*query1.fieldbyname('bzdj').value;
       if not query1.fieldbyname('sj').isnull then
       query7.fieldbyname('dj2').value:=query1.fieldbyname('sj').value*query1.fieldbyname('bzdj').value;
       query7.fieldbyname('ndxs').value:=1;
       query7.fieldbyname('cdxs').value:=1;
       query7.fieldbyname('sj1').value:=query7.fieldbyname('sj').value;
       query7.fieldbyname('sj2').value:=query7.fieldbyname('sj').value;
       if not query1.fieldbyname('czxh').isnull then
       query7.fieldbyname('czxh').value:=query1.fieldbyname('czxh').value;
       if not query1.fieldbyname('yzjzb').isnull then
       query7.fieldbyname('yzjzb').value:=query1.fieldbyname('yzjzb').value;
       if not query1.fieldbyname('dx').isnull then
       query7.fieldbyname('dx').value:=query1.fieldbyname('dx').value;
       if not query1.fieldbyname('mx').isnull then
       query7.fieldbyname('mx').value:=query1.fieldbyname('mx').value;
       if not query1.fieldbyname('cfzkcc').isnull then
       query7.fieldbyname('cfzkcc').value:=query1.fieldbyname('cfzkcc').value;
       if not query1.fieldbyname('dzkcc').isnull then
       query7.fieldbyname('dzkcc').value:=query1.fieldbyname('dzkcc').value;
       if not query1.fieldbyname('zzkcc').isnull then
       query7.fieldbyname('zzkcc').value:=query1.fieldbyname('zzkcc').value;
       if not query1.fieldbyname('zj').isnull then
       query7.fieldbyname('zj').value:=query1.fieldbyname('zj').value;
       if not query1.fieldbyname('zf').isnull then
       query7.fieldbyname('zf').value:=query1.fieldbyname('zf').value;
       if not query1.fieldbyname('fryd').isnull then
       query7.fieldbyname('fryd').value:=query1.fieldbyname('fryd').value;
       if not query1.fieldbyname('tplj').isnull then
       query7.fieldbyname('tplj').value:=query1.fieldbyname('tplj').value;
       if not query1.fieldbyname('czbh').isnull then
       query7.fieldbyname('czbh').value:=query1.fieldbyname('czbh').value;
       if not query1.fieldbyname('bzdj').isnull then
       query7.fieldbyname('bzdj').value:=query1.fieldbyname('bzdj').value;
       query7.post;
     end;
    end;
   end
   else
   begin
    if gxfxb.fieldbyname('cf').value='縫合' then
    begin
     query1.close;
     query1.params.clear;
     Query1.params.CreateParam(ftstring,'mc',ptinput);
     query1.commandtext:='select * from IE_bzgx1 where mc=:mc';
//     query1.prepare;
     query1.params[0].value:=dbedit1.text;
     query1.open;
     if query1.recordcount>0 then
     begin
       query1.edit;
       query1.fieldbyname('sj').value:=gxfxb.fieldbyname('mjsj').value/100000;
       query1.fieldbyname('sj1').value:=query1.fieldbyname('sj').value*query1.fieldbyname('ndxs').value;
       query1.fieldbyname('sj2').value:=query1.fieldbyname('sj').value*query1.fieldbyname('ndxs').value*query1.fieldbyname('cdxs').value;
       query1.post;
     end
     else
     begin
      query1.close;
      query1.params.clear;
      Query1.params.createparam(ftstring,'mc',ptinput);
      query1.commandtext:='select * from IE_lsgx where mc=:mc and fha=1';
//      query1.prepare;
      query1.params[0].value:=dbedit1.text;
      query1.open;
      if query1.recordcount>0 then
      begin
       query1.edit;
       query1.fieldbyname('sj').value:=gxfxb.fieldbyname('mjsj').value/100000;
       query1.post;
       query7.close;
       query7.params.clear;
       Query7.params.CreateParam(ftstring,'cz',ptinput);
       query7.commandtext:='select * from IE_fh where cz=:cz';
//       query7.prepare;
       query7.params[0].value:=query1.fieldbyname('cz').value;
       query7.open;
       if query7.recordcount=0 then
       begin
         query7.close;
         query7.params.clear;
         query7.commandtext:='select * from IE_fh';
         query7.open;
         query7.append;
         query7.fieldbyname('cz').value:=query1.fieldbyname('cz').value;
         query7.post;
       end;
       query7.close;
       query7.params.clear;
       query7.commandtext:='select * from IE_bzgx1';
       query7.open;
       query7.append;
       query7.fieldbyname('cz').value:=query1.fieldbyname('cz').value;
       if not query1.fieldbyname('dh').isnull then
       query7.fieldbyname('dh').value:=query1.fieldbyname('dh').value;
       if not query1.fieldbyname('mc').isnull then
       query7.fieldbyname('mc').value:=query1.fieldbyname('mc').value;
       query7.fieldbyname('nd').value:=1;
       if not query1.fieldbyname('sj').isnull then
       query7.fieldbyname('sj').value:=query1.fieldbyname('sj').value/100000;
       if not query1.fieldbyname('sj').isnull then
       query7.fieldbyname('dj1').value:=query1.fieldbyname('sj').value*query1.fieldbyname('bzdj').value;
       if not query1.fieldbyname('sj').isnull then
       query7.fieldbyname('dj2').value:=query1.fieldbyname('sj').value*query1.fieldbyname('bzdj').value;
       query7.fieldbyname('ndxs').value:=1;
       query7.fieldbyname('cdxs').value:=1;
       query7.fieldbyname('sj1').value:=query7.fieldbyname('sj').value;
       query7.fieldbyname('sj2').value:=query7.fieldbyname('sj').value;
       if not query1.fieldbyname('czxh').isnull then
       query7.fieldbyname('czxh').value:=query1.fieldbyname('czxh').value;
       if not query1.fieldbyname('yzjzb').isnull then
       query7.fieldbyname('yzjzb').value:=query1.fieldbyname('yzjzb').value;
       if not query1.fieldbyname('dx').isnull then
       query7.fieldbyname('dx').value:=query1.fieldbyname('dx').value;
       if not query1.fieldbyname('mx').isnull then
       query7.fieldbyname('mx').value:=query1.fieldbyname('mx').value;
       if not query1.fieldbyname('cfzkcc').isnull then
       query7.fieldbyname('cfzkcc').value:=query1.fieldbyname('cfzkcc').value;
       if not query1.fieldbyname('dzkcc').isnull then
       query7.fieldbyname('dzkcc').value:=query1.fieldbyname('dzkcc').value;
       if not query1.fieldbyname('zzkcc').isnull then
       query7.fieldbyname('zzkcc').value:=query1.fieldbyname('zzkcc').value;
       if not query1.fieldbyname('zj').isnull then
       query7.fieldbyname('zj').value:=query1.fieldbyname('zj').value;
       if not query1.fieldbyname('zf').isnull then
       query7.fieldbyname('zf').value:=query1.fieldbyname('zf').value;
       if not query1.fieldbyname('fryd').isnull then
       query7.fieldbyname('fryd').value:=query1.fieldbyname('fryd').value;
       if not query1.fieldbyname('tplj').isnull then
       query7.fieldbyname('tplj').value:=query1.fieldbyname('tplj').value;
       if not query1.fieldbyname('czbh').isnull then
       query7.fieldbyname('czbh').value:=query1.fieldbyname('czbh').value;
       if not query1.fieldbyname('bzdj').isnull then
       query7.fieldbyname('bzdj').value:=query1.fieldbyname('bzdj').value;
       query7.post;
      end;
     end;
    end;
   end;
  end;}
end;

procedure Tfrmgxfxb.DBEdit1DblClick(Sender: TObject);
begin
  if frmaddgx=nil then frmaddgx:=tfrmaddgx.create(self);
  frmaddgx.Table1.locate('mc',vararrayof([dbedit1.text]),[lopartialkey]);//.FindNearest([dbedit1.text]);
  frmaddgx.show;
end;

procedure Tfrmgxfxb.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    sendmessage(dbgrid1.handle,wm_keydown,vk_tab,0);
  end;
end;

procedure Tfrmgxfxb.BitBtn5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgxfxb.gxfxb1NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('Rid').value:=GetSeq('ie_gxfxb1','Rid');
  dataset.fieldbyname('gxm').value:=gxfxb.fieldbyname('gxm').value;
  dataset.fieldbyname('cf').value:=gxfxb.fieldbyname('cf').value;
end;

procedure Tfrmgxfxb.gxfxbAfterScroll(DataSet: TDataSet);
begin
  if (gxfxb.fieldbyname('gxm').isnull) or (gxfxb.fieldbyname('cf').isnull) then exit;
  with gxfxb1 do begin
    close;
    params.Clear;
    params.CreateParam(ftstring,'gxm',ptinput);
    params.CreateParam(ftstring,'cf',ptinput);
    commandtext:='select * from ie_gxfxb1 where gxm=:gxm and cf=:cf';
    params[0].AsString:=gxfxb.fieldbyname('gxm').value;
    params[1].AsString:=gxfxb.fieldbyname('cf').value;
    open;
  end;
end;

procedure Tfrmgxfxb.FormCreate(Sender: TObject);
begin
  (gxfxb.fieldbyname('cd') as tfloatfield).displayformat:='######0.00;;''';
  (gxfxb.fieldbyname('czs') as tintegerfield).displayformat:='######0;;''';
end;

end.
