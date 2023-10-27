unit newcap_budgetformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils;

type
  Tfrmnewcap_budget = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_budget: Tfrmnewcap_budget;

implementation

uses mainformu, newcapformu, newcap_simftyformu;

{$R *.dfm}

procedure Tfrmnewcap_budget.BitBtn1Click(Sender: TObject);
begin
  //factory capacity budget
  if frmnewcap_simfty=nil then frmnewcap_simfty:=tfrmnewcap_simfty.Create(nil);
  frmnewcap_simfty.combobox1.text:='SL';
  frmnewcap_simfty.spinedit1.value:=yearof(date);
  frmnewcap_simfty.show;
end;

procedure Tfrmnewcap_budget.BitBtn2Click(Sender: TObject);
begin
  //sales projection budget
end;

procedure Tfrmnewcap_budget.BitBtn3Click(Sender: TObject);
begin
  //master lock
end;

procedure Tfrmnewcap_budget.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnewcap_budget.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_budget:=nil;
end;

end.
