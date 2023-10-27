unit aql1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, Buttons, DB, DBClient;

type
  Tfrmaql1 = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBGridEh5: TDBGridEh;
    DBGridEh1: TDBGridEh;
    xh1: TRadioGroup;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xh1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaql1: Tfrmaql1;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrmaql1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmaql1:=nil;
end;

procedure Tfrmaql1.xh1Click(Sender: TObject);
var
  i:integer;
begin
  if xh1.ItemIndex=0 then begin
    with dbgrideh1 do begin
      for i:=1 to 12 do begin
        columns[i].DisplayFormat:='#,0;-#,0;''-''';
        columns[i].Footer.DisplayFormat:='#,0';
      end;
    end;
    with dbgrideh5 do begin
      for i:=1 to 12 do begin
        columns[i].DisplayFormat:='#,0;-#,0;''-''';
        columns[i].Footer.DisplayFormat:='#,0';
      end;
    end;
  end else begin
    with dbgrideh1 do begin
      for i:=1 to 12 do begin
        columns[i].DisplayFormat:='#,0.0;-#,0.0;''-''';
        columns[i].Footer.DisplayFormat:='#,0.0';
      end;
    end;
    with dbgrideh5 do begin
      for i:=1 to 12 do begin
        columns[i].DisplayFormat:='#,0.0;-#,0.0;''-''';
        columns[i].Footer.DisplayFormat:='#,0.0';
      end;
    end;
  end;
end;

procedure Tfrmaql1.BitBtn1Click(Sender: TObject);
begin
  if frmaqlmain.qry_s2.state=dsedit then frmaqlmain.qry_s2.Post;
  if frmaqlmain.qry_s3.state=dsedit then frmaqlmain.qry_s3.Post;
end;

end.
