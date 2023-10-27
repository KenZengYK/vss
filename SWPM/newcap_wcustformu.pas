unit newcap_wcustformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls;

type
  Tfrmnewcap_wcust = class(TForm)
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    xh1: TRadioGroup;
    ComboBox5: TComboBox;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    BitBtn9: TBitBtn;
    Query2: TClientDataSet;
    DataSource2: TDataSource;
    procedure ComboBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_wcust: Tfrmnewcap_wcust;

implementation

uses mainformu, newcap_wstyleformu, newcap_style_wkformu;

{$R *.dfm}

procedure Tfrmnewcap_wcust.ComboBox2Change(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    if xh1.ItemIndex=0 then
    commandtext:='select * from cust_exfty where 0=0'
    else if xh1.ItemIndex=1 then
    commandtext:='select * from cust_exfty where act=1'
    else if xh1.ItemIndex=2 then
    commandtext:='select * from cust_exfty where act=0';
    if combobox2.text>'' then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and tplant='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and grp='''+combobox4.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and pgrp='''+combobox5.text+'''';
    open;
  end;
end;

procedure Tfrmnewcap_wcust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_wcust:=nil;
end;

end.
 