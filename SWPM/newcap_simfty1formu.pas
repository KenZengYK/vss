unit newcap_simfty1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, DBClient;

type
  Tfrmnewcap_simfty1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit2: TSpinEdit;
    Query2: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateSimulationVersion(const ver: string; const mn: integer);
  end;

var
  frmnewcap_simfty1: Tfrmnewcap_simfty1;

implementation

uses mainformu, newcap_simftyformu, newcap_ftysimulationformu,
  newcap_1stchoiceformu;

{$R *.dfm}

procedure Tfrmnewcap_simfty1.BitBtn1Click(Sender: TObject);
begin
  if edit1.text>'' then begin
    CreateSimulationVersion(edit1.text,spinedit1.value);
    //frmnewcap_ftysimulation.ComboBox2Change(self);
    if frmnewcap_1stchoice=nil then frmnewcap_1stchoice:=tfrmnewcap_1stchoice.Create(nil);
    frmnewcap_1stchoice.Caption:='New Setup Option';
    //frmnewcap_1stchoice.BitBtn4.Caption:='Confirm';
    frmnewcap_1stchoice.BitBtn1.visible:=false;
    frmnewcap_1stchoice.BitBtn4.visible:=false;
    frmnewcap_1stchoice.BitBtn5.visible:=false;
    frmnewcap_1stchoice.BitBtn3.visible:=true;
    frmnewcap_1stchoice.BitBtn6.visible:=true;
    frmnewcap_1stchoice.BitBtn7.visible:=true;
    frmnewcap_1stchoice.BitBtn8.visible:=true;
    frmnewcap_1stchoice.BitBtn4.caption:='New';
    frmnewcap_1stchoice.SpinEdit1.Value:=spinedit1.value;
    frmnewcap_1stchoice.ComboBox3.text:=combobox1.text;
    frmnewcap_1stchoice.SpinEdit2.value:=spinedit2.value;
    frmnewcap_1stchoice.ComboBox2.text:=edit1.text;
    frmnewcap_1stchoice.ComboBox2Change(self);
    frmnewcap_1stchoice.cxView1.OptionsData.Editing:=true;
    frmnewcap_1stchoice.show;
    frmnewcap_simfty1.close;
  end;
end;

procedure Tfrmnewcap_simfty1.CreateSimulationVersion(const ver: string;
  const mn: integer);
var
  seq:integer;
begin
  screen.cursor:=crSQLWait;
  try
    if ver='Curr' then seq:=1
    else begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(seq) as q from tbl_cap_ftyelements where tplant=:x1 and yr=:x2 and seq<998';
        params[0].asstring:=combobox1.text;
        params[1].asinteger:=spinedit2.value;
        open;
        if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
        else seq:=3;
      end;
      if seq<3 then seq:=3;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='execute procedure sp_cap_updftyelements_new1(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit2.value;
      params[2].asinteger:=seq;
      params[3].asstring:=ver;
      params[4].asinteger:=mn;
      execute;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_simfty1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_simfty1:=nil;
end;

procedure Tfrmnewcap_simfty1.SpinEdit1Change(Sender: TObject);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(distinct seq) as q from tbl_cap_ftyelements where seq<998 and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit2.value)+' and fmn='+inttostr(spinedit1.value);
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1 else seq:=1;
  end;
  Edit1.text:='Balancing '+inttostr(seq);
end;

end.
