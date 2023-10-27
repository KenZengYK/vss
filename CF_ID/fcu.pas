unit fcu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, Grids, DBGridEh, StdCtrls, DBCtrls,
  ExtCtrls, Mask, Buttons, DBClient, MConnect, SConnect,
  Menus, variants, DBCtrlsEh, GridsEh, siComp, ADODB, rxToolEdit,
  rxCurrEdit, RzEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxGridExportLink,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  Tfrmfc = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    lblcpy: TLabel;
    dsfczd1: TDataSource;
    dsfczd2: TDataSource;
    dsfcwl: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    Panel4: TPanel;
    DBNavigator5: TDBNavigator;
    SpeedButton8: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Database1: TDatabase;
    qryphis: TQuery;
    Database2: TDatabase;
    qryphdt: TQuery;
    PopupMenu1: TPopupMenu;
    DeleteOriginalData1: TMenuItem;
    Qryphis1: TQuery;
    Qryphis2: TQuery;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGridEh1: TDBGridEh;
    SpeedButton9: TSpeedButton;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Database3: TDatabase;
    Query1: TQuery;
    Query2: TQuery;
    SpeedButton10: TSpeedButton;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    siLang1: TsiLang;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    ADODataSet1: TADODataSet;
    ADODataSet2: TADODataSet;
    ADODataSet3: TADODataSet;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Bevel1: TBevel;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Bevel2: TBevel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    Label30: TLabel;
    DBEdit22: TDBEdit;
    Label31: TLabel;
    DBEdit23: TDBEdit;
    Label32: TLabel;
    DBEdit24: TDBEdit;
    Bevel3: TBevel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Edit2: TRzEdit;
    Edit3: TRzEdit;
    Label36: TLabel;
    DBEdit25: TDBEdit;
    TabSheet1: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    cxView1: TcxGridDBBandedTableView;
    cxView1gch: TcxGridDBBandedColumn;
    cxView1zdh: TcxGridDBBandedColumn;
    cxView1kh: TcxGridDBBandedColumn;
    cxView1sh: TcxGridDBBandedColumn;
    cxView1wl: TcxGridDBBandedColumn;
    cxView1jyl: TcxGridDBBandedColumn;
    cxView1zds: TcxGridDBBandedColumn;
    cxView1cut: TcxGridDBBandedColumn;
    cxView1dxm: TcxGridDBBandedColumn;
    cxView1shl: TcxGridDBBandedColumn;
    cxView1pattern_qty: TcxGridDBBandedColumn;
    cxView1ttl_zds: TcxGridDBBandedColumn;
    cxView1ttl_yl: TcxGridDBBandedColumn;
    cxView1ttl_pattern: TcxGridDBBandedColumn;
    cxView1ttl_mixed: TcxGridDBBandedColumn;
    cxView1cm_type: TcxGridDBBandedColumn;
    Label37: TLabel;
    Edit4: TEdit;
    Label38: TLabel;
    ComboBox1: TComboBox;
    BitBtn3: TBitBtn;
    cxView1wl_seq: TcxGridDBBandedColumn;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    BitBtn21: TBitBtn;
    SpeedButton11: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    DisplayWO1: TMenuItem;
    SpeedButton15: TSpeedButton;
    SaveDialog1: TSaveDialog;
    cxView1ttl_wo: TcxGridDBBandedColumn;
    cxView1mix_wo: TcxGridDBBandedColumn;
    cxView1mix_sty: TcxGridDBBandedColumn;
    Label40: TLabel;
    cxView1mt_2: TcxGridDBBandedColumn;
    ADOQuery3: TADOQuery;
    cxView1cut_flg: TcxGridDBBandedColumn;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    procedure tcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsfczd1DataChange(Sender: TObject; Field: TField);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DeleteOriginalData1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ADODataSet1AfterPost(DataSet: TDataSet);
    procedure ADODataSet2AfterPost(DataSet: TDataSet);
    procedure ADODataSet3AfterPost(DataSet: TDataSet);
    procedure ADODataSet2AfterOpen(DataSet: TDataSet);
    procedure tzsChange(Sender: TField);
    procedure ADODataSet3AfterOpen(DataSet: TDataSet);
    procedure JylChange(Sender: TField);
    procedure ADODataSet1NewRecord(DataSet: TDataSet);
    procedure ADODataSet3NewRecord(DataSet: TDataSet);
    procedure ADODataSet2NewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn21Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DisplayWO1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfc: Tfrmfc;
  oldzlc,oldzlt,oldxj,vcm:string;
implementation
uses dlu, mainu, shlru, xzzdu, fcjyu, mjxxu, zdlru, sczdu, impqcdm,
     xgcm1formu, FRN_ReviewFormu;//, newzdu;
{$R *.DFM}

procedure Tfrmfc.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //frmmain.enabled:=true;
  action:=cafree;
  frmfc:=nil;
end;

procedure Tfrmfc.FormShow(Sender: TObject);
begin
  silang1.LoadAllFromFile('cutplan.sil',false);
  silang1.ActiveLanguage:=frmmain.SpinEdit1.value;
  //pagecontrol1.ActivePage:=tabsheet2;
  tabsheet2.Tabvisible:=false;
  tabsheet3.TabVisible:=false;
  //TabSheet1.TabVisible:=false;
  bevel1.width:=3800;
  bevel2.width:=3800;
  bevel3.width:=3800;
  //edit1.setfocus;
  edit4.setfocus;
end;

procedure Tfrmfc.SpeedButton6Click(Sender: TObject);
begin
  if frmzdlr=nil then frmzdlr:=tfrmzdlr.create(self);
  frmzdlr.label4.caption:='find';
  frmzdlr.show;
