unit newcap_cprpt_optionformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmnewcap_cprpt_option = class(TForm)
    xh1: TRadioButton;
    xh2: TRadioButton;
    xh3: TRadioButton;
    BitBtn15: TBitBtn;
    BitBtn1: TBitBtn;
    xh4: TRadioButton;
    xh5: TRadioButton;
    xh6: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    xh7: TRadioButton;
    Label7: TLabel;
    xh8: TRadioButton;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_cprpt_option: Tfrmnewcap_cprpt_option;

implementation

uses mainformu, newcap_ftysimulationformu, newcap_printbalancingformu;

{$R *.dfm}

procedure Tfrmnewcap_cprpt_option.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_cprpt_option:=nil;
end;

procedure Tfrmnewcap_cprpt_option.BitBtn15Click(Sender: TObject);
begin
  if label8.caption='SIMULATION' then begin
    if label1.caption='CURRENT' then begin
      if xh1.checked then begin
        frmnewcap_ftysimulation.print_balancingrpt('0');
        frmnewcap_ftysimulation.print_balancingrpt_supplement;
      end else if xh2.checked then
      frmnewcap_ftysimulation.print_balancingrpt('1')
      else if xh3.checked then
      frmnewcap_ftysimulation.print_balancingrpt('2')
      else if xh4.checked then
      frmnewcap_ftysimulation.print_balancingrpt('3')
      else if xh5.checked then
      frmnewcap_ftysimulation.print_balancingrpt('4')
      else if xh7.checked then
      frmnewcap_ftysimulation.print_balancingrpt('6')
      else if xh8.checked then
      frmnewcap_ftysimulation.print_balancingrpt('7')
      else if xh6.checked then
      frmnewcap_ftysimulation.print_balancingrpt('5');
    end else if label1.caption='LAST' then begin
      if xh1.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('0')
      else if xh2.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('1')
      else if xh3.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('2')
      else if xh4.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('3')
      else if xh5.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('4')
      else if xh7.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('6')
      else if xh6.checked then
      frmnewcap_ftysimulation.print_balancingrpt1('5');
    end;
  end else begin
      if xh1.checked then begin
        frmnewcap_printbalancing.print_balancingrpt('0');
        //frmnewcap_printbalancing.print_balancingrpt_supplement;
      end else if xh2.checked then
      frmnewcap_printbalancing.print_balancingrpt('1')
      else if xh3.checked then
      frmnewcap_printbalancing.print_balancingrpt('2')
      else if xh4.checked then
      frmnewcap_printbalancing.print_balancingrpt('3')
      else if xh5.checked then
      frmnewcap_printbalancing.print_balancingrpt('4')
      else if xh7.checked then
      frmnewcap_printbalancing.print_balancingrpt('6')
      else if xh8.checked then
      frmnewcap_printbalancing.print_balancingrpt('7')
      else if xh6.checked then
      frmnewcap_printbalancing.print_balancingrpt('5');
  end;
end;

end.
