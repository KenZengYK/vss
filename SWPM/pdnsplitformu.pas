unit pdnsplitformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGridEh, DB,
  DBClient, GridsEh;

type
  Tfrmpdnsplit = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGridEh1: TDBGridEh;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    Query8: TClientDataSet;
    DBGridEh2: TDBGridEh;
    Label3: TLabel;
    Label4: TLabel;
    Query1: TClientDataSet;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh4: TDBGridEh;
    DataSource4: TDataSource;
    DBGridEh5: TDBGridEh;
    Splitter3: TSplitter;
    DBGridEh6: TDBGridEh;
    DBGridEh7: TDBGridEh;
    Splitter4: TSplitter;
    DBGridEh8: TDBGridEh;
    DBGridEh9: TDBGridEh;
    Splitter5: TSplitter;
    DBGridEh10: TDBGridEh;
    DBGridEh11: TDBGridEh;
    Splitter6: TSplitter;
    DBGridEh12: TDBGridEh;
    DBGridEh13: TDBGridEh;
    Splitter7: TSplitter;
    DBGridEh14: TDBGridEh;
    DBGridEh15: TDBGridEh;
    Splitter8: TSplitter;
    DBGridEh16: TDBGridEh;
    DBGridEh17: TDBGridEh;
    Splitter9: TSplitter;
    DBGridEh18: TDBGridEh;
    DBGridEh19: TDBGridEh;
    Splitter10: TSplitter;
    DBGridEh20: TDBGridEh;
    DBGridEh21: TDBGridEh;
    Splitter11: TSplitter;
    DBGridEh22: TDBGridEh;
    DBGridEh23: TDBGridEh;
    Splitter12: TSplitter;
    DBGridEh24: TDBGridEh;
    DBGridEh25: TDBGridEh;
    Splitter13: TSplitter;
    DBGridEh26: TDBGridEh;
    DBGridEh27: TDBGridEh;
    Splitter14: TSplitter;
    DBGridEh28: TDBGridEh;
    DBGridEh29: TDBGridEh;
    Splitter15: TSplitter;
    DBGridEh30: TDBGridEh;
    DBGridEh31: TDBGridEh;
    Splitter16: TSplitter;
    DBGridEh32: TDBGridEh;
    DBGridEh33: TDBGridEh;
    Splitter17: TSplitter;
    DBGridEh34: TDBGridEh;
    DBGridEh35: TDBGridEh;
    Splitter18: TSplitter;
    DBGridEh36: TDBGridEh;
    DBGridEh37: TDBGridEh;
    Splitter19: TSplitter;
    DBGridEh38: TDBGridEh;
    DBGridEh39: TDBGridEh;
    Splitter20: TSplitter;
    DBGridEh40: TDBGridEh;
    DBGridEh41: TDBGridEh;
    Splitter21: TSplitter;
    DBGridEh42: TDBGridEh;
    SpeedButton2: TSpeedButton;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    TabSheet29: TTabSheet;
    TabSheet30: TTabSheet;
    TabSheet31: TTabSheet;
    DBGridEh43: TDBGridEh;
    Splitter22: TSplitter;
    DBGridEh44: TDBGridEh;
    DBGridEh45: TDBGridEh;
    Splitter23: TSplitter;
    DBGridEh46: TDBGridEh;
    DBGridEh47: TDBGridEh;
    Splitter24: TSplitter;
    DBGridEh48: TDBGridEh;
    DBGridEh49: TDBGridEh;
    Splitter25: TSplitter;
    DBGridEh50: TDBGridEh;
    DBGridEh51: TDBGridEh;
    Splitter26: TSplitter;
    DBGridEh52: TDBGridEh;
    DBGridEh53: TDBGridEh;
    Splitter27: TSplitter;
    DBGridEh54: TDBGridEh;
    DBGridEh55: TDBGridEh;
    Splitter28: TSplitter;
    DBGridEh56: TDBGridEh;
    DBGridEh57: TDBGridEh;
    Splitter29: TSplitter;
    DBGridEh58: TDBGridEh;
    DBGridEh59: TDBGridEh;
    Splitter30: TSplitter;
    DBGridEh60: TDBGridEh;
    DBGridEh61: TDBGridEh;
    Splitter31: TSplitter;
    DBGridEh62: TDBGridEh;
    TabSheet32: TTabSheet;
    TabSheet33: TTabSheet;
    TabSheet34: TTabSheet;
    TabSheet35: TTabSheet;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    TabSheet38: TTabSheet;
    TabSheet39: TTabSheet;
    TabSheet40: TTabSheet;
    TabSheet41: TTabSheet;
    TabSheet42: TTabSheet;
    TabSheet43: TTabSheet;
    TabSheet44: TTabSheet;
    TabSheet45: TTabSheet;
    TabSheet46: TTabSheet;
    TabSheet47: TTabSheet;
    TabSheet48: TTabSheet;
    TabSheet49: TTabSheet;
    TabSheet50: TTabSheet;
    TabSheet51: TTabSheet;
    DBGridEh63: TDBGridEh;
    Splitter32: TSplitter;
    DBGridEh64: TDBGridEh;
    DBGridEh65: TDBGridEh;
    Splitter33: TSplitter;
    DBGridEh66: TDBGridEh;
    DBGridEh67: TDBGridEh;
    Splitter34: TSplitter;
    DBGridEh68: TDBGridEh;
    DBGridEh69: TDBGridEh;
    Splitter35: TSplitter;
    DBGridEh70: TDBGridEh;
    DBGridEh71: TDBGridEh;
    Splitter36: TSplitter;
    DBGridEh72: TDBGridEh;
    DBGridEh73: TDBGridEh;
    Splitter37: TSplitter;
    DBGridEh74: TDBGridEh;
    DBGridEh75: TDBGridEh;
    Splitter38: TSplitter;
    DBGridEh76: TDBGridEh;
    DBGridEh77: TDBGridEh;
    Splitter39: TSplitter;
    DBGridEh78: TDBGridEh;
    DBGridEh79: TDBGridEh;
    Splitter40: TSplitter;
    DBGridEh80: TDBGridEh;
    DBGridEh81: TDBGridEh;
    Splitter41: TSplitter;
    DBGridEh82: TDBGridEh;
    DBGridEh83: TDBGridEh;
    Splitter42: TSplitter;
    DBGridEh84: TDBGridEh;
    DBGridEh85: TDBGridEh;
    Splitter43: TSplitter;
    DBGridEh86: TDBGridEh;
    DBGridEh87: TDBGridEh;
    Splitter44: TSplitter;
    DBGridEh88: TDBGridEh;
    DBGridEh89: TDBGridEh;
    Splitter45: TSplitter;
    DBGridEh90: TDBGridEh;
    DBGridEh91: TDBGridEh;
    Splitter46: TSplitter;
    DBGridEh92: TDBGridEh;
    DBGridEh93: TDBGridEh;
    Splitter47: TSplitter;
    DBGridEh94: TDBGridEh;
    DBGridEh95: TDBGridEh;
    Splitter48: TSplitter;
    DBGridEh96: TDBGridEh;
    DBGridEh97: TDBGridEh;
    Splitter49: TSplitter;
    DBGridEh98: TDBGridEh;
    DBGridEh99: TDBGridEh;
    Splitter50: TSplitter;
    DBGridEh100: TDBGridEh;
    DBGridEh101: TDBGridEh;
    Splitter51: TSplitter;
    DBGridEh102: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Query8AfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnsplit: Tfrmpdnsplit;

