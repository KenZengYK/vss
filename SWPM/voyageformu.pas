unit voyageformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls,
  DBCtrls, Mask, DBCtrlsEh, DB, DBClient, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxDBEdit, Menus, shellapi,
  QExport4, QExport4XLS, ADODB, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters;

type
  Tfrmvoyage = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBDTEdit1: TDBDateTimeEditEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    Label6: TLabel;
    DBDTEdit2: TDBDateTimeEditEh;
    Label7: TLabel;
    DBTimeEdit2: TcxDBTimeEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    DBTimeEdit1: TcxDBTimeEdit;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    FirstPage1: TMenuItem;
    BitBtn5: TBitBtn;
    Refresh1: TMenuItem;
    RemoveRWO1: TMenuItem;
    BitBtn7: TBitBtn;
    Label10: TLabel;
    SaveVersionHistory1: TMenuItem;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    SaveDialog1: TSaveDialog;
    ExportRWO1: TMenuItem;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    DBComboBox1: TDBComboBox;
    ROQuery1: TClientDataSet;
    exls1: TQExport4XLS;
    BitBtn10: TBitBtn;
    sqlquery1: TClientDataSet;
    sqlquery2: TClientDataSet;
    RemoveBlankManifest1: TMenuItem;
    Label13: TLabel;
    DBDTEdit3: TDBDateTimeEditEh;
    Label14: TLabel;
    DBEditEh1: TDBNumberEditEh;
    Label15: TLabel;
    DBDTEdit5: TDBDateTimeEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowPage;
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure Query3AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure FirstPage1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Query3AfterEdit(DataSet: TDataSet);
    procedure SaveVersionHistory1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ExportRWO1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RemoveBlankManifest1Click(Sender: TObject);
  private
    { Private declarations }
    procedure updpdnversion;
  public
    { Public declarations }
  end;

var
  frmvoyage: Tfrmvoyage;
  logseq:integer;
  strupd:string;

implementation

uses mainformu, pdnformu, pdnsupplementformu, pdnsupplement1formu,
  pdnmarksformu, ibookingformu, airrequestformu;

{$R *.dfm}

procedure Tfrmvoyage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  updpdnversion;
  action:=cafree;
  frmvoyage:=nil;
end;

procedure Tfrmvoyage.PageControl1Change(Sender: TObject);
var
  i,dseq:integer;
  grdeh1:TDBGridEh;
  j_no,j2_job,rwo,acol:string;
  r53,r62:boolean;
