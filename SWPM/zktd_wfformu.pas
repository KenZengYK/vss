unit zktd_wfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, siComp, StdCtrls, Buttons, DB, DBClient, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh, Mask;

type
  Tfrmzktd_wf = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    Label5: TLabel;
    DBText9: TDBText;
    Label9: TLabel;
    DBText10: TDBText;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    siLang1: TsiLang;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGridEh1: TDBGridEh;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBText11: TDBText;
    Label12: TLabel;
    DBText12: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QueryQtyChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure QuerySectpChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzktd_wf: Tfrmzktd_wf;

implementation

uses mainformu, worksheet, achievingformu, zktdformu;

{$R *.dfm}

procedure Tfrmzktd_wf.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmzktd_wf.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
end;

procedure Tfrmzktd_wf.BitBtn2Click(Sender: TObject);
var
  sjrs:double;
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='delete from line_shjs_wf where pline=:x1 and seq=:x2 and dseq=:x3 and seq1=:x4';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('dseq').value;
      params[3].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select sum(sjrs) as q from line_shjs_wf where pline=:x1 and seq=:x2 and dseq=:x3';
      params[0].asstring:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
      params[1].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
      params[2].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('dseq').value;
      open;
      if not fieldbyname('q').isnull then sjrs:=fieldbyname('q').value else sjrs:=0;
    end;
    with dbtext1.DataSource.DataSet do begin
      edit;
      fieldbyname('sjrs').value:=sjrs;
      post;
    end;
    }
  end;
end;

procedure Tfrmzktd_wf.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmzktd_wf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmzktd_wf:=nil;
end;

