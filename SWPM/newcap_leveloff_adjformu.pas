unit newcap_leveloff_adjformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, DBClient;

type
  Tfrmnewcap_leveloff_adj = class(TForm)
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label2: TLabel;
    cEdit2: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lblwk01: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_leveloff_adj: Tfrmnewcap_leveloff_adj;

implementation

uses mainformu, newcap_leveloffformu;

{$R *.dfm}

procedure Tfrmnewcap_leveloff_adj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_leveloff_adj:=nil;
end;

procedure Tfrmnewcap_leveloff_adj.BitBtn1Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftinteger,'x8',ptinput);
    params.createparam(ftstring,'x9',ptinput);
    if (label3.Visible=true) then begin
      if label5.caption='1' then
      commandtext:='update tbl_cap_oa_proj set wf1=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
      else if label5.caption='2' then
      commandtext:='update tbl_cap_oa_proj set wf2=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
      else if label5.caption='3' then
      commandtext:='update tbl_cap_oa_proj set wf3=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
      else if label5.caption='4' then
      commandtext:='update tbl_cap_oa_proj set wf4=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
      else if label5.caption='5' then
      commandtext:='update tbl_cap_oa_proj set wf5=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
      else if label5.caption='6' then
      commandtext:='update tbl_cap_oa_proj set wf6=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
      params[0].asinteger:=cedit2.value;
      params[1].asstring:=frmnewcap_leveloff.Query1.fieldbyname('tplant').value;
      params[2].asinteger:=frmnewcap_leveloff.query1.fieldbyname('yr').value;
      params[3].asstring:=frmnewcap_leveloff.Query1.fieldbyname('cust').value;
      params[4].asinteger:=strtoint(label4.caption);
      params[5].asstring:=frmnewcap_leveloff.Query1.fieldbyname('flag6').value;
      execute;
    end else begin
      commandtext:='update tbl_cap_oa_proj set woff=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
      params[0].asinteger:=cedit2.value;
      params[1].asstring:=frmnewcap_leveloff.Query1.fieldbyname('tplant').value;
      params[2].asinteger:=frmnewcap_leveloff.query1.fieldbyname('yr').value;
      params[3].asstring:=frmnewcap_leveloff.Query1.fieldbyname('cust').value;
      params[4].asinteger:=strtoint(label4.caption);
      params[5].asstring:=frmnewcap_leveloff.Query1.fieldbyname('flag6').value;
      execute;
    end;
  end;
  frmnewcap_leveloff.show_data;
  frmnewcap_leveloff_adj.close;
end;

procedure Tfrmnewcap_leveloff_adj.FormShow(Sender: TObject);
begin
  with query2 do begin
    close;
    params.Clear;
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftinteger,'x8',ptinput);
    params.createparam(ftstring,'x9',ptinput);
    commandtext:='select wf1,wf2,wf3,wf4,wf5,wf6,woff from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
    params[0].asstring:=frmnewcap_leveloff.Query1.fieldbyname('tplant').value;
    params[1].asinteger:=frmnewcap_leveloff.query1.fieldbyname('yr').value;
    params[2].asstring:=frmnewcap_leveloff.Query1.fieldbyname('cust').value;
    params[3].asinteger:=strtoint(label4.caption);
    params[4].asstring:=frmnewcap_leveloff.Query1.fieldbyname('flag6').value;
    open;
    if (label3.visible=true) then begin
      if label5.caption='1' then cedit2.value:=fieldbyname('wf1').value
      else if label5.caption='2' then cedit2.value:=fieldbyname('wf2').value
      else if label5.caption='3' then cedit2.value:=fieldbyname('wf3').value
      else if label5.caption='4' then cedit2.value:=fieldbyname('wf4').value
      else if label5.caption='5' then cedit2.value:=fieldbyname('wf5').value
      else if label5.caption='6' then cedit2.value:=fieldbyname('wf6').value;
    end else cedit2.Value:=fieldbyname('woff').value;
  end;
end;

end.
 