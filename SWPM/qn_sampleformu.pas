 unit qn_sampleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, DB, DBClient, DBCtrls, StdCtrls,
  Buttons, ADODB;

type
  Tfrmqn_sample = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure queryt1change(Sender: TField);
    procedure queryschange(Sender: TField);
    procedure queryaqchange(Sender: TField);
    procedure queryt2change(Sender: TField);
    procedure queryt3change(Sender: TField);
    procedure querys0change(Sender: TField);
    procedure queryaq0change(Sender: TField);
    procedure queryt00change(Sender: TField);
    procedure queryt20change(Sender: TField);
    procedure queryt30change(Sender: TField);
    procedure queryt31change(Sender: TField);
    procedure queryt32change(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqn_sample: Tfrmqn_sample;

implementation

uses mainformu, lwoformu, sample_pdnformu, rwosampleqtyformu,
  qn_sample_reasonformu;

{$R *.dfm}

procedure Tfrmqn_sample.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmqn_sample:=nil;
end;

procedure Tfrmqn_sample.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmqn_sample.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      params.createparam(ftinteger,'x20',ptinput);
      params.createparam(ftinteger,'x21',ptinput);
      params.createparam(ftinteger,'x22',ptinput);
      params.createparam(ftstring,'x23',ptinput);
      params.createparam(ftstring,'x24',ptinput);
      params.createparam(ftstring,'x25',ptinput);
      params.createparam(ftstring,'x26',ptinput);
      params.createparam(ftstring,'x27',ptinput);
      params.createparam(ftstring,'x28',ptinput);
      params.createparam(ftinteger,'x29',ptinput);
      params.createparam(ftinteger,'x30',ptinput);
      params.createparam(ftinteger,'x31',ptinput);
      params.createparam(ftinteger,'x32',ptinput);
      params.createparam(ftinteger,'x33',ptinput);
      params.createparam(ftinteger,'x34',ptinput);
      params.createparam(ftinteger,'x35',ptinput);
      params.createparam(ftinteger,'x36',ptinput);
      params.createparam(ftinteger,'x37',ptinput);
      params.createparam(ftinteger,'x38',ptinput);
      params.createparam(ftinteger,'x39',ptinput);
      params.createparam(ftinteger,'x40',ptinput);
      params.createparam(ftinteger,'x41',ptinput);
      params.createparam(ftinteger,'x42',ptinput);
      params.createparam(ftinteger,'x43',ptinput);
      params.createparam(ftinteger,'x44',ptinput);
      params.createparam(ftinteger,'x45',ptinput);
      params.createparam(ftinteger,'x46',ptinput);
      params.createparam(ftinteger,'x47',ptinput);
      params.createparam(ftinteger,'x48',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      params.createparam(ftstring,'x15',ptinput);
      params.createparam(ftstring,'x16',ptinput);
      params.createparam(ftstring,'x17',ptinput);
      params.createparam(ftstring,'x18',ptinput);
      params.createparam(ftinteger,'x19',ptinput);
      commandtext:='update tbl_lwo_sample set s_sp=:x1,s_wr=:x2,s_ls=:x3,aq_sp=:x4,aq_wr=:x5,aq_ls=:x6,'
                  +'t2_sp=:x7,t2_wr=:x8,t2_ls=:x9,t3_sp=:x10,t3_wr=:x11,t3_ls=:x12,t1_sp=:x20,t1_wr=:x21,t1_ls=:x22,'
                  +'t1user=:x23,suser=:x24,aquser=:x25,t2user=:x26,t3user=:x27,s2w=:x28,s_sp1=:x29,s_sp2=:x30,'
                  +'s_sp3=:x31,s_sp4=:x32,s_sp5=:x33,aq_sp1=:x34,aq_sp2=:x35,aq_sp3=:x36,aq_sp4=:x37,aq_sp5=:x38,'
                  +'t2_sp1=:x39,t2_sp2=:x40,t2_sp3=:x41,t2_sp4=:x42,t2_sp5=:x43,t3_sp1=:x44,t3_sp2=:x45,'
                  +'t3_sp3=:x46,t3_sp4=:x47,t3_sp5=:x48 where pline=:x13 and seq=:x14 '
                  +'and j_no=:x15 and j2_job=:x16 and rwo=:x17 and acol=:x18 and did=:x19';

      if not query1.fieldbyname('s_sp').isnull then
      params[0].asinteger:=query1.fieldbyname('s_sp').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('s_wr').isnull then
      params[1].asinteger:=query1.fieldbyname('s_wr').value
      else params[1].asinteger:=0;
      if not query1.fieldbyname('s_ls').isnull then
      params[2].asinteger:=query1.fieldbyname('s_ls').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('aq_sp').isnull then
      params[3].asinteger:=query1.fieldbyname('aq_sp').value
      else params[3].asinteger:=0;
      if not query1.fieldbyname('aq_wr').isnull then
      params[4].asinteger:=query1.fieldbyname('aq_wr').value
      else params[4].asinteger:=0;
      if not query1.fieldbyname('aq_ls').isnull then
      params[5].asinteger:=query1.fieldbyname('aq_ls').value
      else params[5].asinteger:=0;
      if not query1.fieldbyname('t2_sp').isnull then
      params[6].asinteger:=query1.fieldbyname('t2_sp').value
      else params[6].asinteger:=0;
      if not query1.fieldbyname('t2_wr').isnull then
      params[7].asinteger:=query1.fieldbyname('t2_wr').value
      else params[7].asinteger:=0;
      if not query1.fieldbyname('t2_ls').isnull then
      params[8].asinteger:=query1.fieldbyname('t2_ls').value
      else params[8].asinteger:=0;
      if not query1.fieldbyname('t3_sp').isnull then
      params[9].asinteger:=query1.fieldbyname('t3_sp').value
      else params[9].asinteger:=0;
      if not query1.fieldbyname('t3_wr').isnull then
      params[10].asinteger:=query1.fieldbyname('t3_wr').value
      else params[10].asinteger:=0;
      if not query1.fieldbyname('t3_ls').isnull then
      params[11].asinteger:=query1.fieldbyname('t3_ls').value
      else params[11].asinteger:=0;
      if not query1.fieldbyname('t1_sp').isnull then
      params[12].asinteger:=query1.fieldbyname('t1_sp').value
      else params[12].asinteger:=0;
      if not query1.fieldbyname('t1_wr').isnull then
      params[13].asinteger:=query1.fieldbyname('t1_wr').value
      else params[13].asinteger:=0;
      if not query1.fieldbyname('t1_ls').isnull then
      params[14].asinteger:=query1.fieldbyname('t1_ls').value
      else params[14].asinteger:=0;
      if not query1.fieldbyname('t1user').isnull then
      params[15].asstring:=query1.fieldbyname('t1user').value
      else params[15].asstring:='';
      if not query1.fieldbyname('suser').isnull then
      params[16].asstring:=query1.fieldbyname('suser').value
      else params[16].asstring:='';
      if not query1.fieldbyname('aquser').isnull then
      params[17].asstring:=query1.fieldbyname('aquser').value
      else params[17].asstring:='';
      if not query1.fieldbyname('t2user').isnull then
      params[18].asstring:=query1.fieldbyname('t2user').value
      else params[18].asstring:='';
      if not query1.fieldbyname('t3user').isnull then
      params[19].asstring:=query1.fieldbyname('t3user').value
      else params[19].asstring:='';
      if not query1.fieldbyname('s2w').isnull then
      params[20].asstring:=query1.fieldbyname('s2w').value
      else params[20].asstring:='';
      if not query1.fieldbyname('s_sp1').isnull then
      params[21].asinteger:=query1.fieldbyname('s_sp1').value
      else params[21].asinteger:=0;
      if not query1.fieldbyname('s_sp2').isnull then
      params[22].asinteger:=query1.fieldbyname('s_sp2').value
      else params[22].asinteger:=0;
      if not query1.fieldbyname('s_sp3').isnull then
      params[23].asinteger:=query1.fieldbyname('s_sp3').value
      else params[23].asinteger:=0;
      if not query1.fieldbyname('s_sp4').isnull then
      params[24].asinteger:=query1.fieldbyname('s_sp4').value
      else params[24].asinteger:=0;
      if not query1.fieldbyname('s_sp5').isnull then
      params[25].asinteger:=query1.fieldbyname('s_sp5').value
      else params[25].asinteger:=0;
      if not query1.fieldbyname('aq_sp1').isnull then
      params[26].asinteger:=query1.fieldbyname('aq_sp1').value
      else params[26].asinteger:=0;
      if not query1.fieldbyname('aq_sp2').isnull then
      params[27].asinteger:=query1.fieldbyname('aq_sp2').value
      else params[27].asinteger:=0;
      if not query1.fieldbyname('aq_sp3').isnull then
      params[28].asinteger:=query1.fieldbyname('aq_sp3').value
      else params[28].asinteger:=0;
      if not query1.fieldbyname('aq_sp4').isnull then
      params[29].asinteger:=query1.fieldbyname('aq_sp4').value
      else params[29].asinteger:=0;
      if not query1.fieldbyname('aq_sp5').isnull then
      params[30].asinteger:=query1.fieldbyname('aq_sp5').value
      else params[30].asinteger:=0;
      if not query1.fieldbyname('t2_sp1').isnull then
      params[31].asinteger:=query1.fieldbyname('t2_sp1').value
      else params[31].asinteger:=0;
      if not query1.fieldbyname('t2_sp2').isnull then
      params[32].asinteger:=query1.fieldbyname('t2_sp2').value
      else params[32].asinteger:=0;
      if not query1.fieldbyname('t2_sp3').isnull then
      params[33].asinteger:=query1.fieldbyname('t2_sp3').value
      else params[33].asinteger:=0;
      if not query1.fieldbyname('t2_sp4').isnull then
      params[34].asinteger:=query1.fieldbyname('t2_sp4').value
      else params[34].asinteger:=0;
      if not query1.fieldbyname('t2_sp5').isnull then
      params[35].asinteger:=query1.fieldbyname('t2_sp5').value
      else params[35].asinteger:=0;
      if not query1.fieldbyname('t3_sp1').isnull then
      params[36].asinteger:=query1.fieldbyname('t3_sp1').value
      else params[36].asinteger:=0;
      if not query1.fieldbyname('t3_sp2').isnull then
      params[37].asinteger:=query1.fieldbyname('t3_sp2').value
      else params[37].asinteger:=0;
      if not query1.fieldbyname('t3_sp3').isnull then
      params[38].asinteger:=query1.fieldbyname('t3_sp3').value
      else params[38].asinteger:=0;
      if not query1.fieldbyname('t3_sp4').isnull then
      params[39].asinteger:=query1.fieldbyname('t3_sp4').value
      else params[39].asinteger:=0;
      if not query1.fieldbyname('t3_sp5').isnull then
      params[40].asinteger:=query1.fieldbyname('t3_sp5').value
      else params[40].asinteger:=0;
      params[41].asstring:=query1.fieldbyname('pline').value;
      params[42].asinteger:=query1.fieldbyname('seq').value;
      params[43].asstring:=query1.fieldbyname('j_no').value;
      params[44].asstring:=query1.fieldbyname('j2_job').value;
      params[45].asstring:=query1.fieldbyname('rwo').value;
      params[46].asstring:=query1.fieldbyname('acol').value;
      params[47].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_lwo_sample set ';
      if not query1.fieldbyname('s_sp').isnull then
      str1:=str1+'s_sp='+query1.fieldbyname('s_sp').asstring+','
      else str1:=str1+'s_sp=0,';
      if not query1.fieldbyname('s_wr').isnull then
      str1:=str1+'s_wr='+query1.fieldbyname('s_wr').asstring+','
      else str1:=str1+'s_wr=0,';
      if not query1.fieldbyname('s_ls').isnull then
      str1:=str1+'s_ls='+query1.fieldbyname('s_ls').asstring+','
      else str1:=str1+'s_ls=0,';
      if not query1.fieldbyname('aq_sp').isnull then
      str1:=str1+'aq_sp='+query1.fieldbyname('aq_sp').asstring+','
      else str1:=str1+'aq_sp=0,';
      if not query1.fieldbyname('aq_wr').isnull then
      str1:=str1+'aq_wr='+query1.fieldbyname('aq_wr').asstring+','
      else str1:=str1+'aq_wr=0,';
      if not query1.fieldbyname('aq_ls').isnull then
      str1:=str1+'aq_ls='+query1.fieldbyname('aq_ls').asstring+','
      else str1:=str1+'aq_ls=0,';
      if not query1.fieldbyname('t2_sp').isnull then
      str1:=str1+'t2_sp='+query1.fieldbyname('t2_sp').asstring+','
      else str1:=str1+'t2_sp=0,';
      if not query1.fieldbyname('t2_wr').isnull then
      str1:=str1+'t2_wr='+query1.fieldbyname('t2_wr').asstring+','
      else str1:=str1+'t2_wr=0,';
      if not query1.fieldbyname('t2_ls').isnull then
      str1:=str1+'t2_ls='+query1.fieldbyname('t2_ls').asstring+','
      else str1:=str1+'t2_ls=0,';
      if not query1.fieldbyname('t3_sp').isnull then
      str1:=str1+'t3_sp='+query1.fieldbyname('t3_sp').asstring+','
      else str1:=str1+'t3_sp=0,';
      if not query1.fieldbyname('t3_wr').isnull then
      str1:=str1+'t3_wr='+query1.fieldbyname('t3_wr').asstring+','
      else str1:=str1+'t3_wr=0,';
      if not query1.fieldbyname('t3_ls').isnull then
      str1:=str1+'t3_ls='+query1.fieldbyname('t3_ls').asstring+','
      else str1:=str1+'t3_ls=0,';
      if not query1.fieldbyname('t1_sp').isnull then
      str1:=str1+'t1_sp='+query1.fieldbyname('t1_sp').asstring+','
      else str1:=str1+'t1_sp=0,';
      if not query1.fieldbyname('t1_wr').isnull then
      str1:=str1+'t1_wr='+query1.fieldbyname('t1_wr').asstring+','
      else str1:=str1+'t1_wr=0,';
      if not query1.fieldbyname('t1_ls').isnull then
      str1:=str1+'t1_ls='+query1.fieldbyname('t1_ls').asstring+','
      else str1:=str1+'t1_ls=0,';
      if not query1.fieldbyname('t1user').isnull then
      str1:=str1+'t1user='''+query1.fieldbyname('t1user').value+''','
      else str1:=str1+'t1user='''',';
      if not query1.fieldbyname('suser').isnull then
      str1:=str1+'suser='''+query1.fieldbyname('suser').value+''','
      else str1:=str1+'suser='''',';
      if not query1.fieldbyname('aquser').isnull then
      str1:=str1+'aquser='''+query1.fieldbyname('aquser').value+''','
      else str1:=str1+'aquser='''',';
      if not query1.fieldbyname('t2user').isnull then
      str1:=str1+'t2user='''+query1.fieldbyname('t2user').value+''','
      else str1:=str1+'t2user='''',';
      if not query1.fieldbyname('t3user').isnull then
      str1:=str1+'t3user='''+query1.fieldbyname('t3user').value+''','
      else str1:=str1+'t3user='''',';
      if not query1.fieldbyname('s2w').isnull then
      str1:=str1+'s2w='''+query1.fieldbyname('s2w').value+''','
      else str1:=str1+'s2w='''',';
      if not query1.fieldbyname('s_sp1').isnull then
      str1:=str1+'s_sp1='+query1.fieldbyname('s_sp1').asstring+','
      else str1:=str1+'s_sp1=0,';
      if not query1.fieldbyname('s_sp2').isnull then
      str1:=str1+'s_sp2='+query1.fieldbyname('s_sp2').asstring+','
      else str1:=str1+'s_sp2=0,';
      if not query1.fieldbyname('s_sp3').isnull then
      str1:=str1+'s_sp3='+query1.fieldbyname('s_sp3').asstring+','
      else str1:=str1+'s_sp3=0,';
      if not query1.fieldbyname('s_sp4').isnull then
      str1:=str1+'s_sp4='+query1.fieldbyname('s_sp4').asstring+','
      else str1:=str1+'s_sp4=0,';
      if not query1.fieldbyname('s_sp5').isnull then
      str1:=str1+'s_sp5='+query1.fieldbyname('s_sp5').asstring+','
      else str1:=str1+'s_sp5=0,';
      if not query1.fieldbyname('aq_sp1').isnull then
      str1:=str1+'aq_sp1='+query1.fieldbyname('aq_sp1').asstring+','
      else str1:=str1+'aq_sp1=0,';
      if not query1.fieldbyname('aq_sp2').isnull then
      str1:=str1+'aq_sp2='+query1.fieldbyname('aq_sp2').asstring+','
      else str1:=str1+'aq_sp2=0,';
      if not query1.fieldbyname('aq_sp3').isnull then
      str1:=str1+'aq_sp3='+query1.fieldbyname('aq_sp3').asstring+','
      else str1:=str1+'aq_sp3=0,';
      if not query1.fieldbyname('aq_sp4').isnull then
      str1:=str1+'aq_sp4='+query1.fieldbyname('aq_sp4').asstring+','
      else str1:=str1+'aq_sp4=0,';
      if not query1.fieldbyname('aq_sp5').isnull then
      str1:=str1+'aq_sp5='+query1.fieldbyname('aq_sp5').asstring+','
      else str1:=str1+'aq_sp5=0,';
      if not query1.fieldbyname('t2_sp1').isnull then
      str1:=str1+'t2_sp1='+query1.fieldbyname('t2_sp1').asstring+','
      else str1:=str1+'t2_sp1=0,';
      if not query1.fieldbyname('t2_sp2').isnull then
      str1:=str1+'t2_sp2='+query1.fieldbyname('t2_sp2').asstring+','
      else str1:=str1+'t2_sp2=0,';
      if not query1.fieldbyname('t2_sp3').isnull then
      str1:=str1+'t2_sp3='+query1.fieldbyname('t2_sp3').asstring+','
      else str1:=str1+'t2_sp3=0,';
      if not query1.fieldbyname('t2_sp4').isnull then
      str1:=str1+'t2_sp4='+query1.fieldbyname('t2_sp4').asstring+','
      else str1:=str1+'t2_sp4=0,';
      if not query1.fieldbyname('t2_sp5').isnull then
      str1:=str1+'t2_sp5='+query1.fieldbyname('t2_sp5').asstring+','
      else str1:=str1+'t2_sp5=0,';
      if not query1.fieldbyname('t1_sp1').isnull then
      str1:=str1+'t1_sp1='+query1.fieldbyname('t1_sp1').asstring+','
      else str1:=str1+'t1_sp1=0,';
      if not query1.fieldbyname('t1_sp2').isnull then
      str1:=str1+'t1_sp2='+query1.fieldbyname('t1_sp2').asstring+','
      else str1:=str1+'t1_sp2=0,';
      if not query1.fieldbyname('t1_sp3').isnull then
      str1:=str1+'t1_sp3='+query1.fieldbyname('t1_sp3').asstring+','
      else str1:=str1+'t1_sp3=0,';
      if not query1.fieldbyname('t3_sp1').isnull then
      str1:=str1+'t3_sp1='+query1.fieldbyname('t3_sp1').asstring+','
      else str1:=str1+'t3_sp1=0,';
      if not query1.fieldbyname('t3_sp2').isnull then
      str1:=str1+'t3_sp2='+query1.fieldbyname('t3_sp2').asstring+','
      else str1:=str1+'t3_sp2=0,';
      if not query1.fieldbyname('t3_sp3').isnull then
      str1:=str1+'t3_sp3='+query1.fieldbyname('t3_sp3').asstring+','
      else str1:=str1+'t3_sp3=0,';
      if not query1.fieldbyname('t3_sp4').isnull then
      str1:=str1+'t3_sp4='+query1.fieldbyname('t3_sp4').asstring+','
      else str1:=str1+'t3_sp4=0,';
      if not query1.fieldbyname('t3_sp5').isnull then
      str1:=str1+'t3_sp5='+query1.fieldbyname('t3_sp5').asstring+','
      else str1:=str1+'t3_sp5=0,';
      if not query1.fieldbyname('tst_sp').isnull then
      str1:=str1+'tst_sp='+query1.fieldbyname('tst_sp').asstring+','
      else str1:=str1+'tst_sp=0,';
      if not query1.fieldbyname('tst_sp1').isnull then
      str1:=str1+'tst_sp1='+query1.fieldbyname('tst_sp1').asstring+','
      else str1:=str1+'tst_sp1=0,';
      if not query1.fieldbyname('tst_sp2').isnull then
      str1:=str1+'tst_sp2='+query1.fieldbyname('tst_sp2').asstring+','
      else str1:=str1+'tst_sp2=0,';
      if not query1.fieldbyname('tst_sp3').isnull then
      str1:=str1+'tst_sp3='+query1.fieldbyname('tst_sp3').asstring+','
      else str1:=str1+'tst_sp3=0,';
      if not query1.fieldbyname('tst_sp4').isnull then
      str1:=str1+'tst_sp4='+query1.fieldbyname('tst_sp4').asstring+','
      else str1:=str1+'tst_sp4=0,';
      if not query1.fieldbyname('tst_sp5').isnull then
      str1:=str1+'tst_sp5='+query1.fieldbyname('tst_sp5').asstring+','
      else str1:=str1+'tst_sp5=0,';
      if not query1.fieldbyname('s_wrreason').isnull then
      str1:=str1+'s_wrreason='''+query1.fieldbyname('s_wrreason').value+''','
      else str1:=str1+'s_wrreason='''',';
      if not query1.fieldbyname('s_lsreason').isnull then
      str1:=str1+'s_lsreason='''+query1.fieldbyname('s_lsreason').value+''','
      else str1:=str1+'s_lsreason='''',';
      if not query1.fieldbyname('aq_wrreason').isnull then
      str1:=str1+'aq_wrreason='''+query1.fieldbyname('aq_wrreason').value+''','
      else str1:=str1+'aq_wrreason='''',';
      if not query1.fieldbyname('aq_lsreason').isnull then
      str1:=str1+'aq_lsreason='''+query1.fieldbyname('aq_lsreason').value+''','
      else str1:=str1+'aq_lsreason='''',';
      if not query1.fieldbyname('t2_wrreason').isnull then
      str1:=str1+'t2_wrreason='''+query1.fieldbyname('t2_wrreason').value+''','
      else str1:=str1+'t2_wrreason='''',';
      if not query1.fieldbyname('t2_lsreason').isnull then
      str1:=str1+'t2_lsreason='''+query1.fieldbyname('t2_lsreason').value+''','
      else str1:=str1+'t2_lsreason='''',';
      if not query1.fieldbyname('t3_wrreason').isnull then
      str1:=str1+'t3_wrreason='''+query1.fieldbyname('t3_wrreason').value+''','
      else str1:=str1+'t3_wrreason='''',';
      if not query1.fieldbyname('t3_lsreason').isnull then
      str1:=str1+'t3_lsreason='''+query1.fieldbyname('t3_lsreason').value+''','
      else str1:=str1+'t3_lsreason='''',';
      if not query1.fieldbyname('ppsp').isnull then
      str1:=str1+'ppsp='+query1.fieldbyname('ppsp').asstring+' '
      else str1:=str1+'ppsp=0 ';
      str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and j_no='''+query1.fieldbyname('j_no').value+''' ';
      str1:=str1+'and j2_job='''+query1.fieldbyname('j2_job').value+''' ';
      str1:=str1+'and rwo='''+query1.fieldbyname('rwo').value+''' ';
      str1:=str1+'and acol='''+query1.fieldbyname('acol').value+''' ';
      str1:=str1+'and did='+query1.fieldbyname('did').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmqn_sample.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('t1_sp').onchange:=queryt1change;
  query1.fieldbyname('t1_wr').onchange:=queryt1change;
  query1.fieldbyname('t1_ls').onchange:=queryt1change;
  query1.fieldbyname('s_sp').onchange:=queryschange;
  query1.fieldbyname('s_wr').onchange:=queryschange;
  query1.fieldbyname('s_ls').onchange:=queryschange;
  query1.fieldbyname('tst_sp').onchange:=queryschange;
  query1.fieldbyname('aq_sp').onchange:=queryaqchange;
  query1.fieldbyname('aq_wr').onchange:=queryaqchange;
  query1.fieldbyname('aq_ls').onchange:=queryaqchange;
  query1.fieldbyname('t2_sp').onchange:=queryt2change;
  query1.fieldbyname('t2_wr').onchange:=queryt2change;
  query1.fieldbyname('t2_ls').onchange:=queryt2change;
  query1.fieldbyname('t3_sp').onchange:=queryt3change;
  query1.fieldbyname('t3_wr').onchange:=queryt3change;
  query1.fieldbyname('t3_ls').onchange:=queryt3change;
  query1.fieldbyname('s_sp1').onchange:=querys0change;
  query1.fieldbyname('s_sp2').onchange:=querys0change;
  query1.fieldbyname('s_sp3').onchange:=querys0change;
  query1.fieldbyname('s_sp4').onchange:=querys0change;
  query1.fieldbyname('s_sp5').onchange:=querys0change;
  query1.fieldbyname('aq_sp1').onchange:=queryaq0change;
  query1.fieldbyname('aq_sp2').onchange:=queryaq0change;
  query1.fieldbyname('aq_sp3').onchange:=queryaq0change;
  query1.fieldbyname('aq_sp4').onchange:=queryaq0change;
  query1.fieldbyname('aq_sp5').onchange:=queryaq0change;
  query1.fieldbyname('t1_sp1').onchange:=queryt00change;
  query1.fieldbyname('t1_sp2').onchange:=queryt00change;
  query1.fieldbyname('t1_sp3').onchange:=queryt00change;
  query1.fieldbyname('t2_sp1').onchange:=queryt20change;
  query1.fieldbyname('t2_sp2').onchange:=queryt20change;
  query1.fieldbyname('t2_sp3').onchange:=queryt20change;
  query1.fieldbyname('t2_sp4').onchange:=queryt20change;
  query1.fieldbyname('t2_sp5').onchange:=queryt20change;
  query1.fieldbyname('t3_sp1').onchange:=queryt30change;
  query1.fieldbyname('t3_sp2').onchange:=queryt30change;
  query1.fieldbyname('t3_sp3').onchange:=queryt30change;
  query1.fieldbyname('t3_sp4').onchange:=queryt30change;
  query1.fieldbyname('t3_sp5').onchange:=queryt30change;
  query1.fieldbyname('tst_sp1').onchange:=queryt31change;
  query1.fieldbyname('tst_sp2').onchange:=queryt31change;
  query1.fieldbyname('tst_sp3').onchange:=queryt31change;
  query1.fieldbyname('tst_sp4').onchange:=queryt31change;
  query1.fieldbyname('tst_sp5').onchange:=queryt31change;
  query1.fieldbyname('atst_sp1').onchange:=queryt32change;
  query1.fieldbyname('atst_sp2').onchange:=queryt32change;
  query1.fieldbyname('atst_sp3').onchange:=queryt32change;
  query1.fieldbyname('atst_sp4').onchange:=queryt32change;
  query1.fieldbyname('atst_sp5').onchange:=queryt32change;
end;

procedure Tfrmqn_sample.queryaqchange(Sender: TField);
var
  s1,s2,s3:integer;
begin
  if not query1.fieldbyname('aq_sp').isnull then
  s1:=query1.fieldbyname('aq_sp').value else s1:=0;
  if not query1.fieldbyname('aq_wr').isnull then
  s2:=query1.fieldbyname('aq_wr').value else s2:=0;
  if not query1.fieldbyname('aq_ls').isnull then
  s3:=query1.fieldbyname('aq_ls').value else s3:=0;
  if ((s1>0) or (s2>0) or (s3>0)) then begin
    if not query1.fieldbyname('aquser').isnull then begin
      if query1.fieldbyname('aquser').value='' then
      query1.fieldbyname('aquser').value:=frmmain.ComboBox1.text;
    end else query1.fieldbyname('aquser').value:=frmmain.ComboBox1.text;
  end else query1.fieldbyname('aquser').value:='';
end;

procedure Tfrmqn_sample.queryschange(Sender: TField);
var
  s1,s2,s3,s4:integer;
  vs1,vs2:string;
begin
  if not query1.fieldbyname('s_sp').isnull then
  s1:=query1.fieldbyname('s_sp').value else s1:=0;
  if not query1.fieldbyname('s_wr').isnull then
  s2:=query1.fieldbyname('s_wr').value else s2:=0;
  if not query1.fieldbyname('s_ls').isnull then
  s3:=query1.fieldbyname('s_ls').value else s3:=0;
  if not query1.fieldbyname('tst_sp').isnull then
  s4:=query1.fieldbyname('tst_sp').value else s4:=0;
  if ((s1>0) or (s2>0) or (s3>0) or (s4>0)) then begin
    if not query1.fieldbyname('suser').isnull then begin
      if query1.fieldbyname('suser').value='' then
      query1.fieldbyname('suser').value:=frmmain.ComboBox1.text
      else begin
        vs1:=query1.fieldbyname('suser').value;
        vs2:=frmmain.ComboBox1.text;
        if pos(vs2,vs1)=0 then query1.fieldbyname('suser').value:=copy(trim(query1.fieldbyname('suser').value)+','+vs2,1,30);
      end;
    end else query1.fieldbyname('suser').value:=frmmain.ComboBox1.text;
  end else query1.fieldbyname('suser').value:='';
end;

procedure Tfrmqn_sample.queryt00change(Sender: TField);
var
  v1,v2,v3:integer;
begin
  if not query1.fieldbyname('t1_sp1').isnull then v1:=query1.fieldbyname('t1_sp1').value else v1:=0;
  if not query1.fieldbyname('t1_sp2').isnull then v2:=query1.fieldbyname('t1_sp2').value else v2:=0;
  if not query1.fieldbyname('t1_sp3').isnull then v3:=query1.fieldbyname('t1_sp3').value else v3:=0;
  if v1+v2+v3<>query1.fieldbyname('t1_sp').value then
  query1.fieldbyname('t1_sp').value:=v1+v2+v3;
end;

procedure Tfrmqn_sample.queryt1change(Sender: TField);
var
  s1,s2,s3:integer;
begin
  if not query1.fieldbyname('t1_sp').isnull then
  s1:=query1.fieldbyname('t1_sp').value else s1:=0;
  if not query1.fieldbyname('t1_wr').isnull then
  s2:=query1.fieldbyname('t1_wr').value else s2:=0;
  if not query1.fieldbyname('t1_ls').isnull then
  s3:=query1.fieldbyname('t1_ls').value else s3:=0;
  if ((s1>0) or (s2>0) or (s3>0)) then begin
    if not query1.fieldbyname('t1user').isnull then begin
      if query1.fieldbyname('t1user').value='' then
      query1.fieldbyname('t1user').value:=frmmain.ComboBox1.text
      else query1.fieldbyname('t1user').value:=trim(query1.fieldbyname('t1user').value)+','+frmmain.combobox1.text;
    end else query1.fieldbyname('t1user').value:=frmmain.ComboBox1.text;
  end;
end;

procedure Tfrmqn_sample.queryt2change(Sender: TField);
var
  s1,s2,s3:integer;
begin
  if not query1.fieldbyname('t2_sp').isnull then
  s1:=query1.fieldbyname('t2_sp').value else s1:=0;
  if not query1.fieldbyname('t2_wr').isnull then
  s2:=query1.fieldbyname('t2_wr').value else s2:=0;
  if not query1.fieldbyname('t2_ls').isnull then
  s3:=query1.fieldbyname('t2_ls').value else s3:=0;
  if ((s1>0) or (s2>0) or (s3>0)) then begin
    if not query1.fieldbyname('t2user').isnull then begin
      if query1.fieldbyname('t2user').value='' then
      query1.fieldbyname('t2user').value:=frmmain.ComboBox1.text
      else query1.fieldbyname('t2user').value:=trim(query1.fieldbyname('t2user').value)+','+frmmain.combobox1.text;
    end else query1.fieldbyname('t2user').value:=frmmain.ComboBox1.text;
  end;
end;

procedure Tfrmqn_sample.queryt3change(Sender: TField);
var
  s1,s2,s3:integer;
begin
  if not query1.fieldbyname('t3_sp').isnull then
  s1:=query1.fieldbyname('t3_sp').value else s1:=0;
  if not query1.fieldbyname('t3_wr').isnull then
  s2:=query1.fieldbyname('t3_wr').value else s2:=0;
  if not query1.fieldbyname('t3_ls').isnull then
  s3:=query1.fieldbyname('t3_ls').value else s3:=0;
  if ((s1>0) or (s2>0) or (s3>0)) then begin
    if not query1.fieldbyname('t3user').isnull then begin
      if query1.fieldbyname('t3user').value='' then
      query1.fieldbyname('t3user').value:=frmmain.ComboBox1.text
      else query1.fieldbyname('t3user').value:=trim(query1.fieldbyname('t3user').value)+','+frmmain.combobox1.text;
    end else query1.fieldbyname('t3user').value:=frmmain.ComboBox1.text;
  end;
end;

procedure Tfrmqn_sample.FormShow(Sender: TObject);
var
  r1,r2,r3,r4,r5:boolean;
begin
  r1:=false; r2:=false; r3:=false; r4:=false; r5:=false;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('rs1').isnull then r1:=fieldbyname('rs1').value;
    if not fieldbyname('rs2').isnull then r2:=fieldbyname('rs2').value;
    if not fieldbyname('rs3').IsNull then r3:=fieldbyname('rs3').value;
    if not fieldbyname('rs4').isnull then r4:=fieldbyname('rs4').value;
    if not fieldbyname('rs5').isnull then r5:=fieldbyname('rs5').value;
  end;
  if r1 then begin
    dbgrideh1.Columns[3].ReadOnly:=false;
    dbgrideh1.Columns[4].ReadOnly:=false;
    dbgrideh1.Columns[5].ReadOnly:=false;
  end else begin
    dbgrideh1.Columns[3].ReadOnly:=true;
    dbgrideh1.Columns[4].ReadOnly:=true;
    dbgrideh1.Columns[5].ReadOnly:=true;
  end;
  if r2 then begin
    dbgrideh1.Columns[9].ReadOnly:=false;
    dbgrideh1.Columns[10].ReadOnly:=false;
    dbgrideh1.Columns[11].ReadOnly:=false;
  end else begin
    dbgrideh1.Columns[9].ReadOnly:=true;
    dbgrideh1.Columns[10].ReadOnly:=true;
    dbgrideh1.Columns[11].ReadOnly:=true;
  end;
  if r3 then begin
    dbgrideh1.Columns[7].ReadOnly:=false;
    dbgrideh1.Columns[8].ReadOnly:=false;
    dbgrideh1.Columns[13].ReadOnly:=false;
    dbgrideh1.Columns[14].ReadOnly:=false;
    dbgrideh1.Columns[15].ReadOnly:=false;
    dbgrideh1.Columns[16].ReadOnly:=false;
    dbgrideh1.Columns[18].ReadOnly:=false;
    dbgrideh1.Columns[22].ReadOnly:=false;
  end else begin
    dbgrideh1.Columns[7].ReadOnly:=true;
    dbgrideh1.Columns[8].ReadOnly:=true;
    dbgrideh1.Columns[13].ReadOnly:=true;
    dbgrideh1.Columns[14].ReadOnly:=true;
    dbgrideh1.Columns[15].ReadOnly:=true;
    dbgrideh1.Columns[16].ReadOnly:=true;
    dbgrideh1.Columns[18].ReadOnly:=true;
    dbgrideh1.Columns[22].ReadOnly:=true;
  end;
  if r4 then begin
    dbgrideh1.Columns[19].ReadOnly:=false;
    dbgrideh1.Columns[20].ReadOnly:=false;
  end else begin
    dbgrideh1.Columns[19].ReadOnly:=true;
    dbgrideh1.Columns[20].ReadOnly:=true;
  end;
  if r5 then begin
    dbgrideh1.Columns[23].ReadOnly:=false;
    dbgrideh1.Columns[24].ReadOnly:=false;
  end else begin
    dbgrideh1.Columns[23].ReadOnly:=true;
    dbgrideh1.Columns[24].ReadOnly:=true;
  end;
end;

procedure Tfrmqn_sample.BitBtn2Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  try
  tm:=now;
  if frmrwosampleqty=nil then frmrwosampleqty:=tfrmrwosampleqty.create(nil);
  with adoquery1 do begin
    close;
    sql.text:='select distinct projectno,workorderno,customerstyleno,colorcode,rwo,rtrim(custsize)+rtrim(custcup) as sizecup,sampleqty '
             +'from [ph.rwo1]..view_woc_rwo where workorderno=:x1 and colorcode=:x2 and rwo=:x3 and sampleqty>0';
    parameters[0].value:=query1.fieldbyname('j2_job').value;
    parameters[1].value:=query1.fieldbyname('acol').value;
    parameters[2].value:=query1.fieldbyname('rwo').value;
    open;
    first;
    while not eof do begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftinteger,'x8',ptinput);
        commandtext:='insert into tbl_rwo_sample(tm,j_no,j2_job,cstyle,acol,rwo,psiz,sample) '
                    +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
        params[0].asdatetime:=tm;
        params[1].asstring:=adoquery1.fieldbyname('projectno').value;
        params[2].asstring:=adoquery1.fieldbyname('workorderno').value;
        params[3].asstring:=adoquery1.fieldbyname('customerstyleno').value;
        params[4].asstring:=adoquery1.fieldbyname('colorcode').value;
        params[5].asstring:=adoquery1.fieldbyname('rwo').value;
        params[6].asstring:=adoquery1.fieldbyname('sizecup').value;
        params[7].asinteger:=adoquery1.fieldbyname('sampleqty').value;
        execute;
      end;
      application.processmessages;
      next;
    end;
  end;
  frmrwosampleqty.edit1.text:=query1.fieldbyname('j_no').value;
  frmrwosampleqty.edit2.text:=query1.fieldbyname('j2_job').value;
  frmrwosampleqty.edit3.text:=query1.fieldbyname('acol').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='execute procedure sp_rwo_updsample(:x1)';
    params[0].asdatetime:=tm;
    execute;
  end;
  with frmrwosampleqty.query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_rwo_sample where tm=:x1 order by j_no,j2_job,acol,psiz';
    params[0].asdatetime:=tm;
    open;
  end;
  frmrwosampleqty.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmqn_sample.DBGridEh1Columns14EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  r3:boolean;
begin
  r3:=false;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('rs3').IsNull then r3:=fieldbyname('rs3').value;
  end;
  if r3 then begin
    if frmsample_pdn=nil then frmsample_pdn:=tfrmsample_pdn.create(nil);
    frmsample_pdn.Label8.Caption:='The first time';
    frmsample_pdn.DBGridEh1.Columns[3].FieldName:='atst_sp';
    frmsample_pdn.DBGridEh1.Columns[4].FieldName:='atst_sp1';
    frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='AQL - Washing Sample Qty|Total';
    frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='AQL - Washing Sample Qty|Sample Qty';
    frmsample_pdn.Label11.Caption:='ATST';
    frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'atst_pdn1',query1.fieldbyname('seq').value);
    frmsample_pdn.Show;
  end;
end;

procedure Tfrmqn_sample.DBGridEh1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  r1,r3:boolean;
begin
  r3:=false;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('rs1').isnull then r1:=fieldbyname('rs1').value;
    if not fieldbyname('rs3').IsNull then r3:=fieldbyname('rs3').value;
  end;
  if r3 then begin
    if frmsample_pdn=nil then frmsample_pdn:=tfrmsample_pdn.create(nil);
    frmsample_pdn.Label8.Caption:='The first time';
    if dbgrideh1.SelectedIndex=7 then begin
      frmsample_pdn.DBGridEh1.Columns[3].FieldName:='s_sp';
      frmsample_pdn.DBGridEh1.Columns[4].FieldName:='s_sp1';
      frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='Sewn - Sample Qty|Total';
      frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='Sewn - Sample Qty|Sample Qty';
      frmsample_pdn.Label11.Caption:='S';
      if not query1.fieldbyname('s_dt1').isnull then frmsample_pdn.dateedit1.date:=query1.fieldbyname('s_dt1').value
      else frmsample_pdn.dateedit1.date:=date;
      frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'s_pdn1',query1.fieldbyname('seq').value);
    end else if dbgrideh1.SelectedIndex=13 then begin
      frmsample_pdn.DBGridEh1.Columns[3].FieldName:='aq_sp';
      frmsample_pdn.DBGridEh1.Columns[4].FieldName:='aq_sp1';
      frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='AQL - Sample Qty|Total';
      frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='AQL - Sample Qty|Sample Qty';
      frmsample_pdn.Label11.Caption:='AQ';
      if not query1.fieldbyname('aq_dt1').isnull then frmsample_pdn.dateedit1.date:=query1.fieldbyname('aq_dt1').value
      else frmsample_pdn.dateedit1.date:=date;
      frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'aq_pdn1',query1.fieldbyname('seq').value);
    end else if dbgrideh1.SelectedIndex=18 then begin
      frmsample_pdn.DBGridEh1.Columns[3].FieldName:='t2_sp';
      frmsample_pdn.DBGridEh1.Columns[4].FieldName:='t2_sp1';
      frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='i/cPack - Sample Qty|Total';
      frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='i/cPack - Sample Qty|Sample Qty';
      frmsample_pdn.Label11.Caption:='T2';
      if not query1.fieldbyname('t2_dt1').isnull then frmsample_pdn.dateedit1.date:=query1.fieldbyname('t2_dt1').value
      else frmsample_pdn.dateedit1.date:=date;
      frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'t2_pdn1',query1.fieldbyname('seq').value);
    end else if dbgrideh1.SelectedIndex=22 then begin
      frmsample_pdn.DBGridEh1.Columns[3].FieldName:='t3_sp';
      frmsample_pdn.DBGridEh1.Columns[4].FieldName:='t3_sp1';
      frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='T3 - Sample Qty|Total';
      frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='T3 - Sample Qty|Sample Qty';
      frmsample_pdn.Label11.Caption:='T3';
      frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'t3_pdn1',query1.fieldbyname('seq').value);
    end;
    frmsample_pdn.Show;
  end;
  if r1 then begin
    if frmsample_pdn=nil then frmsample_pdn:=tfrmsample_pdn.create(nil);
    frmsample_pdn.Label8.Caption:='The first time';
    if dbgrideh1.SelectedIndex=3 then begin
      frmsample_pdn.DBGridEh1.Columns[3].FieldName:='t1_sp';
      frmsample_pdn.DBGridEh1.Columns[4].FieldName:='t1_sp1';
      frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='Cutting more Sample|Total';
      frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='Cutting more Sample|Qty';
      frmsample_pdn.Label11.Caption:='T1';
      frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'t1_pdn1',query1.fieldbyname('seq').value);
    end;
    frmsample_pdn.Show;
  end;
end;

procedure Tfrmqn_sample.DBGridEh1Columns8EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmsample_pdn=nil then frmsample_pdn:=tfrmsample_pdn.create(nil);
  frmsample_pdn.Label8.Caption:='The first time';
    frmsample_pdn.DBGridEh1.Columns[3].FieldName:='tst_sp';
    frmsample_pdn.DBGridEh1.Columns[4].FieldName:='tst_sp1';
    frmsample_pdn.DBGridEh1.Columns[3].Title.caption:='Sewn - Washing Sample Qty|Total';
    frmsample_pdn.DBGridEh1.Columns[4].Title.caption:='Sewn - Washing Sample Qty|Sample Qty';
    frmsample_pdn.Label11.Caption:='TST';
    if not query1.fieldbyname('tst_dt1').isnull then frmsample_pdn.dateedit1.date:=query1.fieldbyname('tst_dt1').value
    else frmsample_pdn.dateedit1.date:=date;
    frmsample_pdn.ComboBox1.Text:=frmsample_pdn.rtnpdn(query1.fieldbyname('pline').value,'tst_pdn1',query1.fieldbyname('seq').value);
  frmsample_pdn.Show;

end;

procedure Tfrmqn_sample.DBGridEh1Columns9EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //8,9 / 13,14 / 17,18 / 21,22
  if frmqn_sample_reason=nil then frmqn_sample_reason:=tfrmqn_sample_reason.create(nil);
  if dbgrideh1.selectedindex=9 then begin
    frmqn_sample_reason.caption:='Notepad for Defect at Sewn';
    frmqn_sample_reason.dbmemo1.datafield:='s_wrreason';
  end else if dbgrideh1.selectedindex=10 then begin
    frmqn_sample_reason.caption:='Notepad for Lost at Sewn';
    frmqn_sample_reason.dbmemo1.datafield:='s_lsreason';
  end else if dbgrideh1.selectedindex=14 then begin
    frmqn_sample_reason.caption:='Notepad for Defect at AQL';
    frmqn_sample_reason.dbmemo1.datafield:='aq_wrreason';
  end else if dbgrideh1.selectedindex=15 then begin
    frmqn_sample_reason.caption:='Notepad for Lost at AQL';
    frmqn_sample_reason.dbmemo1.datafield:='aq_lsreason';
  end else if dbgrideh1.selectedindex=18 then begin
    frmqn_sample_reason.caption:='Notepad for Defect at i/cPack';
    frmqn_sample_reason.dbmemo1.datafield:='t2_wrreason';
  end else if dbgrideh1.selectedindex=19 then begin
    frmqn_sample_reason.caption:='Notepad for Lost at i/cPack';
    frmqn_sample_reason.dbmemo1.datafield:='t2_lsreason';
  end else if dbgrideh1.selectedindex=22 then begin
    frmqn_sample_reason.caption:='Notepad for Defect at T3';
    frmqn_sample_reason.dbmemo1.datafield:='t3_wrreason';
  end else if dbgrideh1.selectedindex=23 then begin
    frmqn_sample_reason.caption:='Notepad for Lost at T3';
    frmqn_sample_reason.dbmemo1.datafield:='t3_lsreason';
  end;
  frmqn_sample_reason.show;
end;

procedure Tfrmqn_sample.querys0change(Sender: TField);
var
  v1,v2,v3,v4,v5:integer;
begin
  if not query1.fieldbyname('s_sp1').isnull then v1:=query1.fieldbyname('s_sp1').value else v1:=0;
  if not query1.fieldbyname('s_sp2').isnull then v2:=query1.fieldbyname('s_sp2').value else v2:=0;
  if not query1.fieldbyname('s_sp3').isnull then v3:=query1.fieldbyname('s_sp3').value else v3:=0;
  if not query1.fieldbyname('s_sp4').isnull then v4:=query1.fieldbyname('s_sp4').value else v4:=0;
  if not query1.fieldbyname('s_sp5').isnull then v5:=query1.fieldbyname('s_sp5').value else v5:=0;
  if v1+v2+v3+v4+v5<>query1.fieldbyname('s_sp').value then
  query1.fieldbyname('s_sp').value:=v1+v2+v3+v4+v5;
end;

procedure Tfrmqn_sample.queryaq0change(Sender: TField);
var
  v1,v2,v3,v4,v5:integer;
begin
  if not query1.fieldbyname('aq_sp1').isnull then v1:=query1.fieldbyname('aq_sp1').value else v1:=0;
  if not query1.fieldbyname('aq_sp2').isnull then v2:=query1.fieldbyname('aq_sp2').value else v2:=0;
  if not query1.fieldbyname('aq_sp3').isnull then v3:=query1.fieldbyname('aq_sp3').value else v3:=0;
  if not query1.fieldbyname('aq_sp4').isnull then v4:=query1.fieldbyname('aq_sp4').value else v4:=0;
  if not query1.fieldbyname('aq_sp5').isnull then v5:=query1.fieldbyname('aq_sp5').value else v5:=0;
  if v1+v2+v3+v4+v5<>query1.fieldbyname('aq_sp').value then
  query1.fieldbyname('aq_sp').value:=v1+v2+v3+v4+v5;
end;

procedure Tfrmqn_sample.queryt20change(Sender: TField);
var
  v1,v2,v3,v4,v5:integer;
begin
  if not query1.fieldbyname('t2_sp1').isnull then v1:=query1.fieldbyname('t2_sp1').value else v1:=0;
  if not query1.fieldbyname('t2_sp2').isnull then v2:=query1.fieldbyname('t2_sp2').value else v2:=0;
  if not query1.fieldbyname('t2_sp3').isnull then v3:=query1.fieldbyname('t2_sp3').value else v3:=0;
  if not query1.fieldbyname('t2_sp4').isnull then v4:=query1.fieldbyname('t2_sp4').value else v4:=0;
  if not query1.fieldbyname('t2_sp5').isnull then v5:=query1.fieldbyname('t2_sp5').value else v5:=0;
  if v1+v2+v3+v4+v5<>query1.fieldbyname('t2_sp').value then
  query1.fieldbyname('t2_sp').value:=v1+v2+v3+v4+v5;
end;

procedure Tfrmqn_sample.queryt30change(Sender: TField);
var
  v1,v2,v3,v4,v5:integer;
begin
  if not query1.fieldbyname('t3_sp1').isnull then v1:=query1.fieldbyname('t3_sp1').value else v1:=0;
  if not query1.fieldbyname('t3_sp2').isnull then v2:=query1.fieldbyname('t3_sp2').value else v2:=0;
  if not query1.fieldbyname('t3_sp3').isnull then v3:=query1.fieldbyname('t3_sp3').value else v3:=0;
  if not query1.fieldbyname('t3_sp4').isnull then v4:=query1.fieldbyname('t3_sp4').value else v4:=0;
  if not query1.fieldbyname('t3_sp5').isnull then v5:=query1.fieldbyname('t3_sp5').value else v5:=0;
  if v1+v2+v3+v4+v5<>query1.fieldbyname('t3_sp').value then
  query1.fieldbyname('t3_sp').value:=v1+v2+v3+v4+v5;
end;

procedure Tfrmqn_sample.queryt31change(Sender: TField);
var
  v1,v2,v3,v4,v5:integer;
begin
  if not query1.fieldbyname('tst_sp1').isnull then v1:=query1.fieldbyname('tst_sp1').value else v1:=0;
  if not query1.fieldbyname('tst_sp2').isnull then v2:=query1.fieldbyname('tst_sp2').value else v2:=0;
  if not query1.fieldbyname('tst_sp3').isnull then v3:=query1.fieldbyname('tst_sp3').value else v3:=0;
  if not query1.fieldbyname('tst_sp4').isnull then v4:=query1.fieldbyname('tst_sp4').value else v4:=0;
  if not query1.fieldbyname('tst_sp5').isnull then v5:=query1.fieldbyname('tst_sp5').value else v5:=0;
  if v1+v2+v3+v4+v5<>query1.fieldbyname('tst_sp').value then
  query1.fieldbyname('tst_sp').value:=v1+v2+v3+v4+v5;
end;

procedure Tfrmqn_sample.queryt32change(Sender: TField);
var
  v1,v2,v3,v4,v5:integer;
begin
  if not query1.fieldbyname('atst_sp1').isnull then v1:=query1.fieldbyname('atst_sp1').value else v1:=0;
  if not query1.fieldbyname('atst_sp2').isnull then v2:=query1.fieldbyname('atst_sp2').value else v2:=0;
  if not query1.fieldbyname('atst_sp3').isnull then v3:=query1.fieldbyname('atst_sp3').value else v3:=0;
  if not query1.fieldbyname('atst_sp4').isnull then v4:=query1.fieldbyname('atst_sp4').value else v4:=0;
  if not query1.fieldbyname('atst_sp5').isnull then v5:=query1.fieldbyname('atst_sp5').value else v5:=0;
  if v1+v2+v3+v4+v5<>query1.fieldbyname('atst_sp').value then
  query1.fieldbyname('atst_sp').value:=v1+v2+v3+v4+v5;
end;

end.
