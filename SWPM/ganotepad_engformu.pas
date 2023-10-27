unit ganotepad_engformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmganotepad_eng = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel3: TBevel;
    Label22: TLabel;
    n01: TCheckBox;
    ne01: TEdit;
    n02: TCheckBox;
    ne02: TEdit;
    n03: TCheckBox;
    ne03: TEdit;
    n04: TCheckBox;
    ne04: TEdit;
    y01: TCheckBox;
    y02: TCheckBox;
    y03: TCheckBox;
    cy01: TCheckBox;
    cye01: TEdit;
    cye02: TEdit;
    cy02: TCheckBox;
    cy03: TCheckBox;
    cye03: TEdit;
    cy04: TCheckBox;
    cye04: TEdit;
    cy05: TCheckBox;
    cye05: TEdit;
    cye06: TEdit;
    cy06: TCheckBox;
    cye07: TEdit;
    cye08: TEdit;
    cy07: TCheckBox;
    cy08: TCheckBox;
    cye09: TEdit;
    cye10: TEdit;
    cy09: TCheckBox;
    cye11: TEdit;
    cye12: TEdit;
    cy10: TCheckBox;
    cy11: TCheckBox;
    cye14: TEdit;
    cye13: TEdit;
    oye01: TEdit;
    oye02: TEdit;
    oye03: TEdit;
    me01: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label23: TLabel;
    Query1: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure y01Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmganotepad_eng: Tfrmganotepad_eng;

implementation

uses mainformu, achievingformu, zktdformu;

{$R *.dfm}

procedure Tfrmganotepad_eng.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmganotepad_eng:=nil;
end;

procedure Tfrmganotepad_eng.FormShow(Sender: TObject);
begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select * from line_shjs_remarks where pline=:x1 and seq=:x2 and dt1=:x3';
      if label23.Caption='ZKTD' then begin
        params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
        params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
        params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
      end else if label23.Caption='ACHI' then begin
        params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
        params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
        params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
      end;
      open;
      n01.Checked:=fieldbyname('n01').value;
      n02.Checked:=fieldbyname('n02').value;
      n03.Checked:=fieldbyname('n03').value;
      n04.Checked:=fieldbyname('n04').value;
      ne01.Text:=fieldbyname('ne01').value;
      ne02.Text:=fieldbyname('ne02').value;
      ne03.Text:=fieldbyname('ne03').value;
      ne04.Text:=fieldbyname('ne04').value;
      y01.Checked:=fieldbyname('y01').value;
      y02.Checked:=fieldbyname('y02').value;
      y03.Checked:=fieldbyname('y03').value;
      cy01.Checked:=fieldbyname('cy01').value;
      cy02.Checked:=fieldbyname('cy02').value;
      cy03.Checked:=fieldbyname('cy03').value;
      cy04.Checked:=fieldbyname('cy04').value;
      cy05.Checked:=fieldbyname('cy05').value;
      cy06.Checked:=fieldbyname('cy06').value;
      cy07.Checked:=fieldbyname('cy07').value;
      cy08.Checked:=fieldbyname('cy08').value;
      cy09.Checked:=fieldbyname('cy09').value;
      cy10.Checked:=fieldbyname('cy10').value;
      cy11.Checked:=fieldbyname('cy11').value;
      cye01.Text:=fieldbyname('cye01').value;
      cye02.Text:=fieldbyname('cye02').value;
      cye03.Text:=fieldbyname('cye03').value;
      cye04.Text:=fieldbyname('cye04').value;
      cye05.Text:=fieldbyname('cye05').value;
      cye06.Text:=fieldbyname('cye06').value;
      cye07.Text:=fieldbyname('cye07').value;
      cye08.Text:=fieldbyname('cye08').value;
      cye09.Text:=fieldbyname('cye09').value;
      cye10.Text:=fieldbyname('cye10').value;
      cye11.Text:=fieldbyname('cye11').value;
      cye12.Text:=fieldbyname('cye12').value;
      cye13.Text:=fieldbyname('cye13').value;
      cye14.Text:=fieldbyname('cye14').value;
      oye01.Text:=fieldbyname('oye01').value;
      oye02.Text:=fieldbyname('oye02').value;
      oye03.Text:=fieldbyname('oye03').value;
      me01.Text:=fieldbyname('me01').value;
    end;
    y01click(self);
end;

