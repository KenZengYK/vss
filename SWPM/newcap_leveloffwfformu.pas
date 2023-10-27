unit newcap_leveloffwfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Spin,
  ExtCtrls, DBClient;

type
  Tfrmnewcap_leveloffwf = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit1: TSpinEdit;
    ComboBox3: TComboBox;
    SpinEdit2: TSpinEdit;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBTableView;
    GRP1: TcxGridDBColumn;
    SEQ1: TcxGridDBColumn;
    SDESC1: TcxGridDBColumn;
    TTL: TcxGridDBColumn;
    WFP: TcxGridDBColumn;
    W1: TcxGridDBColumn;
    W2: TcxGridDBColumn;
    W3: TcxGridDBColumn;
    W4: TcxGridDBColumn;
    W5: TcxGridDBColumn;
    W6: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_leveloffwf: Tfrmnewcap_leveloffwf;

implementation

uses mainformu, newcap_1stchoiceformu;

{$R *.dfm}

procedure Tfrmnewcap_leveloffwf.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_leveloffwf.cxView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  set1,set2,set3:set of 1..200;
  seqi:integer;
begin
  set1:=[4,115,118];
  set2:=[7,120,125];
  set3:=[192];
  seqi:=AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('seq1').index];
  if (seqi in set1) then
  acanvas.Canvas.Brush.Color:=$00CDFCFB
  else if (seqi in set3) then
  acanvas.Canvas.Brush.Color:=$008491D7
  else if (seqi in set2) then
  acanvas.Canvas.Brush.Color:=$00E0BCB4;
end;

procedure Tfrmnewcap_leveloffwf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_leveloffwf:=nil;
end;

procedure Tfrmnewcap_leveloffwf.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_ftyelements_wk where seq1 in (7,125,190,191) and tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+frmnewcap_1stchoice.query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
    open;
  end;
  cxview1.ViewData.Expand(true);
end;

procedure Tfrmnewcap_leveloffwf.Query1AfterOpen(DataSet: TDataSet);
var
  i:integer;
begin
  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr='+inttostr(spinedit2.value)+' and m1='+inttostr(spinedit1.value)+' and wkno>0 order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then w1.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=2 then w2.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=3 then w3.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=4 then w4.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=5 then w5.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=6 then w6.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then w6.visible:=true//dbgrideh1.columns[8].visible:=true
  else if i=5 then begin
    //dbgrideh1.columns[8].visible:=false;
    //dbgrideh1.Columns[7].Visible:=true;
    w6.visible:=false;
    w5.visible:=true;
  end else begin
    //dbgrideh1.columns[8].visible:=false;
    //dbgrideh1.Columns[7].Visible:=false;
    w6.visible:=false;
    w5.visible:=false;
  end;
end;

procedure Tfrmnewcap_leveloffwf.Query1AfterPost(DataSet: TDataSet);
var
  strupd:string;
begin
      strupd:='update tbl_cap_ftyelements_wk set ';
      if not query1.fieldbyname('w1').isnull then
      strupd:=strupd+'w1='+query1.fieldbyname('w1').asstring+','
      else strupd:=strupd+'w1=0,';
      if not query1.fieldbyname('w2').isnull then
      strupd:=strupd+'w2='+query1.fieldbyname('w2').asstring+','
      else strupd:=strupd+'w2=0,';
      if not query1.fieldbyname('w3').isnull then
      strupd:=strupd+'w3='+query1.fieldbyname('w3').asstring+','
      else strupd:=strupd+'w3=0,';
      if not query1.fieldbyname('w4').isnull then
      strupd:=strupd+'w4='+query1.fieldbyname('w4').asstring+','
      else strupd:=strupd+'w4=0,';
      if not query1.fieldbyname('w5').isnull then
      strupd:=strupd+'w5='+query1.fieldbyname('w5').asstring+','
      else strupd:=strupd+'w5=0,';
      if not query1.fieldbyname('w6').isnull then
      strupd:=strupd+'w6='+query1.fieldbyname('w6').asstring+' '
      else strupd:=strupd+'w6=0 ';
      strupd:=strupd+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      strupd:=strupd+'and yr='+query1.fieldbyname('yr').asstring+' ';
      strupd:=strupd+'and m1='+query1.fieldbyname('m1').asstring+' ';
      strupd:=strupd+'and seq='+query1.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
end;

end.
