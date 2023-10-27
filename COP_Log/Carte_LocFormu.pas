unit Carte_LocFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmCarte_Loc = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Loc: TfrmCarte_Loc;

implementation

uses Carte_MainFormu, Carte_TimechangeFormu;

{$R *.dfm}

procedure TfrmCarte_Loc.BitBtn1Click(Sender: TObject);
begin
  if (checkbox1.checked) or (checkbox2.checked) or (checkbox3.checked) then begin
    with frmCarte_Timechange.adodataset1 do begin
      disablecontrols;
      try
      first;
      while not eof do begin
        edit;
        if label1.caption='SP' then begin
          if checkbox1.Checked then
          fieldbyname('sp_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('sp_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('sp_nlr').Value:='N';
        end else if label1.caption='DT' then begin
          if checkbox1.Checked then
          fieldbyname('ddt_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('ddt_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('ddt_nlr').Value:='N';
        end else if label1.caption='MDT' then begin
          if checkbox1.Checked then
          fieldbyname('m_ddt_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('m_ddt_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('m_ddt_nlr').Value:='N';
        end else if label1.caption='FW' then begin
          if checkbox1.Checked then
          fieldbyname('fwdt_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('fwdt_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('fwdt_nlr').Value:='N';
        end else if label1.caption='EX' then begin
          if checkbox1.Checked then
          fieldbyname('ex_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('ex_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('ex_nlr').Value:='N';
        end else if label1.caption='CL' then begin
          if checkbox1.Checked then
          fieldbyname('clos_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('clos_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('clos_nlr').Value:='N';
        end else if label1.caption='T3' then begin
          if checkbox1.Checked then
          fieldbyname('at3diff_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('at3diff_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('at3diff_nlr').Value:='N';
        end else if label1.caption='SHP' then begin
          if checkbox1.Checked then
          fieldbyname('shpm_nlr').Value:='L'
          else if checkbox2.Checked then
          fieldbyname('shpm_nlr').Value:='R'
          else if checkbox3.Checked then
          fieldbyname('shpm_nlr').Value:='N';
        end;
        post;
        application.processmessages;
        next;
      end;
      finally
        enablecontrols;
      end;
    end;
    close;
  end;
end;

procedure TfrmCarte_Loc.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then begin
    checkbox2.checked:=false;
    checkbox3.checked:=false;
  end;
end;

procedure TfrmCarte_Loc.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.checked then begin
    checkbox1.checked:=false;
    checkbox3.checked:=false;
  end;
end;

procedure TfrmCarte_Loc.CheckBox3Click(Sender: TObject);
begin
  if checkbox3.checked then begin
    checkbox1.checked:=false;
    checkbox2.checked:=false;
  end;
end;

procedure TfrmCarte_Loc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Loc:=nil;
end;

end.
