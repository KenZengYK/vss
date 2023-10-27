unit idoform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGridEh, Buttons, Db, DBClient, Menus,
  DBCtrls, Mask, MConnect, SConnect, DBTables;

type
  Tfrmido = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet3: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet4: TClientDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    DataSource1: TDataSource;
    Label11: TLabel;
    DBNavigator1: TDBNavigator;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    BitBtn5: TBitBtn;
    Database1: TDatabase;
    Query1: TQuery;
    Query2: TQuery;
    ClientDataSet5: TClientDataSet;
    ClientDataSet6: TClientDataSet;
    BitBtn6: TBitBtn;
    n1: TMenuItem;
    Label13: TLabel;
    Edit2: TEdit;
    DBComboBox1: TDBComboBox;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2Bh: TStringField;
    ClientDataSet2Oper: TIntegerField;
    ClientDataSet2Idno: TStringField;
    ClientDataSet2Zdh: TStringField;
    ClientDataSet2Wl: TStringField;
    ClientDataSet2Uwidth: TStringField;
    ClientDataSet2Sh: TStringField;
    ClientDataSet2Sz: TStringField;
    ClientDataSet2Qaresult: TStringField;
    ClientDataSet2Cd: TFloatField;
    ClientDataSet2Ufd: TStringField;
    ClientDataSet2Mfd: TStringField;
    ClientDataSet2Qty: TFloatField;
    ClientDataSet2Uom: TStringField;
    ClientDataSet2Wz: TStringField;
    ClientDataSet2Opdesc: TStringField;
    ClientDataSet2Sy: TStringField;
    ClientDataSet2Gh: TStringField;
    ClientDataSet2Aqty: TFloatField;
    ClientDataSet2Status: TStringField;
    BitBtn7: TBitBtn;
    Query3: TQuery;
    Database2: TDatabase;
    DBEdit7: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn6Click(Sender: TObject);
    procedure n1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet2QtyChange(Sender: TField);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure ClientDataSet2AfterPost(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmido: Tfrmido;

implementation
uses loginform, selectitem, idocx, idoprintu, findform;
{$R *.DFM}

procedure Tfrmido.BitBtn2Click(Sender: TObject);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
  if clientdataset2.state=dsedit then clientdataset2.post;
  close;
end;

procedure Tfrmido.BitBtn1Click(Sender: TObject);
var
  bh1:integer;
  site1:string;
begin
 screen.cursor:=crHourglass;
 if clientdataset1.state=dsedit then clientdataset1.post;
 if clientdataset2.state=dsedit then clientdataset2.post;
 if edit2.text<>'' then begin
  with clientdataset3 do begin
    close;
    params.clear;
    commandtext:='select max(bh) as bh1 from ido1';
    open;
    if not fieldbyname('bh1').isnull then bh1:=strtoint(copy(fieldbyname('bh1').value,5,7))+1
    //if recordcount>0 then bh1:=strtoint(copy(fieldbyname('bh1').value,5,7))+1
    else bh1:=1;
  end;

  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    commandtext:='select site from idou where upper(usr)=:usr';
    params[0].asstring:=uppercase(frmlogin.Edit1.text);
    open;
    if not fieldbyname('site').isnull then site1:=fieldbyname('site').value
    else site1:='';
  end;
  //showmessage('111');
  clientdataset1.append;
  clientdataset1.fieldbyname('cono').value:=uppercase(edit2.text);
  clientdataset1.fieldbyname('bh').value:='IDO-'+copy('000000'+inttostr(bh1),length('000000'+inttostr(bh1))-6,7);
  clientdataset1.fieldbyname('rq').value:=date;
  clientdataset1.fieldbyname('sj').value:=time;
  clientdataset1.fieldbyname('site').value:=site1;
  clientdataset1.post;
  //showmessage('111');
  //if clientdataset1.changecount>0 then clientdataset1.applyupdates(-1);
  {bh:=dbedit1.text;
  cono:=uppercase(edit2.text);
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'bh',ptinput);
    commandtext:='select * from ido1 where bh=:bh';
    params[0].asstring:=dbedit1.text;
    open;
    if recordcount=0 then begin
      with clientdataset4 do begin
        close;
        params.clear;
        commandtext:='insert into ido1(cono,bh,rq,sj,site) values(cono,bh,rq,sj,site1)';
        execute;
      end;
    end;
  end;}
 end
 else begin
   application.MessageBox('請先輸入公司代號!','提示信息',mb_iconwarning+mb_ok);
   edit2.setfocus;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmido.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  idono:string;
