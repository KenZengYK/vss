unit learnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, Buttons,
  ppCtrls, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppVar, ppViewr, myChkBox, GridsEh,
  ppParameter;

type
  Tfrmlearn = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel7: TppLabel;
    ppLabel15: TppLabel;
    fact01: TppLabel;
    ppLabel16: TppLabel;
    shop01: TppLabel;
    ppLabel17: TppLabel;
    line01: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel5: TppLabel;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel14: TppLabel;
    ppLabel28: TppLabel;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel40: TppLabel;
    ppDBText26: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel9: TppLabel;
    ppDBText27: TppDBText;
    DataSource2: TDataSource;
    Query5: TClientDataSet;
    Query1SEQ: TIntegerField;
    Query1PLINE: TWideStringField;
    Query1CUST: TWideStringField;
    Query1PTYP: TWideStringField;
    Query1LR1: TIntegerField;
    Query1LR2: TIntegerField;
    Query1LR3: TIntegerField;
    Query1LR4: TIntegerField;
    Query1LR5: TIntegerField;
    Query1LR6: TIntegerField;
    Query1LE1: TFloatField;
    Query1LE2: TFloatField;
    Query1LE3: TFloatField;
    Query1LE4: TFloatField;
    Query1LE5: TFloatField;
    Query1LE6: TFloatField;
    Query1LAE: TFloatField;
    Query1LEFF: TFloatField;
    Query1YSJHL: TFloatField;
    Query1LEFFT: TFloatField;
    Query1PCUST: TBooleanField;
    Query1PPTYP: TBooleanField;
    Query1LR7: TIntegerField;
    Query1LR8: TIntegerField;
    Query1LE7: TFloatField;
    Query1LE8: TFloatField;
    Query1ADPT: TFloatField;
    Query1LR9: TIntegerField;
    Query1LR10: TIntegerField;
    Query1LE9: TFloatField;
    Query1LE10: TFloatField;
    ppLabel12: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine13: TppLine;
    ppLabel8: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText30: TppDBText;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    tr001: TppLabel;
    title002: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1LR1Change(Sender: TField);
    procedure Query1CUSTSetText(Sender: TField; const Text: String);
    procedure Query1PTYPSetText(Sender: TField; const Text: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1CUSTChange(Sender: TField);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlearn: Tfrmlearn;

implementation

uses mainformu, lineinfou;

{$R *.dfm}

procedure Tfrmlearn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlearn:=nil;
end;

procedure Tfrmlearn.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_linelearn where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftboolean,'x21',ptinput);
          params.createparam(ftboolean,'x22',ptinput);
          params.createparam(ftfloat,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftfloat,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(ftfloat,'x27',ptinput);
          params.createparam(ftinteger,'x28',ptinput);
          params.createparam(ftinteger,'x29',ptinput);
          params.createparam(ftfloat,'x30',ptinput);
          params.createparam(ftfloat,'x31',ptinput);
          params.createparam(ftinteger,'x17',ptinput);
          commandtext:='update tbl_linelearn set pline=:x1,cust=:x2,ptyp=:x3,'
                      +'lr1=:x4,lr2=:x5,lr3=:x6,lr4=:x7,lr5=:x8,lr6=:x9,'
                      +'le1=:x10,le2=:x11,le3=:x12,le4=:x13,le5=:x14,le6=:x15,lae=:x16,'
                      +'leff=:x18,ysjhl=:x19,lefft=:x20,pcust=:x21,pptyp=:x22,adpt=:x23,'
                      +'lr7=:x24,lr8=:x25,le7=:x26,le8=:x27,lr9=:x28,lr10=:x29,le9=:x30,le10=:x31 where seq=:x17';

          params[0].asstring:=query1.fieldbyname('pline').value;
          if not query1.fieldbyname('cust').isnull then
          params[1].asstring:=query1.fieldbyname('cust').value
          else params[1].asstring:='';
          if not query1.fieldbyname('ptyp').isnull then
          params[2].asstring:=query1.fieldbyname('ptyp').value
          else params[2].asstring:='';
          if not query1.fieldbyname('lr1').isnull then
          params[3].asinteger:=query1.fieldbyname('lr1').value
          else params[3].asinteger:=0;
          if not query1.fieldbyname('lr2').isnull then
          params[4].asinteger:=query1.fieldbyname('lr2').value
          else params[4].asinteger:=0;
          if not query1.fieldbyname('lr3').isnull then
          params[5].asinteger:=query1.fieldbyname('lr3').value
          else params[5].asinteger:=0;
          if not query1.fieldbyname('lr4').isnull then
          params[6].asinteger:=query1.fieldbyname('lr4').value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('lr5').isnull then
          params[7].asinteger:=query1.fieldbyname('lr5').value
          else params[7].asinteger:=0;
          if not query1.fieldbyname('lr6').isnull then
          params[8].asinteger:=query1.fieldbyname('lr6').value
          else params[8].asinteger:=0;
          if not query1.fieldbyname('le1').isnull then
          params[9].asfloat:=query1.fieldbyname('le1').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('le2').isnull then
          params[10].asfloat:=query1.fieldbyname('le2').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('le3').isnull then
          params[11].asfloat:=query1.fieldbyname('le3').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('le4').isnull then
          params[12].asfloat:=query1.fieldbyname('le4').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('le5').isnull then
          params[13].asfloat:=query1.fieldbyname('le5').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('le6').isnull then
          params[14].asfloat:=query1.fieldbyname('le6').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('lae').isnull then
          params[15].asfloat:=query1.fieldbyname('lae').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('leff').isnull then
          params[16].asfloat:=query1.fieldbyname('leff').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('ysjhl').isnull then
          params[17].asfloat:=query1.fieldbyname('ysjhl').value
          else params[17].asfloat:=0;
          if not query1.fieldbyname('lefft').isnull then
          params[18].asfloat:=query1.fieldbyname('lefft').value
          else params[18].asfloat:=0;
          if not query1.fieldbyname('pcust').isnull then
          params[19].asboolean:=query1.fieldbyname('pcust').value
          else params[19].asboolean:=false;
          if not query1.fieldbyname('pptyp').isnull then
          params[20].asboolean:=query1.fieldbyname('pptyp').value
          else params[20].asboolean:=false;
          if not query1.fieldbyname('adpt').isnull then
          params[21].asfloat:=query1.fieldbyname('adpt').value
          else params[21].asfloat:=100;
          if not query1.fieldbyname('lr7').isnull then
          params[22].asfloat:=query1.fieldbyname('lr7').value
          else params[22].asfloat:=0;
          if not query1.fieldbyname('lr8').isnull then
          params[23].asfloat:=query1.fieldbyname('lr8').value
          else params[23].asfloat:=0;
          if not query1.fieldbyname('le7').isnull then
          params[24].asfloat:=query1.fieldbyname('le7').value
          else params[24].asfloat:=0;
          if not query1.fieldbyname('le8').isnull then
          params[25].asfloat:=query1.fieldbyname('le8').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('lr9').isnull then
          params[26].asfloat:=query1.fieldbyname('lr9').value
          else params[26].asfloat:=0;
          if not query1.fieldbyname('lr10').isnull then
          params[27].asfloat:=query1.fieldbyname('lr10').value
          else params[27].asfloat:=0;
          if not query1.fieldbyname('le9').isnull then
          params[28].asfloat:=query1.fieldbyname('le9').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('le10').isnull then
          params[29].asfloat:=query1.fieldbyname('le10').value
          else params[29].asfloat:=0;
          params[30].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_linelearn set ';
          str1:=str1+'pline='''+query1.fieldbyname('pline').value+''',';
          if not query1.fieldbyname('cust').isnull then
          str1:=str1+'cust='''+query1.fieldbyname('cust').value+''','
          else str1:=str1+'cust='''',';
          if not query1.fieldbyname('ptyp').isnull then
          str1:=str1+'ptyp='''+query1.fieldbyname('ptyp').value+''','
          else str1:=str1+'ptyp='''',';
          if not query1.fieldbyname('lr1').isnull then
          str1:=str1+'lr1='+query1.fieldbyname('lr1').asstring+','
          else str1:=str1+'lr1=0,';
          if not query1.fieldbyname('lr2').isnull then
          str1:=str1+'lr2='+query1.fieldbyname('lr2').asstring+','
          else str1:=str1+'lr2=0,';
          if not query1.fieldbyname('lr3').isnull then
          str1:=str1+'lr3='+query1.fieldbyname('lr3').asstring+','
          else str1:=str1+'lr3=0,';
          if not query1.fieldbyname('lr4').isnull then
          str1:=str1+'lr4='+query1.fieldbyname('lr4').asstring+','
          else str1:=str1+'lr4=0,';
          if not query1.fieldbyname('lr5').isnull then
          str1:=str1+'lr5='+query1.fieldbyname('lr5').asstring+','
          else str1:=str1+'lr5=0,';
          if not query1.fieldbyname('lr6').isnull then
          str1:=str1+'lr6='+query1.fieldbyname('lr6').asstring+','
          else str1:=str1+'lr6=0,';
          if not query1.fieldbyname('le1').isnull then
          str1:=str1+'le1='+query1.fieldbyname('le1').asstring+','
          else str1:=str1+'le1=0,';
          if not query1.fieldbyname('le2').isnull then
          str1:=str1+'le2='+query1.fieldbyname('le2').asstring+','
          else str1:=str1+'le2=0,';
          if not query1.fieldbyname('le3').isnull then
          str1:=str1+'le3='+query1.fieldbyname('le3').asstring+','
          else str1:=str1+'le3=0,';
          if not query1.fieldbyname('le4').isnull then
          str1:=str1+'le4='+query1.fieldbyname('le4').asstring+','
          else str1:=str1+'le4=0,';
          if not query1.fieldbyname('le5').isnull then
          str1:=str1+'le5='+query1.fieldbyname('le5').asstring+','
          else str1:=str1+'le5=0,';
          if not query1.fieldbyname('le6').isnull then
          str1:=str1+'le6='+query1.fieldbyname('le6').asstring+','
          else str1:=str1+'le6=0,';
          if not query1.fieldbyname('lae').isnull then
          str1:=str1+'lae='+query1.fieldbyname('lae').asstring+','
          else str1:=str1+'lae=0,';
          if not query1.fieldbyname('leff').isnull then
          str1:=str1+'leff='+query1.fieldbyname('leff').asstring+','
          else str1:=str1+'leff=0,';
          if not query1.fieldbyname('ysjhl').isnull then
          str1:=str1+'ysjhl='+query1.fieldbyname('ysjhl').asstring+','
          else str1:=str1+'ysjhl=0,';
          if not query1.fieldbyname('lefft').isnull then
          str1:=str1+'lefft='+query1.fieldbyname('lefft').asstring+','
          else str1:=str1+'lefft=0,';
          if not query1.fieldbyname('pcust').isnull then begin
            if query1.fieldbyname('pcust').value=true then str1:=str1+'pcust=1,'
            else str1:=str1+'pcust=0,';
          end else str1:=str1+'pcust=0,';
          if not query1.fieldbyname('pptyp').isnull then begin
            if query1.fieldbyname('pptyp').value=true then str1:=str1+'pptyp=1,'
            else str1:=str1+'pptyp=0,';
          end else str1:=str1+'pptyp=0,';
          if not query1.fieldbyname('adpt').isnull then
          str1:=str1+'adpt='+query1.fieldbyname('adpt').asstring+','
          else str1:=str1+'adpt=100,';
          if not query1.fieldbyname('lr7').isnull then
          str1:=str1+'lr7='+query1.fieldbyname('lr7').asstring+','
          else str1:=str1+'lr7=0,';
          if not query1.fieldbyname('lr8').isnull then
          str1:=str1+'lr8='+query1.fieldbyname('lr8').asstring+','
          else str1:=str1+'lr8=0,';
          if not query1.fieldbyname('le7').isnull then
          str1:=str1+'le7='+query1.fieldbyname('le7').asstring+','
          else str1:=str1+'le7=0,';
          if not query1.fieldbyname('le8').isnull then
          str1:=str1+'le8='+query1.fieldbyname('le8').asstring+','
          else str1:=str1+'le8=0,';
          if not query1.fieldbyname('lr9').isnull then
          str1:=str1+'lr9='+query1.fieldbyname('lr9').asstring+','
          else str1:=str1+'lr9=0,';
          if not query1.fieldbyname('lr10').isnull then
          str1:=str1+'lr10='+query1.fieldbyname('lr10').asstring+','
          else str1:=str1+'lr10=0,';
          if not query1.fieldbyname('le9').isnull then
          str1:=str1+'le9='+query1.fieldbyname('le9').asstring+','
          else str1:=str1+'le9=0,';
          if not query1.fieldbyname('le10').isnull then
          str1:=str1+'le10='+query1.fieldbyname('le10').asstring+' '
          else str1:=str1+'le10=0 ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftinteger,'x17',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftboolean,'x21',ptinput);
          params.createparam(ftboolean,'x22',ptinput);
          params.createparam(ftfloat,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftfloat,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(ftfloat,'x27',ptinput);
          params.createparam(ftinteger,'x28',ptinput);
          params.createparam(ftinteger,'x29',ptinput);
          params.createparam(ftfloat,'x30',ptinput);
          params.createparam(ftfloat,'x31',ptinput);
          commandtext:='insert into tbl_linelearn(pline,cust,ptyp,lr1,lr2,lr3,lr4,lr5,lr6,le1,le2,le3,le4,le5,le6,'
                      +'lae,seq,leff,ysjhl,lefft,pcust,pptyp,adpt,lr7,lr8,le7,le8,lr9,lr10,le9,le10) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,'
                      +':x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31)';
          params[0].asstring:=query1.fieldbyname('pline').value;
          if not query1.fieldbyname('cust').isnull then
          params[1].asstring:=query1.fieldbyname('cust').value
          else params[1].asstring:='';
          if not query1.fieldbyname('ptyp').isnull then
          params[2].asstring:=query1.fieldbyname('ptyp').value
          else params[2].asstring:='';
          if not query1.fieldbyname('lr1').isnull then
          params[3].asinteger:=query1.fieldbyname('lr1').value
          else params[3].asinteger:=0;
          if not query1.fieldbyname('lr2').isnull then
          params[4].asinteger:=query1.fieldbyname('lr2').value
          else params[4].asinteger:=0;
          if not query1.fieldbyname('lr3').isnull then
          params[5].asinteger:=query1.fieldbyname('lr3').value
          else params[5].asinteger:=0;
          if not query1.fieldbyname('lr4').isnull then
          params[6].asinteger:=query1.fieldbyname('lr4').value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('lr5').isnull then
          params[7].asinteger:=query1.fieldbyname('lr5').value
          else params[7].asinteger:=0;
          if not query1.fieldbyname('lr6').isnull then
          params[8].asinteger:=query1.fieldbyname('lr6').value
          else params[8].asinteger:=0;
          if not query1.fieldbyname('le1').isnull then
          params[9].asfloat:=query1.fieldbyname('le1').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('le2').isnull then
          params[10].asfloat:=query1.fieldbyname('le2').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('le3').isnull then
          params[11].asfloat:=query1.fieldbyname('le3').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('le4').isnull then
          params[12].asfloat:=query1.fieldbyname('le4').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('le5').isnull then
          params[13].asfloat:=query1.fieldbyname('le5').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('le6').isnull then
          params[14].asfloat:=query1.fieldbyname('le6').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('lae').isnull then
          params[15].asfloat:=query1.fieldbyname('lae').value
          else params[15].asfloat:=0;
          params[16].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('leff').isnull then
          params[17].asfloat:=query1.fieldbyname('leff').value
          else params[17].asfloat:=0;
          if not query1.fieldbyname('ysjhl').isnull then
          params[18].asfloat:=query1.fieldbyname('ysjhl').value
          else params[18].asfloat:=0;
          if not query1.fieldbyname('lefft').isnull then
          params[19].asfloat:=query1.fieldbyname('lefft').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('pcust').isnull then
          params[20].asboolean:=query1.fieldbyname('pcust').value
          else params[20].asboolean:=false;
          if not query1.fieldbyname('pptyp').isnull then
          params[21].asboolean:=query1.fieldbyname('pptyp').value
          else params[21].asboolean:=false;
          if not query1.fieldbyname('adpt').isnull then
          params[22].asfloat:=query1.fieldbyname('adpt').value
          else params[22].asfloat:=100;
          if not query1.fieldbyname('lr7').isnull then
          params[23].asfloat:=query1.fieldbyname('lr7').value
          else params[23].asfloat:=0;
          if not query1.fieldbyname('lr8').isnull then
          params[24].asfloat:=query1.fieldbyname('lr8').value
          else params[24].asfloat:=0;
          if not query1.fieldbyname('le7').isnull then
          params[25].asfloat:=query1.fieldbyname('le7').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('le8').isnull then
          params[26].asfloat:=query1.fieldbyname('le8').value
          else params[26].asfloat:=0;
          if not query1.fieldbyname('lr9').isnull then
          params[27].asfloat:=query1.fieldbyname('lr9').value
          else params[27].asfloat:=0;
          if not query1.fieldbyname('lr10').isnull then
          params[28].asfloat:=query1.fieldbyname('lr10').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('le9').isnull then
          params[29].asfloat:=query1.fieldbyname('le9').value
          else params[29].asfloat:=0;
          if not query1.fieldbyname('le10').isnull then
          params[30].asfloat:=query1.fieldbyname('le10').value
          else params[30].asfloat:=0;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmlearn.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_linelearn';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  if edit1.text>'' then
  query1.fieldbyname('pline').value:=edit1.text
  else query1.fieldbyname('pline').value:=frmlineinfo.tblline.fieldbyname('pline').value;
  query1.fieldbyname('adpt').value:=frmlineinfo.tblline.fieldbyname('adpt').value;
  query1.fieldbyname('ysjhl').value:=frmlineinfo.tblline.fieldbyname('ysjhl').value;
  query1.fieldbyname('lefft').value:=frmlineinfo.tblline.fieldbyname('lefft').value;
  query1.fieldbyname('leff').value:=frmlineinfo.tblline.fieldbyname('teff').value;
  {
  query1.fieldbyname('ptyp').value:='B';
  query1.fieldbyname('lr1').value:=frmlineinfo.tblline.fieldbyname('learn1').value;
  query1.fieldbyname('lr2').value:=frmlineinfo.tblline.fieldbyname('learn2').value;
  query1.FieldByName('lr3').value:=frmlineinfo.tblline.fieldbyname('learn3').value;
  query1.fieldbyname('lr4').value:=frmlineinfo.tblline.fieldbyname('learn4').value;
  query1.fieldbyname('lr5').value:=frmlineinfo.tblline.fieldbyname('learn5').value;
  query1.fieldbyname('lr6').value:=frmlineinfo.tblline.fieldbyname('learn6').value;
  query1.fieldbyname('lr7').value:=frmlineinfo.tblline.fieldbyname('learn7').value;
  query1.fieldbyname('lr8').value:=frmlineinfo.tblline.fieldbyname('learn8').value;
  query1.fieldbyname('le1').value:=frmlineinfo.tblline.fieldbyname('leff1').value;
  query1.fieldbyname('le2').value:=frmlineinfo.tblline.fieldbyname('leff2').value;
  query1.fieldbyname('le3').value:=frmlineinfo.tblline.fieldbyname('leff3').value;
  query1.fieldbyname('le4').value:=frmlineinfo.tblline.fieldbyname('leff4').value;
  query1.fieldbyname('le5').value:=frmlineinfo.tblline.fieldbyname('leff5').value;
  query1.fieldbyname('le6').value:=frmlineinfo.tblline.fieldbyname('leff6').value;
  query1.fieldbyname('le7').value:=frmlineinfo.tblline.fieldbyname('leff7').value;
  query1.fieldbyname('le8').value:=frmlineinfo.tblline.fieldbyname('leff8').value;
  query1.fieldbyname('lae').value:=frmlineinfo.tblline.fieldbyname('laeff').value;
  }
end;

procedure Tfrmlearn.Query1LR1Change(Sender: TField);
var
  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10:integer;
  f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,adpt:double;
begin
  if not query1.fieldbyname('lr1').isnull then
  i1:=query1.fieldbyname('lr1').value else i1:=20;
  if not query1.fieldbyname('lr2').isnull then
  i2:=query1.fieldbyname('lr2').value else i2:=60;
  if not query1.fieldbyname('lr3').isnull then
  i3:=query1.fieldbyname('lr3').value else i3:=80;
  if not query1.fieldbyname('lr4').isnull then
  i4:=query1.fieldbyname('lr4').value else i4:=100;
  if not query1.fieldbyname('lr5').isnull then
  i5:=query1.fieldbyname('lr5').value else i5:=100;
  if not query1.fieldbyname('lr6').isnull then
  i6:=query1.fieldbyname('lr6').value else i6:=120;
  if not query1.fieldbyname('lr7').isnull then
  i7:=query1.fieldbyname('lr7').value else i7:=120;
  if not query1.fieldbyname('lr8').isnull then
  i8:=query1.fieldbyname('lr8').value else i8:=120;
  if not query1.fieldbyname('lr9').isnull then
  i9:=query1.fieldbyname('lr9').value else i9:=120;
  if not query1.fieldbyname('lr10').isnull then
  i10:=query1.fieldbyname('lr10').value else i10:=120;

  if not query1.fieldbyname('le1').isnull then
  f1:=query1.fieldbyname('le1').value else f1:=60;
  if not query1.fieldbyname('le2').isnull then
  f2:=query1.fieldbyname('le2').value else f2:=80;
  if not query1.fieldbyname('le3').isnull then
  f3:=query1.fieldbyname('le3').value else f3:=90;
  if not query1.fieldbyname('le4').isnull then
  f4:=query1.fieldbyname('le4').value else f4:=100;
  if not query1.fieldbyname('le5').isnull then
  f5:=query1.fieldbyname('le5').value else f5:=90;
  if not query1.fieldbyname('le6').isnull then
  f6:=query1.fieldbyname('le6').value else f6:=100;
  if not query1.fieldbyname('le7').isnull then
  f7:=query1.fieldbyname('le7').value else f7:=100;
  if not query1.fieldbyname('le8').isnull then
  f8:=query1.fieldbyname('le8').value else f8:=100;
  if not query1.fieldbyname('le9').isnull then
  f9:=query1.fieldbyname('le9').value else f9:=100;
  if not query1.fieldbyname('le10').isnull then
  f10:=query1.fieldbyname('le10').value else f10:=100;
  if not query1.fieldbyname('adpt').isnull then adpt:=query1.fieldbyname('adpt').value else adpt:=100.0;
  if i1+i2+i3+i4+i5+i6+i7+i8+i9+i10>0 then
  query1.fieldbyname('lae').value:=(i1*f1+i2*f2+i3*f3+i4*f4+i5*f5+i6*f6+i7*f7+i8*f8+i9*f9+i10*f10)/(i1+i2+i3+i4+i5+i6+i7+i8+i9+i10)
  else query1.fieldbyname('lae').value:=0;
end;

procedure Tfrmlearn.Query1CUSTSetText(Sender: TField; const Text: String);
begin
  query1.fieldbyname('cust').value:=uppercase(text);
end;

procedure Tfrmlearn.Query1PTYPSetText(Sender: TField; const Text: String);
begin
  query1.fieldbyname('ptyp').value:=uppercase(text);
end;

procedure Tfrmlearn.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmlearn.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_linelearn where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmlearn.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmlearn.BitBtn4Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
  if query1.active then begin
    if edit1.text>'' then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tbl_linelearn where pline=:x1 and ((pcust=1) or (pptyp=1))';
      params[0].asstring:=edit1.text;
      open;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select tplant,tshop from tblline where pline='''+edit1.text+'''';
      open;
      if not fieldbyname('tplant').isnull then fact01.Caption:=fieldbyname('tplant').value
      else fact01.Caption:='';
      if not fieldbyname('tshop').isnull then shop01.Caption:=fieldbyname('tshop').value
      else shop01.Caption:='';
    end;
    line01.Caption:=edit1.text;
    end else begin
      with query5 do begin
        close;
        params.clear;
        if frmlineinfo.tblline.fieldbyname('tplant').value='SL' then
        commandtext:='select * from tbl_linelearn where pline<''T080'' and ((pcust=1) or (pptyp=1))'
        else if frmlineinfo.tblline.fieldbyname('tplant').value='GG' then
        commandtext:='select * from tbl_linelearn where pline>=''T300'' and ((pcust=1) or (pptyp=1))';
        open;
      end;
      fact01.Caption:=frmlineinfo.tblline.fieldbyname('tplant').value;
      shop01.Caption:='';
      line01.Caption:='';
    end;
    if (fact01.caption='CS') or (fact01.caption='SL') then title002.caption:='(GD)'
    else if (fact01.caption='GG') or (fact01.caption='RX') then title002.caption:='(GX)';
    ppReport1.Print;
  end;
end;

procedure Tfrmlearn.Edit1Change(Sender: TObject);
begin
  if edit1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tbl_linelearn where pline=:x1';
      params[0].asstring:=edit1.text;
      open;
    end;
  end else begin
    with query1 do begin
      close;
      params.clear;
      if frmlineinfo.tblline.fieldbyname('tplant').value='SL' then
        commandtext:='select * from tbl_linelearn where pline<''T080'''
      else if frmlineinfo.tblline.fieldbyname('tplant').value='KB' then
        commandtext:='select * from tbl_linelearn where pline>=''T080'' and pline<''T150'''
      else if frmlineinfo.tblline.fieldbyname('tplant').value='FJ' then
        commandtext:='select * from tbl_linelearn where pline>=''T200'' and pline<''T300'''
      else commandtext:='select * from tbl_linelearn where pline>=''T300''';
      open;
    end;
  end;
end;

procedure Tfrmlearn.ppDetailBand1BeforePrint(Sender: TObject);
begin
  tr001.caption:=formatfloat('#0',query5.fieldbyname('lr1').value+query5.fieldbyname('lr2').value+query5.fieldbyname('lr3').value+query5.fieldbyname('lr4').value+
                 query5.fieldbyname('lr5').value+query5.fieldbyname('lr6').value+query5.fieldbyname('lr7').value+query5.fieldbyname('lr8').value+
                 query5.fieldbyname('lr9').value+query5.fieldbyname('lr10').value);
end;

procedure Tfrmlearn.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlearn.FormShow(Sender: TObject);
begin
  dbgrideh1.columns[2].PickList.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[2].PickList.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmlearn.Query1CUSTChange(Sender: TField);
var
  cust,ptyp:string;
  adpt:double;
begin
  if not query1.fieldbyname('cust').isnull then cust:=query1.fieldbyname('cust').value else cust:='';
  if not query1.fieldbyname('ptyp').isnull then ptyp:=query1.fieldbyname('ptyp').value else ptyp:='';
  if not query1.fieldbyname('adpt').isnull then adpt:=query1.fieldbyname('adpt').value else adpt:=100.0;
  with query3 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    //params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    //commandtext:='select * from tblplant_learn where tplant=:x1 and cust=:x2 and ptyp=:x3';
    params.createparam(ftdate,'x5',ptinput);
    commandtext:='select distinct tplant,lr1,lr2,lr3,lr4,lr5,lr6,lr7,lr8,lr9,lr10,le1,le2,le3,le4,le5,le6,le7,le8,le9,le10 '
                +'from tblplant_learn where tplant='''+frmlineinfo.tblline.fieldbyname('tplant').value+''' and ptyp='''+ptyp+''' and edt in '
                +'(select max(edt) from tblplant_learn where tplant=:x4 and edt<=:x5)';
    //params[0].asstring:=frmlineinfo.tblline.fieldbyname('tplant').value;
    //params[1].asstring:=ptyp;
    //params[2].asstring:=cust;
    params[0].asstring:=frmlineinfo.tblline.fieldbyname('tplant').value;
    params[1].asdate:=date;
    open;
    if not fieldbyname('tplant').isnull then begin
      query1.fieldbyname('le1').value:=fieldbyname('le1').value;
      query1.fieldbyname('le2').value:=fieldbyname('le2').value;
      query1.fieldbyname('le3').value:=fieldbyname('le3').value;
      query1.fieldbyname('le4').value:=fieldbyname('le4').value;
      query1.fieldbyname('le5').value:=fieldbyname('le5').value;
      query1.fieldbyname('le6').value:=fieldbyname('le6').value;
      query1.fieldbyname('le7').value:=fieldbyname('le7').value;
      query1.fieldbyname('le8').value:=fieldbyname('le8').value;
      query1.fieldbyname('le9').value:=fieldbyname('le9').value;
      query1.fieldbyname('le10').value:=fieldbyname('le10').value;
      //query1.fieldbyname('lae').value:=fieldbyname('le').value;
      query1.fieldbyname('lr1').value:=fieldbyname('lr1').value*100.0/adpt;
      query1.fieldbyname('lr2').value:=fieldbyname('lr2').value*100.0/adpt;
      query1.fieldbyname('lr3').value:=fieldbyname('lr3').value*100.0/adpt;
      query1.fieldbyname('lr4').value:=fieldbyname('lr4').value*100.0/adpt;
      query1.fieldbyname('lr5').value:=fieldbyname('lr5').value*100.0/adpt;
      query1.fieldbyname('lr6').value:=fieldbyname('lr6').value*100.0/adpt;
      query1.fieldbyname('lr7').value:=fieldbyname('lr7').value*100.0/adpt;
      query1.fieldbyname('lr8').value:=fieldbyname('lr8').value*100.0/adpt;
      query1.fieldbyname('lr9').value:=fieldbyname('lr9').value*100.0/adpt;
      query1.fieldbyname('lr10').value:=fieldbyname('lr10').value*100.0/adpt;
    end;
  end;
end;

end.
