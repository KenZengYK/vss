unit ibookingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, DBCtrls,
  ExtCtrls;

type
  Tfrmibooking = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmibooking: Tfrmibooking;

implementation

uses mainformu, pdnformu, voyageformu;

{$R *.dfm}

procedure Tfrmibooking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmibooking:=nil;
end;

procedure Tfrmibooking.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(fttime,'x5',ptinput);
      params.createparam(ftdate,'x9',ptinput);
      params.createparam(ftdate,'x10',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      commandtext:='update tbl_pdn_pack set lqcdt=:x1,fqcdt=:x2,fqcdt1=:x3,qcrst=:x4,cnph=:x5,dt01=:x9,dt02=:x10 '
                  +'where seq=:x6 and seq1=:x7 and dseq=:x8';

      if not query1.fieldbyname('lqcdt').isnull then
      params[0].asdate:=query1.fieldbyname('lqcdt').value;
      if not query1.fieldbyname('fqcdt').isnull then
      params[1].asdate:=query1.fieldbyname('fqcdt').value;
      if not query1.fieldbyname('fqcdt1').isnull then
      params[2].asdate:=query1.fieldbyname('fqcdt1').value;
      if not query1.fieldbyname('qcrst').isnull then
      params[3].asstring:=query1.fieldbyname('qcrst').value
      else params[3].asstring:='';
      if not query1.fieldbyname('cnph').isnull then
      params[4].asstring:=query1.fieldbyname('cnph').value
      else params[4].asstring:='';
      if not query1.fieldbyname('dt01').isnull then
      params[5].asdate:=query1.fieldbyname('dt01').value;
      if not query1.fieldbyname('dt02').isnull then
      params[6].asdate:=query1.fieldbyname('dt02').value;
      params[7].asinteger:=query1.fieldbyname('seq').value;
      params[8].asinteger:=query1.fieldbyname('seq1').value;
      params[9].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_pack set ';
      if not query1.fieldbyname('lqcdt').isnull then
      str1:=str1+'lqcdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('lqcdt').value)+''','
      else str1:=str1+'lqcdt=null,';
      if not query1.fieldbyname('fqcdt').isnull then
      str1:=str1+'fqcdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('fqcdt').value)+''','
      else str1:=str1+'fqcdt=null,';
      if not query1.fieldbyname('fqcdt1').isnull then
      str1:=str1+'fqcdt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('fqcdt1').value)+''','
      else str1:=str1+'fqcdt1=null,';
      if not query1.fieldbyname('qcrst').isnull then
      str1:=str1+'qcrst='''+query1.fieldbyname('qcrst').value+''','
      else str1:=str1+'qcrst='''',';
      if not query1.fieldbyname('cnph').isnull then
      str1:=str1+'cnph='''+query1.fieldbyname('cnph').value+''','
      else str1:=str1+'cnph='''',';
      if not query1.fieldbyname('dt01').isnull then
      str1:=str1+'dt01='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt01').value)+''','
      else str1:=str1+'dt01=null,';
      if not query1.fieldbyname('dt02').isnull then
      str1:=str1+'dt02='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt02').value)+''','
      else str1:=str1+'dt02=null,';
      if not query1.fieldbyname('pt2dt').isnull then
      str1:=str1+'pt2dt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('pt2dt').value)+''' '
      else str1:=str1+'pt2dt=null ';
      str1:=str1+'where seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and seq1='+query1.fieldbyname('seq1').asstring+' ';
      str1:=str1+'and dseq='+query1.fieldbyname('dseq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmibooking.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

end.
 