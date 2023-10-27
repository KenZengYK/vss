unit newcap_sfbalformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmnewcap_sfbal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_sfbal: Tfrmnewcap_sfbal;

implementation

uses mainformu, newcap_ftysimulationformu;

{$R *.dfm}

procedure Tfrmnewcap_sfbal.FormShow(Sender: TObject);
begin
  combobox1.Text:='';
  combobox2.Text:='';
  combobox1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct sdesc from tbl_cap_ftyelements where seq>2 and seq1<20 and tplant in (''SL'',''FJ'') and yr='+inttostr(frmnewcap_ftysimulation.spinedit1.value);
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('sdesc').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct sdesc from tbl_cap_ftyelements where seq>2 and seq1<20 and tplant=''KB'' and yr='+inttostr(frmnewcap_ftysimulation.spinedit1.value);
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('sdesc').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_sfbal.BitBtn1Click(Sender: TObject);
var
  seqsl,seqfj,seqkb:integer;
begin
  seqsl:=0; seqfj:=0; seqkb:=0;
  if combobox1.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox1.text+''' and tplant=''SL'' and yr='+inttostr(frmnewcap_ftysimulation.spinedit1.value);
      open;
      if not fieldbyname('seq').isnull then seqsl:=fieldbyname('seq').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox1.text+''' and tplant=''FJ'' and yr='+inttostr(frmnewcap_ftysimulation.spinedit1.value);
      open;
      if not fieldbyname('seq').isnull then seqfj:=fieldbyname('seq').value;
    end;
  end;
  if combobox2.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant=''KB'' and yr='+inttostr(frmnewcap_ftysimulation.spinedit1.value);
      open;
      if not fieldbyname('seq').isnull then seqkb:=fieldbyname('seq').value;
    end;
  end;
  if (combobox1.text>'') and (combobox2.text>'') then begin
    {
    with frmnewcap_ftysimulation.query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select distinct ''SL+FJ'' as tplant,seq,seq1,seq2,''Balancing'' as sdesc,sdesc1,sum(ref1) as ref1,sum(ref2) as ref2,sum(ttl) as ttl,sum(ttl1) as ttl1,sum(m1) as m1,sum(m2) as m2,'
                  +'sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,'
                  +'sum(m11) as m11,sum(m12) as m12 from tbl_cap_ftyelements where yr=:x1 and ((tplant=''SL'' and seq=:x2) or (tplant=''FJ'' and seq=:x3)) '
                  +'and seq1 in (4,7,9,18,21,22,23,24,26,27,28,29,30,31,32,33,62,63,64,65,66,50,51,52,53,54,55,70,71) '
                  +'group by seq,seq1,seq2,sdesc1 order by seq2,seq1';
      params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
      params[1].asinteger:=seqsl;
      params[2].asinteger:=seqfj;
      open;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_balsum_new(:x1,:x2,:x3,:x4)';
      params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
      params[1].asinteger:=seqsl;
      params[2].asinteger:=seqfj;
      params[3].asinteger:=seqkb;
      execute;
    end;
    with frmnewcap_ftysimulation.query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements_slfj order by seq2,seq1';
      open;
    end;
    frmnewcap_sfbal.Close;
  end;
end;

procedure Tfrmnewcap_sfbal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_sfbal:=nil;
end;

end.
