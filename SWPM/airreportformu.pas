unit airreportformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmairreport = class(TForm)
    xh1: TRadioButton;
    xh2: TRadioButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure xh2Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmairreport: Tfrmairreport;

implementation

uses mainformu, pdnformu, voyageformu, airrequestformu;

{$R *.dfm}

procedure Tfrmairreport.xh2Click(Sender: TObject);
begin
  if groupbox1.Enabled=false then groupbox1.Enabled:=true;
end;

procedure Tfrmairreport.xh1Click(Sender: TObject);
begin
  if groupbox1.Enabled=true then groupbox1.Enabled:=false;
end;

procedure Tfrmairreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmairreport:=nil;
end;

procedure Tfrmairreport.BitBtn1Click(Sender: TObject);
var
  cnt:integer;
  ulist,ulist1,ulist2:string;
begin
  screen.cursor:=crSQLWait;
  try
  if xh1.Checked then begin
    with frmairrequestform.Query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select count(*) as cnt from tbl_pdn_airdtl where seq=:x1 and seq1=:x2';
      params[0].asinteger:=frmairrequestform.Query1.fieldbyname('seq').value;
      params[1].asinteger:=frmairrequestform.Query1.fieldbyname('seq1').value;
      open;
      cnt:=fieldbyname('cnt').value;
    end;
    frmairrequestform.ppMemo2.Lines.Clear;
    frmairrequestform.ppMemo3.Lines.Clear;
    with frmairrequestform.Query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      if cnt>0 then
      commandtext:='select * from tbl_pdn_airdtl a,tbl_pdn_shmchgreason b where a.seq=b.seq and a.seq1=b.seq1 and a.seq=:x1 and a.seq1=:x2 order by a.seq,a.seq1,a.cstyle,a.j_no'
      else commandtext:='select distinct a.shpm,a.dest,a.lport,a.vess,a.ondt,b.* from tbl_pdn_pack a,tbl_pdn_shmchgreason b where a.seq=b.seq and a.seq1=b.seq1 and a.seq=:x1 and a.seq1=:x2 order by b.seq,b.seq1';
      params[0].asinteger:=frmairrequestform.Query1.fieldbyname('seq').value;
      params[1].asinteger:=frmairrequestform.Query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('ulist').isnull then ulist:=fieldbyname('ulist').value else ulist:='';
      if not fieldbyname('seq').isnull then begin
        if cnt>0 then begin
            with frmairrequestform.query2 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftfloat,'x3',ptinput);
              commandtext:='execute procedure sp_pdn_genairdtl(:x1,:x2,:x3)';
              params[0].asinteger:=frmairrequestform.query1.fieldbyname('seq').value;
              params[1].asinteger:=frmairrequestform.query1.fieldbyname('seq1').value;
              params[2].asfloat:=frmairrequestform.query1.fieldbyname('actfrtrate').value;
              execute;
            end;
          frmairrequestform.voyn001.Caption:=frmvoyage.Query1.fieldbyname('voyn').value;
          if ulist>'' then begin
            if pos('2-',ulist)>0 then begin
              if pos('3-',ulist)>0 then begin
                if pos('4-',ulist)>0 then begin
                  if pos('5-',ulist)>0 then begin
                    ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('2-',ulist),pos('3-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('3-',ulist),pos('4-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Noticed by: '+copy(ulist1,pos('3-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('4-',ulist),pos('5-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Confirmed by: '+copy(ulist1,pos('4-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('5-',ulist),15);
                    frmairrequestform.ppMemo3.Lines.Add('Acted by: '+copy(ulist1,pos('5-',ulist1)+2,pos(';',ulist1)-3));
                  end else begin
                    ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('2-',ulist),pos('3-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('3-',ulist),pos('4-',ulist)-1);
                    frmairrequestform.ppMemo3.Lines.Add('Noticed by: '+copy(ulist1,pos('3-',ulist1)+2,pos(';',ulist1)-3));
                     ulist1:=copy(ulist,pos('4-',ulist),15);
                    frmairrequestform.ppMemo3.Lines.Add('Confirmed by: '+copy(ulist1,pos('4-',ulist1)+2,pos(';',ulist1)-3));
                  end;
                end else begin
                  ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                  frmairrequestform.ppMemo3.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                  ulist1:=copy(ulist,pos('2-',ulist),pos('3-',ulist)-1);
                  frmairrequestform.ppMemo3.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
                  ulist1:=copy(ulist,pos('3-',ulist),15);
                  frmairrequestform.ppMemo3.Lines.Add('Noticed by: '+copy(ulist1,pos('3-',ulist1)+2,pos(';',ulist1)-3));
                end;
              end else begin
                ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                frmairrequestform.ppMemo3.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                ulist1:=copy(ulist,pos('2-',ulist),15);
                frmairrequestform.ppMemo3.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
              end;
            end else frmairrequestform.ppMemo3.Lines.add('Prepared by: '+copy(ulist,pos('1-',ulist)+2,pos(';',ulist)-3));
          end;
          frmairrequestform.ppReport1.Print;
        end else begin
          frmairrequestform.voyn002.Caption:=frmvoyage.Query1.fieldbyname('voyn').value;
          if ulist>'' then begin
            if pos('2-',ulist)>0 then begin
              if pos('3-',ulist)>0 then begin
                if pos('4-',ulist)>0 then begin
                  if pos('5-',ulist)>0 then begin
                    ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('2-',ulist),pos('3-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('3-',ulist),pos('4-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Noticed by: '+copy(ulist1,pos('3-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('4-',ulist),pos('5-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Confirmed by: '+copy(ulist1,pos('4-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('5-',ulist),15);
                    frmairrequestform.ppMemo2.Lines.Add('Acted by: '+copy(ulist1,pos('5-',ulist1)+2,pos(';',ulist1)-3));
                  end else begin
                    ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('2-',ulist),pos('3-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('3-',ulist),pos('4-',ulist)-1);
                    frmairrequestform.ppMemo2.Lines.Add('Noticed by: '+copy(ulist1,pos('3-',ulist1)+2,pos(';',ulist1)-3));
                    ulist1:=copy(ulist,pos('4-',ulist),15);
                    frmairrequestform.ppMemo2.Lines.Add('Confirmed by: '+copy(ulist1,pos('4-',ulist1)+2,pos(';',ulist1)-3));
                  end;
                end else begin
                  ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                  frmairrequestform.ppMemo2.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                  ulist1:=copy(ulist,pos('2-',ulist),pos('3-',ulist)-1);
                  frmairrequestform.ppMemo2.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
                  ulist1:=copy(ulist,pos('3-',ulist),15);
                  frmairrequestform.ppMemo2.Lines.Add('Noticed by: '+copy(ulist1,pos('3-',ulist1)+2,pos(';',ulist1)-3));
                end;
              end else begin
                ulist1:=copy(ulist,pos('1-',ulist),pos('2-',ulist)-1);
                frmairrequestform.ppMemo2.Lines.Add('Prepared by: '+copy(ulist1,pos('1-',ulist1)+2,pos(';',ulist1)-3));
                ulist1:=copy(ulist,pos('2-',ulist),15);
                frmairrequestform.ppMemo2.Lines.Add('Activated by: '+copy(ulist1,pos('2-',ulist1)+2,pos(';',ulist1)-3));
              end;
            end else frmairrequestform.ppMemo2.Lines.add('Prepared by: '+copy(ulist,pos('1-',ulist)+2,pos(';',ulist)-3));;
          end;
          frmairrequestform.ppReport2.Print;
        end;
      end;
    end;
  end else if xh2.Checked then begin
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
