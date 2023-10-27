unit cust_qtyratioformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBClient, DBCtrls, StdCtrls, Buttons;

type
  Tfrmcust_qtyratio = class(TForm)
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DBText1: TDBText;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcust_qtyratio: Tfrmcust_qtyratio;

implementation

uses mainformu, custformu;

{$R *.dfm}

procedure Tfrmcust_qtyratio.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.setfocus;
  dbgrideh1.selectedindex:=0;
  query1.append;
end;

procedure Tfrmcust_qtyratio.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='delete from cust_exfty_qtyratio where seq=:seq';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmcust_qtyratio.BitBtn3Click(Sender: TObject);
begin
  if (query1.State=dsEdit) or (query1.State=dsInsert) then query1.Post;
end;

procedure Tfrmcust_qtyratio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcust_qtyratio:=nil;
end;

procedure Tfrmcust_qtyratio.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select seq from cust_exfty_qtyratio where seq=:seq';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then begin
      str1:='update cust_exfty_qtyratio set ';
      str1:=str1+'yr='+query1.fieldbyname('yr').asstring+',';
      str1:=str1+'m1='+query1.fieldbyname('m1').asstring+',';
      if not query1.fieldbyname('w1').isnull then
      str1:=str1+'w1='+query1.fieldbyname('w1').asstring+','
      else str1:=str1+'w1=0,';
      if not query1.fieldbyname('w2').isnull then
      str1:=str1+'w2='+query1.fieldbyname('w2').asstring+','
      else str1:=str1+'w2=0,';
      if not query1.fieldbyname('w3').isnull then
      str1:=str1+'bw3='+query1.fieldbyname('w3').asstring+','
      else str1:=str1+'w3=0,';
      if not query1.fieldbyname('w4').isnull then
      str1:=str1+'w4='+query1.fieldbyname('w4').asstring+','
      else str1:=str1+'w4=0,';
      if not query1.fieldbyname('w5').isnull then
      str1:=str1+'w5='+query1.fieldbyname('w5').asstring+','
      else str1:=str1+'w5=0,';
      if not query1.fieldbyname('w6').isnull then
      str1:=str1+'w6='+query1.fieldbyname('w6').asstring+' '
      else str1:=str1+'w6=0 ';
      str1:=str1+'where tplant='''+query1.fieldbyname('tplant').asstring+''' ';
      str1:=str1+'and cust='''+query1.fieldbyname('cust').asstring+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftstring,'tplant',ptinput);
        params.createparam(ftstring,'cust',ptinput);
        params.createparam(ftinteger,'yr',ptinput);
        params.createparam(ftinteger,'m1',ptinput);
        params.createparam(ftfloat,'w1',ptinput);
        params.createparam(ftfloat,'w2',ptinput);
        params.createparam(ftfloat,'w3',ptinput);
        params.createparam(ftfloat,'w4',ptinput);
        params.createparam(ftfloat,'w5',ptinput);
        params.createparam(ftfloat,'w6',ptinput);
        commandtext:='insert into cust_exfty_qtyratio(seq,tplant,cust,yr,m1,w1,w2,w3,w4,w5,w6) '
                    +'values(:seq,:tplant,:cust,:yr,:m1,:w1,:w2,:w3,:w4,:w5,:w6)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asstring:=query1.fieldbyname('tplant').value;
        params[2].asstring:=query1.fieldbyname('cust').value;
        params[3].asinteger:=query1.fieldbyname('yr').value;
        params[4].asinteger:=query1.fieldbyname('m1').value;
        if not query1.fieldbyname('w1').isnull then
        params[5].asfloat:=query1.fieldbyname('w1').value
        else params[5].asfloat:=0;
        if not query1.fieldbyname('w2').isnull then
        params[6].asfloat:=query1.fieldbyname('w2').value
        else params[6].asfloat:=0;
        if not query1.fieldbyname('w3').isnull then
        params[7].asfloat:=query1.fieldbyname('w3').value
        else params[7].asfloat:=0;
        if not query1.fieldbyname('w4').isnull then
        params[8].asfloat:=query1.fieldbyname('w4').value
        else params[8].asfloat:=0;
        if not query1.fieldbyname('w5').isnull then
        params[9].asfloat:=query1.fieldbyname('w5').value
        else params[9].asfloat:=0;
        if not query1.fieldbyname('w6').isnull then
        params[10].asfloat:=query1.fieldbyname('w6').value
        else params[10].asfloat:=0;
        execute;
      end;
    end;
  end;
end;

procedure Tfrmcust_qtyratio.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from cust_exfty_qtyratio';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('tplant').value:=frmcustomer.query2.fieldbyname('tplant').value;
  query1.fieldbyname('cust').value:=frmcustomer.query2.fieldbyname('pgrp').value;
  query1.fieldbyname('w1').value:=0;
  query1.fieldbyname('w2').value:=0;
  query1.fieldbyname('w3').value:=0;
  query1.fieldbyname('w4').value:=0;
  query1.fieldbyname('w5').value:=0;
  query1.fieldbyname('w6').value:=0;
end;

end.
