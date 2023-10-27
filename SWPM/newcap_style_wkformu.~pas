unit newcap_style_wkformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBCtrls, StdCtrls, Mask, DBCtrlsEh, Buttons,
  GridsEh, DBGridEh;

type
  Tfrmnewcap_style_wk = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEdit1: TDBEdit;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBEdit3: TDBEdit;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    DBEdit4: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBDateTimeEditEh5: TDBDateTimeEditEh;
    DBEdit5: TDBEdit;
    DBDateTimeEditEh6: TDBDateTimeEditEh;
    DBEdit6: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBDateTimeEditEh7: TDBDateTimeEditEh;
    DBEdit7: TDBEdit;
    DBDateTimeEditEh8: TDBDateTimeEditEh;
    DBEdit8: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBDateTimeEditEh9: TDBDateTimeEditEh;
    DBEdit9: TDBEdit;
    DBDateTimeEditEh10: TDBDateTimeEditEh;
    DBEdit10: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBDateTimeEditEh11: TDBDateTimeEditEh;
    DBEdit11: TDBEdit;
    DBDateTimeEditEh12: TDBDateTimeEditEh;
    DBEdit12: TDBEdit;
    DBComboBox6: TDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label15: TLabel;
    DBGridEh1: TDBGridEh;
    Label16: TLabel;
    Label17: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_style_wk: Tfrmnewcap_style_wk;

implementation

uses mainformu, newcap_styleformu, newcap_wcustformu;

{$R *.dfm}

procedure Tfrmnewcap_style_wk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_style_wk:=nil;
end;

procedure Tfrmnewcap_style_wk.BitBtn2Click(Sender: TObject);
begin
  if frmnewcap_wcust=nil then frmnewcap_wcust:=tfrmnewcap_wcust.create(nil);
  frmnewcap_wcust.ComboBox5.Text:=frmnewcap_style.query1.fieldbyname('cust').value;
  frmnewcap_wcust.ComboBox2Change(self);
  frmnewcap_wcust.show;
end;

procedure Tfrmnewcap_style_wk.FormShow(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  with query2 do begin
    close;
    params.clear;
    //commandtext:='select wkno from tbl_cap_wkno where yr='+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' order by wkno';
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    //commandtext:='select distinct a.wkno,min(b.date1) as x1,max(b.date1) as x2 from tbl_cap_wkno a,week52 b '
    //            +'where a.yr=f_year(b.date1) and a.wkno=b.wkno and a.yr=:x1 and a.m1=:x2 group by a.wkno order by a.wkno';
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0 order by wkno';//'+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' order by wkno';
    params[0].asinteger:=query1.fieldbyname('yr').value;
    params[1].asinteger:=query1.fieldbyname('m1').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        dbgrideh1.Columns[1].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Date';
        dbgrideh1.Columns[2].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Qty';
        dbgrideh1.Columns[3].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Date';
        dbgrideh1.Columns[4].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Qty';
      end else if i=2 then begin
        dbgrideh1.Columns[5].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Date';
        dbgrideh1.Columns[6].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Qty';
        dbgrideh1.Columns[7].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Date';
        dbgrideh1.Columns[8].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Qty';
      end else if i=3 then begin
        dbgrideh1.Columns[9].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Date';
        dbgrideh1.Columns[10].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Qty';
        dbgrideh1.Columns[11].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Date';
        dbgrideh1.Columns[12].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Qty';
      end else if i=4 then begin
        dbgrideh1.Columns[13].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Date';
        dbgrideh1.Columns[14].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Qty';
        dbgrideh1.Columns[15].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Date';
        dbgrideh1.Columns[16].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Qty';
      end else if i=5 then begin
        dbgrideh1.Columns[17].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Date';
        dbgrideh1.Columns[18].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Delivery Qty';
        dbgrideh1.Columns[19].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Date';
        dbgrideh1.Columns[20].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|T3 Qty';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if i>=5 then begin
    dbgrideh1.columns[17].visible:=true;
    dbgrideh1.columns[18].visible:=true;
    dbgrideh1.columns[19].visible:=true;
    dbgrideh1.columns[20].visible:=true;
  end else begin
    dbgrideh1.columns[17].visible:=false;
    dbgrideh1.columns[18].visible:=false;
    dbgrideh1.columns[19].visible:=false;
    dbgrideh1.columns[20].visible:=false;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0';
    params[0].asinteger:=query1.fieldbyname('yr').value;
    params[1].asinteger:=query1.fieldbyname('m1').value;
    open;
    label15.Caption:='(wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select dtct from tbl_cap_custdt where tplant=:x1 and pgrp=:x2';
    params[0].asstring:=frmnewcap_style.Query1.fieldbyname('tplant').value;
    params[1].asstring:=frmnewcap_style.Query1.fieldbyname('cust').value;
    open;
    if not fieldbyname('dtct').isnull then label17.caption:=fieldbyname('dtct').asstring
    else label17.caption:='0';
  end;
end;

end.
 