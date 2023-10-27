unit POcriteriaFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmPOcriteria = class(TForm)
    chk1: TCheckBox;
    grp1: TGroupBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    grp2: TGroupBox;
    chk10: TCheckBox;
    chk11: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grp3: TGroupBox;
    chk13: TCheckBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    chk16: TCheckBox;
    chk17: TCheckBox;
    grp4: TGroupBox;
    grp5: TGroupBox;
    grp6: TGroupBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk12: TCheckBox;
    chk18: TCheckBox;
    chk19: TCheckBox;
    chk20: TCheckBox;
    chk21: TCheckBox;
    chk22: TCheckBox;
    Label1: TLabel;
    chk23: TCheckBox;
    chk24: TCheckBox;
    chk25: TCheckBox;
    grp7: TGroupBox;
    chk26: TCheckBox;
    chk27: TCheckBox;
    chk29: TCheckBox;
    chk30: TCheckBox;
    chk28: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure chk10Click(Sender: TObject);
    procedure chk11Click(Sender: TObject);
    procedure chk12Click(Sender: TObject);
    procedure chk13Click(Sender: TObject);
    procedure chk14Click(Sender: TObject);
    procedure chk15Click(Sender: TObject);
    procedure chk17Click(Sender: TObject);
    procedure chk16Click(Sender: TObject);
    procedure chk18Click(Sender: TObject);
    procedure chk19Click(Sender: TObject);
    procedure chk20Click(Sender: TObject);
    procedure chk21Click(Sender: TObject);
    procedure chk22Click(Sender: TObject);
    procedure chk23Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOcriteria: TfrmPOcriteria;

implementation

uses Carte_MailFormu, Carte_OrdprocessingFormu, Carte_MainFormu;

{$R *.dfm}

procedure TfrmPOcriteria.BitBtn1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='';
  if chk1.checked then begin
    if str1>'' then str1:=str1+','+'--'
    else str1:='--';
  end;

  if chk24.checked then begin
    if str1>'' then str1:=str1+','+'?'
    else str1:='?';
  end;

  if chk29.checked then begin
    if str1>'' then str1:=str1+','+'!'
    else str1:='!';
  end;

  if chk25.checked then begin
    if str1>'' then str1:=str1+','+'*'
    else str1:='*';
  end;

  if chk2.checked then begin
    if str1>'' then str1:=str1+','+'DL'
    else str1:='DL';
  end;
  if chk3.checked then begin
    if str1>'' then str1:=str1+','+'DP'
    else str1:='DP';
  end;
  if chk4.checked then begin
    if str1>'' then str1:=str1+','+'DR'
    else str1:='DR';
  end;

  if chk15.checked then begin
    if str1>'' then str1:=str1+','+'MR'
    else str1:='MR';
  end;
  if chk10.checked then begin
    if str1>'' then str1:=str1+','+'MC'
    else str1:='MC';
  end;
  if chk17.checked then begin
    if str1>'' then str1:=str1+','+'MCL'
    else str1:='MCL';
  end;
  if chk16.checked then begin
    if str1>'' then str1:=str1+','+'MCP'
    else str1:='MCP';
  end;
  if chk11.checked then begin
    if str1>'' then str1:=str1+','+'MS'
    else str1:='MS';
  end;

  if chk13.checked then begin
    if str1>'' then str1:=str1+','+'P1.1'
    else str1:='P1.1';
  end;
  if chk14.checked then begin
    if str1>'' then str1:=str1+','+'P1.2'
    else str1:='P1.2';
  end;
  if chk23.checked then begin
    if str1>'' then str1:=str1+','+'P1.3'
    else str1:='P1.3';
  end;

  if chk18.checked then begin
    if str1>'' then str1:=str1+','+'P2.1'
    else str1:='P2.1';
  end;
  if chk19.checked then begin
    if str1>'' then str1:=str1+','+'P2.2'
    else str1:='P2.2';
  end;
  if chk28.checked then begin
    if str1>'' then str1:=str1+','+'P2.3'
    else str1:='P2.3';
  end;

  if chk20.checked then begin
    if str1>'' then str1:=str1+','+'E1'
    else str1:='E1';
  end;
  if chk21.checked then begin
    if str1>'' then str1:=str1+','+'E2'
    else str1:='E2';
  end;
  if chk22.checked then begin
    if str1>'' then str1:=str1+','+'E3'
    else str1:='E3';
  end;

  if chk6.checked then begin
    if str1>'' then str1:=str1+','+'DM'
    else str1:='DM';
  end;
  if chk7.checked then begin
    if str1>'' then str1:=str1+','+'DS'
    else str1:='DS';
  end;
  if chk12.checked then begin
    if str1>'' then str1:=str1+','+'MA'
    else str1:='MA';
  end;

  if chk26.checked then begin
    if str1>'' then str1:=str1+','+'CM1'
    else str1:='CM1';
  end;
  if chk30.checked then begin
    if str1>'' then str1:=str1+','+'CM2'
    else str1:='CM2';
  end;
  if chk27.checked then begin
    if str1>'' then str1:=str1+','+'QW'
    else str1:='QW';
  end;
  frmcarte_ordprocessing.adodataset1.edit;
  frmcarte_ordprocessing.adodataset1.fieldbyname('add_corder1').value:=str1;
  frmcarte_ordprocessing.adodataset1.post;
  close;