begin
  if key=#13 then begin
    if edit1.text<>'' then begin
      idono:='IDO-'+copy('000000'+edit1.text,length('000000'+edit1.text)-6,7);
      clientdataset1.FindNearest([idono]);
    end;
  end
  else begin
    if not (key in [#48,#49,#50,#51,#52,#53,#54,#55,#56,#57,#8,#46]) then
    key:=#0;
  end;
end;

procedure Tfrmido.N2Click(Sender: TObject);
begin
  if clientdataset2.recordcount>0 then begin
    if application.messagebox('要刪除此物料嗎?','IDO 提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'bh',ptinput);
        params.createparam(ftinteger,'oper',ptinput);
        params.createparam(ftstring,'idno',ptinput);
        commandtext:='delete from ido2 where bh=:bh and oper=:oper and idno=:idno';
        params[0].asstring:=clientdataset2.fieldbyname('bh').value;
        params[1].asinteger:=clientdataset2.fieldbyname('oper').value;
        params[2].asstring:=clientdataset2.fieldbyname('idno').value;
        execute;
      end;
      clientdataset2.delete;
    end;
  end;
end;

procedure Tfrmido.BitBtn4Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if clientdataset1.state=dsedit then clientdataset1.post;
  if clientdataset2.state=dsedit then clientdataset2.post;
  if frmidoprint=nil then frmidoprint:=tfrmidoprint.create(self);
  with frmidoprint.clientdataset4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'bh',ptinput);
    commandtext:='select * from ido1,ido2 where ido2.bh=ido1.bh and ido1.bh=:bh order by wl,oper,idno';
    params[0].asstring:=dbedit1.text;
    open;
    if recordcount>0 then frmidoprint.ppreport1.print;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmido.BitBtn3Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if clientdataset1.state=dsedit then clientdataset1.post;
 if clientdataset2.state=dsedit then clientdataset2.post;
 if (dbedit7.text<>'') or (dbedit10.text<>'') then begin
  if frmselectitem=nil then frmselectitem:=tfrmselectitem.create(self);
  frmselectitem.show;
 end
 else begin
   application.MessageBox('請輸入工程號或制單號!','IDO 提示信息',mb_iconinformation+mb_ok);
   dbedit9.setfocus;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmido.FormShow(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  dbcombobox1.items.clear;
  with clientdataset3 do begin
    close;
    params.clear;
    commandtext:='select distinct wdesc from ido4';
    open;
    first;
    while not eof do begin
      if not fieldbyname('wdesc').isnull then
      dbcombobox1.items.add(fieldbyname('wdesc').value);
      next;
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from ido1';
    open;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmido.BitBtn5Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if clientdataset1.fieldbyname('bm1').isnull then begin
  application.MessageBox('收貨部門不能空!','提示',mb_iconwarning+mb_okcancel);
  dbcombobox1.setfocus;
 end
 else begin
  if clientdataset1.state=dsedit then clientdataset1.post;
  if clientdataset2.state=dsedit then clientdataset2.post;
  if clientdataset1.recordcount>0 then begin
   if clientdataset1.fieldbyname('ydc').value=false then begin
    if clientdataset2.recordcount>0 then begin
     with clientdataset5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'bh',ptinput);
      commandtext:='select * from ido1,ido2 where ido2.bh=ido1.bh and ido1.bh=:bh';
      params[0].asstring:=clientdataset1.fieldbyname('bh').value;
      open;
      first;
      while not eof do begin
        with clientdataset3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'bh',ptinput);
          commandtext:='update ido1 set ydc=1 where bh=:bh';
          params[0].asstring:=clientdataset5.fieldbyname('bh').value;
          execute;
        end;
        with clientdataset6 do begin
          close;
          params.clear;
          params.createparam(ftstring,'idono',ptinput);
          params.createparam(ftstring,'sopno',ptinput);
          params.createparam(ftdatetime,'idodt',ptinput);
          params.createparam(ftdatetime,'idotm',ptinput);
          params.createparam(ftstring,'material',ptinput);
          params.createparam(ftstring,'barcode',ptinput);
          params.createparam(ftstring,'color',ptinput);
          params.createparam(ftstring,'colshape',ptinput);
          params.createparam(ftstring,'colgroup',ptinput);
          params.createparam(ftstring,'jarno',ptinput);
          params.createparam(ftstring,'defect',ptinput);
          params.createparam(ftfloat,'qty',ptinput);
          params.createparam(ftstring,'uom',ptinput);
          params.createparam(ftstring,'location',ptinput);
          params.createparam(ftstring,'workorder',ptinput);
          params.createparam(ftstring,'cono',ptinput);
          params.createparam(ftstring,'wip',ptinput);
          commandtext:='insert into ido(idono,sopno,idodt,idotm,material,barcode,color,colshape,colgroup,jarno,defect,awidth,mwidth,qty,uom,location,workorder,cono,wip) '
                      +'values(:idono,:sopno,:idodt,:idotm,:material,:barcode,:color,:colshape,:colgroup,:jarno,:defect,0,0,:qty,:uom,:location,:workorder,:cono,:wip)';
          params[0].asstring:=clientdataset5.fieldbyname('bh').value;
          if not clientdataset5.fieldbyname('sopno').isnull then
          params[1].asstring:=clientdataset5.fieldbyname('sopno').value;
          params[2].asdatetime:=clientdataset5.fieldbyname('rq').value;
          params[3].asdatetime:=clientdataset5.fieldbyname('sj').value;
          params[4].asstring:=clientdataset5.fieldbyname('wl').value;
          params[5].asstring:=clientdataset5.fieldbyname('idno').value;
          params[6].asstring:=clientdataset5.fieldbyname('sh').value;
          if not clientdataset5.fieldbyname('sy').isnull then
          params[7].asstring:=clientdataset5.fieldbyname('sy').value;
          if not clientdataset5.fieldbyname('sz').isnull then
          params[8].asstring:=clientdataset5.fieldbyname('sz').value;
          if not clientdataset5.fieldbyname('gh').isnull then
          params[9].asstring:=clientdataset5.fieldbyname('gh').value;
          if not clientdataset5.fieldbyname('cd').isnull then
          params[10].asstring:=clientdataset5.fieldbyname('cd').value;
          params[11].asfloat:=clientdataset5.fieldbyname('qty').value;
          params[12].asstring:=clientdataset5.fieldbyname('uom').value;
          if not clientdataset5.fieldbyname('wz').isnull then
          params[13].asstring:=clientdataset5.fieldbyname('wz').value;
          params[14].asstring:=clientdataset5.fieldbyname('zdh').value;
          params[15].asstring:=clientdataset5.fieldbyname('cono').value;
          if not clientdataset5.fieldbyname('bm1').isnull then begin
            with clientdataset3 do begin
              close;
              params.clear;
              params.createparam(ftstring,'wdesc',ptinput);
              commandtext:='select wcode from ido4 where wdesc=:wdesc';
              params[0].asstring:=clientdataset5.fieldbyname('bm1').value;
              open;
            end;
            params[16].asstring:=clientdataset3.fieldbyname('wcode').value;
          end;
          execute;
        end;
        {with query1 do begin
          close;
          sql.clear;
          sql.add('select * from ido');
          open;
          append;
          fieldbyname('idono').value:=clientdataset5.fieldbyname('bh').value;
          if not clientdataset5.fieldbyname('sopno').isnull then
          fieldbyname('sopno').value:=clientdataset5.fieldbyname('sopno').value;
          fieldbyname('idodt').value:=clientdataset5.fieldbyname('rq').value;
          fieldbyname('idotm').value:=clientdataset5.fieldbyname('sj').value;
          fieldbyname('material').value:=clientdataset5.fieldbyname('wl').value;
          fieldbyname('barcode').value:=clientdataset5.fieldbyname('idno').value;
          fieldbyname('color').value:=clientdataset5.fieldbyname('sh').value;
          if not clientdataset5.fieldbyname('sy').isnull then
          fieldbyname('colshape').value:=clientdataset5.fieldbyname('sy').value;
          if not clientdataset5.fieldbyname('sz').isnull then
          fieldbyname('colgroup').value:=clientdataset5.fieldbyname('sz').value;
          if not clientdataset5.fieldbyname('gh').isnull then
          fieldbyname('jarno').value:=clientdataset5.fieldbyname('gh').value;
          if not clientdataset5.fieldbyname('cd').isnull then
          fieldbyname('defect').value:=clientdataset5.fieldbyname('cd').value;
          fieldbyname('awidth').value:=0;
          fieldbyname('mwidth').value:=0;
          fieldbyname('qty').value:=clientdataset5.fieldbyname('qty').value;
          fieldbyname('uom').value:=clientdataset5.fieldbyname('uom').value;
          if not clientdataset5.fieldbyname('wz').isnull then
          fieldbyname('location').value:=clientdataset5.fieldbyname('wz').value;
          fieldbyname('workorder').value:=clientdataset5.fieldbyname('zdh').value;
          fieldbyname('cono').value:=clientdataset5.fieldbyname('cono').value;
          if not clientdataset5.fieldbyname('bm1').isnull then begin
            with clientdataset3 do begin
              close;
              params.clear;
              params.createparam(ftstring,'wdesc',ptinput);
              commandtext:='select wcode from ido4 where wdesc=:wdesc';
              params[0].asstring:=clientdataset5.fieldbyname('bm1').value;
              open;
            end;
            fieldbyname('wip').value:=clientdataset3.fieldbyname('wcode').value;//clientdataset5.fieldbyname('bm1').value;
          end;
          post;
        end;}
        application.ProcessMessages;
        next;
      end;
     end;
     application.MessageBox('IDO成功確認!','IDO 提示信息',mb_iconinformation+mb_ok);
     bitbtn3.enabled:=false;
     bitbtn5.enabled:=false;
    end
    else begin
      application.MessageBox('必須有明細資料','IDO 提示信息',mb_iconinformation+mb_ok);
    end;
   end
   else begin
     application.messagebox('IDO已確認','IDO 提示信息',mb_iconinformation+mb_ok);
   end;
  end;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmido.DataSource1DataChange(Sender: TObject; Field: TField);
begin
 if clientdataset1.recordcount>0 then begin
  if (clientdataset1.state=dsbrowse) then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'bh',ptinput);
      commandtext:='select * from ido2 where bh=:bh';
      params[0].asstring:=clientdataset1.fieldbyname('bh').value;
      open;
    end;
    //edit2.text:=clientdataset1.fieldbyname('cono').value;
    with clientdataset3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'bh',ptinput);
      commandtext:='select ydc from ido1 where bh=:bh';
      params[0].asstring:=clientdataset1.fieldbyname('bh').value;
      open;
      if fieldbyname('ydc').value=true then begin
        DBEDIT4.ENABLED:=FALSE;
        DBEDIT5.ENABLED:=FALSE;
        DBEDIT6.ENABLED:=FALSE;
        dbcombobox1.ENABLED:=FALSE;
        DBEDIT8.ENABLED:=FALSE;
        DBEDIT9.ENABLED:=FALSE;
        DBEDIT10.ENABLED:=FALSE;
        DBMEMO1.READONLY:=TRUE;
        dbgrideh1.readonly:=true;
        bitbtn3.enabled:=false;
        bitbtn5.enabled:=false;
        n1.visible:=false;
        n2.Visible:=false;
      end
      else begin
       with clientdataset4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'usr',ptinput);
        commandtext:='select r3,site from idou where upper(usr)=:usr';
        params[0].asstring:=uppercase(frmlogin.edit1.text);
        open;
       end;
       if clientdataset4.fieldbyname('r3').value=true then begin
        if clientdataset4.fieldbyname('site').value<>clientdataset1.fieldbyname('site').value then begin
         DBEDIT4.ENABLED:=FALSE;
         DBEDIT5.ENABLED:=FALSE;
         DBEDIT6.ENABLED:=FALSE;
         dbcombobox1.ENABLED:=FALSE;
         DBEDIT8.ENABLED:=FALSE;
         DBEDIT9.ENABLED:=FALSE;
         DBEDIT10.ENABLED:=FALSE;
         DBMEMO1.READONLY:=TRUE;
         dbgrideh1.readonly:=true;
         bitbtn3.enabled:=false;
         bitbtn5.enabled:=false;
         n1.visible:=false;
         n2.Visible:=false;
        end
        else begin
         DBEDIT4.ENABLED:=TRUE;
         DBEDIT5.ENABLED:=TRUE;
         DBEDIT6.ENABLED:=TRUE;
         DBcombobox1.ENABLED:=TRUE;
         DBEDIT8.ENABLED:=TRUE;
         DBEDIT9.ENABLED:=TRUE;
         DBEDIT10.ENABLED:=TRUE;
         DBMEMO1.READONLY:=FALSE;
         dbgrideh1.readonly:=false;
         bitbtn3.enabled:=true;
         bitbtn5.enabled:=true;
         n1.visible:=true;
         n2.visible:=true;
        end;
       end
       else begin
        DBEDIT4.ENABLED:=FALSE;
        DBEDIT5.ENABLED:=FALSE;
        DBEDIT6.ENABLED:=FALSE;
        dbcombobox1.ENABLED:=FALSE;
        DBEDIT8.ENABLED:=FALSE;
        DBEDIT9.ENABLED:=FALSE;
        DBEDIT10.ENABLED:=FALSE;
        DBMEMO1.READONLY:=TRUE;
        dbgrideh1.readonly:=true;
        bitbtn3.enabled:=false;
        bitbtn5.enabled:=false;
        n1.visible:=false;
        n2.Visible:=false;
       end;
      end;
    end;
  end;
 end;
