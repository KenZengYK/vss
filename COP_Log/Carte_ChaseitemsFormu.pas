unit Carte_ChaseitemsFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, ADODB, DB, StdCtrls, Mask, DBCtrls,
  rxToolEdit, RXDBCtrl, Buttons, RzBckgnd;

type
  TfrmCarte_Chaseitems = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    GroupBox2: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    SpeedButton1: TSpeedButton;
    xl01: TLabel;
    xle01: TDBEdit;
    zh01: TLabel;
    zhe01: TDBEdit;
    ly01: TLabel;
    lye01: TDBDateEdit;
    lx01: TLabel;
    lxe01: TDBDateEdit;
    ap01: TLabel;
    ape01: TDBDateEdit;
    zs01: TLabel;
    zse01: TDBEdit;
    wc01: TDBCheckBox;
    xl02: TLabel;
    xle02: TDBEdit;
    zh02: TLabel;
    zhe02: TDBEdit;
    ly02: TLabel;
    lye02: TDBDateEdit;
    lx02: TLabel;
    lxe02: TDBDateEdit;
    ap02: TLabel;
    ape02: TDBDateEdit;
    zs02: TLabel;
    zse02: TDBEdit;
    wc02: TDBCheckBox;
    xl03: TLabel;
    xle03: TDBEdit;
    zh03: TLabel;
    zhe03: TDBEdit;
    ly03: TLabel;
    lye03: TDBDateEdit;
    lx03: TLabel;
    lxe03: TDBDateEdit;
    ap03: TLabel;
    ape03: TDBDateEdit;
    zs03: TLabel;
    zse03: TDBEdit;
    wc03: TDBCheckBox;
    xl04: TLabel;
    xle04: TDBEdit;
    zh04: TLabel;
    zhe04: TDBEdit;
    ly04: TLabel;
    lye04: TDBDateEdit;
    lx04: TLabel;
    lxe04: TDBDateEdit;
    ap04: TLabel;
    ape04: TDBDateEdit;
    zs04: TLabel;
    zse04: TDBEdit;
    wc04: TDBCheckBox;
    xl05: TLabel;
    xle05: TDBEdit;
    zh05: TLabel;
    zhe05: TDBEdit;
    ly05: TLabel;
    lye05: TDBDateEdit;
    lx05: TLabel;
    lxe05: TDBDateEdit;
    ap05: TLabel;
    ape05: TDBDateEdit;
    zs05: TLabel;
    zse05: TDBEdit;
    wc05: TDBCheckBox;
    xl06: TLabel;
    xle06: TDBEdit;
    zh06: TLabel;
    zhe06: TDBEdit;
    ly06: TLabel;
    lye06: TDBDateEdit;
    lx06: TLabel;
    lxe06: TDBDateEdit;
    ap06: TLabel;
    ape06: TDBDateEdit;
    zs06: TLabel;
    zse06: TDBEdit;
    wc06: TDBCheckBox;
    xl07: TLabel;
    xle07: TDBEdit;
    zh07: TLabel;
    zhe07: TDBEdit;
    ly07: TLabel;
    lye07: TDBDateEdit;
    lx07: TLabel;
    lxe07: TDBDateEdit;
    ap07: TLabel;
    ape07: TDBDateEdit;
    zs07: TLabel;
    zse07: TDBEdit;
    wc07: TDBCheckBox;
    xl08: TLabel;
    xle08: TDBEdit;
    zh08: TLabel;
    zhe08: TDBEdit;
    ly08: TLabel;
    lye08: TDBDateEdit;
    lx08: TLabel;
    lxe08: TDBDateEdit;
    ap08: TLabel;
    ape08: TDBDateEdit;
    zs08: TLabel;
    zse08: TDBEdit;
    wc08: TDBCheckBox;
    xl09: TLabel;
    xle09: TDBEdit;
    zh09: TLabel;
    zhe09: TDBEdit;
    ly09: TLabel;
    lye09: TDBDateEdit;
    lx09: TLabel;
    lxe09: TDBDateEdit;
    ap09: TLabel;
    ape09: TDBDateEdit;
    zs09: TLabel;
    zse09: TDBEdit;
    wc09: TDBCheckBox;
    xl10: TLabel;
    xle10: TDBEdit;
    zh10: TLabel;
    zhe10: TDBEdit;
    ly10: TLabel;
    lye10: TDBDateEdit;
    lx10: TLabel;
    lxe10: TDBDateEdit;
    ap10: TLabel;
    ape10: TDBDateEdit;
    zs10: TLabel;
    zse10: TDBEdit;
    wc10: TDBCheckBox;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label13: TLabel;
    DBText1: TDBText;
    RzBackground3: TRzBackground;
    RzBackground1: TRzBackground;
    RzBackground2: TRzBackground;
    RzBackground4: TRzBackground;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBDateEdit1: TDBDateEdit;
    GroupBox3: TGroupBox;
    c01: TLabel;
    r01: TLabel;
    s01: TLabel;
    c02: TLabel;
    r02: TLabel;
    s02: TLabel;
    c03: TLabel;
    r03: TLabel;
    s03: TLabel;
    c04: TLabel;
    r04: TLabel;
    s04: TLabel;
    c05: TLabel;
    r05: TLabel;
    s05: TLabel;
    c06: TLabel;
    r06: TLabel;
    s06: TLabel;
    c07: TLabel;
    r07: TLabel;
    s07: TLabel;
    c08: TLabel;
    r08: TLabel;
    s08: TLabel;
    c09: TLabel;
    r09: TLabel;
    s09: TLabel;
    ce01: TDBEdit;
    re01: TDBDateEdit;
    se01: TDBEdit;
    ce02: TDBEdit;
    re02: TDBDateEdit;
    se02: TDBEdit;
    ce03: TDBEdit;
    re03: TDBDateEdit;
    se03: TDBEdit;
    ce04: TDBEdit;
    re04: TDBDateEdit;
    se04: TDBEdit;
    ce05: TDBEdit;
    re05: TDBDateEdit;
    se05: TDBEdit;
    ce06: TDBEdit;
    re06: TDBDateEdit;
    se06: TDBEdit;
    ce07: TDBEdit;
    re07: TDBDateEdit;
    se07: TDBEdit;
    ce08: TDBEdit;
    re08: TDBDateEdit;
    se08: TDBEdit;
    ce09: TDBEdit;
    re09: TDBDateEdit;
    se09: TDBEdit;
    GroupBox4: TGroupBox;
    jc01: TLabel;
    jr01: TLabel;
    js01: TLabel;
    jc02: TLabel;
    jr02: TLabel;
    js02: TLabel;
    jc03: TLabel;
    jr03: TLabel;
    js03: TLabel;
    jc04: TLabel;
    jr04: TLabel;
    js04: TLabel;
    jc05: TLabel;
    jr05: TLabel;
    js05: TLabel;
    jc06: TLabel;
    jr06: TLabel;
    js06: TLabel;
    jc07: TLabel;
    jr07: TLabel;
    js07: TLabel;
    jc08: TLabel;
    jr08: TLabel;
    js08: TLabel;
    jc09: TLabel;
    jr09: TLabel;
    js09: TLabel;
    jce01: TDBEdit;
    jre01: TDBDateEdit;
    jse01: TDBEdit;
    jce02: TDBEdit;
    jre02: TDBDateEdit;
    jse02: TDBEdit;
    jce03: TDBEdit;
    jre03: TDBDateEdit;
    jse03: TDBEdit;
    jce04: TDBEdit;
    jre04: TDBDateEdit;
    jse04: TDBEdit;
    jce05: TDBEdit;
    jre05: TDBDateEdit;
    jse05: TDBEdit;
    jce06: TDBEdit;
    jre06: TDBDateEdit;
    jse06: TDBEdit;
    jce07: TDBEdit;
    jre07: TDBDateEdit;
    jse07: TDBEdit;
    jce08: TDBEdit;
    jre08: TDBDateEdit;
    jse08: TDBEdit;
    jce09: TDBEdit;
    jre09: TDBDateEdit;
    jse09: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    jsa01: TLabel;
    jsa02: TLabel;
    jsa03: TLabel;
    jsa04: TLabel;
    jsa05: TLabel;
    jsa06: TLabel;
    jsa07: TLabel;
    jsa08: TLabel;
    jsa09: TLabel;
    jsae01: TDBEdit;
    jsae02: TDBEdit;
    jsae03: TDBEdit;
    jsae04: TDBEdit;
    jsae05: TDBEdit;
    jsae06: TDBEdit;
    jsae07: TDBEdit;
    jsae08: TDBEdit;
    jsae09: TDBEdit;
    sa01: TLabel;
    sa02: TLabel;
    sa03: TLabel;
    sa04: TLabel;
    sa05: TLabel;
    sa06: TLabel;
    sa07: TLabel;
    sa08: TLabel;
    sa09: TLabel;
    sae01: TDBEdit;
    sae02: TDBEdit;
    sae03: TDBEdit;
    sae04: TDBEdit;
    sae05: TDBEdit;
    sae06: TDBEdit;
    sae07: TDBEdit;
    sae08: TDBEdit;
    sae09: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure ADODataSetrcntChange(Sender: TField);
    procedure ADODataSetkcntChange(Sender: TField);
    procedure ADODataSetrqtyChange(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure showmoreitemkeycode;
  end;

var
  frmCarte_Chaseitems: TfrmCarte_Chaseitems;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_RequestactionFormu,
Carte_CRitemsFormu, Carte_KeycodechooseFormu;

{$R *.dfm}

procedure TfrmCarte_Chaseitems.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  adodataset1.fieldbyname('item_r1qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r2qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r3qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r4qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r5qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r6qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r7qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r8qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_r9qty').onchange:=adodatasetrqtychange;
  adodataset1.fieldbyname('item_rcnt_o').onchange:=adodatasetrcntchange;
  adodataset1.fieldbyname('item_rcnt_a').onchange:=adodatasetrcntchange;
  adodataset1.fieldbyname('kc_cnt_o').onchange:=adodatasetkcntchange;
  adodataset1.fieldbyname('kc_cnt_a').onchange:=adodatasetkcntchange;
  (adodataset1.fieldbyname('item_r1dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r2dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r3dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r4dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r5dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r6dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r7dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r8dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('item_r9dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r1_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r1_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r1_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r2_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r2_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r2_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r3_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r3_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r3_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r4_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r4_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r4_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r5_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r5_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r5_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r6_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r6_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r6_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r7_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r7_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r7_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r8_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r8_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r8_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r9_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r9_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r9_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r10_ex_o') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r10_ex_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('kc_r10_act_cmpdt') as tdatetimefield).displayformat:='mm/dd';
end;

procedure TfrmCarte_Chaseitems.ADODataSetkcntChange(Sender: TField);
begin
  if adodataset1.fieldbyname('kc_cnt_o').isnull then
  adodataset1.fieldbyname('kc_cnt_o').value:=0;
  if adodataset1.fieldbyname('kc_cnt_a').isnull then
  adodataset1.fieldbyname('kc_cnt_a').value:=0;
  showmoreitemkeycode;
end;

procedure TfrmCarte_Chaseitems.ADODataSetrcntChange(Sender: TField);
begin
  if adodataset1.fieldbyname('item_rcnt_o').isnull then
  adodataset1.fieldbyname('item_rcnt_o').value:=0;
  if adodataset1.fieldbyname('item_rcnt_a').isnull then
  adodataset1.fieldbyname('item_rcnt_a').value:=0;
  showmoreitemkeycode;
end;

procedure TfrmCarte_Chaseitems.ADODataSetrqtyChange(Sender: TField);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9:double;
begin
  if not adodataset1.fieldbyname('item_r1qty').isnull then
  q1:=adodataset1.fieldbyname('item_r1qty').value else q1:=0;
  if not adodataset1.fieldbyname('item_r2qty').isnull then
  q2:=adodataset1.fieldbyname('item_r2qty').value else q2:=0;
  if not adodataset1.fieldbyname('item_r3qty').isnull then
  q3:=adodataset1.fieldbyname('item_r3qty').value else q3:=0;
  if not adodataset1.fieldbyname('item_r4qty').isnull then
  q4:=adodataset1.fieldbyname('item_r4qty').value else q4:=0;
  if not adodataset1.fieldbyname('item_r5qty').isnull then
  q5:=adodataset1.fieldbyname('item_r5qty').value else q5:=0;
  if not adodataset1.fieldbyname('item_r6qty').isnull then
  q6:=adodataset1.fieldbyname('item_r6qty').value else q6:=0;
  if not adodataset1.fieldbyname('item_r7qty').isnull then
  q7:=adodataset1.fieldbyname('item_r7qty').value else q7:=0;
  if not adodataset1.fieldbyname('item_r8qty').isnull then
  q8:=adodataset1.fieldbyname('item_r8qty').value else q8:=0;
  if not adodataset1.fieldbyname('item_r9qty').isnull then
  q9:=adodataset1.fieldbyname('item_r9qty').value else q9:=0;
  adodataset1.fieldbyname('item_rqty').value:=q1+q2+q3+q4+q5+q6+q7+q8+q9;
  adodataset1.fieldbyname('item_bqty').value:=adodataset1.fieldbyname('item_tqty').value-(q1+q2+q3+q4+q5+q6+q7+q8+q9);
end;

procedure TfrmCarte_Chaseitems.BitBtn1Click(Sender: TObject);
var
  seq:integer;
begin
  seq:=adodataset1.fieldbyname('seq31').value;
  if (adodataset1.state=dsedit) or (adodataset1.state=dsinsert) then adodataset1.post;
  with frmCarte_CRitems.adodataset1 do begin
    close;
    commandtext:='exec sp_carte_genchaseitems_new :x1';
    parameters[0].value:=seq;
    open;
  end;
end;

procedure TfrmCarte_Chaseitems.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Chaseitems:=nil;
end;

procedure TfrmCarte_Chaseitems.FormShow(Sender: TObject);
begin
  showmoreitemkeycode;
end;

procedure TfrmCarte_Chaseitems.showmoreitemkeycode;
var
  rcnt,kcnt:integer;
begin
  jc01.visible:=false; jce01.visible:=false; jr01.visible:=false; jre01.visible:=false; js01.visible:=false; jse01.visible:=false; jsa01.visible:=false; jsae01.visible:=false;
  jc02.visible:=false; jce02.visible:=false; jr02.visible:=false; jre02.visible:=false; js02.visible:=false; jse02.visible:=false; jsa02.visible:=false; jsae02.visible:=false;
  jc03.visible:=false; jce03.visible:=false; jr03.visible:=false; jre03.visible:=false; js03.visible:=false; jse03.visible:=false; jsa03.visible:=false; jsae03.visible:=false;
  jc04.visible:=false; jce04.visible:=false; jr04.visible:=false; jre04.visible:=false; js04.visible:=false; jse04.visible:=false; jsa04.visible:=false; jsae04.visible:=false;
  jc05.visible:=false; jce05.visible:=false; jr05.visible:=false; jre05.visible:=false; js05.visible:=false; jse05.visible:=false; jsa05.visible:=false; jsae05.visible:=false;
  jc06.visible:=false; jce06.visible:=false; jr06.visible:=false; jre06.visible:=false; js06.visible:=false; jse06.visible:=false; jsa06.visible:=false; jsae06.visible:=false;
  jc07.visible:=false; jce07.visible:=false; jr07.visible:=false; jre07.visible:=false; js07.visible:=false; jse07.visible:=false; jsa07.visible:=false; jsae07.visible:=false;
  jc08.visible:=false; jce08.visible:=false; jr08.visible:=false; jre08.visible:=false; js08.visible:=false; jse08.visible:=false; jsa08.visible:=false; jsae08.visible:=false;
  jc09.visible:=false; jce09.visible:=false; jr09.visible:=false; jre09.visible:=false; js09.visible:=false; jse09.visible:=false; jsa09.visible:=false; jsae09.visible:=false;

  c01.visible:=false; ce01.visible:=false; r01.visible:=false; re01.visible:=false; s01.visible:=false; se01.visible:=false; sa01.visible:=false; sae01.visible:=false;
  c02.visible:=false; ce02.visible:=false; r02.visible:=false; re02.visible:=false; s02.visible:=false; se02.visible:=false; sa02.visible:=false; sae02.visible:=false;
  c03.visible:=false; ce03.visible:=false; r03.visible:=false; re03.visible:=false; s03.visible:=false; se03.visible:=false; sa03.visible:=false; sae03.visible:=false;
  c04.visible:=false; ce04.visible:=false; r04.visible:=false; re04.visible:=false; s04.visible:=false; se04.visible:=false; sa04.visible:=false; sae04.visible:=false;
  c05.visible:=false; ce05.visible:=false; r05.visible:=false; re05.visible:=false; s05.visible:=false; se05.visible:=false; sa05.visible:=false; sae05.visible:=false;
  c06.visible:=false; ce06.visible:=false; r06.visible:=false; re06.visible:=false; s06.visible:=false; se06.visible:=false; sa06.visible:=false; sae06.visible:=false;
  c07.visible:=false; ce07.visible:=false; r07.visible:=false; re07.visible:=false; s07.visible:=false; se07.visible:=false; sa07.visible:=false; sae07.visible:=false;
  c08.visible:=false; ce08.visible:=false; r08.visible:=false; re08.visible:=false; s08.visible:=false; se08.visible:=false; sa08.visible:=false; sae08.visible:=false;
  c09.visible:=false; ce09.visible:=false; r09.visible:=false; re09.visible:=false; s09.visible:=false; se09.visible:=false; sa09.visible:=false; sae09.visible:=false;

  xl01.visible:=false; xle01.visible:=false; zh01.visible:=false; zhe01.visible:=false; ly01.visible:=false; lye01.visible:=false; lx01.visible:=false;
  lxe01.visible:=false; ap01.visible:=false; ape01.visible:=false; zs01.visible:=false; zse01.visible:=false; wc01.visible:=false;
  xl02.visible:=false; xle02.visible:=false; zh02.visible:=false; zhe02.visible:=false; ly02.visible:=false; lye02.visible:=false; lx02.visible:=false;
  lxe02.visible:=false; ap02.visible:=false; ape02.visible:=false; zs02.visible:=false; zse02.visible:=false; wc02.visible:=false;
  xl03.visible:=false; xle03.visible:=false; zh03.visible:=false; zhe03.visible:=false; ly03.visible:=false; lye03.visible:=false; lx03.visible:=false;
  lxe03.visible:=false; ap03.visible:=false; ape03.visible:=false; zs03.visible:=false; zse03.visible:=false; wc03.visible:=false;
  xl04.visible:=false; xle04.visible:=false; zh04.visible:=false; zhe04.visible:=false; ly04.visible:=false; lye04.visible:=false; lx04.visible:=false;
  lxe04.visible:=false; ap04.visible:=false; ape04.visible:=false; zs04.visible:=false; zse04.visible:=false; wc04.visible:=false;
  xl05.visible:=false; xle05.visible:=false; zh05.visible:=false; zhe05.visible:=false; ly05.visible:=false; lye05.visible:=false; lx05.visible:=false;
  lxe05.visible:=false; ap05.visible:=false; ape05.visible:=false; zs05.visible:=false; zse05.visible:=false; wc05.visible:=false;
  xl06.visible:=false; xle06.visible:=false; zh06.visible:=false; zhe06.visible:=false; ly06.visible:=false; lye06.visible:=false; lx06.visible:=false;
  lxe06.visible:=false; ap06.visible:=false; ape06.visible:=false; zs06.visible:=false; zse06.visible:=false; wc06.visible:=false;
  xl07.visible:=false; xle07.visible:=false; zh07.visible:=false; zhe07.visible:=false; ly07.visible:=false; lye07.visible:=false; lx07.visible:=false;
  lxe07.visible:=false; ap07.visible:=false; ape07.visible:=false; zs07.visible:=false; zse07.visible:=false; wc07.visible:=false;
  xl08.visible:=false; xle08.visible:=false; zh08.visible:=false; zhe08.visible:=false; ly08.visible:=false; lye08.visible:=false; lx08.visible:=false;
  lxe08.visible:=false; ap08.visible:=false; ape08.visible:=false; zs08.visible:=false; zse08.visible:=false; wc08.visible:=false;
  xl09.visible:=false; xle09.visible:=false; zh09.visible:=false; zhe09.visible:=false; ly09.visible:=false; lye09.visible:=false; lx09.visible:=false;
  lxe09.visible:=false; ap09.visible:=false; ape09.visible:=false; zs09.visible:=false; zse09.visible:=false; wc09.visible:=false;
  xl10.visible:=false; xle10.visible:=false; zh10.visible:=false; zhe10.visible:=false; ly10.visible:=false; lye10.visible:=false; lx10.visible:=false;
  lxe10.visible:=false; ap10.visible:=false; ape10.visible:=false; zs10.visible:=false; zse10.visible:=false; wc10.visible:=false;
  if (not adodataset1.fieldbyname('item_rcnt_a').isnull) and (not adodataset1.fieldbyname('item_rcnt_o').isnull) then begin
    if adodataset1.fieldbyname('item_rcnt_a').value>0 then rcnt:=adodataset1.fieldbyname('item_rcnt_a').value
    else rcnt:=adodataset1.fieldbyname('item_rcnt_o').value;
  end else rcnt:=0;
  if (not adodataset1.fieldbyname('kc_cnt_a').isnull) and (not adodataset1.fieldbyname('kc_cnt_o').isnull) then begin
    if adodataset1.fieldbyname('kc_cnt_a').value>0 then kcnt:=adodataset1.fieldbyname('kc_cnt_a').value
    else kcnt:=adodataset1.fieldbyname('kc_cnt_o').value;
  end else kcnt:=0;
  if rcnt=9 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='4'; jce05.EditText:='5';
    jce06.EditText:='6'; jce07.EditText:='7'; jce08.EditText:='8'; jce09.EditText:='9';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
    jc04.visible:=true; jce04.visible:=true; jr04.visible:=true; jre04.visible:=true; js04.visible:=true; jse04.visible:=true; jsa04.visible:=true; jsae04.visible:=true;
    jc05.visible:=true; jce05.visible:=true; jr05.visible:=true; jre05.visible:=true; js05.visible:=true; jse05.visible:=true; jsa05.visible:=true; jsae05.visible:=true;
    jc06.visible:=true; jce06.visible:=true; jr06.visible:=true; jre06.visible:=true; js06.visible:=true; jse06.visible:=true; jsa06.visible:=true; jsae06.visible:=true;
    jc07.visible:=true; jce07.visible:=true; jr07.visible:=true; jre07.visible:=true; js07.visible:=true; jse07.visible:=true; jsa07.visible:=true; jsae07.visible:=true;
    jc08.visible:=true; jce08.visible:=true; jr08.visible:=true; jre08.visible:=true; js08.visible:=true; jse08.visible:=true; jsa08.visible:=true; jsae08.visible:=true;
    jc09.visible:=true; jce09.visible:=true; jr09.visible:=true; jre09.visible:=true; js09.visible:=true; jse09.visible:=true; jsa09.visible:=true; jsae09.visible:=true;
  end else if rcnt=8 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='4'; jce05.EditText:='5';
    jce06.EditText:='6'; jce07.EditText:='7'; jce08.EditText:='8'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
    jc04.visible:=true; jce04.visible:=true; jr04.visible:=true; jre04.visible:=true; js04.visible:=true; jse04.visible:=true; jsa04.visible:=true; jsae04.visible:=true;
    jc05.visible:=true; jce05.visible:=true; jr05.visible:=true; jre05.visible:=true; js05.visible:=true; jse05.visible:=true; jsa05.visible:=true; jsae05.visible:=true;
    jc06.visible:=true; jce06.visible:=true; jr06.visible:=true; jre06.visible:=true; js06.visible:=true; jse06.visible:=true; jsa06.visible:=true; jsae06.visible:=true;
    jc07.visible:=true; jce07.visible:=true; jr07.visible:=true; jre07.visible:=true; js07.visible:=true; jse07.visible:=true; jsa07.visible:=true; jsae07.visible:=true;
    jc08.visible:=true; jce08.visible:=true; jr08.visible:=true; jre08.visible:=true; js08.visible:=true; jse08.visible:=true; jsa08.visible:=true; jsae08.visible:=true;
  end else if rcnt=7 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='4'; jce05.EditText:='5';
    jce06.EditText:='6'; jce07.EditText:='7'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
    jc04.visible:=true; jce04.visible:=true; jr04.visible:=true; jre04.visible:=true; js04.visible:=true; jse04.visible:=true; jsa04.visible:=true; jsae04.visible:=true;
    jc05.visible:=true; jce05.visible:=true; jr05.visible:=true; jre05.visible:=true; js05.visible:=true; jse05.visible:=true; jsa05.visible:=true; jsae05.visible:=true;
    jc06.visible:=true; jce06.visible:=true; jr06.visible:=true; jre06.visible:=true; js06.visible:=true; jse06.visible:=true; jsa06.visible:=true; jsae06.visible:=true;
    jc07.visible:=true; jce07.visible:=true; jr07.visible:=true; jre07.visible:=true; js07.visible:=true; jse07.visible:=true; jsa07.visible:=true; jsae07.visible:=true;
  end else if rcnt=6 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='4'; jce05.EditText:='5';
    jce06.EditText:='6'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
    jc04.visible:=true; jce04.visible:=true; jr04.visible:=true; jre04.visible:=true; js04.visible:=true; jse04.visible:=true; jsa04.visible:=true; jsae04.visible:=true;
    jc05.visible:=true; jce05.visible:=true; jr05.visible:=true; jre05.visible:=true; js05.visible:=true; jse05.visible:=true; jsa05.visible:=true; jsae05.visible:=true;
    jc06.visible:=true; jce06.visible:=true; jr06.visible:=true; jre06.visible:=true; js06.visible:=true; jse06.visible:=true; jsa06.visible:=true; jsae06.visible:=true;
  end else if rcnt=5 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='4'; jce05.EditText:='5';
    jce06.EditText:='0'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
    jc04.visible:=true; jce04.visible:=true; jr04.visible:=true; jre04.visible:=true; js04.visible:=true; jse04.visible:=true; jsa04.visible:=true; jsae04.visible:=true;
    jc05.visible:=true; jce05.visible:=true; jr05.visible:=true; jre05.visible:=true; js05.visible:=true; jse05.visible:=true; jsa05.visible:=true; jsae05.visible:=true;
  end else if rcnt=4 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='4'; jce05.EditText:='0';
    jce06.EditText:='0'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
    jc04.visible:=true; jce04.visible:=true; jr04.visible:=true; jre04.visible:=true; js04.visible:=true; jse04.visible:=true; jsa04.visible:=true; jsae04.visible:=true;
  end else if rcnt=3 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='3'; jce04.EditText:='0'; jce05.EditText:='0';
    jce06.EditText:='0'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
    jc03.visible:=true; jce03.visible:=true; jr03.visible:=true; jre03.visible:=true; js03.visible:=true; jse03.visible:=true; jsa03.visible:=true; jsae03.visible:=true;
  end else if rcnt=2 then begin
    jce01.EditText:='1'; jce02.EditText:='2'; jce03.EditText:='0'; jce04.EditText:='0'; jce05.EditText:='0';
    jce06.EditText:='0'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
    jc02.visible:=true; jce02.visible:=true; jr02.visible:=true; jre02.visible:=true; js02.visible:=true; jse02.visible:=true; jsa02.visible:=true; jsae02.visible:=true;
  end else if rcnt=1 then begin
    jce01.EditText:='1'; jce02.EditText:='0'; jce03.EditText:='0'; jce04.EditText:='0'; jce05.EditText:='0';
    jce06.EditText:='0'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
    jc01.visible:=true; jce01.visible:=true; jr01.visible:=true; jre01.visible:=true; js01.visible:=true; jse01.visible:=true; jsa01.visible:=true; jsae01.visible:=true;
  end else if rcnt=0 then begin
    jce01.EditText:='0'; jce02.EditText:='0'; jce03.EditText:='0'; jce04.EditText:='0'; jce05.EditText:='0';
    jce06.EditText:='0'; jce07.EditText:='0'; jce08.EditText:='0'; jce09.EditText:='0';
  end;

  if rcnt=9 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='4'; ce05.EditText:='5';
    ce06.EditText:='6'; ce07.EditText:='7'; ce08.EditText:='8'; ce09.EditText:='9';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
    c04.visible:=true; ce04.visible:=true; r04.visible:=true; re04.visible:=true; s04.visible:=true; se04.visible:=true; sa04.visible:=true; sae04.visible:=true;
    c05.visible:=true; ce05.visible:=true; r05.visible:=true; re05.visible:=true; s05.visible:=true; se05.visible:=true; sa05.visible:=true; sae05.visible:=true;
    c06.visible:=true; ce06.visible:=true; r06.visible:=true; re06.visible:=true; s06.visible:=true; se06.visible:=true; sa06.visible:=true; sae06.visible:=true;
    c07.visible:=true; ce07.visible:=true; r07.visible:=true; re07.visible:=true; s07.visible:=true; se07.visible:=true; sa07.visible:=true; sae07.visible:=true;
    c08.visible:=true; ce08.visible:=true; r08.visible:=true; re08.visible:=true; s08.visible:=true; se08.visible:=true; sa08.visible:=true; sae08.visible:=true;
    c09.visible:=true; ce09.visible:=true; r09.visible:=true; re09.visible:=true; s09.visible:=true; se09.visible:=true; sa09.visible:=true; sae09.visible:=true;
  end else if rcnt=8 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='4'; ce05.EditText:='5';
    ce06.EditText:='6'; ce07.EditText:='7'; ce08.EditText:='8'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
    c04.visible:=true; ce04.visible:=true; r04.visible:=true; re04.visible:=true; s04.visible:=true; se04.visible:=true; sa04.visible:=true; sae04.visible:=true;
    c05.visible:=true; ce05.visible:=true; r05.visible:=true; re05.visible:=true; s05.visible:=true; se05.visible:=true; sa05.visible:=true; sae05.visible:=true;
    c06.visible:=true; ce06.visible:=true; r06.visible:=true; re06.visible:=true; s06.visible:=true; se06.visible:=true; sa06.visible:=true; sae06.visible:=true;
    c07.visible:=true; ce07.visible:=true; r07.visible:=true; re07.visible:=true; s07.visible:=true; se07.visible:=true; sa07.visible:=true; sae07.visible:=true;
    c08.visible:=true; ce08.visible:=true; r08.visible:=true; re08.visible:=true; s08.visible:=true; se08.visible:=true; sa08.visible:=true; sae08.visible:=true;
  end else if rcnt=7 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='4'; ce05.EditText:='5';
    ce06.EditText:='6'; ce07.EditText:='7'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
    c04.visible:=true; ce04.visible:=true; r04.visible:=true; re04.visible:=true; s04.visible:=true; se04.visible:=true; sa04.visible:=true; sae04.visible:=true;
    c05.visible:=true; ce05.visible:=true; r05.visible:=true; re05.visible:=true; s05.visible:=true; se05.visible:=true; sa05.visible:=true; sae05.visible:=true;
    c06.visible:=true; ce06.visible:=true; r06.visible:=true; re06.visible:=true; s06.visible:=true; se06.visible:=true; sa06.visible:=true; sae06.visible:=true;
    c07.visible:=true; ce07.visible:=true; r07.visible:=true; re07.visible:=true; s07.visible:=true; se07.visible:=true; sa07.visible:=true; sae07.visible:=true;
  end else if rcnt=6 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='4'; ce05.EditText:='5';
    ce06.EditText:='6'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
    c04.visible:=true; ce04.visible:=true; r04.visible:=true; re04.visible:=true; s04.visible:=true; se04.visible:=true; sa04.visible:=true; sae04.visible:=true;
    c05.visible:=true; ce05.visible:=true; r05.visible:=true; re05.visible:=true; s05.visible:=true; se05.visible:=true; sa05.visible:=true; sae05.visible:=true;
    c06.visible:=true; ce06.visible:=true; r06.visible:=true; re06.visible:=true; s06.visible:=true; se06.visible:=true; sa06.visible:=true; sae06.visible:=true;
  end else if rcnt=5 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='4'; ce05.EditText:='5';
    ce06.EditText:='0'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
    c04.visible:=true; ce04.visible:=true; r04.visible:=true; re04.visible:=true; s04.visible:=true; se04.visible:=true; sa04.visible:=true; sae04.visible:=true;
    c05.visible:=true; ce05.visible:=true; r05.visible:=true; re05.visible:=true; s05.visible:=true; se05.visible:=true; sa05.visible:=true; sae05.visible:=true;
  end else if rcnt=4 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='4'; ce05.EditText:='0';
    ce06.EditText:='0'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
    c04.visible:=true; ce04.visible:=true; r04.visible:=true; re04.visible:=true; s04.visible:=true; se04.visible:=true; sa04.visible:=true; sae04.visible:=true;
  end else if rcnt=3 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='3'; ce04.EditText:='0'; ce05.EditText:='0';
    ce06.EditText:='0'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
    c03.visible:=true; ce03.visible:=true; r03.visible:=true; re03.visible:=true; s03.visible:=true; se03.visible:=true; sa03.visible:=true; sae03.visible:=true;
  end else if rcnt=2 then begin
    ce01.EditText:='1'; ce02.EditText:='2'; ce03.EditText:='0'; ce04.EditText:='0'; ce05.EditText:='0';
    ce06.EditText:='0'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
    c02.visible:=true; ce02.visible:=true; r02.visible:=true; re02.visible:=true; s02.visible:=true; se02.visible:=true; sa02.visible:=true; sae02.visible:=true;
  end else if rcnt=1 then begin
    ce01.EditText:='1'; ce02.EditText:='0'; ce03.EditText:='0'; ce04.EditText:='0'; ce05.EditText:='0';
    ce06.EditText:='0'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
    c01.visible:=true; ce01.visible:=true; r01.visible:=true; re01.visible:=true; s01.visible:=true; se01.visible:=true; sa01.visible:=true; sae01.visible:=true;
  end else if rcnt=0 then begin
    ce01.EditText:='0'; ce02.EditText:='0'; ce03.EditText:='0'; ce04.EditText:='0'; ce05.EditText:='0';
    ce06.EditText:='0'; ce07.EditText:='0'; ce08.EditText:='0'; ce09.EditText:='0';
  end;

  if kcnt=10 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='5';
    xle06.EditText:='6'; xle07.EditText:='7'; xle08.EditText:='8'; xle09.EditText:='9'; xle10.EditText:='10';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
    xl05.visible:=true; xle05.visible:=true; zh05.visible:=true; zhe05.visible:=true; ly05.visible:=true; lye05.visible:=true; lx05.visible:=true;
    lxe05.visible:=true; ap05.visible:=true; ape05.visible:=true; zs05.visible:=true; zse05.visible:=true; wc05.visible:=true;
    xl06.visible:=true; xle06.visible:=true; zh06.visible:=true; zhe06.visible:=true; ly06.visible:=true; lye06.visible:=true; lx06.visible:=true;
    lxe06.visible:=true; ap06.visible:=true; ape06.visible:=true; zs06.visible:=true; zse06.visible:=true; wc06.visible:=true;
    xl07.visible:=true; xle07.visible:=true; zh07.visible:=true; zhe07.visible:=true; ly07.visible:=true; lye07.visible:=true; lx07.visible:=true;
    lxe07.visible:=true; ap07.visible:=true; ape07.visible:=true; zs07.visible:=true; zse07.visible:=true; wc07.visible:=true;
    xl08.visible:=true; xle08.visible:=true; zh08.visible:=true; zhe08.visible:=true; ly08.visible:=true; lye08.visible:=true; lx08.visible:=true;
    lxe08.visible:=true; ap08.visible:=true; ape08.visible:=true; zs08.visible:=true; zse08.visible:=true; wc08.visible:=true;
    xl09.visible:=true; xle09.visible:=true; zh09.visible:=true; zhe09.visible:=true; ly09.visible:=true; lye09.visible:=true; lx09.visible:=true;
    lxe09.visible:=true; ap09.visible:=true; ape09.visible:=true; zs09.visible:=true; zse09.visible:=true; wc09.visible:=true;
    xl10.visible:=true; xle10.visible:=true; zh10.visible:=true; zhe10.visible:=true; ly10.visible:=true; lye10.visible:=true; lx10.visible:=true;
    lxe10.visible:=true; ap10.visible:=true; ape10.visible:=true; zs10.visible:=true; zse10.visible:=true; wc10.visible:=true;
  end else if kcnt=9 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='5';
    xle06.EditText:='6'; xle07.EditText:='7'; xle08.EditText:='8'; xle09.EditText:='9'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
    xl05.visible:=true; xle05.visible:=true; zh05.visible:=true; zhe05.visible:=true; ly05.visible:=true; lye05.visible:=true; lx05.visible:=true;
    lxe05.visible:=true; ap05.visible:=true; ape05.visible:=true; zs05.visible:=true; zse05.visible:=true; wc05.visible:=true;
    xl06.visible:=true; xle06.visible:=true; zh06.visible:=true; zhe06.visible:=true; ly06.visible:=true; lye06.visible:=true; lx06.visible:=true;
    lxe06.visible:=true; ap06.visible:=true; ape06.visible:=true; zs06.visible:=true; zse06.visible:=true; wc06.visible:=true;
    xl07.visible:=true; xle07.visible:=true; zh07.visible:=true; zhe07.visible:=true; ly07.visible:=true; lye07.visible:=true; lx07.visible:=true;
    lxe07.visible:=true; ap07.visible:=true; ape07.visible:=true; zs07.visible:=true; zse07.visible:=true; wc07.visible:=true;
    xl08.visible:=true; xle08.visible:=true; zh08.visible:=true; zhe08.visible:=true; ly08.visible:=true; lye08.visible:=true; lx08.visible:=true;
    lxe08.visible:=true; ap08.visible:=true; ape08.visible:=true; zs08.visible:=true; zse08.visible:=true; wc08.visible:=true;
    xl09.visible:=true; xle09.visible:=true; zh09.visible:=true; zhe09.visible:=true; ly09.visible:=true; lye09.visible:=true; lx09.visible:=true;
    lxe09.visible:=true; ap09.visible:=true; ape09.visible:=true; zs09.visible:=true; zse09.visible:=true; wc09.visible:=true;
  end else if kcnt=8 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='5';
    xle06.EditText:='6'; xle07.EditText:='7'; xle08.EditText:='8'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
    xl05.visible:=true; xle05.visible:=true; zh05.visible:=true; zhe05.visible:=true; ly05.visible:=true; lye05.visible:=true; lx05.visible:=true;
    lxe05.visible:=true; ap05.visible:=true; ape05.visible:=true; zs05.visible:=true; zse05.visible:=true; wc05.visible:=true;
    xl06.visible:=true; xle06.visible:=true; zh06.visible:=true; zhe06.visible:=true; ly06.visible:=true; lye06.visible:=true; lx06.visible:=true;
    lxe06.visible:=true; ap06.visible:=true; ape06.visible:=true; zs06.visible:=true; zse06.visible:=true; wc06.visible:=true;
    xl07.visible:=true; xle07.visible:=true; zh07.visible:=true; zhe07.visible:=true; ly07.visible:=true; lye07.visible:=true; lx07.visible:=true;
    lxe07.visible:=true; ap07.visible:=true; ape07.visible:=true; zs07.visible:=true; zse07.visible:=true; wc07.visible:=true;
    xl08.visible:=true; xle08.visible:=true; zh08.visible:=true; zhe08.visible:=true; ly08.visible:=true; lye08.visible:=true; lx08.visible:=true;
    lxe08.visible:=true; ap08.visible:=true; ape08.visible:=true; zs08.visible:=true; zse08.visible:=true; wc08.visible:=true;
  end else if kcnt=7 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='5';
    xle06.EditText:='6'; xle07.EditText:='7'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
    xl05.visible:=true; xle05.visible:=true; zh05.visible:=true; zhe05.visible:=true; ly05.visible:=true; lye05.visible:=true; lx05.visible:=true;
    lxe05.visible:=true; ap05.visible:=true; ape05.visible:=true; zs05.visible:=true; zse05.visible:=true; wc05.visible:=true;
    xl06.visible:=true; xle06.visible:=true; zh06.visible:=true; zhe06.visible:=true; ly06.visible:=true; lye06.visible:=true; lx06.visible:=true;
    lxe06.visible:=true; ap06.visible:=true; ape06.visible:=true; zs06.visible:=true; zse06.visible:=true; wc06.visible:=true;
    xl07.visible:=true; xle07.visible:=true; zh07.visible:=true; zhe07.visible:=true; ly07.visible:=true; lye07.visible:=true; lx07.visible:=true;
    lxe07.visible:=true; ap07.visible:=true; ape07.visible:=true; zs07.visible:=true; zse07.visible:=true; wc07.visible:=true;
  end else if kcnt=6 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='5';
    xle06.EditText:='6'; xle07.EditText:='0'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
    xl05.visible:=true; xle05.visible:=true; zh05.visible:=true; zhe05.visible:=true; ly05.visible:=true; lye05.visible:=true; lx05.visible:=true;
    lxe05.visible:=true; ap05.visible:=true; ape05.visible:=true; zs05.visible:=true; zse05.visible:=true; wc05.visible:=true;
    xl06.visible:=true; xle06.visible:=true; zh06.visible:=true; zhe06.visible:=true; ly06.visible:=true; lye06.visible:=true; lx06.visible:=true;
    lxe06.visible:=true; ap06.visible:=true; ape06.visible:=true; zs06.visible:=true; zse06.visible:=true; wc06.visible:=true;
  end else if kcnt=5 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='5';
    xle06.EditText:='0'; xle07.EditText:='0'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
    xl05.visible:=true; xle05.visible:=true; zh05.visible:=true; zhe05.visible:=true; ly05.visible:=true; lye05.visible:=true; lx05.visible:=true;
    lxe05.visible:=true; ap05.visible:=true; ape05.visible:=true; zs05.visible:=true; zse05.visible:=true; wc05.visible:=true;
  end else if kcnt=4 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='4'; xle05.EditText:='0';
    xle06.EditText:='0'; xle07.EditText:='0'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
    xl04.visible:=true; xle04.visible:=true; zh04.visible:=true; zhe04.visible:=true; ly04.visible:=true; lye04.visible:=true; lx04.visible:=true;
    lxe04.visible:=true; ap04.visible:=true; ape04.visible:=true; zs04.visible:=true; zse04.visible:=true; wc04.visible:=true;
  end else if kcnt=3 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='3'; xle04.EditText:='0'; xle05.EditText:='0';
    xle06.EditText:='0'; xle07.EditText:='0'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
    xl03.visible:=true; xle03.visible:=true; zh03.visible:=true; zhe03.visible:=true; ly03.visible:=true; lye03.visible:=true; lx03.visible:=true;
    lxe03.visible:=true; ap03.visible:=true; ape03.visible:=true; zs03.visible:=true; zse03.visible:=true; wc03.visible:=true;
  end else if kcnt=2 then begin
    xle01.EditText:='1'; xle02.EditText:='2'; xle03.EditText:='0'; xle04.EditText:='0'; xle05.EditText:='0';
    xle06.EditText:='0'; xle07.EditText:='0'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
    xl02.visible:=true; xle02.visible:=true; zh02.visible:=true; zhe02.visible:=true; ly02.visible:=true; lye02.visible:=true; lx02.visible:=true;
    lxe02.visible:=true; ap02.visible:=true; ape02.visible:=true; zs02.visible:=true; zse02.visible:=true; wc02.visible:=true;
  end else if kcnt=1 then begin
    xle01.EditText:='1'; xle02.EditText:='0'; xle03.EditText:='0'; xle04.EditText:='0'; xle05.EditText:='0';
    xle06.EditText:='0'; xle07.EditText:='0'; xle08.EditText:='0'; xle09.EditText:='0'; xle10.EditText:='0';
    xl01.visible:=true; xle01.visible:=true; zh01.visible:=true; zhe01.visible:=true; ly01.visible:=true; lye01.visible:=true; lx01.visible:=true;
    lxe01.visible:=true; ap01.visible:=true; ape01.visible:=true; zs01.visible:=true; zse01.visible:=true; wc01.visible:=true;
  end;
end;

procedure TfrmCarte_Chaseitems.SpeedButton1Click(Sender: TObject);
begin
  if frmCarte_Keycodechoose=nil then frmCarte_Keycodechoose:=tfrmCarte_Keycodechoose.create(nil);
  frmCarte_Keycodechoose.combobox1.items.clear;
  with adoquery1 do begin
    close;
    sql.text:='select distinct projectno from tbl_carte_sopc1 where projectno>''''';
    open;
    first;
    while not eof do begin
      frmCarte_Keycodechoose.combobox1.items.add(fieldbyname('projectno').value);
      application.processmessages;
      next;
    end;
  end;
  frmCarte_Keycodechoose.combobox1.text:=frmCarte_Ordprocessing.adodataset1.fieldbyname('projectno').value;
  frmCarte_Keycodechoose.show;
end;

end.