end;

procedure TfrmPOcriteria.chk10Click(Sender: TObject);
begin
  if chk10.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='M' then begin
      chk1.checked:=false;
      chk2.checked:=false;
      chk3.checked:=false;
      chk4.checked:=false;
      //chk5.checked:=false;
      chk6.checked:=false;
      chk7.checked:=false;
      //chk8.checked:=false;
      //chk9.checked:=false;
    end else chk10.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk11Click(Sender: TObject);
begin
  if chk11.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='M' then begin
      chk1.checked:=false;
      chk2.checked:=false;
      chk3.checked:=false;
      chk4.checked:=false;
      //chk5.checked:=false;
      chk6.checked:=false;
      chk7.checked:=false;
      //chk8.checked:=false;
      //chk9.checked:=false;
    end else chk11.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk12Click(Sender: TObject);
begin
  if chk12.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='M' then begin
      chk1.checked:=false;
      chk2.checked:=false;
      chk3.checked:=false;
      chk4.checked:=false;
      //chk5.checked:=false;
      chk6.checked:=false;
      chk7.checked:=false;
      //chk8.checked:=false;
      //chk9.checked:=false;
    end else chk12.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk13Click(Sender: TObject);
begin
  if chk13.checked then begin
    chk1.checked:=false;
    chk14.checked:=false;
    chk23.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk14Click(Sender: TObject);
begin
  if chk14.checked then begin
    chk1.checked:=false;
    chk13.checked:=false;
    chk23.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk15Click(Sender: TObject);
begin
  if chk15.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='M' then begin
      chk1.checked:=false;
      chk2.checked:=false;
      chk3.checked:=false;
      chk4.checked:=false;
      //chk5.checked:=false;
      chk6.checked:=false;
      chk7.checked:=false;
      //chk8.checked:=false;
      //chk9.checked:=false;
    end else chk15.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk16Click(Sender: TObject);
begin
  if chk16.checked then begin
    chk17.checked:=false;
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='M' then begin
      chk1.checked:=false;
      chk2.checked:=false;
      chk3.checked:=false;
      chk4.checked:=false;
      //chk5.checked:=false;
      chk6.checked:=false;
      chk7.checked:=false;
      //chk8.checked:=false;
      //chk9.checked:=false;
    end else chk16.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk17Click(Sender: TObject);
begin
  if chk17.checked then begin
    chk16.checked:=false;
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='M' then begin
      chk1.checked:=false;
      chk2.checked:=false;
      chk3.checked:=false;
      chk4.checked:=false;
      //chk5.checked:=false;
      chk6.checked:=false;
      chk7.checked:=false;
      //chk8.checked:=false;
      //chk9.checked:=false;
    end else chk17.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk18Click(Sender: TObject);
begin
  if chk18.checked then begin
    chk1.checked:=false;
    chk19.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk19Click(Sender: TObject);
begin
  if chk19.checked then begin
    chk1.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk1Click(Sender: TObject);
begin
  if chk1.checked then begin
    chk2.checked:=false;
    chk3.checked:=false;
    chk4.checked:=false;
    //chk5.checked:=false;
    chk6.checked:=false;
    chk7.checked:=false;
    //chk8.checked:=false;
    //chk9.checked:=false;
    chk10.checked:=false;
    chk11.checked:=false;
    chk12.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk15.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
    chk19.checked:=false;
    chk20.checked:=false;
    chk21.checked:=false;
    chk22.checked:=false;
    chk23.checked:=false;
    chk25.checked:=false;
    chk26.checked:=false;
    chk27.checked:=false;
    chk28.checked:=false;
    chk29.checked:=false;
    chk30.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk20Click(Sender: TObject);
