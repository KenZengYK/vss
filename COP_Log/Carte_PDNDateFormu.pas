unit Carte_PDNDateFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, DB, ADODB, RzBckgnd;

type
  TfrmCarte_PDNDate = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    RzBackground1: TRzBackground;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_PDNDate: TfrmCarte_PDNDate;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu;

{$R *.dfm}

procedure TfrmCarte_PDNDate.BitBtn1Click(Sender: TObject);
begin
  if (dateedit2.date<>dateedit1.date) and (dateedit2.date>0) then begin
    if application.messagebox('要修改此日期?','確定',mb_iconquestion+mb_okcancel)=idok then begin
      with adoquery1 do begin
        close;
        sql.text:='exec sp_carte_updatepdndate :x1,:x2';
        parameters[0].value:=frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').value;
        parameters[1].value:=dateedit2.date;
        execsql;
      end;
      with frmCarte_Ordprocessing.adodataset1 do begin
        edit;
        fieldbyname('act_cmpdt').value:=dateedit2.date;
        post;
      end;
    end;
  end;
end;

procedure TfrmCarte_PDNDate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_PDNDate:=nil;
end;

end.