procedure Tfrmzktd_wf.Query1AfterPost(DataSet: TDataSet);
var
  sjrs:double;
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select seq1 from line_shjs_wf where pline=:x1 and seq=:x2 and dseq=:x3 and seq1=:x4';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('dseq').value;
      params[3].asinteger:=query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('seq1').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftdate,'x11',ptinput);
          params.CreateParam(fttime,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.CreateParam(fttime,'x14',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          commandtext:='update line_shjs_wf set wftype=:x1,wffunc=:x2,qty=:x3,sect=:x4,sjrs=:x5,sectp=:x10,stpindt=:x11,stpintm=:x12,stpoutdt=:x13,stpouttm=:x14 '
                      +'where pline=:x6 and seq=:x7 and dseq=:x8 and seq1=:x9';
          if not query1.fieldbyname('wftype').isnull then
          params[0].asstring:=query1.fieldbyname('wftype').value
          else params[0].asstring:='';
          if not query1.fieldbyname('wffunc').isnull then
          params[1].asstring:=query1.fieldbyname('wffunc').value
          else params[1].asstring:='';
          if not query1.fieldbyname('qty').isnull then
          params[2].asfloat:=query1.fieldbyname('qty').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('sect').isnull then
          params[3].asfloat:=query1.fieldbyname('sect').value
          else params[3].asfloat:=0;
          params[4].asfloat:=query1.fieldbyname('sjrs').value;
          if not query1.fieldbyname('sectp').isnull then
          params[5].asfloat:=query1.fieldbyname('sectp').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('stpindt').isnull then
          params[6].asdate:=query1.fieldbyname('stpindt').value;
          if not query1.fieldbyname('stpintm').IsNull then
          params[7].astime:=query1.fieldbyname('stpintm').value;
          if not query1.fieldbyname('stpoutdt').isnull then
          params[8].asdate:=query1.fieldbyname('stpoutdt').value;
          if not query1.fieldbyname('stpouttm').IsNull then
          params[9].astime:=query1.fieldbyname('stpouttm').value;
          params[10].asstring:=query1.fieldbyname('pline').value;
          params[11].asinteger:=query1.fieldbyname('seq').value;
          params[12].asinteger:=query1.fieldbyname('dseq').value;
          params[13].asinteger:=query1.fieldbyname('seq1').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.CreateParam(fttime,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
          params.CreateParam(fttime,'x15',ptinput);
          commandtext:='insert into line_shjs_wf(wftype,wffunc,qty,sect,sjrs,pline,seq,dseq,seq1,dt1,sectp,stpindt,stpintm,stpoutdt,stpouttm) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15)';
          if not query1.fieldbyname('wftype').isnull then
          params[0].asstring:=query1.fieldbyname('wftype').value
          else params[0].asstring:='';
          if not query1.fieldbyname('wffunc').isnull then
          params[1].asstring:=query1.fieldbyname('wffunc').value
          else params[1].asstring:='';
          if not query1.fieldbyname('qty').isnull then
          params[2].asfloat:=query1.fieldbyname('qty').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('sect').isnull then
          params[3].asfloat:=query1.fieldbyname('sect').value
          else params[3].asfloat:=0;
          params[4].asfloat:=query1.fieldbyname('sjrs').value;
          params[5].asstring:=query1.fieldbyname('pline').value;
          params[6].asinteger:=query1.fieldbyname('seq').value;
          params[7].asinteger:=query1.fieldbyname('dseq').value;
          params[8].asinteger:=query1.fieldbyname('seq1').value;
          params[9].asdate:=query1.fieldbyname('dt1').value;
          if not query1.fieldbyname('sectp').isnull then
          params[10].asfloat:=query1.fieldbyname('sectp').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('stpindt').isnull then
          params[11].asdate:=query1.fieldbyname('stpindt').value;
          if not query1.fieldbyname('stpintm').IsNull then
          params[12].astime:=query1.fieldbyname('stpintm').value;
          if not query1.fieldbyname('stpoutdt').isnull then
          params[13].asdate:=query1.fieldbyname('stpoutdt').value;
          if not query1.fieldbyname('stpouttm').IsNull then
          params[14].astime:=query1.fieldbyname('stpouttm').value;
          execute;
        end;
      end;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(sjrs) as q from line_shjs_wf where pline=:x1 and seq=:x2 and dseq=:x3';
    params[0].asstring:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
    params[1].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
    params[2].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('dseq').value;
    open;
    if not fieldbyname('q').isnull then sjrs:=fieldbyname('q').value else sjrs:=0;
  end;
  with dbtext1.DataSource.DataSet do begin
    edit;
    fieldbyname('sjrs').value:=sjrs;
    post;
  end;
  }
end;

procedure Tfrmzktd_wf.Query1NewRecord(DataSet: TDataSet);
var
  seq1:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq1) as q from line_shjs_wf';
    open;
    if not fieldbyname('q').isnull then seq1:=fieldbyname('q').value+1
    else seq1:=1;
  end;
  query1.fieldbyname('pline').value:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
  query1.fieldbyname('seq').value:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
  query1.fieldbyname('dseq').value:=dbtext1.DataSource.DataSet.fieldbyname('dseq').value;
  query1.fieldbyname('dt1').value:=dbtext1.DataSource.DataSet.fieldbyname('dt1').value;
  query1.fieldbyname('seq1').value:=seq1;
  query1.fieldbyname('qty').value:=0;
  query1.fieldbyname('sectp').value:=100;
  //query1.fieldbyname('sect').value:=dbtext1.DataSource.DataSet.fieldbyname('csect').value;
end;

procedure Tfrmzktd_wf.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('qty') as tfloatfield).displayformat:='#,0;;';
  (query1.fieldbyname('sect') as tfloatfield).displayformat:='#.00;;';
  (query1.fieldbyname('sjrs') as tfloatfield).displayformat:='#.00;;';
  (query1.fieldbyname('sectp') as tfloatfield).displayformat:='#.00;;';
  query1.fieldbyname('sectp').onchange:=querysectpchange;
  query1.fieldbyname('qty').onchange:=queryqtychange;
  query1.fieldbyname('sect').onchange:=queryqtychange;
end;

procedure Tfrmzktd_wf.QueryQtyChange(Sender: TField);
var
  rs,sect:double;
begin
  if not query1.fieldbyname('qty').isnull then rs:=query1.fieldbyname('qty').value
  else rs:=0;
  if not query1.fieldbyname('sect').isnull then sect:=query1.fieldbyname('sect').value
  else sect:=0;
  if dbtext1.DataSource.DataSet.FieldByName('csect').value>0 then
  query1.fieldbyname('sjrs').value:=rs*sect/dbtext1.DataSource.DataSet.FieldByName('csect').value
  else query1.fieldbyname('sjrs').value:=0;
end;

procedure Tfrmzktd_wf.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from line_shjs_wf where pline=:x1 and seq=:x2 and dseq=:x3';
    params[0].asstring:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
    params[1].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
    params[2].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('dseq').value;
    open;
  end;
end;

procedure Tfrmzktd_wf.QuerySectpChange(Sender: TField);
begin
  if not query1.fieldbyname('sectp').isnull then
    query1.fieldbyname('sect').value:=dbtext1.DataSource.DataSet.fieldbyname('csect').value*query1.fieldbyname('sectp').value/100.00
  else query1.fieldbyname('sect').value:=0;
end;

end.
 