begin
  if chk20.checked then begin
    chk1.checked:=false;
    chk21.checked:=false;
    chk22.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk21Click(Sender: TObject);
begin
  if chk21.checked then begin
    chk1.checked:=false;
    chk20.checked:=false;
    chk22.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk22Click(Sender: TObject);
begin
  if chk22.checked then begin
    chk1.checked:=false;
    chk21.checked:=false;
    chk20.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk23Click(Sender: TObject);
begin
  if chk23.checked then begin
    chk1.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk2Click(Sender: TObject);
begin
  if chk2.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='S' then begin
      chk1.checked:=false;
      chk10.checked:=false;
      chk11.checked:=false;
      chk12.checked:=false;
      chk15.checked:=false;
      chk16.checked:=false;
      chk17.checked:=false;
    end else chk2.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk3Click(Sender: TObject);
begin
  if chk3.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='S' then begin
      chk1.checked:=false;
      chk10.checked:=false;
      chk11.checked:=false;
      chk12.checked:=false;
      chk15.checked:=false;
      chk16.checked:=false;
      chk17.checked:=false;
    end else chk3.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk4Click(Sender: TObject);
begin
  if chk4.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='S' then begin
      chk1.checked:=false;
      chk10.checked:=false;
      chk11.checked:=false;
      chk12.checked:=false;
      chk15.checked:=false;
      chk16.checked:=false;
      chk17.checked:=false;
    end else chk4.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk6Click(Sender: TObject);
begin
  if chk6.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='S' then begin
      chk1.checked:=false;
      chk10.checked:=false;
      chk11.checked:=false;
      chk12.checked:=false;
      chk15.checked:=false;
      chk16.checked:=false;
      chk17.checked:=false;
    end else chk6.checked:=false;
  end;
end;

procedure TfrmPOcriteria.chk7Click(Sender: TObject);
begin
  if chk7.checked then begin
    if frmcarte_ordprocessing.adodataset1.fieldbyname('add_posm').value='S' then begin
      chk1.checked:=false;
      chk10.checked:=false;
      chk11.checked:=false;
      chk12.checked:=false;
      chk15.checked:=false;
      chk16.checked:=false;
      chk17.checked:=false;
    end else chk7.checked:=false;
  end;
end;

procedure TfrmPOcriteria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  frmpocriteria:=nil;
end;

procedure TfrmPOcriteria.FormShow(Sender: TObject);
var
  str1:string;
begin
  bitbtn1.enabled:=frmCarte_Main.checkbox28.checked;
  if not frmcarte_ordprocessing.adodataset1.fieldbyname('add_corder1').isnull then begin
    str1:=frmcarte_ordprocessing.adodataset1.fieldbyname('add_corder1').value;
    if str1>'' then begin
      if pos('--',str1)>0 then chk1.checked:=true;
      if pos('DL',str1)>0 then chk2.checked:=true;
      if pos('DP',str1)>0 then chk3.checked:=true;
      if pos('DR',str1)>0 then chk4.checked:=true;

      if pos('MR',str1)>0 then chk15.checked:=true;
      if pos('MC',str1)>0 then begin
        if pos('MCL',str1)>0 then chk17.checked:=true
        else if pos('MCP',str1)>0 then chk16.checked:=true
        else chk10.checked:=true;
      end;
      if pos('MS',str1)>0 then chk11.checked:=true;

      if pos('P1.1',str1)>0 then chk13.checked:=true;
      if pos('P1.2',str1)>0 then chk14.checked:=true;
      if pos('P1.3',str1)>0 then chk23.checked:=true;
      if pos('P2.3',str1)>0 then chk28.checked:=true;

      if pos('P2.1',str1)>0 then chk18.checked:=true;
      if pos('P2.2',str1)>0 then chk19.checked:=true;

      if pos('E1',str1)>0 then chk20.checked:=true;
      if pos('E2',str1)>0 then chk21.checked:=true;
      if pos('E3',str1)>0 then chk22.checked:=true;

      if pos('DM',str1)>0 then chk6.checked:=true;
      if pos('DS',str1)>0 then chk7.checked:=true;
      if pos('MA',str1)>0 then chk12.checked:=true;

      if pos('?',str1)>0 then chk24.checked:=true;
      if pos('!',str1)>0 then chk29.checked:=true;

      if pos('*',str1)>0 then chk25.checked:=true;

      if pos('CM1',str1)>0 then chk26.checked:=true;
      if pos('CM2',str1)>0 then chk30.checked:=true;
      if pos('QW',str1)>0 then chk27.checked:=true;
    end;
  end;
end;

end.