procedure Tfrmganotepad_eng.BitBtn1Click(Sender: TObject);
var
  s1:string;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftboolean,'x1',ptinput);
    params.createparam(ftboolean,'x2',ptinput);
    params.createparam(ftboolean,'x3',ptinput);
    params.createparam(ftboolean,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftstring,'x8',ptinput);
    params.createparam(ftboolean,'x9',ptinput);
    params.createparam(ftboolean,'x10',ptinput);
    params.createparam(ftboolean,'x11',ptinput);
    params.createparam(ftboolean,'x12',ptinput);
    params.createparam(ftboolean,'x13',ptinput);
    params.createparam(ftboolean,'x14',ptinput);
    params.createparam(ftboolean,'x15',ptinput);
    params.createparam(ftboolean,'x16',ptinput);
    params.createparam(ftboolean,'x17',ptinput);
    params.createparam(ftboolean,'x18',ptinput);
    params.createparam(ftboolean,'x19',ptinput);
    params.createparam(ftboolean,'x20',ptinput);
    params.createparam(ftboolean,'x21',ptinput);
    params.createparam(ftboolean,'x22',ptinput);
    params.createparam(ftstring,'x23',ptinput);
    params.createparam(ftstring,'x24',ptinput);
    params.createparam(ftstring,'x25',ptinput);
    params.createparam(ftstring,'x26',ptinput);
    params.createparam(ftstring,'x27',ptinput);
    params.createparam(ftstring,'x28',ptinput);
    params.createparam(ftstring,'x29',ptinput);
    params.createparam(ftstring,'x30',ptinput);
    params.createparam(ftstring,'x31',ptinput);
    params.createparam(ftstring,'x32',ptinput);
    params.createparam(ftstring,'x33',ptinput);
    params.createparam(ftstring,'x34',ptinput);
    params.createparam(ftstring,'x35',ptinput);
    params.createparam(ftstring,'x36',ptinput);
    params.createparam(ftstring,'x37',ptinput);
    params.createparam(ftstring,'x38',ptinput);
    params.createparam(ftstring,'x39',ptinput);
    params.createparam(ftstring,'x40',ptinput);
    params.createparam(ftstring,'x41',ptinput);
    params.createparam(ftinteger,'x42',ptinput);
    params.createparam(ftdate,'x43',ptinput);
    commandtext:='update line_shjs_remarks set n01=:x1,n02=:x2,n03=:x3,n04=:x4,ne01=:x5,ne02=:x6,ne03=:x7,ne04=:x8,'
                +'y01=:x9,y02=:x10,y03=:x11,cy01=:x12,cy02=:x13,cy03=:x14,cy04=:x15,cy05=:x16,cy06=:x17,cy07=:x18,'
                +'cy08=:x19,cy09=:x20,cy10=:x21,cy11=:x22,cye01=:x23,cye02=:x24,cye03=:x25,cye04=:x26,cye05=:x27,'
                +'cye06=:x28,cye07=:x29,cye08=:x30,cye09=:x31,cye10=:x32,cye11=:x33,cye12=:x34,cye13=:x35,'
                +'cye14=:x36,oye01=:x37,oye02=:x38,oye03=:x39,me01=:x40 where pline=:x41 and seq=:x42 and dt1=:x43';
    params[0].asboolean:=n01.Checked;
    params[1].asboolean:=n02.Checked;
    params[2].asboolean:=n03.Checked;
    params[3].asboolean:=n04.Checked;
    params[4].asstring:=ne01.Text;
    params[5].asstring:=ne02.Text;
    params[6].asstring:=ne03.Text;
    params[7].asstring:=ne04.Text;
    params[8].asboolean:=y01.Checked;
    params[9].asboolean:=y02.Checked;
    params[10].asboolean:=y03.Checked;
    params[11].asboolean:=cy01.Checked;
    params[12].asboolean:=cy02.Checked;
    params[13].asboolean:=cy03.Checked;
    params[14].asboolean:=cy04.Checked;
    params[15].asboolean:=cy05.Checked;
    params[16].asboolean:=cy06.Checked;
    params[17].asboolean:=cy07.Checked;
    params[18].asboolean:=cy08.Checked;
    params[19].asboolean:=cy09.Checked;
    params[20].asboolean:=cy10.Checked;
    params[21].asboolean:=cy11.Checked;
    params[22].asstring:=cye01.Text;
    params[23].asstring:=cye02.Text;
    params[24].asstring:=cye03.Text;
    params[25].asstring:=cye04.Text;
    params[26].asstring:=cye05.Text;
    params[27].asstring:=cye06.Text;
    params[28].asstring:=cye07.Text;
    params[29].asstring:=cye08.Text;
    params[30].asstring:=cye09.Text;
    params[31].asstring:=cye10.Text;
    params[32].asstring:=cye11.Text;
    params[33].asstring:=cye12.Text;
    params[34].asstring:=cye13.Text;
    params[35].asstring:=cye14.Text;
    params[36].asstring:=oye01.Text;
    params[37].asstring:=oye02.Text;
    params[38].asstring:=oye03.Text;
    params[39].asstring:=me01.Text;
    if label23.Caption='ZKTD' then begin
      params[40].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[41].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[42].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label23.Caption='ACHI' then begin
      params[40].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[41].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[42].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    execute;
  end;
  s1:='';
  if n01.Checked then s1:=s1+'~'+n01.Caption+ne01.Text+label1.Caption;
  if n02.Checked then s1:=s1+'~'+n02.Caption+ne02.Text+label2.Caption;
  if n03.Checked then s1:=s1+'~'+n03.Caption+ne03.Text+label3.Caption;
  if n04.Checked then s1:=s1+'~'+n04.Caption+ne04.Text+label4.Caption;
  if y01.Checked then s1:=s1+'~Efficiency '+y01.Caption;
  if y02.Checked then s1:=s1+'~Efficiency '+y02.Caption;
  if y03.Checked then s1:=s1+'~'+y03.Caption;
  if cy01.Checked then s1:=s1+'~'+cy01.Caption+cye01.Text+label7.Caption+cye02.Text+label8.Caption;
  if cy02.Checked then s1:=s1+'~'+cy02.Caption;
  if cy03.Checked then s1:=s1+'~'+cy03.Caption+cye03.Text+label9.Caption;
  if cy04.Checked then s1:=s1+'~'+cy04.Caption+cye04.Text+label10.Caption;
  if cy05.Checked then s1:=s1+'~'+cy05.Caption+cye05.Text+label11.Caption+cye06.Text+label12.Caption;
  if cy06.Checked then s1:=s1+'~'+cy06.Caption+cye07.Text+label13.Caption+cye08.Text+label14.Caption;
  if cy07.Checked then s1:=s1+'~'+cy07.Caption;
  if cy08.Checked then s1:=s1+'~'+cy08.Caption+cye09.Text+label15.Caption+cye10.Text+label16.Caption;
  if cy09.Checked then s1:=s1+'~'+cy09.Caption+cye11.Text+label17.Caption+cye12.Text+label18.Caption;
  if cy10.Checked then s1:=s1+'~'+cy10.Caption+cye13.Text+label19.Caption;
  if cy11.Checked then s1:=s1+'~'+cy11.Caption+cye14.Text+label20.Caption;
  if oye01.Text>'' then s1:=s1+'~'+oye01.Text;
  if oye02.Text>'' then s1:=s1+'~'+oye02.Text;
  if oye03.Text>'' then s1:=s1+'~'+oye03.Text;
  if me01.Text>'' then s1:=s1+'~'+me01.Text;
  s1:=trim(s1);
  if copy(s1,1,1)='~' then s1:=copy(s1,2,251);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='update line_shjs set marks=:x1 where pline=:x2 and seq=:x3 and dt1=:x4';
    params[0].asstring:=copy(trim(s1),1,250);
    if label23.Caption='ZKTD' then begin
      params[1].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[2].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[3].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label23.Caption='ACHI' then begin
      params[1].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[2].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[3].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    execute;
  end;