end;

procedure Tfrmfc.BitBtn1Click(Sender: TObject);
var
  str1,str2,cm:string;
  y1,m1,d1,h2,m2,s2,ms2:word;
  dt:integer;
  tm:string;
  wo:string;
begin
  //if frmsczd=nil then frmsczd:=tfrmsczd.create(self);
  //frmsczd.show;
  screen.cursor:=crHourglass;
  with adoquery1 do begin
    close;
    sql.text:='exec cut_dltfczd1 :gch';
    parameters[0].value:=edit1.text;
    execsql;
  end;

  wo:='1';

  with query1 do begin
    close;
    sql.clear;
    sql.text:='select word40 from ault5f1.msp40 where cono40=''P1'' and wsta40<>''9'' and w2rf40='''+edit1.text+''' and w1rf40>''''';
    open;
    if not fieldbyname('word40').isnull then wo:='1' else wo:='0';
  end;

  if wo='1' then begin
    decodedate(date,y1,m1,d1);
    tm:=inttostr(y1);
    tm:=tm+copy('0'+inttostr(m1),length('0'+inttostr(m1))-1,2);
    tm:=tm+copy('0'+inttostr(d1),length('0'+inttostr(d1))-1,2);
    dt:=strtoint(tm);
    decodetime(now,h2,m2,s2,ms2);
    tm:=copy('0'+inttostr(h2),length('0'+inttostr(h2))-1,2);
    tm:=tm+copy('0'+inttostr(m2),length('0'+inttostr(m2))-1,2);
    tm:=tm+copy('0'+inttostr(s2),length('0'+inttostr(s2))-1,2);
    tm:=tm+copy('00'+inttostr(ms2),length('0'+inttostr(ms2))-2,3);
    with query1 do begin
      close;
      sql.Clear;
      sql.add('call sp_rtvcutplan(:dt,:tm,:cono,:gch)');
      prepare;
      params[0].asinteger:=dt;
      params[1].asstring:=tm;
      params[2].asstring:='P1';
      params[3].asstring:=edit1.text;
      execsql;
    end;
    //Retrieve project and work order;
    with query1 do begin
      close;
      sql.clear;
      sql.add('select * from cutjob1 where dt=:dt and tm=:tm');
      prepare;
      params[0].asinteger:=dt;
      params[1].asstring:=tm;
      open;
      first;
      while not eof do begin
        str1:=inttostr(fieldbyname('ccrq').value);
        y1:=strtoint(copy(str1,1,4));
        m1:=strtoint(copy(str1,5,2));
        d1:=strtoint(copy(str1,7,2));
        cm:=trim(copy(query1.fieldbyname('cm').value,1,5))+trim(copy(query1.fieldbyname('cm').value,6,5));
        if copy(cm,4,1)=' ' then cm:=copy(cm,1,3)+copy(cm,5,6)
        else if copy(cm,5,1)=' ' then cm:=copy(cm,1,4)+copy(cm,6,5);
        with adoquery1 do begin
          close;
          sql.text:='insert into cut_phisjob1(gch,zdh,kh,sh,ccrq,cm,zds,fty) values(:gch,:zdh,:kh,:sh,:ccrq,:cm,:zds,:fty)';
          parameters[0].value:=query1.fieldbyname('gch').value;
          parameters[1].value:=query1.fieldbyname('zdh').value;
          parameters[2].value:=query1.fieldbyname('kh').value;
          parameters[3].value:=query1.fieldbyname('sh').value;
          parameters[4].value:=encodedate(y1,m1,d1);
          parameters[5].value:=trim(cm);//trim(copy(query1.fieldbyname('cm').value,1,5))+trim(copy(query1.fieldbyname('cm').value,6,5));
          parameters[6].value:=query1.fieldbyname('zds').value;
          if (query1.fieldbyname('fty').value='FG') or (query1.fieldbyname('fty').value='RM') then
          parameters[7].value:='SL'
          else if (query1.fieldbyname('fty').value='FT') or (query1.fieldbyname('fty').value='RT') then
          parameters[7].value:='CL'
          else if (query1.fieldbyname('fty').value='FF') or (query1.fieldbyname('fty').value='RF') then
          parameters[7].value:='FJ';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //Retrieve Material from work order
    with query1 do begin
      close;
      sql.clear;
      sql.add('select * from cutjob2 where dt=:dt and tm=:tm');
      prepare;
      params[0].asinteger:=dt;
      params[1].asstring:=tm;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.text:='insert into cut_phisjob2(zdh,sh,wl1,wl2,cacjyl1,cacjyl2,wtype,util,fty) values(:zdh,:sh,:wl1,:wl2,:cacjyl1,:cacjyl2,''M'',0,:fty)';
          parameters[0].value:=query1.fieldbyname('zdh').value;
          parameters[1].value:=query1.fieldbyname('sh').value;
          parameters[2].value:=query1.fieldbyname('wl1').value;
          parameters[3].value:=query1.fieldbyname('wl2').value;
          parameters[4].value:=query1.fieldbyname('cacjyl').value;
          parameters[5].value:=query1.fieldbyname('zyl').value;
          if (query1.fieldbyname('fty').value='FG') or (query1.fieldbyname('fty').value='RM') then
          parameters[6].value:='SL'
          else if (query1.fieldbyname('fty').value='FT') or (query1.fieldbyname('fty').value='RT') then
          parameters[6].value:='CL'
          else if (query1.fieldbyname('fty').value='FF') or (query1.fieldbyname('fty').value='RF') then
          parameters[6].value:='FJ';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else begin
    //Retrieve project and SO line;
    with adoquery1 do begin
      close;
      sql.clear;
      sql.add('select a.projectno,b.workorderno,b.styleno,c.colorcode,b.deliveryshipcompleted,rtrim(custsize)+rtrim(custcup) as sz,c.despatchqty,a.factory ');
      sql.add('from [ph.rwo1]..project a,[ph.rwo1]..workorder b,[ph.rwo1]..workordersku c ');
      sql.add('where a.salesorderno=b.salesorderno and a.salesorderno=c.salesorderno and b.workorderno=c.workorderno and a.status not in (''C'',''X'') and b.wostatus not in (-1,8) and a.projectno='''+edit1.text+'''');
      open;
      first;
      while not eof do begin
        {
        str1:=inttostr(fieldbyname('ccrq').value);
        y1:=strtoint(copy(str1,1,4));
        m1:=strtoint(copy(str1,5,2));
        d1:=strtoint(copy(str1,7,2));
        cm:=trim(copy(query1.fieldbyname('cm').value,1,5))+trim(copy(query1.fieldbyname('cm').value,6,5));
        if copy(cm,4,1)=' ' then cm:=copy(cm,1,3)+copy(cm,5,6)
        else if copy(cm,5,1)=' ' then cm:=copy(cm,1,4)+copy(cm,6,5);
        }
        with adoquery2 do begin
          close;
          sql.text:='insert into cut_phisjob1(gch,zdh,kh,sh,ccrq,cm,zds,fty) values(:gch,:zdh,:kh,:sh,:ccrq,:cm,:zds,:fty)';
          parameters[0].value:=adoquery1.fieldbyname('projectno').value;
          parameters[1].value:=adoquery1.fieldbyname('workorderno').value;
          parameters[2].value:=adoquery1.fieldbyname('styleno').value;
          parameters[3].value:=adoquery1.fieldbyname('colorcode').value;
          parameters[4].value:=adoquery1.fieldbyname('deliveryshipcompleted').value;
          parameters[5].value:=adoquery1.fieldbyname('sz').value;
          parameters[6].value:=adoquery1.fieldbyname('despatchqty').value;
          parameters[7].value:=adoquery1.fieldbyname('factory').value;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  with adoquery1 do begin
    close;
    sql.text:='exec cut_jsfczd :gch,''ERP''';
    parameters[0].value:=edit1.text;
    execsql;
  end;

  with adodataset1 do begin
    close;
    commandtext:='select * from cut_fczd1 where gch='''+edit1.text+'''';
    open;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.dsfczd1DataChange(Sender: TObject; Field: TField);
begin
 if adodataset1.State=dsbrowse then begin
   if not ADODataSet1.FieldByName('gch').IsNull then begin
     with adodataset2 do begin
       close;
       commandtext:='select * from cut_fczd2 where gch='''+adodataset1.fieldbyname('gch').value+''' and zdh='''+adodataset1.fieldbyname('zdh').value+''' and kh='''+adodataset1.FieldByName('kh').value+''' and sh='''+adodataset1.fieldbyname('sh').value+'''';
       open;
     end;
   end;
 end;
end;

procedure Tfrmfc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if edit1.text>'' then begin
    if key=#13 then begin
      {
      with fczd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select * from cut_fczd1 where gch=:gch';
        params[0].asstring:=edit1.text;
        open;
      end;
      }
      with adodataset1 do begin
        Close;
        CommandText:='select * from cut_fczd1 where gch='''+edit1.text+'''';
        open;
      end;
      vcm:='';
    end;
  end;
end;

procedure Tfrmfc.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.activepage=tabsheet3 then begin
    {
    if fczd1.active=true then begin
      if not fczd1.fieldbyname('gch').isnull then begin
        with fcwl do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from cut_fcwl where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          params[0].asstring:=fczd1.fieldbyname('gch').value;
          params[1].asstring:=fczd1.fieldbyname('zdh').value;
          params[2].asstring:=fczd1.fieldbyname('kh').value;
          params[3].asstring:=fczd1.fieldbyname('sh').value;
          open;
        end;
      end;
    end;
    }
    if adodataset1.Active then begin
      with adodataset3 do begin
         close;
         commandtext:='select * from cut_fcwl where gch='''+adodataset1.fieldbyname('gch').value+''' and zdh='''+adodataset1.fieldbyname('zdh').value+''' and kh='''+adodataset1.FieldByName('kh').value+''' and sh='''+adodataset1.fieldbyname('sh').value+'''';
         open;
      end;
    end;
  end
  else if pagecontrol1.activepage=tabsheet2 then begin
    //if fcwl.state=dsedit then fcwl.post;
    if adodataset3.State=dsedit then adodataset3.Post;
  end;
  //if fczd2.state=dsedit then fczd2.post;
end;

procedure Tfrmfc.SpeedButton3Click(Sender: TObject);
begin
  if adodataset2.state=dsedit then adodataset2.post;
  if adodataset1.state=dsedit then adodataset1.post;
  if application.MessageBox('要修改物料嗎?','提示',mb_iconquestion+mb_okcancel)=idok then begin
    with adoquery1 do begin
      close;
      sql.text:='update cut_fcwl set zds=:zds where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
      parameters[0].value:=adodataset1.fieldbyname('zds').value;
      parameters[1].value:=adodataset1.fieldbyname('gch').value;
      parameters[2].value:=adodataset1.fieldbyname('zdh').value;
      parameters[3].value:=adodataset1.fieldbyname('kh').value;
      parameters[4].value:=adodataset1.fieldbyname('sh').value;
      execsql;
    end;
    pagecontrol1.ActivePage:=tabsheet3;
  end;
end;

procedure Tfrmfc.DeleteOriginalData1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if application.MessageBox('Delete this Proj?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with adoquery1 do begin
      close;
      sql.text:='execute cut_dltfczd :gch';
      parameters[0].value:=adodataset1.fieldbyname('gch').Value;//combobox1.text;
      execsql;
    end;
    adodataset1.active:=false;
    adodataset2.active:=false;
    adodataset3.active:=false;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if adodataset3.state=dsedit then adodataset3.post;
  with adoquery1 do begin
    close;
    sql.text:='execute cut_jsjyl :gch';
    parameters[0].value:=adodataset3.fieldbyname('gch').value;
    execsql;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.SpeedButton4Click(Sender: TObject);
begin
  if frmxgcm1=nil then frmxgcm1:=tfrmxgcm1.create(self);
  frmxgcm1.edit1.text:=adodataset2.fieldbyname('cm').value;
  frmxgcm1.edit2.text:='';
  frmxgcm1.show;
end;

procedure Tfrmfc.SpeedButton7Click(Sender: TObject);
var
  zdh,owl,wl,wtype,sh:string;
begin
  zdh:=adodataset3.fieldbyname('zdh').value;
  owl:=adodataset3.fieldbyname('wl').value;
  wtype:=adodataset3.fieldbyname('wtype').value;
  sh:=adodataset3.fieldbyname('sh').value;
  wl:=inputbox('制單資料','請輸入新物料:','');
  if wl>'' then begin
    with adoquery1 do begin
      close;
      sql.text:='execute cut_fcxgwl :zdh,:owl,:wl,:wtype,:sh';
      parameters[0].value:=zdh;
      parameters[1].value:=owl;
      parameters[2].value:=wl;
      parameters[3].value:=wtype;
      parameters[4].value:=sh;
      execsql;
    end;
    with adodataset3 do begin
      close;
      commandtext:='select * from cut_fcwl where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
      parameters[0].value:=adodataset1.fieldbyname('gch').value;
      parameters[1].value:=adodataset1.fieldbyname('zdh').value;
      parameters[2].value:=adodataset1.fieldbyname('kh').value;
      parameters[3].value:=adodataset1.fieldbyname('sh').value;
      open;
    end;
  end;
end;

procedure Tfrmfc.SpeedButton9Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  //if frmnewzd=nil then frmnewzd:=tfrmnewzd.create(self);
  //frmnewzd.show;
  //frmnewzd.dbedit1.setfocus;
  dbedit1.setfocus;
  with adodataset1 do begin
    close;
    commandtext:='select * from cut_fczd1 where gch=''''';
    open; 
  end;
  vcm:='';
  adodataset1.Append;
  if edit1.text>'' then
  adodataset1.fieldbyname('gch').value:=edit1.text;
  adodataset2.Active:=false;
  adodataset3.Active:=false;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.N2Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if adodataset1.Active then begin
    if application.MessageBox('要刪除此色號嗎?','CutPlan',mb_iconquestion+mb_okcancel)=idok then begin
      with adoquery1 do begin
        close;
        sql.text:='exec cut_dltfczd2 :gch,:zdh,:kh,:sh';
        parameters[0].value:=adodataset1.fieldbyname('gch').value;
        parameters[1].value:=adodataset1.fieldbyname('zdh').value;
        parameters[2].value:=adodataset1.fieldbyname('kh').value;
        parameters[3].value:=adodataset1.fieldbyname('sh').value;
        execsql;
      end;
      adodataset1.Delete;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.N3Click(Sender: TObject);
var
  gch:string;
begin
  screen.cursor:=crHourglass;
  if adodataset1.Active then begin
    if application.MessageBox('要刪除此製單嗎?','CutPlan',mb_iconquestion+mb_okcancel)=idok then begin
      gch:=adodataset1.fieldbyname('gch').value;
      with adoquery1 do begin
        close;
        sql.text:='execute cut_dltfczd3 :gch,:zdh';
        parameters[0].value:=adodataset1.fieldbyname('gch').value;
        parameters[1].value:=adodataset1.fieldbyname('zdh').value;
        execsql;
      end;
      with adodataset1 do begin
        close;
        commandtext:='select * from cut_fczd1 where gch='''+gch+'''';
        open;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.SpeedButton2Click(Sender: TObject);
var
  gch,zdh,kh,sh,jcp:string;
begin
  screen.cursor:=crHourglass;
  if adodataset1.Active then begin
    gch:=adodataset1.fieldbyname('gch').value;
    zdh:=adodataset1.fieldbyname('zdh').value;
    kh:=adodataset1.fieldbyname('kh').value;
    sh:=adodataset1.fieldbyname('sh').value;
    jcp:=inputbox('制單資料','請輸入加裁百分比:','');
    try
    if strtofloat(jcp)>0 then begin
      with adoquery1 do begin
        close;
        sql.text:='exec cut_jsjcp :gch,:zdh,:kh,:sh,:jcp';
        parameters[0].value:=gch;
        parameters[1].value:=zdh;
        parameters[2].value:=kh;
        parameters[3].value:=sh;
        parameters[4].value:=strtofloat(jcp);
        execsql;
      end;
      with adodataset1 do begin
        close;
        commandtext:='select * from cut_fczd1 where gch='''+gch+'''';
        open;
        //locate('gch;zdh;kh;sh',vararrayof([gch,zdh,kh,sh]),[lopartialkey]);
      end;
    end;
    except
      showmessage('加裁百分比無效!');
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.ADODataSet1AfterPost(DataSet: TDataSet);
begin
  adodataset1.UpdateBatch(arAll);
end;

procedure Tfrmfc.ADODataSet2AfterPost(DataSet: TDataSet);
begin
  adodataset2.UpdateBatch(arAll);
  with adoquery1 do begin
    close;
    sql.text:='select sum(zds) as zds1 from cut_fczd2 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
    parameters[0].value:=adodataset2.fieldbyname('gch').value;
    parameters[1].value:=adodataset2.fieldbyname('zdh').value;
    parameters[2].value:=adodataset2.fieldbyname('kh').value;
    parameters[3].value:=adodataset2.fieldbyname('sh').value;
    open;
  end;
  adodataset1.Edit;
  adodataset1.fieldbyname('zds').value:=adoquery1.fieldbyname('zds1').value;
  adodataset1.Post;
end;

procedure Tfrmfc.ADODataSet3AfterPost(DataSet: TDataSet);
begin
  adodataset3.UpdateBatch(arAll);
  if PageControl1.ActivePage=TabSheet1 then begin
  with adoquery1 do begin
    close;
    Parameters.Clear;
    sql.Text:='exec phgdb..cut_fcwlpost :x1';
    Parameters[0].Value:=ADODataSet3.fieldbyname('gch').value;
    ExecSQL;
  end;
  with adodataset3 do begin
    Close;
    CommandText:='select * from cut_fcwl where gch='''+combobox1.text+'''';
    open;
  end;
  end else begin
  //{
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s1 from cut_fcwl where gch=:x1 and zdh=:x2 and sh=:x3 and cut=1';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then begin
      dbgrideh1.columns[0].footer.value:=fieldbyname('s1').asstring;
      edit2.text:=fieldbyname('s1').AsString;
    end else begin
      edit2.text:='0';
    end;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s1 from cut_fcwl where gch=:x1 and zdh=:x2 and sh=:x3 and dxm=1';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then dbgrideh1.columns[1].footer.value:=fieldbyname('s1').asstring;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s1 from cut_fcwl where gch=:x1 and zdh=:x2 and sh=:x3';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then begin
      dbgrideh1.columns[3].footer.value:=fieldbyname('s1').asstring;
    end;
  end;
  //}
  end;
end;

procedure Tfrmfc.ADODataSet2AfterOpen(DataSet: TDataSet);
begin
  adodataset2.fieldbyname('tzs').onchange:=tzsChange;
  adodataset2.fieldbyname('yzds').onchange:=tzsChange;

  with adoquery1 do begin
    close;
    sql.text:='select count(distinct cm) as s1,sum(yzds) as s2 from cut_fczd2 where gch=:gch and zdh=:zdh and sh=:sh';
    parameters[0].Value:=adodataset1.fieldbyname('gch').value;
    parameters[1].Value:=adodataset1.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset1.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then dbgrideh2.columns[0].footer.value:=fieldbyname('s1').asstring;
    if not fieldbyname('s2').isnull then edit3.text:=fieldbyname('s2').asstring
    else edit3.text:='0';
  end;

end;

procedure Tfrmfc.tzsChange(Sender: TField);
var
  tzs,yzds:integer;
begin
  if not adodataset2.fieldbyname('yzds').isnull then yzds:=adodataset2.fieldbyname('yzds').value
  else yzds:=0;
  if not adodataset2.fieldbyname('tzs').isnull then tzs:=adodataset2.fieldbyname('tzs').value
  else tzs:=0;
  adodataset2.fieldbyname('zds').value:=yzds+tzs;
end;

procedure Tfrmfc.ADODataSet3AfterOpen(DataSet: TDataSet);
begin
  adodataset3.fieldbyname('jyl').OnChange:=jylchange;

  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s1 from cut_fcwl where gch=:x1 and zdh=:x2 and sh=:x3 and cut=1';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then begin
      dbgrideh1.columns[0].footer.value:=fieldbyname('s1').asstring;
      edit2.text:=fieldbyname('s1').AsString;
    end else begin
      edit2.text:='0';
    end;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s1 from cut_fcwl where gch=:x1 and zdh=:x2 and sh=:x3 and dxm=1';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then dbgrideh1.columns[1].footer.value:=fieldbyname('s1').asstring;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s1 from cut_fcwl where gch=:x1 and zdh=:x2 and sh=:x3';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s1').isnull then begin
      dbgrideh1.columns[3].footer.value:=fieldbyname('s1').asstring;
    end;
  end;

  with adoquery1 do begin
    close;
    sql.text:='select count(distinct wl) as s0,count(distinct gch) as s1,count(distinct zdh) as s2,count(distinct sh) as s3,count(distinct kh) as s5 from cut_fcwl where gch=:x1';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    //parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    //parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s0').isnull then begin
      cxView1.DataController.Summary.FooterSummaryValues[0]:=fieldbyname('s0').asstring;
      cxView1.DataController.Summary.FooterSummaryValues[1]:=fieldbyname('s1').asstring;
      cxView1.DataController.Summary.FooterSummaryValues[2]:=fieldbyname('s2').asstring;
      cxView1.DataController.Summary.FooterSummaryValues[3]:=fieldbyname('s3').asstring;
      cxView1.DataController.Summary.FooterSummaryValues[5]:=fieldbyname('s5').asstring;
      //dbgrideh1.columns[3].footer.value:=fieldbyname('s1').asstring;
    end;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select sum(zds) as s4 from cut_fczd1 where gch=:x1';
    parameters[0].Value:=adodataset3.fieldbyname('gch').value;
    //parameters[1].Value:=adodataset3.fieldbyname('zdh').value;
    //parameters[2].Value:=adodataset3.fieldbyname('sh').value;
    open;
    if not fieldbyname('s4').isnull then begin
      cxView1.DataController.Summary.FooterSummaryValues[4]:=fieldbyname('s4').asstring;
    end;
  end;




  
end;

procedure Tfrmfc.JylChange(Sender: TField);
begin
  if not adodataset3.fieldbyname('jyl').isnull then
  adodataset3.fieldbyname('cacyl').value:=adodataset3.fieldbyname('jyl').value*adodataset3.fieldbyname('zds').value;
end;

procedure Tfrmfc.ADODataSet1NewRecord(DataSet: TDataSet);
begin
  adodataset1.fieldbyname('ccrq').value:=date;
  adodataset1.fieldbyname('zds').value:=0;
end;

procedure Tfrmfc.ADODataSet3NewRecord(DataSet: TDataSet);
begin
  adodataset3.fieldbyname('gch').value:=adodataset1.fieldbyname('gch').value;
  adodataset3.fieldbyname('zdh').value:=adodataset1.fieldbyname('zdh').value;
  adodataset3.fieldbyname('kh').value:=adodataset1.fieldbyname('kh').value;
  adodataset3.fieldbyname('sh').value:=adodataset1.fieldbyname('sh').value;
  adodataset3.fieldbyname('zds').value:=adodataset1.fieldbyname('zds').value;
  adodataset3.fieldbyname('wtype').value:='M';
  adodataset3.fieldbyname('cut').value:=false;
  adodataset3.fieldbyname('dxm').value:=false;
  adodataset3.fieldbyname('fl').value:=false;
  adodataset3.fieldbyname('shl').value:=0;
  adodataset3.fieldbyname('ybl').value:=0;
end;

procedure Tfrmfc.ADODataSet2NewRecord(DataSet: TDataSet);
begin
  adodataset2.fieldbyname('gch').value:=adodataset1.fieldbyname('gch').value;
  adodataset2.fieldbyname('zdh').value:=adodataset1.fieldbyname('zdh').value;
  adodataset2.fieldbyname('kh').value:=adodataset1.fieldbyname('kh').value;
  adodataset2.fieldbyname('sh').value:=adodataset1.fieldbyname('sh').value;
  //adodataset2.fieldbyname('id').value:=adodataset1.fieldbyname('gch').value;
end;

procedure Tfrmfc.BitBtn3Click(Sender: TObject);
var
  str1,str2,cm:string;
  y1,m1,d1,h2,m2,s2,ms2:word;
  dt,frn_id:integer;
  tm:string;
  wo:string;
begin
  //if frmsczd=nil then frmsczd:=tfrmsczd.create(self);
  //frmsczd.show;
  screen.cursor:=crHourglass;
  with adoquery1 do begin
    close;
    sql.text:='exec cut_dltfczd1 :gch';
    parameters[0].value:=combobox1.text;
    execsql;
  end;

  wo:='1';

  with query1 do begin
    close;
    sql.clear;
    sql.text:='select word40 from ault5f1.msp40 where cono40=''P1'' and wsta40<>''9'' and w2rf40='''+combobox1.text+''' and w1rf40>''''';
    open;
    if not fieldbyname('word40').isnull then wo:='1' else wo:='0';
  end;

  if wo='1' then begin
    decodedate(date,y1,m1,d1);
    tm:=inttostr(y1);
    tm:=tm+copy('0'+inttostr(m1),length('0'+inttostr(m1))-1,2);
    tm:=tm+copy('0'+inttostr(d1),length('0'+inttostr(d1))-1,2);
    dt:=strtoint(tm);
    decodetime(now,h2,m2,s2,ms2);
    tm:=copy('0'+inttostr(h2),length('0'+inttostr(h2))-1,2);
    tm:=tm+copy('0'+inttostr(m2),length('0'+inttostr(m2))-1,2);
    tm:=tm+copy('0'+inttostr(s2),length('0'+inttostr(s2))-1,2);
    tm:=tm+copy('00'+inttostr(ms2),length('0'+inttostr(ms2))-2,3);
    with query1 do begin
      close;
      sql.Clear;
      sql.add('call sp_rtvcutplan(:dt,:tm,:cono,:gch)');
      prepare;
      params[0].asinteger:=dt;
      params[1].asstring:=tm;
      params[2].asstring:='P1';
      params[3].asstring:=combobox1.text;
      execsql;
    end;
    //Retrieve project and work order;
    with query1 do begin
      close;
      sql.clear;
      sql.add('select * from cutjob1 where dt=:dt and tm=:tm');
      prepare;
      params[0].asinteger:=dt;
      params[1].asstring:=tm;
      open;
      first;
      while not eof do begin
        str1:=inttostr(fieldbyname('ccrq').value);
        y1:=strtoint(copy(str1,1,4));
        m1:=strtoint(copy(str1,5,2));
        d1:=strtoint(copy(str1,7,2));
        cm:=trim(copy(query1.fieldbyname('cm').value,1,5))+trim(copy(query1.fieldbyname('cm').value,6,5));
        if copy(cm,4,1)=' ' then cm:=copy(cm,1,3)+copy(cm,5,6)
        else if copy(cm,5,1)=' ' then cm:=copy(cm,1,4)+copy(cm,6,5);
        with adoquery1 do begin
          close;
          sql.text:='insert into cut_phisjob1(gch,zdh,kh,sh,ccrq,cm,zds,fty) values(:gch,:zdh,:kh,:sh,:ccrq,:cm,:zds,:fty)';
          parameters[0].value:=query1.fieldbyname('gch').value;
          parameters[1].value:=query1.fieldbyname('zdh').value;
          parameters[2].value:=query1.fieldbyname('kh').value;
          parameters[3].value:=query1.fieldbyname('sh').value;
          parameters[4].value:=encodedate(y1,m1,d1);
          parameters[5].value:=trim(cm);//trim(copy(query1.fieldbyname('cm').value,1,5))+trim(copy(query1.fieldbyname('cm').value,6,5));
          parameters[6].value:=query1.fieldbyname('zds').value;
          if (query1.fieldbyname('fty').value='FG') or (query1.fieldbyname('fty').value='RM') then
          parameters[7].value:='SL'
          else if (query1.fieldbyname('fty').value='FT') or (query1.fieldbyname('fty').value='RT') then
          parameters[7].value:='CL'
          else if (query1.fieldbyname('fty').value='FF') or (query1.fieldbyname('fty').value='RF') then
          parameters[7].value:='FJ';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //Retrieve Material from work order
    with query1 do begin
      close;
      sql.clear;
      sql.add('select * from cutjob2 where dt=:dt and tm=:tm');
      prepare;
      params[0].asinteger:=dt;
      params[1].asstring:=tm;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.text:='insert into cut_phisjob2(zdh,sh,wl1,wl2,cacjyl1,cacjyl2,wtype,util,fty) values(:zdh,:sh,:wl1,:wl2,:cacjyl1,:cacjyl2,''M'',0,:fty)';
          parameters[0].value:=query1.fieldbyname('zdh').value;
          parameters[1].value:=query1.fieldbyname('sh').value;
          parameters[2].value:=query1.fieldbyname('wl1').value;
          parameters[3].value:=query1.fieldbyname('wl2').value;
          parameters[4].value:=query1.fieldbyname('cacjyl').value;
          parameters[5].value:=query1.fieldbyname('zyl').value;
          if (query1.fieldbyname('fty').value='FG') or (query1.fieldbyname('fty').value='RM') then
          parameters[6].value:='SL'
          else if (query1.fieldbyname('fty').value='FT') or (query1.fieldbyname('fty').value='RT') then
          parameters[6].value:='CL'
          else if (query1.fieldbyname('fty').value='FF') or (query1.fieldbyname('fty').value='RF') then
          parameters[6].value:='FJ';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else begin
    //Retrieve project and SO line;
    //ShowMessage('n2');
    with adoquery1 do begin
      close;
      sql.clear;
      sql.add('select a.projectno,b.workorderno,b.styleno,c.colorcode,b.deliveryshipcompleted,rtrim(custsize)+rtrim(custcup) as sz,c.despatchqty,a.factory ');
      sql.add('from [ph.rwo1]..project a,[ph.rwo1]..workorder b,[ph.rwo1]..workordersku c ');
      sql.add('where a.salesorderno=b.salesorderno and a.salesorderno=c.salesorderno and b.workorderno=c.workorderno and a.status not in (''C'',''X'') and b.wostatus not in (-1,8) and a.projectno='''+combobox1.text+'''');
      open;
      first;
      while not eof do begin
        {
        str1:=inttostr(fieldbyname('ccrq').value);
        y1:=strtoint(copy(str1,1,4));
        m1:=strtoint(copy(str1,5,2));
        d1:=strtoint(copy(str1,7,2));
        cm:=trim(copy(query1.fieldbyname('cm').value,1,5))+trim(copy(query1.fieldbyname('cm').value,6,5));
        if copy(cm,4,1)=' ' then cm:=copy(cm,1,3)+copy(cm,5,6)
        else if copy(cm,5,1)=' ' then cm:=copy(cm,1,4)+copy(cm,6,5);
        }
        with adoquery2 do begin
          close;
          sql.text:='insert into cut_phisjob1(gch,zdh,kh,sh,ccrq,cm,zds,fty) values(:gch,:zdh,:kh,:sh,:ccrq,:cm,:zds,:fty)';
          parameters[0].value:=adoquery1.fieldbyname('projectno').value;
          parameters[1].value:=adoquery1.fieldbyname('workorderno').value;
          parameters[2].value:=adoquery1.fieldbyname('styleno').value;
          parameters[3].value:=adoquery1.fieldbyname('colorcode').value;
          parameters[4].value:=adoquery1.fieldbyname('deliveryshipcompleted').value;
          parameters[5].value:=adoquery1.fieldbyname('sz').value;
          parameters[6].value:=adoquery1.fieldbyname('despatchqty').value;
          parameters[7].value:=adoquery1.fieldbyname('factory').value;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //ShowMessage('N21');
    //ShowMessage(ComboBox1.Text);
    if Edit4.Text>'' then begin
      with adoquery1 do begin
        close;
        sql.text:='select frn_id from phgdb..cut_frn_master where frn_no='''+edit4.text+'''';
        open;
        if not FieldByName('frn_id').isnull then frn_id:=fieldbyname('frn_id').value else frn_id:=0;
      end;
    end;
    with adoquery3 do begin
      close;
      sql.add('select * from phgdb..cut_frn_detail where prjno=:x1');
      if frn_id>0 then sql.Add(' and frn_id='+inttostr(frn_id));
      Parameters[0].value:=ComboBox1.Text;
      open;
      first;
      while not eof do begin
        //showmessage(adoquery3.fieldbyname('wono').value);
        //showmessage(adoquery3.fieldbyname('itemcode').value);
        with adoquery2 do begin
          close;
          sql.text:='insert into cut_phisjob2(zdh,sh,wl1,wl2,cacjyl1,cacjyl2,wtype,util,fty) values(:zdh,:sh,:wl1,:wl2,:cacjyl1,:cacjyl2,''M'',0,:fty)';
          parameters[0].value:=adoquery3.fieldbyname('wono').value;
          parameters[1].value:=adoquery3.fieldbyname('clr').value;
          parameters[2].value:=adoquery3.fieldbyname('mattype').value;
          parameters[3].value:=adoquery3.fieldbyname('itemcode').value;
          parameters[4].value:=adoquery3.fieldbyname('wastage').value/100.00;
          parameters[5].value:=adoquery3.fieldbyname('cacyy1').value;
          if Pos('Z',ComboBox1.Text)>0 then Parameters[6].value:='CL'
          else Parameters[6].value:='SL';
          {
          if (query1.fieldbyname('fty').value='FG') or (query1.fieldbyname('fty').value='RM') then
          parameters[6].value:='SL'
          else if (query1.fieldbyname('fty').value='FT') or (query1.fieldbyname('fty').value='RT') then
          parameters[6].value:='CL'
          else if (query1.fieldbyname('fty').value='FF') or (query1.fieldbyname('fty').value='RF') then
          parameters[6].value:='FJ';
          }
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //ShowMessage('N22');
  end;

  with adoquery1 do begin
    close;
    sql.text:='exec cut_jsfczd :gch,''ERP''';
    parameters[0].value:=combobox1.text;
    execsql;
  end;
  {
  with adodataset1 do begin
    close;
    commandtext:='select * from cut_fczd1 where gch='''+combobox1.text+'''';
    open;
  end;
  }
  with ADODataSet3 do begin
    close;
    commandtext:='select * from cut_fcwl where gch='''+combobox1.text+'''';
    open;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmfc.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if combobox1.text>'' then begin
    if key=#13 then begin
      {
      with fczd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select * from cut_fczd1 where gch=:gch';
        params[0].asstring:=edit1.text;
        open;
      end;
      }
      with adoquery1 do begin
        close;
        sql.text:='exec cut_jsfczd :gch,''ERP''';
        parameters[0].value:=combobox1.text;
        execsql;
      end;
      with ADODataSet1 do begin
        Close;
        CommandText:='select * from cut_fczd1 where gch='''+combobox1.text+'''';
        open;
      end;
      with adodataset3 do begin
        Close;
        CommandText:='select * from cut_fcwl where gch='''+combobox1.text+'''';
        open;
      end;
      vcm:='';
    end;
  end;
end;

procedure Tfrmfc.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  m_s,i1:integer;
begin
  m_s:=AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnbyFieldName('wl_seq').index];
  i1:=m_s mod 2;
  if i1=0 then begin
    ACanvas.Canvas.Brush.Color:=$00FFE8E1;
    ACanvas.Canvas.Font.Color:=clBlack;
  end else if i1=1 then begin
    ACanvas.Canvas.Brush.Color:=$00FFFCDF;
    ACanvas.Canvas.Font.Color:=clBlack;
  end;
end;

procedure Tfrmfc.BitBtn21Click(Sender: TObject);
begin
  if frmFRN_Review=nil then frmFRN_Review:=tfrmFRN_Review.create(nil);
  frmFRN_Review.Label3.caption:='3';
  frmFRN_Review.show;
end;

procedure Tfrmfc.ComboBox1Enter(Sender: TObject);
begin
  ComboBox1.items.clear;
  if Edit4.text>'' then begin
    with ADOQuery1 do begin
      Close;
      parameters.clear;
      sql.text:='select distinct a.prjno from phgdb..cut_frn_detail a,phgdb..cut_frn_master b where a.frn_id=b.frn_id and b.frn_no='''+edit4.text+'''';
      Open;
      while not Eof do begin
        ComboBox1.Items.Add(fieldbyname('prjno').value);
        next;
      end;
    end;
  end;
end;

procedure Tfrmfc.ComboBox1Change(Sender: TObject);
begin
  if Length(ComboBox1.Text)>=8 then begin
      with adoquery1 do begin
        close;
        sql.text:='exec cut_jsfczd :gch,''ERP''';
        parameters[0].value:=combobox1.text;
        execsql;
      end;
      with ADODataSet1 do begin
        Close;
        CommandText:='select * from cut_fczd1 where gch='''+combobox1.text+'''';
        open;
      end;
      with adodataset3 do begin
        Close;
        CommandText:='select * from cut_fcwl where gch='''+combobox1.text+'''';
        open;
      end;
  end;
end;

procedure Tfrmfc.DisplayWO1Click(Sender: TObject);
begin
  if TabSheet1.TabVisible=true then begin
    tabsheet2.Tabvisible:=True;
    tabsheet3.TabVisible:=True;
    TabSheet1.TabVisible:=false;
    pagecontrol1.ActivePage:=tabsheet2;
    bevel1.width:=3800;
    bevel2.width:=3800;
    bevel3.width:=3800;
    edit1.setfocus;
    //edit4.setfocus;
  end else begin
    //pagecontrol1.ActivePage:=tabsheet2;
    tabsheet2.Tabvisible:=false;
    tabsheet3.TabVisible:=false;
    TabSheet1.TabVisible:=True;
    bevel1.width:=3800;
    bevel2.width:=3800;
    bevel3.width:=3800;
    //edit1.setfocus;
    edit4.setfocus;
  end;
end;

procedure Tfrmfc.SpeedButton15Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    exportGridToExcel(savedialog1.filename,cxgrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmfc.SpeedButton16Click(Sender: TObject);
begin
  if (ADODataSet2.State=dsinsert) or (ADODataSet2.State=dsEdit) then ADODataSet2.Post;
  if (ADODataSet1.State=dsinsert) or (ADODataSet1.State=dsEdit) then ADODataSet1.Post;
end;

procedure Tfrmfc.SpeedButton17Click(Sender: TObject);
begin
  if (ADODataSet3.State=dsinsert) or (ADODataSet3.State=dsEdit) then ADODataSet3.Post;
end;

end.
