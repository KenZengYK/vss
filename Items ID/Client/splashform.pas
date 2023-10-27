unit splashform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, cxControls, cxContainer, cxEdit, cxLabel;

type
  Tfrmsplash = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FullRgn, ClientRgn, CtlRgn: THandle;
    procedure DoVisible;
    procedure DoInvisible;
  public
    { Public declarations }
  end;

var
  frmsplash: Tfrmsplash;

implementation

{$R *.DFM}

procedure Tfrmsplash.DoInvisible;
var
  AControl: TControl;
  A, Margin, X, Y, CtlX, CtlY: Integer;
begin
  Margin := (Width - ClientWidth) div 2;
  FullRgn := CreateRectRgn(0, 0, Width, Height);
  X := Margin;
  Y := Height - ClientHeight - Margin;
  ClientRgn := CreateRectRgn(X, Y, X + ClientWidth, Y + ClientHeight);
  CombineRgn(FullRgn, FullRgn, ClientRgn, RGN_DIFF);

  for A := 0 to ControlCount - 1 do
  begin
    AControl := Controls[A];
    if (AControl is TWinControl) or (AControl is TGraphicControl) then 
      with AControl do
      begin
        if Visible then
        begin
          CtlX := X + Left;
          CtlY := Y + Top;
          CtlRgn := CreateRectRgn(CtlX, CtlY, CtlX + Width, CtlY + Height);
          CombineRgn(FullRgn, FullRgn, CtlRgn, RGN_OR);
        end;
      end;
  end;
  SetWindowRgn(Handle, FullRgn, TRUE);
end;

procedure Tfrmsplash.DoVisible;
begin
  FullRgn := CreateRectRgn(0, 0, Width, Height);
  CombineRgn(FullRgn, FullRgn, FullRgn, RGN_COPY);
  SetWindowRgn(Handle, FullRgn, TRUE);
end;

procedure Tfrmsplash.FormCreate(Sender: TObject);
begin
  DoInvisible;
end;

procedure Tfrmsplash.FormDestroy(Sender: TObject);
begin
  DeleteObject(ClientRgn);
  DeleteObject(FullRgn);
  DeleteObject(CtlRgn);
end;

end.