begin
  screen.Cursor:=crSQLWait;
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52,r62 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
    if not fieldbyname('r62').isnull then r62:=fieldbyname('r62').value else r62:=false;
  end;
  try
  if pagecontrol1.ActivePageIndex>0 then begin
    dseq:=query2.fieldbyname('dseq').value;//pagecontrol1.ActivePageIndex;
    grdeh1:=TDBGRIDEH(pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Controls[0]);
    for i:=3 to 177 do begin
      grdeh1.columns[i].Visible:=false;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x3 and dseq=:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asinteger:=dseq;
      open;
      j_no:=fieldbyname('j_no').value;
      j2_job:=fieldbyname('j2_job').value;
      rwo:=fieldbyname('rwo').value;
      acol:=fieldbyname('acol').value;
    end;
    pagecontrol1.ActivePage.Caption:=j_no+' - '+j2_job+' - '+rwo;
    if (frmpdn.query1.FieldByName('status').Value<'20') or (r62=true) then grdeh1.ReadOnly:=false
    else grdeh1.ReadOnly:=true;
    //--Display PDN Records --//
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_voyage_d where seq=:x1 and seq1=:x2 and j_no='''+j_no+''' and j2_job='''+j2_job+''' and rwo='''+rwo+''' and acol='''+acol+'''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      open;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x6 and j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asstring:=j_no;
      params[3].asstring:=j2_job;
      params[4].asstring:=rwo;
      params[5].asstring:=acol;
      open;
      if not fieldbyname('q1line').isnull then begin
        for i:=3 to 9 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[3].title.caption:=fieldbyname('qn1').value+'|QN Qty';
        grdeh1.columns[4].title.caption:=fieldbyname('qn1').value+'|PDN Qty';
        grdeh1.columns[5].title.caption:=fieldbyname('qn1').value+'|T1 Qty';
        grdeh1.columns[6].title.caption:=fieldbyname('qn1').value+'|T2 Qty';
        grdeh1.columns[7].title.caption:=fieldbyname('qn1').value+'|T3 Qty';
        grdeh1.Columns[8].Title.caption:=fieldbyname('qn1').value+'|AQL Qty';
        grdeh1.columns[9].title.caption:=fieldbyname('qn1').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q2line').isnull then begin
        for i:=10 to 16 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[10].title.caption:=fieldbyname('qn2').value+'|QN Qty';
        grdeh1.columns[11].title.caption:=fieldbyname('qn2').value+'|PDN Qty';
        grdeh1.columns[12].title.caption:=fieldbyname('qn2').value+'|T1 Qty';
        grdeh1.columns[13].title.caption:=fieldbyname('qn2').value+'|T2 Qty';
        grdeh1.columns[14].title.caption:=fieldbyname('qn2').value+'|T3 Qty';
        grdeh1.Columns[15].Title.caption:=fieldbyname('qn2').value+'|AQL Qty';
        grdeh1.columns[16].title.caption:=fieldbyname('qn2').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q3line').isnull then begin
        for i:=17 to 23 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[17].title.caption:=fieldbyname('qn3').value+'|QN Qty';
        grdeh1.columns[18].title.caption:=fieldbyname('qn3').value+'|PDN Qty';
        grdeh1.columns[19].title.caption:=fieldbyname('qn3').value+'|T1 Qty';
        grdeh1.columns[20].title.caption:=fieldbyname('qn3').value+'|T2 Qty';
        grdeh1.columns[21].title.caption:=fieldbyname('qn3').value+'|T3 Qty';
        grdeh1.Columns[22].Title.caption:=fieldbyname('qn3').value+'|AQL Qty';
        grdeh1.columns[23].title.caption:=fieldbyname('qn3').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q4line').isnull then begin
        for i:=24 to 30 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[24].title.caption:=fieldbyname('qn4').value+'|QN Qty';
        grdeh1.columns[25].title.caption:=fieldbyname('qn4').value+'|PDN Qty';
        grdeh1.columns[26].title.caption:=fieldbyname('qn4').value+'|T1 Qty';
        grdeh1.columns[27].title.caption:=fieldbyname('qn4').value+'|T2 Qty';
        grdeh1.columns[28].title.caption:=fieldbyname('qn4').value+'|T3 Qty';
        grdeh1.Columns[29].Title.caption:=fieldbyname('qn4').value+'|AQL Qty';
        grdeh1.columns[30].title.caption:=fieldbyname('qn4').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q5line').isnull then begin
        for i:=31 to 37 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[31].title.caption:=fieldbyname('qn5').value+'|QN Qty';
        grdeh1.columns[32].title.caption:=fieldbyname('qn5').value+'|PDN Qty';
        grdeh1.columns[33].title.caption:=fieldbyname('qn5').value+'|T1 Qty';
        grdeh1.columns[34].title.caption:=fieldbyname('qn5').value+'|T2 Qty';
        grdeh1.columns[35].title.caption:=fieldbyname('qn5').value+'|T3 Qty';
        grdeh1.Columns[36].Title.caption:=fieldbyname('qn5').value+'|AQL Qty';
        grdeh1.columns[37].title.caption:=fieldbyname('qn5').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q6line').isnull then begin
        for i:=38 to 44 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[38].title.caption:=fieldbyname('qn6').value+'|QN Qty';
        grdeh1.columns[39].title.caption:=fieldbyname('qn6').value+'|PDN Qty';
        grdeh1.columns[40].title.caption:=fieldbyname('qn6').value+'|T1 Qty';
        grdeh1.columns[41].title.caption:=fieldbyname('qn6').value+'|T2 Qty';
        grdeh1.columns[42].title.caption:=fieldbyname('qn6').value+'|T3 Qty';
        grdeh1.Columns[43].Title.caption:=fieldbyname('qn6').value+'|AQL Qty';
        grdeh1.columns[44].title.caption:=fieldbyname('qn6').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q7line').isnull then begin
        for i:=45 to 51 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[45].title.caption:=fieldbyname('qn7').value+'|QN Qty';
        grdeh1.columns[46].title.caption:=fieldbyname('qn7').value+'|PDN Qty';
        grdeh1.columns[47].title.caption:=fieldbyname('qn7').value+'|T1 Qty';
        grdeh1.columns[48].title.caption:=fieldbyname('qn7').value+'|T2 Qty';
        grdeh1.columns[49].title.caption:=fieldbyname('qn7').value+'|T3 Qty';
        grdeh1.Columns[50].Title.caption:=fieldbyname('qn7').value+'|AQL Qty';
        grdeh1.columns[51].title.caption:=fieldbyname('qn7').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q8line').isnull then begin
        for i:=52 to 58 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[52].title.caption:=fieldbyname('qn8').value+'|QN Qty';
        grdeh1.columns[53].title.caption:=fieldbyname('qn8').value+'|PDN Qty';
        grdeh1.columns[54].title.caption:=fieldbyname('qn8').value+'|T1 Qty';
        grdeh1.columns[55].title.caption:=fieldbyname('qn8').value+'|T2 Qty';
        grdeh1.columns[56].title.caption:=fieldbyname('qn8').value+'|T3 Qty';
        grdeh1.Columns[57].Title.caption:=fieldbyname('qn8').value+'|AQL Qty';
        grdeh1.columns[58].title.caption:=fieldbyname('qn8').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q9line').isnull then begin
        for i:=59 to 65 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[59].title.caption:=fieldbyname('qn9').value+'|QN Qty';
        grdeh1.columns[60].title.caption:=fieldbyname('qn9').value+'|PDN Qty';
        grdeh1.columns[61].title.caption:=fieldbyname('qn9').value+'|T1 Qty';
        grdeh1.columns[62].title.caption:=fieldbyname('qn9').value+'|T2 Qty';
        grdeh1.columns[63].title.caption:=fieldbyname('qn9').value+'|T3 Qty';
        grdeh1.Columns[64].Title.caption:=fieldbyname('qn9').value+'|AQL Qty';
        grdeh1.columns[65].title.caption:=fieldbyname('qn9').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q10line').isnull then begin
        for i:=66 to 72 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[66].title.caption:=fieldbyname('qn10').value+'|QN Qty';
        grdeh1.columns[67].title.caption:=fieldbyname('qn10').value+'|PDN Qty';
        grdeh1.columns[68].title.caption:=fieldbyname('qn10').value+'|T1 Qty';
        grdeh1.columns[69].title.caption:=fieldbyname('qn10').value+'|T2 Qty';
        grdeh1.columns[70].title.caption:=fieldbyname('qn10').value+'|T3 Qty';
        grdeh1.Columns[71].Title.caption:=fieldbyname('qn10').value+'|AQL Qty';
        grdeh1.columns[72].title.caption:=fieldbyname('qn10').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q11line').isnull then begin
        for i:=73 to 79 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[73].title.caption:=fieldbyname('qn11').value+'|QN Qty';
        grdeh1.columns[74].title.caption:=fieldbyname('qn11').value+'|PDN Qty';
        grdeh1.columns[75].title.caption:=fieldbyname('qn11').value+'|T1 Qty';
        grdeh1.columns[76].title.caption:=fieldbyname('qn11').value+'|T2 Qty';
        grdeh1.columns[77].title.caption:=fieldbyname('qn11').value+'|T3 Qty';
        grdeh1.Columns[78].Title.caption:=fieldbyname('qn11').value+'|AQL Qty';
        grdeh1.columns[79].title.caption:=fieldbyname('qn11').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q12line').isnull then begin
        for i:=80 to 86 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[80].title.caption:=fieldbyname('qn12').value+'|QN Qty';
        grdeh1.columns[81].title.caption:=fieldbyname('qn12').value+'|PDN Qty';
        grdeh1.columns[82].title.caption:=fieldbyname('qn12').value+'|T1 Qty';
        grdeh1.columns[83].title.caption:=fieldbyname('qn12').value+'|T2 Qty';
        grdeh1.columns[84].title.caption:=fieldbyname('qn12').value+'|T3 Qty';
        grdeh1.Columns[85].Title.caption:=fieldbyname('qn12').value+'|AQL Qty';
        grdeh1.columns[86].title.caption:=fieldbyname('qn12').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q13line').isnull then begin
        for i:=87 to 93 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[87].title.caption:=fieldbyname('qn13').value+'|QN Qty';
        grdeh1.columns[88].title.caption:=fieldbyname('qn13').value+'|PDN Qty';
        grdeh1.columns[89].title.caption:=fieldbyname('qn13').value+'|T1 Qty';
        grdeh1.columns[90].title.caption:=fieldbyname('qn13').value+'|T2 Qty';
        grdeh1.columns[91].title.caption:=fieldbyname('qn13').value+'|T3 Qty';
        grdeh1.Columns[92].Title.caption:=fieldbyname('qn13').value+'|AQL Qty';
        grdeh1.columns[93].title.caption:=fieldbyname('qn13').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q14line').isnull then begin
        for i:=94 to 100 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[94].title.caption:=fieldbyname('qn14').value+'|QN Qty';
        grdeh1.columns[95].title.caption:=fieldbyname('qn14').value+'|PDN Qty';
        grdeh1.columns[96].title.caption:=fieldbyname('qn14').value+'|T1 Qty';
        grdeh1.columns[97].title.caption:=fieldbyname('qn14').value+'|T2 Qty';
        grdeh1.columns[98].title.caption:=fieldbyname('qn14').value+'|T3 Qty';
        grdeh1.Columns[99].Title.caption:=fieldbyname('qn14').value+'|AQL Qty';
        grdeh1.columns[100].title.caption:=fieldbyname('qn14').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q15line').isnull then begin
        for i:=101 to 107 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[101].title.caption:=fieldbyname('qn15').value+'|QN Qty';
        grdeh1.columns[102].title.caption:=fieldbyname('qn15').value+'|PDN Qty';
        grdeh1.columns[103].title.caption:=fieldbyname('qn15').value+'|T1 Qty';
        grdeh1.columns[104].title.caption:=fieldbyname('qn15').value+'|T2 Qty';
        grdeh1.columns[105].title.caption:=fieldbyname('qn15').value+'|T3 Qty';
        grdeh1.Columns[106].Title.caption:=fieldbyname('qn15').value+'|AQL Qty';
        grdeh1.columns[107].title.caption:=fieldbyname('qn15').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q16line').isnull then begin
        for i:=108 to 114 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[108].title.caption:=fieldbyname('qn16').value+'|QN Qty';
        grdeh1.columns[109].title.caption:=fieldbyname('qn16').value+'|PDN Qty';
        grdeh1.columns[110].title.caption:=fieldbyname('qn16').value+'|T1 Qty';
        grdeh1.columns[111].title.caption:=fieldbyname('qn16').value+'|T2 Qty';
        grdeh1.columns[112].title.caption:=fieldbyname('qn16').value+'|T3 Qty';
        grdeh1.Columns[113].Title.caption:=fieldbyname('qn16').value+'|AQL Qty';
        grdeh1.columns[114].title.caption:=fieldbyname('qn16').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q17line').isnull then begin
        for i:=115 to 121 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[115].title.caption:=fieldbyname('qn17').value+'|QN Qty';
        grdeh1.columns[116].title.caption:=fieldbyname('qn17').value+'|PDN Qty';
        grdeh1.columns[117].title.caption:=fieldbyname('qn17').value+'|T1 Qty';
        grdeh1.columns[118].title.caption:=fieldbyname('qn17').value+'|T2 Qty';
        grdeh1.columns[119].title.caption:=fieldbyname('qn17').value+'|T3 Qty';
        grdeh1.Columns[120].Title.caption:=fieldbyname('qn17').value+'|AQL Qty';
        grdeh1.columns[121].title.caption:=fieldbyname('qn17').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q18line').isnull then begin
        for i:=122 to 128 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[122].title.caption:=fieldbyname('qn18').value+'|QN Qty';
        grdeh1.columns[123].title.caption:=fieldbyname('qn18').value+'|PDN Qty';
        grdeh1.columns[124].title.caption:=fieldbyname('qn18').value+'|T1 Qty';
        grdeh1.columns[125].title.caption:=fieldbyname('qn18').value+'|T2 Qty';
        grdeh1.columns[126].title.caption:=fieldbyname('qn18').value+'|T3 Qty';
        grdeh1.Columns[127].Title.caption:=fieldbyname('qn18').value+'|AQL Qty';
        grdeh1.columns[128].title.caption:=fieldbyname('qn18').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q19line').isnull then begin
        for i:=129 to 135 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[129].title.caption:=fieldbyname('qn19').value+'|QN Qty';
        grdeh1.columns[130].title.caption:=fieldbyname('qn19').value+'|PDN Qty';
        grdeh1.columns[131].title.caption:=fieldbyname('qn19').value+'|T1 Qty';
        grdeh1.columns[132].title.caption:=fieldbyname('qn19').value+'|T2 Qty';
        grdeh1.columns[133].title.caption:=fieldbyname('qn19').value+'|T3 Qty';
        grdeh1.Columns[134].Title.caption:=fieldbyname('qn19').value+'|AQL Qty';
        grdeh1.columns[135].title.caption:=fieldbyname('qn19').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q20line').isnull then begin
        for i:=136 to 142 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[136].title.caption:=fieldbyname('qn20').value+'|QN Qty';
        grdeh1.columns[137].title.caption:=fieldbyname('qn20').value+'|PDN Qty';
        grdeh1.columns[138].title.caption:=fieldbyname('qn20').value+'|T1 Qty';
        grdeh1.columns[139].title.caption:=fieldbyname('qn20').value+'|T2 Qty';
        grdeh1.columns[140].title.caption:=fieldbyname('qn20').value+'|T3 Qty';
        grdeh1.Columns[141].Title.caption:=fieldbyname('qn20').value+'|AQL Qty';
        grdeh1.columns[142].title.caption:=fieldbyname('qn20').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q21line').isnull then begin
        for i:=143 to 149 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[143].title.caption:=fieldbyname('qn21').value+'|QN Qty';
        grdeh1.columns[144].title.caption:=fieldbyname('qn21').value+'|PDN Qty';
        grdeh1.columns[145].title.caption:=fieldbyname('qn21').value+'|T1 Qty';
        grdeh1.columns[146].title.caption:=fieldbyname('qn21').value+'|T2 Qty';
        grdeh1.columns[147].title.caption:=fieldbyname('qn21').value+'|T3 Qty';
        grdeh1.Columns[148].Title.caption:=fieldbyname('qn21').value+'|AQL Qty';
        grdeh1.columns[149].title.caption:=fieldbyname('qn21').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q22line').isnull then begin
        for i:=150 to 156 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[150].title.caption:=fieldbyname('qn22').value+'|QN Qty';
        grdeh1.columns[151].title.caption:=fieldbyname('qn22').value+'|PDN Qty';
        grdeh1.columns[152].title.caption:=fieldbyname('qn22').value+'|T1 Qty';
        grdeh1.columns[153].title.caption:=fieldbyname('qn22').value+'|T2 Qty';
        grdeh1.columns[154].title.caption:=fieldbyname('qn22').value+'|T3 Qty';
        grdeh1.Columns[155].Title.caption:=fieldbyname('qn22').value+'|AQL Qty';
        grdeh1.columns[156].title.caption:=fieldbyname('qn22').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q23line').isnull then begin
        for i:=157 to 163 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[157].title.caption:=fieldbyname('qn23').value+'|QN Qty';
        grdeh1.columns[158].title.caption:=fieldbyname('qn23').value+'|PDN Qty';
        grdeh1.columns[159].title.caption:=fieldbyname('qn23').value+'|T1 Qty';
        grdeh1.columns[160].title.caption:=fieldbyname('qn23').value+'|T2 Qty';
        grdeh1.columns[161].title.caption:=fieldbyname('qn23').value+'|T3 Qty';
        grdeh1.Columns[162].Title.caption:=fieldbyname('qn23').value+'|AQL Qty';
        grdeh1.columns[163].title.caption:=fieldbyname('qn23').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q24line').isnull then begin
        for i:=164 to 170 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[164].title.caption:=fieldbyname('qn24').value+'|QN Qty';
        grdeh1.columns[165].title.caption:=fieldbyname('qn24').value+'|PDN Qty';
        grdeh1.columns[166].title.caption:=fieldbyname('qn24').value+'|T1 Qty';
        grdeh1.columns[167].title.caption:=fieldbyname('qn24').value+'|T2 Qty';
        grdeh1.columns[168].title.caption:=fieldbyname('qn24').value+'|T3 Qty';
        grdeh1.Columns[169].Title.caption:=fieldbyname('qn24').value+'|AQL Qty';
        grdeh1.columns[170].title.caption:=fieldbyname('qn24').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q25line').isnull then begin
        for i:=171 to 177 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[171].title.caption:=fieldbyname('qn25').value+'|QN Qty';
        grdeh1.columns[172].title.caption:=fieldbyname('qn25').value+'|PDN Qty';
        grdeh1.columns[173].title.caption:=fieldbyname('qn25').value+'|T1 Qty';
        grdeh1.columns[174].title.caption:=fieldbyname('qn25').value+'|T2 Qty';
        grdeh1.columns[175].title.caption:=fieldbyname('qn25').value+'|T3 Qty';
        grdeh1.Columns[176].Title.caption:=fieldbyname('qn25').value+'|AQL Qty';
        grdeh1.columns[177].title.caption:=fieldbyname('qn25').value+'|Ex-fty Qty';
      end;
    end;
    //if frmpdn.Query1.fieldbyname('status').value>'2' then grdeh1.ReadOnly:=true
    if label9.Caption<>'Edit' then grdeh1.ReadOnly:=true
    else grdeh1.ReadOnly:=false;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmvoyage.FormShow(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  label10.caption:='VIEW';
end;

procedure Tfrmvoyage.ShowPage;
var
  i:integer;
begin
    {
    for i:=1 to 60 do begin
      pagecontrol1.Pages[i].TabVisible:=false;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2 order by dseq';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      open;
      first;
      while not eof do begin
        i:=fieldbyname('dseq').value;
        pagecontrol1.Pages[i].TabVisible:=true;
        pagecontrol1.Pages[i].Caption:=fieldbyname('j2_job').value+' - '+fieldbyname('rwo').value;
        application.ProcessMessages;
        next;
      end;
      //if recordcount>0 then pagecontrol1.Pages[1].TabVisible:=true;
    end;
    }
    pagecontrol1.Pages[1].TabVisible:=true;
    if not query2.fieldbyname('j_no').isnull then
    pagecontrol1.Pages[1].Caption:=query2.fieldbyname('j_no').value+' - '+query2.fieldbyname('j2_job').value+' - '+query2.fieldbyname('rwo').value;
end;

procedure Tfrmvoyage.Query2AfterOpen(DataSet: TDataSet);
begin
  showpage;
end;

procedure Tfrmvoyage.Query1AfterPost(DataSet: TDataSet);
var
  pstr:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(fttime,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(fttime,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftdate,'x10',ptinput);
      params.createparam(fttime,'x11',ptinput);
      params.createparam(ftdate,'x12',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftstring,'x14',ptinput);
      params.createparam(ftstring,'x15',ptinput);
      params.createparam(ftinteger,'x16',ptinput);
      params.createparam(ftfloat,'x17',ptinput);
      params.createparam(ftfloat,'x18',ptinput);
      params.createparam(ftstring,'x19',ptinput);
      params.createparam(ftstring,'x20',ptinput);
      params.createparam(ftstring,'x21',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='update tbl_pdn_voyage_m set voyn=:x1,exfty=:x2,actdt=:x3,acttm=:x4,shpm=:x5,extm=:x8,'
                  +'truck=:x9,indt=:x10,intm=:x11,ondt=:x12,vess=:x13,lport=:x14,dest=:x15,box=:x16,wght=:x17,cbm=:x18,'
                  +'memo1=:x19,rair=:x20,ps_change=:x21 where seq=:x6 and seq1=:x7';

      if not query1.fieldbyname('voyn').isnull then
      params[0].asstring:=query1.fieldbyname('voyn').value
      else params[0].asstring:=query1.fieldbyname('seq1').AsString;
      if not query1.fieldbyname('exfty').IsNull then
      params[1].asdate:=query1.fieldbyname('exfty').value;
      if not query1.fieldbyname('actdt').isnull then
      params[2].asdate:=query1.fieldbyname('actdt').value;
      if not query1.fieldbyname('acttm').isnull then
      params[3].astime:=query1.fieldbyname('acttm').value;
      if not query1.fieldbyname('shpm').isnull then
      params[4].asstring:=query1.fieldbyname('shpm').value
      else params[4].asstring:='';
      if not query1.fieldbyname('extm').isnull then
      params[5].astime:=query1.fieldbyname('extm').value;
      if not query1.fieldbyname('truck').isnull then
      params[6].asstring:=query1.fieldbyname('truck').value
      else params[6].asstring:='Truck';
      if not query1.fieldbyname('indt').isnull then
      params[7].asdate:=query1.fieldbyname('indt').value;
      if not query1.fieldbyname('intm').isnull then
      params[8].astime:=query1.fieldbyname('intm').value;
      if not query1.fieldbyname('ondt').isnull then
      params[9].asdate:=query1.fieldbyname('ondt').value;
      if not query1.fieldbyname('vess').isnull then
      params[10].asstring:=query1.fieldbyname('vess').value
      else params[10].asstring:='';
      if not query1.fieldbyname('lport').isnull then
      params[11].asstring:=query1.fieldbyname('lport').value
      else params[11].asstring:='';
      if not query1.fieldbyname('dest').isnull then
      params[12].asstring:=query1.fieldbyname('dest').value
      else params[12].asstring:='';
      if not query1.fieldbyname('box').isnull then
      params[13].asinteger:=query1.fieldbyname('box').value
      else params[13].asinteger:=0;
      if not query1.fieldbyname('wght').isnull then
      params[14].asfloat:=query1.fieldbyname('wght').value
      else params[14].asfloat:=0;
      if not query1.fieldbyname('cbm').isnull then
      params[15].asfloat:=query1.fieldbyname('cbm').value
      else params[15].asfloat:=0;
      if not query1.fieldbyname('memo1').isnull then
      params[16].asstring:=query1.fieldbyname('memo1').value
      else params[16].asstring:='';
      if not query1.fieldbyname('rair').isnull then
      params[17].asstring:=query1.fieldbyname('rair').value
      else params[17].asstring:='';
      if not query1.fieldbyname('ps_change').isnull then
      params[18].asstring:=query1.fieldbyname('ps_change').value
      else params[18].asstring:='';
      params[19].asinteger:=query1.fieldbyname('seq').value;
      params[20].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_pdn_voyage_m set ';
      if not query1.fieldbyname('voyn').isnull then
      strupd:=strupd+'voyn='''+query1.fieldbyname('voyn').value+''','
      else strupd:=strupd+'voyn='''+query1.fieldbyname('seq1').AsString+''',';
      if not query1.fieldbyname('exfty').IsNull then
      strupd:=strupd+'exfty='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('exfty').value)+''','
      else strupd:=strupd+'exfty=null,';
      if not query1.fieldbyname('gg_exfty').IsNull then
      strupd:=strupd+'gg_exfty='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('gg_exfty').value)+''','
      else strupd:=strupd+'gg_exfty=null,';
      if not query1.fieldbyname('actdt').isnull then
      strupd:=strupd+'actdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('actdt').value)+''','
      else strupd:=strupd+'actdt=null,';
      if not query1.fieldbyname('acttm').isnull then
      strupd:=strupd+'acttm='''+formatdatetime('hh:nn:ss',query1.fieldbyname('acttm').value)+''','
      else strupd:=strupd+'acttm=null,';
      if not query1.fieldbyname('shpm').isnull then
      strupd:=strupd+'shpm='''+query1.fieldbyname('shpm').value+''','
      else strupd:=strupd+'shpm='''',';
      if not query1.fieldbyname('extm').isnull then
      strupd:=strupd+'extm='''+formatdatetime('hh:nn:ss',query1.fieldbyname('extm').value)+''','
      else strupd:=strupd+'extm=null,';
      if not query1.fieldbyname('truck').isnull then
      strupd:=strupd+'truck='''+query1.fieldbyname('truck').value+''','
      else strupd:=strupd+'truck=''Truck'',';
      if not query1.fieldbyname('indt').isnull then
      strupd:=strupd+'indt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('indt').value)+''','
      else strupd:=strupd+'indt=null,';
      if not query1.fieldbyname('intm').isnull then
      strupd:=strupd+'intm='''+formatdatetime('hh:nn:ss',query1.fieldbyname('intm').value)+''','
      else strupd:=strupd+'intm=null,';
      if not query1.fieldbyname('ondt').isnull then
      strupd:=strupd+'ondt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('ondt').value)+''','
      else strupd:=strupd+'ondt=null,';
      if not query1.fieldbyname('vess').isnull then
      strupd:=strupd+'vess='''+query1.fieldbyname('vess').value+''','
      else strupd:=strupd+'vess='''',';
      if not query1.fieldbyname('lport').isnull then
      strupd:=strupd+'lport='''+query1.fieldbyname('lport').value+''','
      else strupd:=strupd+'lport='''',';
      if not query1.fieldbyname('dest').isnull then
      strupd:=strupd+'dest='''+query1.fieldbyname('dest').value+''','
      else strupd:=strupd+'dest='''',';
      if not query1.fieldbyname('box').isnull then
      strupd:=strupd+'box='+query1.fieldbyname('box').asstring+','
      else strupd:=strupd+'box=0,';
      if not query1.fieldbyname('wght').isnull then
      strupd:=strupd+'wght='+query1.fieldbyname('wght').asstring+','
      else strupd:=strupd+'wght=0,';
      if not query1.fieldbyname('cbm').isnull then
      strupd:=strupd+'cbm='+query1.fieldbyname('cbm').asstring+','
      else strupd:=strupd+'cbm=0,';
      if not query1.fieldbyname('memo1').isnull then
      strupd:=strupd+'memo1='''+query1.fieldbyname('memo1').value+''','
      else strupd:=strupd+'memo1='''',';
      if not query1.fieldbyname('rair').isnull then
      strupd:=strupd+'rair='''+query1.fieldbyname('rair').value+''','
      else strupd:=strupd+'rair='''',';
      if not query1.fieldbyname('cust_qty').isnull then
      strupd:=strupd+'cust_qty='+query1.fieldbyname('cust_qty').asstring+','
      else strupd:=strupd+'cust_qty=0,';
      if not query1.fieldbyname('cls_dt').isnull then
      strupd:=strupd+'cls_dt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('cls_dt').value)+''','
      else strupd:=strupd+'cls_dt=null,';
      if not query1.fieldbyname('ondtcat').isnull then
      strupd:=strupd+'ondtcat='''+query1.fieldbyname('ondtcat').value+''','
      else strupd:=strupd+'ondtcat='''',';
      if not query1.fieldbyname('ps_change').isnull then
      strupd:=strupd+'ps_change='''+query1.fieldbyname('ps_change').value+''' '
      else strupd:=strupd+'ps_change='''' ';
      strupd:=strupd+'where seq='+query1.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      {
        pstr:='23 '+query1.fieldbyname('seq').asstring+' '+query1.fieldbyname('seq1').asstring;
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
      }
end;

procedure Tfrmvoyage.BitBtn6Click(Sender: TObject);
begin
  if query1.State=dsedit then query1.post;
  if query3.state=dsedit then query3.post;
end;

procedure Tfrmvoyage.Query3AfterPost(DataSet: TDataSet);
var
  pstr:string;
begin
  {
  if query3.ApplyUpdates(-1)>0 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftboolean,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      commandtext:='update tbl_pdn_voyage_d set sqty=:x1,cfm=:x2,cfmtm=:x3 where seq=:x4 and j_no=:x5 and j2_job=:x6 and ordline=:x7 and rwo=:x8 and acol=:x9 and did=:x10 and seq1=:x11';

      if not query3.fieldbyname('sqty').isnull then
      params[0].asinteger:=query3.fieldbyname('sqty').Value
      else params[0].asinteger:=0;
      if not query3.fieldbyname('cfm').IsNull then
      params[1].asboolean:=query3.fieldbyname('cfm').value
      else params[1].asboolean:=false;
      if not query3.fieldbyname('cfmtm').isnull then
      params[2].asdatetime:=query3.fieldbyname('cfmtm').value;
      params[3].asinteger:=query3.fieldbyname('seq').value;
      params[4].asstring:=query3.fieldbyname('j_no').value;
      params[5].asstring:=query3.fieldbyname('j2_job').value;
      params[6].asinteger:=query3.fieldbyname('ordline').value;
      params[7].asstring:=query3.fieldbyname('rwo').value;
      params[8].asstring:=query3.fieldbyname('acol').value;
      params[9].asinteger:=query3.fieldbyname('did').value;
      params[10].asinteger:=query3.fieldbyname('seq1').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_pdn_voyage_d set ';
      if not query3.fieldbyname('sqty').isnull then
      strupd:=strupd+'sqty='+query3.fieldbyname('sqty').asstring+' '
      else strupd:=strupd+'sqty=0 ';
      strupd:=strupd+'where seq='+query3.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and j_no='''+query3.fieldbyname('j_no').value+''' ';
      strupd:=strupd+'and j2_job='''+query3.fieldbyname('j2_job').value+''' ';
      strupd:=strupd+'and ordline='+query3.fieldbyname('ordline').asstring+' ';
      strupd:=strupd+'and rwo='''+query3.fieldbyname('rwo').value+''' ';
      strupd:=strupd+'and acol='''+query3.fieldbyname('acol').value+''' ';
      strupd:=strupd+'and did='+query3.fieldbyname('did').asstring+' ';
      strupd:=strupd+'and seq1='+query3.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      {
        pstr:='25 '+query3.fieldbyname('seq').asstring+' '+query3.fieldbyname('j_no').value+' '+query3.fieldbyname('j2_job').value+' '+query3.fieldbyname('ordline').asstring+' '+query3.fieldbyname('rwo').value
             +' '+query3.fieldbyname('acol').value+' '+query3.fieldbyname('did').asstring+' '+query3.fieldbyname('seq1').asstring;
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
      }
end;

procedure Tfrmvoyage.BitBtn3Click(Sender: TObject);
var
  seq,seq1,seq2:integer;
begin
  seq:=query1.fieldbyname('seq').value;
  seq1:=query1.fieldbyname('seq1').value;
  seq2:=seq1;
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select max(seq1) as seq2 from tbl_pdn_voyage_m where seq=:x1';
    params[0].asinteger:=seq;
    open;
    if not fieldbyname('seq2').isnull then begin
      if fieldbyname('seq2').value>seq1 then begin
        seq2:=seq1+1;
        updpdnversion;
      end;
    end;
  end;
      if (frmpdn.Query1.FieldByName('status').value='2') and (label9.Caption='Edit') then begin
        with ROQuery1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_newvoyage(:x1,:x2)';
          params[0].asinteger:=seq;
          params[1].asinteger:=seq1;
          execute;
        end;
        seq2:=seq1+1;
        updpdnversion;
      end;
        with Query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
          params[0].asinteger:=seq;
          params[1].asinteger:=seq2;
          open;
        end;
        with Query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2 order by seq,seq1,dseq';
          params[0].asinteger:=seq;
          params[1].asinteger:=seq2;
          open;
        end;
        with Query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_rwo where seq=:x1 order by seq,dseq';
          params[0].asinteger:=seq;
          open;
        end;
end;

procedure Tfrmvoyage.BitBtn1Click(Sender: TObject);
var
  seq,seq1:integer;
begin
  seq:=query1.fieldbyname('seq').value;
  if query1.fieldbyname('seq1').value>1 then seq1:=query1.fieldbyname('seq1').value-1
  else seq1:=query1.fieldbyname('seq1').value;
  if query1.fieldbyname('seq1').value>1 then updpdnversion;
        with Query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
          params[0].asinteger:=seq;
          params[1].asinteger:=seq1;
          open;
        end;
        with Query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2';
          params[0].asinteger:=seq;
          params[1].asinteger:=seq1;
          open;
        end;
end;

procedure Tfrmvoyage.SpeedButton2Click(Sender: TObject);
var
  dseq:integer;
  j_no,j2_job,rwo,acol:string;
  pstr:string;
begin
  if application.MessageBox('Remove RWO from manifest?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    dseq:=query2.fieldbyname('dseq').value;
    {
    j_no:=query2.fieldbyname('j_no').value;
    j2_job:=query2.fieldbyname('j2_job').value;
    rwo:=query2.fieldbyname('rwo').value;
    acol:=query2.fieldbyname('acol').value;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='delete from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2 and dseq=:x3';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asinteger:=dseq;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      commandtext:='delete from tbl_pdn_voyage_d where seq=:x1 and seq1=:x2 and j_no=:x3 and j2_job=:x4 and rwo=:x5 and acol=:x6';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asstring:=j_no;
      params[3].asstring:=j2_job;
      params[4].asstring:=rwo;
      params[5].asstring:=acol;
      execute;
    end;
    }
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_pdn_voyage_delrwo(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asinteger:=dseq;
      execute;
    end;
    query2.Delete;
    {
        pstr:='24 B '+query1.fieldbyname('seq').asstring+' '+inttostr(dseq)+' '+query1.fieldbyname('seq1').asstring;
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
    //pagecontrol1.Pages[dseq].TabVisible:=false;
  end;
  label10.Caption:='EDIT';
end;

procedure Tfrmvoyage.BitBtn2Click(Sender: TObject);
begin
  bitbtn6click(self);
  {
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='update tbl_pdn_voyage_m set cfm=1 where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    execute;
  end;
  }
  strupd:='update tbl_pdn_voyage_m set cfm=1 where seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  
  showmessage('Confirmation OK!');
end;

procedure Tfrmvoyage.SpeedButton1Click(Sender: TObject);
var
  dseq:integer;
  pstr:string;
begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select dseq from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2 and dseq=:x3';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    params[2].asinteger:=query4.fieldbyname('dseq').value;
    open;
    if fieldbyname('dseq').isnull then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='execute procedure sp_pdn_voyage_addrwo(:x1,:x2,:x3)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query4.fieldbyname('dseq').value;
        params[2].asinteger:=query1.fieldbyname('seq1').value;
        execute;
      end;
      {
        pstr:='24 A '+query1.fieldbyname('seq').asstring+' '+query4.fieldbyname('dseq').asstring+' '+query1.fieldbyname('seq1').asstring;
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
      }
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('seq1').value;
        open;
      end;
    end;
  end;
  label10.Caption:='EDIT';
end;

procedure Tfrmvoyage.DBGridEh2DblClick(Sender: TObject);
begin
  //if not query2.fieldbyname('dseq').isnull then begin
    //pagecontrol1.ActivePageIndex:=query2.fieldbyname('dseq').value;
    pagecontrol1.ActivePageIndex:=1;
    pagecontrol1change(self);
  //end;
end;

procedure Tfrmvoyage.FirstPage1Click(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex>0 then pagecontrol1.ActivePageIndex:=0;
end;

procedure Tfrmvoyage.BitBtn4Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_pdn_updpack(:x1,:x2)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    execute;
  end;
  //if ((pos('SA',frmpdn.Query1.fieldbyname('pdn').value)>0) or (pos('TM',frmpdn.Query1.fieldbyname('pdn').value)>0)) then begin
    if frmpdnsupplement=nil then frmpdnsupplement:=tfrmpdnsupplement.Create(nil);
    with frmpdnsupplement.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_pack where seq=:x1 and seq1=:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      open;
    end;
    frmpdnsupplement.Show;
    with query5 do begin
      close;
      commandtext:='select inland from tbl_pdn_inlandcost where tplant='''+frmpdn.Query1.fieldbyname('tplant').value+'''';
      open;
      if (fieldbyname('inland').value=true) then
        frmpdnsupplement.DBGridEh1.Columns[12].Visible:=true
      else frmpdnsupplement.DBGridEh1.Columns[12].Visible:=false;
    end;
  //end else begin
  //  if frmpdnsupplement1=nil then frmpdnsupplement1:=tfrmpdnsupplement1.create(nil);
  //  frmpdnsupplement1.show;
  //end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmvoyage.Refresh1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_pdn_voyage_referesh(:x1,:x2,:x3)';
      params[0].asinteger:=query2.fieldbyname('seq').value;
      params[1].asinteger:=query2.fieldbyname('dseq').value;
      params[2].asinteger:=query2.fieldbyname('seq1').value;
      execute;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmvoyage.RemoveBlankManifest1Click(Sender: TObject);
begin
  //
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select j2_job from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2';
    params[0].AsInteger:=query1.FieldByName('seq').Value;
    params[1].AsInteger:=query1.FieldByName('seq1').Value;
    open;
    if not fieldbyname('j2_job').isnull then begin
      showmessage('Can not delete this manifest!');
    end else begin
      //showmessage('Blank manifest can be deleted!');
      with query6 do begin
        close;
        params.Clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_dltmorevoyage_seq(:x1,:x2)';
        params[0].AsInteger:=query1.FieldByName('seq').Value;
        params[1].AsInteger:=query1.FieldByName('seq1').Value;
        execute;
      end;
      frmvoyage.Close;
    end;
  end;
end;

procedure Tfrmvoyage.BitBtn5Click(Sender: TObject);
begin
  if frmpdnmarks=nil then frmpdnmarks:=tfrmpdnmarks.create(nil);
  frmpdnmarks.DBText1.DataSource:=frmpdn.DataSource1;
  frmpdnmarks.DBText1.DataField:='pdn';
  frmpdnmarks.DBText2.DataSource:=frmpdn.DataSource1;
  frmpdnmarks.DBText2.DataField:='exfty';
  frmpdnmarks.DBMemo1.DataSource:=frmpdn.DataSource1;
  frmpdnmarks.DBmemo1.DataField:='marks';
  frmpdnmarks.DBMemo2.DataSource:=frmpdn.DataSource1;
  frmpdnmarks.DBmemo2.DataField:='marks1';
  frmpdnmarks.show;
end;

procedure Tfrmvoyage.Query3AfterEdit(DataSet: TDataSet);
begin
  label10.Caption:='EDIT';
end;

procedure Tfrmvoyage.updpdnversion;
var
  ver:string;
  tm:tdatetime;
  //i1,i2,i3,i4,i5,i6,i7:integer;
begin
  if label10.Caption='EDIT' then begin
    tm:=now;
    with query5 do begin
      close;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select ver from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('ver').isnull then ver:=fieldbyname('ver').value else ver:='0';
    end;
    //ver:=inttostr(strtoint(ver)+1);
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_pdn_updversion_01(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('seq1').value;
      params[3].asstring:=ver;
      execute;
    end;
    label10.Caption:='VIEW';
  end;
end;

procedure Tfrmvoyage.SaveVersionHistory1Click(Sender: TObject);
var
  tm:tdatetime;
begin
    tm:=now;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_pdn_updversion(:x1,:x2,:x3)';
      params[0].asdatetime:=tm;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
end;

procedure Tfrmvoyage.BitBtn7Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_pdn_updpack(:x1,:x2)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    execute;
  end;
    if frmibooking=nil then frmibooking:=tfrmibooking.Create(nil);
    with frmibooking.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_pack where seq=:x1 and seq1=:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      open;
    end;
    frmibooking.Show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmvoyage.BitBtn8Click(Sender: TObject);
var
  str1,str2,str3:string;
begin
  {
  str2:=extractfiledir(application.ExeName);
  with query7 do begin
    close;
    params.clear;
    commandtext:='select ra1,ra2,ra31,ra4 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('ra1').value=true then str3:='1' else str3:='0';
    if fieldbyname('ra2').value=true then str3:=str3+'1' else str3:=str3+'0';
    if fieldbyname('ra31').value=true then str3:=str3+'1' else str3:=str3+'0';
    if fieldbyname('ra4').value=true then str3:=str3+'1' else str3:=str3+'0';
  end;
  if pos('AIR',uppercase(query1.fieldbyname('shpm').value))>0 then begin
    str1:=Query1.fieldbyname('seq').asstring+' '+Query1.fieldbyname('seq1').asstring+' '+frmmain.ComboBox1.text+' '+str3;
    shellexecute(0,'open',pchar(str2+'\AirRequest_Form\ReasonsForShipModeChange.exe'),pchar(str1),pchar(str2+'\AirRequest_Form'),sw_show);
  end;
  }
  if frmairrequestform=nil then frmairrequestform:=tfrmairrequestform.create(nil);
  frmairrequestform.show;
end;

procedure Tfrmvoyage.BitBtn9Click(Sender: TObject);
var
  seq:integer;
  divn:string;
  rmm:boolean;
begin
  screen.cursor:=crSQLWait;
  try
  with query6 do begin
    close;
    params.clear;
    commandtext:='select rmm from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    rmm:=fieldbyname('rmm').value;
  end;
  if rmm then begin
  if not query2.fieldbyname('j_no').isnull then begin
    with sqlquery1 do begin
      close;
      params.clear;
      commandtext:='select prjno from phgdb..tbl_cmpproj_list where prjno='''+query2.fieldbyname('j_no').value+'''';
      open;
      if not fieldbyname('prjno').isnull then showmessage('Already completed!')
      else begin
        with sqlquery2 do begin
          close;
          params.clear;
          commandtext:='select max(seq) as x1 from phgdb..tbl_cmpproj_list';
          open;
          if not fieldbyname('x1').isnull then seq:=fieldbyname('x1').value+1 else seq:=1;
        end;
        with clientdataset2 do begin
          close;
          params.clear;
          commandtext:='select grp from cust_exfty where pgrp='''+copy(query2.fieldbyname('j_no').value,1,4)+'''';
          open;
          divn:=fieldbyname('grp').value;
        end;
        with sqlquery2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftdatetime,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          commandtext:='insert into phgdb..tbl_cmpproj_list(seq,cmpdt,cmpwk,div,prjno,fty,pdn,usr) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
          params[0].asinteger:=seq;
          params[1].asdatetime:=query1.fieldbyname('exfty').value;
          params[2].asinteger:=query1.fieldbyname('wk').value;
          params[3].asstring:=divn;
          params[4].asstring:=query2.fieldbyname('j_no').value;
          params[5].asstring:=query1.fieldbyname('tplant').value;
          params[6].asstring:=query1.fieldbyname('pdn').value;
          params[7].asstring:=frmmain.combobox1.text;
          execute;
        end;
        showmessage('Project completed!');
      end;
    end;
  end;
  end else showmessage('You have not right!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmvoyage.ExportRWO1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct b.voyn as Manifest,a.j_no as Project,a.j2_job as WO,a.rwo as RWO,a.cstyle as Cust_Style,a.acol as Clr_Code,'
                  +'a.qty as RWO_Qty,a.sqty as PDN_Qty from tbl_pdn_voyage_rwo a,tbl_pdn_voyage_m b where a.seq=b.seq and a.seq1=b.seq1 and a.seq=:x1';
      params[0].AsInteger:=query1.fieldbyname('seq').value;
      open;
    end;
    if savedialog1.Execute then exls1.FileName:=savedialog1.FileName;
    exls1.Execute;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmvoyage.FormCreate(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='PDN Manifest';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - PDN Manifest';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmvoyage.FormDestroy(Sender: TObject);
begin
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
  }
end;

end.