end;

procedure Tfrmido.BitBtn6Click(Sender: TObject);
begin
  //if clientdataset1.state=dsedit then clientdataset1.post;
  //if clientdataset2.state=dsedit then clientdataset2.post;
  n1click(self);
end;

procedure Tfrmido.n1Click(Sender: TObject);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
  if clientdataset2.state=dsedit then clientdataset2.post;
  if clientdataset1.recordcount>0 then begin
    if application.messagebox('要刪除此IDO嗎?','IDO 提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'bh',ptinput);
        commandtext:='delete from ido2 where bh=:bh';
        params[0].asstring:=dbedit1.text;//clientdataset1.fieldbyname('bh').value;
        execute;
      end;
      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'bh',ptinput);
        commandtext:='delete from ido1 where bh=:bh';
        params[0].asstring:=dbedit1.text;
        execute;
      end;
      clientdataset1.delete;
    end;
  end;
end;

procedure Tfrmido.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmidocx=nil then frmidocx:=tfrmidocx.create(self);
  frmidocx.dateedit1.text:='    /  /  ';
  frmidocx.combobox1.text:='';
  frmidocx.combobox2.text:='';
  frmidocx.clientdataset1.close;
  frmidocx.clientdataset1.params.clear;
  frmidocx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmido.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  edit1.text:='';