end;

procedure Tfrmganotepad_eng.y01Click(Sender: TObject);
begin
  if (y01.Checked) or (y02.Checked) or (y03.Checked) then begin
    cy01.Enabled:=true;cy02.Enabled:=true;cy03.Enabled:=true;cy04.Enabled:=true;
    cy05.Enabled:=true;cy06.Enabled:=true;cy07.Enabled:=true;cy08.Enabled:=true;
    cy09.Enabled:=true;cy10.Enabled:=true;cy11.Enabled:=true;
    cye01.Enabled:=true;cye02.Enabled:=true;cye03.Enabled:=true;cye04.Enabled:=true;
    cye05.Enabled:=true;cye06.Enabled:=true;cye07.Enabled:=true;cye08.Enabled:=true;
    cye09.Enabled:=true;cye10.Enabled:=true;cye11.Enabled:=true;cye12.Enabled:=true;
    cye13.Enabled:=true;cye14.Enabled:=true;
  end else begin
    cy01.Enabled:=false;cy02.Enabled:=false;cy03.Enabled:=false;cy04.Enabled:=false;
    cy05.Enabled:=false;cy06.Enabled:=false;cy07.Enabled:=false;cy08.Enabled:=false;
    cy09.Enabled:=false;cy10.Enabled:=false;cy11.Enabled:=false;
    cye01.Enabled:=false;cye02.Enabled:=false;cye03.Enabled:=false;cye04.Enabled:=false;
    cye05.Enabled:=false;cye06.Enabled:=false;cye07.Enabled:=false;cye08.Enabled:=false;
    cye09.Enabled:=false;cye10.Enabled:=false;cye11.Enabled:=false;cye12.Enabled:=false;
    cye13.Enabled:=false;cye14.Enabled:=false;
  end;
end;

end.
 