implementation

uses mainformu, pdnformu;

{$R *.dfm}

procedure Tfrmpdnsplit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_pdn_delnew(:x1)';
    params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
    execute;
  end;
  action:=cafree;
  frmpdnsplit:=nil;
end;

procedure Tfrmpdnsplit.BitBtn1Click(Sender: TObject);
begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='update tbl_pdn_m set pdn='''+edit2.text+''' where seq=:x1';
    params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
    execute;
  end;
  if query8.state=dsedit then query8.post;
end;

procedure Tfrmpdnsplit.SpeedButton1Click(Sender: TObject);
var
  dseq:integer;
begin

end;

procedure Tfrmpdnsplit.FormShow(Sender: TObject);
var
  i:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_rwo where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  for i:=1 to 50 do begin
    pagecontrol1.Pages[i].TabVisible:=frmpdn.PageControl1.Pages[i+1].TabVisible;
    pagecontrol1.Pages[i].Caption:=frmpdn.PageControl1.Pages[i+1].Caption;
  end;
  pagecontrol1.ActivePageIndex:=0;
end;

procedure Tfrmpdnsplit.PageControl1Change(Sender: TObject);
var
  jno,job,rwo,acol:string;
  dseq:integer;
begin
  if pagecontrol1.ActivePageIndex>0 then begin
    dseq:=pagecontrol1.ActivePageIndex;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select j_no,j2_job,rwo,acol from tbl_pdn_rwo where seq=:x1 and dseq=:x2';
      params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
      params[1].asinteger:=dseq;
      open;
      jno:=fieldbyname('j_no').value;
      job:=fieldbyname('j2_job').value;
      rwo:=fieldbyname('rwo').value;
      acol:=fieldbyname('acol').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_pdn_d where seq=:x1 and j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5';
      params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
      params[1].asstring:=jno;
      params[2].asstring:=job;
      params[3].asstring:=rwo;
      params[4].asstring:=acol;
      open;
    end;
    with query8 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_pdn_d where seq=:x1 and j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5';
      params[0].asinteger:=Query1.fieldbyname('seq').value;
      params[1].asstring:=jno;
      params[2].asstring:=job;
      params[3].asstring:=rwo;
      params[4].asstring:=acol;
      open;
    end;
    TDBGRIDEH(pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Controls[1]).columns[3].Title.Caption:='PDN Ttl Qty';
    TDBGRIDEH(pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Controls[2]).columns[3].Title.Caption:='PDN Ttl Qty';
  end;
end;

procedure Tfrmpdnsplit.Query8AfterPost(DataSet: TDataSet);
begin
  if query8.ApplyUpdates(-1)>0 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='update tbl_pdn_d set sqty=:x1 where seq=:x2 and j_no=:x3 and j2_job=:x4 and rwo=:x5 and acol=:x6 and did=:x7';
      params[0].asinteger:=query8.fieldbyname('sqty').value;
      params[1].asinteger:=query8.fieldbyname('seq').value;
      params[2].asstring:=query8.fieldbyname('j_no').value;
      params[3].asstring:=query8.fieldbyname('j2_job').value;
      params[4].asstring:=query8.fieldbyname('rwo').value;
      params[5].asstring:=query8.fieldbyname('acol').value;
      params[6].asinteger:=query8.fieldbyname('did').value;
      execute;
    end;
  end;
  if query8.fieldbyname('sqty').value>0 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='update tbl_pdn_d set sqty=osqty-:x1 where seq=:x2 and j_no=:x3 and j2_job=:x4 and rwo=:x5 and acol=:x6 and did=:x7';
      params[0].asinteger:=query8.fieldbyname('sqty').value;
      params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
      params[2].asstring:=query8.fieldbyname('j_no').value;
      params[3].asstring:=query8.fieldbyname('j2_job').value;
      params[4].asstring:=query8.fieldbyname('rwo').value;
      params[5].asstring:=query8.fieldbyname('acol').value;
      params[6].asinteger:=query8.fieldbyname('did').value;
      execute;
    end;
  end;
end;

procedure Tfrmpdnsplit.SpeedButton2Click(Sender: TObject);
var
  dseq,maxd:integer;
begin
  if not query2.fieldbyname('dseq').isnull then begin
    dseq:=query2.fieldbyname('dseq').value;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select max(dseq) as q1 from tbl_pdn_rwo where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      maxd:=fieldbyname('q1').value;
    end;
    if application.messagebox('Delete this RWO?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_removerwo(:x1,:x2)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=dseq;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_rwo where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
        if dseq<maxd then locate('dseq',dseq,[lopartialkey])
        else last;
      end;
    end;
  end;
end;

procedure Tfrmpdnsplit.DBGridEh3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage((sender as tdbgrideh).handle,wm_keydown,vk_tab,0);
end;

end.