end;

procedure Tfrmido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
  if clientdataset2.state=dsedit then clientdataset2.post;
  frmlogin.close;
end;

procedure Tfrmido.ClientDataSet1AfterPost(DataSet: TDataSet);
var
  prjno:string;
begin
  if clientdataset1.applyupdates(-1)>0 then begin
    with clientdataset3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'bh',ptinput);
      commandtext:='select * from ido1 where bh=:bh';
      params[0].asstring:=clientdataset1.fieldbyname('bh').value;
      open;
      if recordcount>0 then begin
        if not fieldbyname('sopno').isnull then begin
          with query3 do begin
            close;
            sql.clear;
            sql.add('select cuso40 from oep40 where cono40=:cono40 and ordn40=:ordn40 and dtlc40=0');
            prepare;
            params[0].asstring:=edit2.text;//'P1';
            params[1].asstring:=clientdataset1.fieldbyname('sopno').value;
            open;
            if not fieldbyname('cuso40').isnull then prjno:=fieldbyname('cuso40').value
            else prjno:='';
          end;
        end
        else prjno:='';
        with clientdataset4 do begin
          close;
          params.Clear;
          params.createparam(ftstring,'shr',ptinput);
          params.createparam(ftstring,'jlr',ptinput);
          params.createparam(ftstring,'bm',ptinput);
          params.createparam(ftstring,'bm1',ptinput);
          params.createparam(ftstring,'bmscx',ptinput);
          params.createparam(ftstring,'sopno',ptinput);
          params.createparam(ftstring,'worder',ptinput);
          params.createparam(ftstring,'mem',ptinput);
          params.createparam(ftstring,'site',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'bh',ptinput);
          commandtext:='update ido1 set shr=:shr,jlr=:jlr,bm=:bm,bm1=:bm1,bmscx=:bmscx,sopno=:sopno,'
                      +'worder=:worder,mem=:mem,site=:site,prjno=:prjno where bh=:bh';
          params[0].asstring:=dbedit4.text;
          params[1].asstring:=dbedit5.text;
          params[2].asstring:=dbedit6.text;
          params[3].asstring:=dbcombobox1.text;
          params[4].asstring:=dbedit8.text;
          params[5].asstring:=dbedit9.text;
          params[6].asstring:=dbedit10.text;
          params[7].asstring:=dbmemo1.text;
          params[8].asstring:=clientdataset1.fieldbyname('site').value;
          params[9].asstring:=prjno;
          params[10].asstring:=dbedit1.text;
          execute;
        end;
      end
      else begin
        with clientdataset4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'bh',ptinput);
          params.createparam(ftdatetime,'rq',ptinput);
          params.createparam(ftdatetime,'sj',ptinput);
          params.createparam(ftstring,'site',ptinput);
          commandtext:='insert into ido1(bh,rq,sj,site) values(:bh,:rq,:sj,:site)';
          params[0].asstring:=clientdataset1.fieldbyname('bh').value;
          params[1].asdatetime:=clientdataset1.fieldbyname('rq').value;
          params[2].asdatetime:=clientdataset1.fieldbyname('sj').value;
          params[3].asstring:=clientdataset1.fieldbyname('site').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmido.ClientDataSet2QtyChange(Sender: TField);
