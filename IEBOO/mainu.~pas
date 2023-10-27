unit mainu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus, ComCtrls, ToolWin, ImgList, Db, DBTables, TB97Ctls,
  TB97, TB97Tlbr, ADODB, DBClient;

type
  Tfrmmain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Image1: TImage;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ImageList1: TImageList;
    Dock971: TDock97;
    Toolbar971: TToolbar97;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    ToolbarButton973: TToolbarButton97;
    ToolbarButton974: TToolbarButton97;
    ToolbarButton975: TToolbarButton97;
    ToolbarButton976: TToolbarButton97;
    ToolbarButton977: TToolbarButton97;
    ToolbarButton978: TToolbarButton97;
    ToolbarButton979: TToolbarButton97;
    ToolbarButton9710: TToolbarButton97;
    N14: TMenuItem;
    ToolbarButton9711: TToolbarButton97;
    Query1: TClientDataSet;
    N15: TMenuItem;
    N16: TMenuItem;
    ToolbarButton9712: TToolbarButton97;
    N17: TMenuItem;
    procedure N7Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolbarButton9710Click(Sender: TObject);
    procedure ToolbarButton9711Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmain: Tfrmmain;

implementation

uses bzgxu, scgxu, zyjsybu, jxjsbu, gxfxbu, bzgx1u, dlu, useru,
     fju, qxu, cbgxu, tjb2formu;

{$R *.DFM}

procedure Tfrmmain.N7Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmscgx=nil then frmscgx:=tfrmscgx.create(self);
  frmscgx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N3Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmcfzyjsb=nil then frmcfzyjsb:=tfrmcfzyjsb.create(self);
  frmcfzyjsb.Label1.caption:='frmmain';
  frmcfzyjsb.show;
  screen.cursor:=crDefault;
  //frmcfzyjsb.DBNavigator1.visible:=true;
  //frmcfzyjsb.BitBtn2.visible:=true;
  //frmcfzyjsb.dbgrid1.readonly:=false;
end;

procedure Tfrmmain.N4Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmjxjsb=nil then frmjxjsb:=tfrmjxjsb.create(self);
  frmjxjsb.label1.caption:='frmmain';
  frmjxjsb.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N6Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmgxfxb=nil then frmgxfxb:=tfrmgxfxb.create(self);
  frmgxfxb.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N9Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmbzgx=nil then frmbzgx:=tfrmbzgx.create(self);
  frmbzgx.label3.caption:='frmmain';
  frmbzgx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N10Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmbzgx1=nil then frmbzgx1:=tfrmbzgx1.create(self);
  frmbzgx1.label3.caption:='frmmain';
  frmbzgx1.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N11Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmuser=nil then frmuser:=tfrmuser.create(self);
  with frmuser.table1 do begin
    close;
    params.clear;
    commandtext:='select * from ie_yh';
    open;
  end;
  frmuser.show;
  query1.close;
  query1.params.clear;
  query1.params.createparam(ftstring,'nam',ptinput);
  query1.commandtext:='select r6 from IE_qx where nam=:nam';
  query1.params[0].value:=frmxtdl.combobox1.text;
  query1.open;
  if query1.recordcount>0 then
  begin
   if query1.fieldbyname('r6').value=true then
   begin
    frmuser.table1.first;
    frmuser.dbedit1.readonly:=false;
    frmuser.bitbtn3.visible:=true;
    frmuser.bitbtn4.visible:=true;
   end
   else
   begin
    frmuser.table1.locate('nam',frmxtdl.ComboBox1.text,[]);
    frmuser.dbedit1.readonly:=true;
    frmuser.bitbtn3.visible:=false;
    frmuser.bitbtn4.visible:=false;
   end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmxtdl.close;
end;

procedure Tfrmmain.N12Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmfj=nil then frmfj:=tfrmfj.create(self);
  frmfj.label2.caption:='main';
  frmfj.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N13Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmqx=nil then frmqx:=tfrmqx.create(self);
  frmqx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.FormShow(Sender: TObject);
begin
  query1.close;
  query1.params.clear;
  query1.params.createparam(ftstring,'nam',ptinput);
  query1.commandtext:='select * from IE_qx where nam=:nam';
//  query1.prepare;
  query1.params[0].value:=frmxtdl.ComboBox1.text;
  query1.open;
  if query1.recordcount>0 then
  begin
    if query1.fieldbyname('r1').value=true then
    begin
     if query1.fieldbyname('r2').value=true then
     begin
      n2.enabled:=true;
      n9.enabled:=true;
      n10.enabled:=true;
      toolbarbutton971.enabled:=true;
      toolbarbutton972.enabled:=true;
     end
     else
     begin
      n2.enabled:=true;
      n9.enabled:=true;
      n10.enabled:=false;
      toolbarbutton971.enabled:=true;
      toolbarbutton972.enabled:=false;
     end;
    end
    else
    begin
     if query1.fieldbyname('r2').value=true then
     begin
      n2.enabled:=true;
      n9.enabled:=false;
      n10.enabled:=true;
      toolbarbutton971.enabled:=false;
      toolbarbutton972.enabled:=true;
     end
     else
     begin
      n2.enabled:=false;
      toolbarbutton971.enabled:=false;
      toolbarbutton972.enabled:=false;
     end;
    end;
    if query1.fieldbyname('r3').value=true then
    begin
     n3.enabled:=true;
     toolbarbutton973.enabled:=true;
    end
    else
    begin
     n3.enabled:=false;
     toolbarbutton973.enabled:=false;
    end;
    if query1.fieldbyname('r4').value=true then
    begin
     n4.enabled:=true;
     toolbarbutton974.enabled:=true;
    end
    else
    begin
     n4.enabled:=false;
     toolbarbutton974.enabled:=false;
    end;
    if query1.fieldbyname('r5').value=true then
    begin
     n12.enabled:=true;
     toolbarbutton975.enabled:=true;
    end
    else
    begin
     n12.enabled:=false;
     toolbarbutton975.enabled:=false;
    end;
    if query1.fieldbyname('r7').value=true then
    begin
     n13.enabled:=true;
     toolbarbutton977.enabled:=true;
    end
    else
    begin
     n13.enabled:=false;
     toolbarbutton977.enabled:=false;
    end;
    if query1.fieldbyname('r8').value=true then
    begin
     n6.enabled:=true;
     toolbarbutton978.enabled:=true;
    end
    else
    begin
     n6.enabled:=false;
     toolbarbutton978.enabled:=false;
    end;
    if query1.fieldbyname('r9').value=true then
    begin
     n7.enabled:=true;
     toolbarbutton979.enabled:=true;
     n16.enabled:=true;
     toolbarbutton9712.enabled:=true;
    end
    else
    begin
     n7.enabled:=false;
     toolbarbutton979.enabled:=false;
     n16.enabled:=false;
     toolbarbutton9712.enabled:=false;
    end;
  end;
end;

procedure Tfrmmain.ToolbarButton9710Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmain.ToolbarButton9711Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmcbgx=nil then frmcbgx:=tfrmcbgx.create(self);
  frmcbgx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N15Click(Sender: TObject);
begin
  //
end;

procedure Tfrmmain.N16Click(Sender: TObject);
begin
  if frmtjb2=nil then frmtjb2:=tfrmtjb2.create(nil);
  frmtjb2.Show;
end;

procedure Tfrmmain.N17Click(Sender: TObject);
begin
  //
end;

end.
