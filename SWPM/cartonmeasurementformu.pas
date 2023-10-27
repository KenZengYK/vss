unit cartonmeasurementformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, ppParameter;

type
  Tfrmcartonmeasurement = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine6: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppShape2: TppShape;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure querycmchange(Sender: TField);
    procedure querycusnchange(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcartonmeasurement: Tfrmcartonmeasurement;

implementation

uses mainformu, cartonmeasurement1formu;

{$R *.dfm}

procedure Tfrmcartonmeasurement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcartonmeasurement:=nil;
end;

procedure Tfrmcartonmeasurement.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('cm1').onchange:=querycmchange;
  query1.fieldbyname('cm2').onchange:=querycmchange;
  query1.fieldbyname('cm3').onchange:=querycmchange;
  query1.fieldbyname('ic1').onchange:=querycmchange;
  query1.fieldbyname('ic2').onchange:=querycmchange;
  query1.fieldbyname('ic3').onchange:=querycmchange;
  //query1.fieldbyname('cusn').onchange:=querycusnchange;
end;

procedure Tfrmcartonmeasurement.querycmchange(Sender: TField);
var
  cm1,cm2,cm3,ic1,ic2,ic3:double;
begin
  if not query1.fieldbyname('cm1').isnull then
  cm1:=query1.fieldbyname('cm1').value else cm1:=0;
  if not query1.fieldbyname('cm2').isnull then
  cm2:=query1.fieldbyname('cm2').value else cm2:=0;
  if not query1.fieldbyname('cm3').isnull then
  cm3:=query1.fieldbyname('cm3').value else cm3:=0;
  if not query1.fieldbyname('ic1').isnull then
  ic1:=query1.fieldbyname('ic1').value else ic1:=0;
  if not query1.fieldbyname('ic2').isnull then
  ic2:=query1.fieldbyname('ic2').value else ic2:=0;
  if not query1.fieldbyname('ic3').isnull then
  ic3:=query1.fieldbyname('ic3').value else ic3:=0;
  query1.fieldbyname('tcbm').value:=(cm1*cm2*cm3+ic1*ic2*ic3*2.54*2.54*2.54)/1000000.0;
end;

procedure Tfrmcartonmeasurement.querycusnchange(Sender: TField);
var
  cusn,cust:string;
begin
  if not query1.fieldbyname('cusn').isnull then
  cusn:=query1.fieldbyname('cusn').value else cusn:='';
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct cust from tbl_pdn_cbm where cusn='''+cusn+''' and cust>''''';
    open;
    if not fieldbyname('cust').isnull then cust:=fieldbyname('cust').value else cust:='';
  end;
  query1.fieldbyname('cust').value:=cust;
end;

procedure Tfrmcartonmeasurement.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_pdn_cbm where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').Value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftinteger,'x12',ptinput);
          commandtext:='update tbl_pdn_cbm set cm1=:x1,cm2=:x2,cm3=:x3,ic1=:x4,ic2=:x5,ic3=:x6,tcbm=:x7,rmk=:x8,cusn=:x9,cbm=:x10,cust=:x11 where seq=:x12';

          if not query1.fieldbyname('cm1').isnull then
          params[0].asfloat:=query1.fieldbyname('cm1').value
          else params[0].asfloat:=0;
          if not query1.fieldbyname('cm2').isnull then
          params[1].asfloat:=query1.fieldbyname('cm2').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('cm3').isnull then
          params[2].asfloat:=query1.fieldbyname('cm3').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('ic1').isnull then
          params[3].asfloat:=query1.fieldbyname('ic1').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('ic2').isnull then
          params[4].asfloat:=query1.fieldbyname('ic2').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('ic3').isnull then
          params[5].asfloat:=query1.fieldbyname('ic3').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('tcbm').isnull then
          params[6].asfloat:=query1.fieldbyname('tcbm').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('rmk').isnull then
          params[7].asstring:=query1.fieldbyname('rmk').value
          else params[7].asstring:='';
          if not query1.fieldbyname('cusn').isnull then
          params[8].asstring:=query1.fieldbyname('cusn').value
          else params[8].asstring:='';
          if not query1.fieldbyname('cbm').isnull then
          params[9].asstring:=query1.fieldbyname('cbm').value
          else params[9].asstring:='';
          params[10].asstring:=query1.fieldbyname('cust').value;
          params[11].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_pdn_cbm set ';
          if not query1.fieldbyname('cm1').isnull then
          str1:=str1+'cm1='+query1.fieldbyname('cm1').asstring+','
          else str1:=str1+'cm1=0,';
          if not query1.fieldbyname('cm2').isnull then
          str1:=str1+'cm2='+query1.fieldbyname('cm2').asstring+','
          else str1:=str1+'cm2=0,';
          if not query1.fieldbyname('cm3').isnull then
          str1:=str1+'cm3='+query1.fieldbyname('cm3').asstring+','
          else str1:=str1+'cm3=0,';
          if not query1.fieldbyname('ic1').isnull then
          str1:=str1+'ic1='+query1.fieldbyname('ic1').asstring+','
          else str1:=str1+'ic1=0,';
          if not query1.fieldbyname('ic2').isnull then
          str1:=str1+'ic2='+query1.fieldbyname('ic2').asstring+','
          else str1:=str1+'ic2=0,';
          if not query1.fieldbyname('ic3').isnull then
          str1:=str1+'ic3='+query1.fieldbyname('ic3').asstring+','
          else str1:=str1+'ic3=0,';
          if not query1.fieldbyname('tcbm').isnull then
          str1:=str1+'tcbm='+query1.fieldbyname('tcbm').asstring+','
          else str1:=str1+'tcbm=0,';
          if not query1.fieldbyname('rmk').isnull then
          str1:=str1+'rmk='''+query1.fieldbyname('rmk').value+''','
          else str1:=str1+'rmk='''',';
          if not query1.fieldbyname('cusn').isnull then
          str1:=str1+'cusn='''+query1.fieldbyname('cusn').value+''','
          else str1:=str1+'cusn='''',';
          if not query1.fieldbyname('cbm').isnull then
          str1:=str1+'cbm='''+query1.fieldbyname('cbm').value+''','
          else str1:=str1+'cbm='''',';
          str1:=str1+'cust='''+query1.fieldbyname('cust').value+''' ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftinteger,'x12',ptinput);
          commandtext:='insert into tbl_pdn_cbm(cm1,cm2,cm3,ic1,ic2,ic3,tcbm,rmk,cusn,cbm,cust,seq) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12)';
          if not query1.fieldbyname('cm1').isnull then
          params[0].asfloat:=query1.fieldbyname('cm1').value
          else params[0].asfloat:=0;
          if not query1.fieldbyname('cm2').isnull then
          params[1].asfloat:=query1.fieldbyname('cm2').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('cm3').isnull then
          params[2].asfloat:=query1.fieldbyname('cm3').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('ic1').isnull then
          params[3].asfloat:=query1.fieldbyname('ic1').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('ic2').isnull then
          params[4].asfloat:=query1.fieldbyname('ic2').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('ic3').isnull then
          params[5].asfloat:=query1.fieldbyname('ic3').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('tcbm').isnull then
          params[6].asfloat:=query1.fieldbyname('tcbm').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('rmk').isnull then
          params[7].asstring:=query1.fieldbyname('rmk').value
          else params[7].asstring:='';
          if not query1.fieldbyname('cusn').isnull then
          params[8].asstring:=query1.fieldbyname('cusn').value
          else params[8].asstring:='';
          if not query1.fieldbyname('cbm').isnull then
          params[9].asstring:=query1.fieldbyname('cbm').value
          else params[9].asstring:='';
          params[10].asstring:=query1.fieldbyname('cust').value;
          params[11].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmcartonmeasurement.BitBtn2Click(Sender: TObject);
begin
  with frmcartonmeasurement1.Query1 do begin
    edit;
    fieldbyname('cbm').value:=query1.fieldbyname('cbm').value;
    if query1.fieldbyname('cm1').value>0 then begin
      fieldbyname('c1').value:=query1.fieldbyname('cm1').value;
      fieldbyname('c2').value:=query1.fieldbyname('cm2').value;
      fieldbyname('c3').value:=query1.fieldbyname('cm3').value;
    end else begin
      fieldbyname('c1').value:=query1.fieldbyname('ic1').value*2.54;
      fieldbyname('c2').value:=query1.fieldbyname('ic2').value*2.54;
      fieldbyname('c3').value:=query1.fieldbyname('ic3').value*2.54;
    end;
  end;
  frmcartonmeasurement.Close;
end;

procedure Tfrmcartonmeasurement.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmcartonmeasurement.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_pdn_cbm';
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
    else seq:=1;
  end;
  query1.FieldByName('seq').Value:=seq;
  query1.fieldbyname('cust').value:='';
end;

procedure Tfrmcartonmeasurement.BitBtn3Click(Sender: TObject);
begin
  if not query1.fieldbyname('seq').isnull then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_pdn_cbm where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.Delete;
    end;
  end;
end;

procedure Tfrmcartonmeasurement.BitBtn4Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.Post;
end;

procedure Tfrmcartonmeasurement.BitBtn5Click(Sender: TObject);
begin
  if query1.active=true then ppReport1.Print;
end;

procedure Tfrmcartonmeasurement.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