begin
  if not clientdataset2qty.isnull then begin
    if clientdataset2qty.value>clientdataset2aqty.value then
      clientdataset2qty.value:=clientdataset2aqty.value;
  end
  else begin
    clientdataset2qty.value:=clientdataset2aqty.value;
  end;
end;

procedure Tfrmido.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmido.ClientDataSet2AfterPost(DataSet: TDataSet);
begin
  if clientdataset2.applyupdates(-1)>0 then begin
    with clientdataset3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'bh',ptinput);
      params.createparam(ftstring,'idno',ptinput);
      commandtext:='select * from ido2 where bh=:bh and idno=:idno';
      params[0].asstring:=clientdataset2.fieldbyname('bh').value;
      params[1].asstring:=clientdataset2.fieldbyname('idno').value;
      open;
      if recordcount>0 then begin
        with clientdataset4 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'qty',ptinput);
          params.createparam(ftstring,'bh',ptinput);
          params.createparam(ftstring,'idno',ptinput);
          commandtext:='update ido2 set qty=:qty where bh=:bh and idno=:idno';
          if not clientdataset2.fieldbyname('qty').isnull then
          params[0].asfloat:=clientdataset2.fieldbyname('qty').value
          else params[0].asfloat:=0;
          params[1].asstring:=clientdataset2.fieldbyname('bh').value;
          params[2].asstring:=clientdataset2.fieldbyname('idno').value;
          execute;
        end;
      end
      else begin
        with clientdataset4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'bh',ptinput);
          params.createparam(ftinteger,'oper',ptinput);
          params.createparam(ftstring,'idno',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftstring,'sz',ptinput);
          params.createparam(ftstring,'qaresult',ptinput);
          params.createparam(ftfloat,'cd',ptinput);
          params.createparam(ftstring,'ufd',ptinput);
          params.createparam(ftstring,'mfd',ptinput);
          params.createparam(ftfloat,'qty',ptinput);
          params.createparam(ftstring,'uom',ptinput);
          params.createparam(ftstring,'wz',ptinput);
          params.createparam(ftstring,'opdesc',ptinput);
          params.createparam(ftfloat,'aqty',ptinput);
          commandtext:='insert into ido2(bh,oper,idno,zdh,wl,sh,sz,qaresult,cd,ufd,mfd,qty,uom,wz,opdesc,aqty) '
                      +'values(:bh,:oper,:idno,:zdh,:wl,:sh,:sz,:qaresult,:cd,:ufd,:mfd,:qty,:uom,:wz,:opdesc,:aqty)';
          params[0].asstring:=clientdataset2.fieldbyname('bh').value;
          params[1].asinteger:=clientdataset2.fieldbyname('oper').value;
          params[2].asstring:=clientdataset2.fieldbyname('idno').value;
          params[3].asstring:=clientdataset2.fieldbyname('zdh').value;
          params[4].asstring:=clientdataset2.fieldbyname('wl').value;
          params[5].asstring:=clientdataset2.fieldbyname('sh').value;
          params[6].asstring:=clientdataset2.fieldbyname('sz').value;
          params[7].asstring:=clientdataset2.fieldbyname('qaresult').value;
          params[8].asfloat:=clientdataset2.fieldbyname('cd').value;
          params[9].asstring:=clientdataset2.fieldbyname('ufd').value;
          params[10].asstring:=clientdataset2.fieldbyname('mfd').value;
          params[11].asfloat:=clientdataset2.fieldbyname('qty').value;
          params[12].asstring:=clientdataset2.fieldbyname('uom').value;
          params[13].asstring:=clientdataset2.fieldbyname('wz').value;
          params[14].asstring:=clientdataset2.fieldbyname('opdesc').value;
          params[15].asfloat:=clientdataset2.fieldbyname('aqty').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmido.BitBtn7Click(Sender: TObject);
begin
  if frmfind=nil then frmfind:=tfrmfind.create(self);
  frmfind.edit1.text:='';
  frmfind.edit2.text:='';
  frmfind.edit3.text:='';
  frmfind.clientdataset1.close;
  frmfind.show;
  frmfind.edit1.setfocus;
end;

procedure Tfrmido.ClientDataSet1AfterOpen(DataSet: TDataSet);
begin
  (clientdataset1.fieldbyname('sj') as tdatetimefield).displayformat:='hh:mm:ss';
end;

end.
