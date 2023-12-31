unit mainu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, ToolWin, Menus, ImgList, jpeg, Db, DBTables,
  TB97Ctls, TB97, TB97Tlbr, DBClient, RzBckgnd, StdCtrls, Buttons,
  MConnect, SConnect, RzButton, RzPanel, WideStrings, DbxDatasnap, DSConnect,
  SqlExpr;

type
  Tfrmmain = class(TForm)
    MainMenu1: TMainMenu;
    mn1: TMenuItem;
    InputInformation1: TMenuItem;
    mn3: TMenuItem;
    InputForm1: TMenuItem;
    mn2: TMenuItem;
    InputForm2: TMenuItem;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    Timer1: TTimer;
    Query1: TClientDataSet;
    RzBackground1: TRzBackground;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SocketConnection1: TSocketConnection;
    Query2: TClientDataSet;
    CustomersPOM1: TMenuItem;
    Toolbar971: TRzToolbar;
    tb1: TRzToolButton;
    tb6: TRzToolButton;
    tb2: TRzToolButton;
    tb3: TRzToolButton;
    tb4: TRzToolButton;
    tb5: TRzToolButton;
    RzToolButton7: TRzToolButton;
    dsConn: TSQLConnection;
    dsp_Conn: TDSProviderConnection;
    ClientDataSet1: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure InputInformation1Click(Sender: TObject);
    procedure InputForm1Click(Sender: TObject);
    procedure InputForm2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tb4Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure ToolbarButton976Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CustomersPOM1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure showmenus;
  end;

var
  frmmain: Tfrmmain;

implementation
uses libraryu, sampletblu, siztblu, loginu, usru, athru, custpomformu;
{$R *.DFM}

procedure Tfrmmain.FormShow(Sender: TObject);
begin
  mn1.Visible:=false;
  mn2.Visible:=false;
  toolbar971.Visible:=false;
  groupbox1.Visible:=true;
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from sz_usrtbl';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('usr').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox1.SetFocus;
  groupbox1.Left:=(screen.width-groupbox1.Width) div 2;
  groupbox1.Top:=(screen.height-groupbox1.Height) div 2;
  statusbar1.Panels[0].text:='POM_SM System';
  {
  query1.close;
  query1.params.clear;
  query1.params.createparam(ftstring,'usr',ptinput);
  query1.commandtext:='select * from SZ_athtbl where usr=:usr';
  query1.params[0].asstring:=frmlogin.combobox1.text;
  query1.open;
  if query1.recordcount>0 then
  begin
    if query1.fieldbyname('r1').value=true then
    begin
      mn1.Enabled:=true;
      tb1.Enabled:=true;
    end
    else
    begin
      mn1.Enabled:=false;
      tb1.Enabled:=false;
    end;
    if query1.fieldbyname('r3').value=true then
    begin
      mn2.Enabled:=true;
      tb2.Enabled:=true;
    end
    else
    begin
      mn2.Enabled:=false;
      tb2.Enabled:=false;
    end;
    if query1.fieldbyname('r2').value=true then
    begin
      mn3.Enabled:=true;
      tb3.Enabled:=true;
    end
    else
    begin
      mn3.Enabled:=false;
      tb3.Enabled:=false;
    end;
  end;
  statusbar1.Panels[0].text:='POM_SM System';
  statusbar1.panels[2].text:='用戶: '+frmlogin.combobox1.text;
  }

  //test new datasnap server
  {
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from sz_bastbl_cust';
    open;
  end;
  }
end;

procedure Tfrmmain.Timer1Timer(Sender: TObject);
begin
  statusbar1.panels[1].Text:=datetostr(date)+'  '+timetostr(now);
end;

procedure Tfrmmain.InputInformation1Click(Sender: TObject);
begin
  if frmlibrary=nil then frmlibrary:=tfrmlibrary.create(self);
  frmlibrary.show;
end;

procedure Tfrmmain.InputForm1Click(Sender: TObject);
begin
  if frmsampletbl=nil then frmsampletbl:=tfrmsampletbl.create(self);
  frmsampletbl.show;
end;

procedure Tfrmmain.InputForm2Click(Sender: TObject);
begin
  if frmsiztbl=nil then frmsiztbl:=tfrmsiztbl.create(self);
  frmsiztbl.show;
end;

procedure Tfrmmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //frmlogin.close;
end;

procedure Tfrmmain.tb4Click(Sender: TObject);
begin
  if frmusr=nil then frmusr:=tfrmusr.create(self);
  query1.close;
  query1.params.clear;
  //query1.params.createparam(ftstring,'usr',ptinput);
  query1.commandtext:='select r4 from SZ_athtbl where usr='''+combobox1.text+'''';//:usr';
  //query1.params[0].asstring:=frmlogin.combobox1.text;
  query1.open;
  if query1.recordcount>0 then
  begin
    if query1.fieldbyname('r4').value=true then
    begin
      frmusr.bitbtn3.visible:=true;
      frmusr.bitbtn4.visible:=true;
    end
    else
    begin
      frmusr.bitbtn3.visible:=false;
      frmusr.bitbtn4.visible:=false;
    end;
  end;
  frmusr.show;
end;

procedure Tfrmmain.tb5Click(Sender: TObject);
begin
  if frmathr=nil then frmathr:=tfrmathr.create(self);
  frmathr.show;
end;

procedure Tfrmmain.ToolbarButton976Click(Sender: TObject);
begin
  //close;
  if mdichildcount>0 then activemdichild.close
  else close;
end;

procedure Tfrmmain.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from sz_usrtbl where upper(usr)='''+combobox1.text+''' and lower(pswrd)='''+edit1.text+'''';
      //params[0].asstring:=combobox1.text;
      //params[1].asstring:=edit1.text;
      open;
      if not fieldbyname('usr').isnull then begin
        mn1.Visible:=true;
        mn2.Visible:=true;
        toolbar971.Visible:=true;
        groupbox1.Visible:=false;
        showmenus;
      end else begin
        showmessage('用戶名或密碼錯誤!');
      end;
    end;
  end;
end;

procedure Tfrmmain.showmenus;
begin
  query2.close;
  query2.params.clear;
  //query2.params.createparam(ftstring,'usr',ptinput);
  query2.commandtext:='select * from SZ_athtbl where usr='''+combobox1.text+'''';
  //query2.params[0].asstring:=combobox1.text;
  query2.open;
  if query2.recordcount>0 then
  begin
    if query2.fieldbyname('r1').value=true then
    begin
      mn1.Enabled:=true;
      tb1.Enabled:=true;
    end
    else
    begin
      mn1.Enabled:=false;
      tb1.Enabled:=false;
    end;
    if query2.fieldbyname('r3').value=true then
    begin
      mn2.Enabled:=true;
      tb2.Enabled:=true;
    end
    else
    begin
      mn2.Enabled:=false;
      tb2.Enabled:=false;
    end;
    if query2.fieldbyname('r2').value=true then
    begin
      mn3.Enabled:=true;
      tb3.Enabled:=true;
    end
    else
    begin
      mn3.Enabled:=false;
      tb3.Enabled:=false;
    end;
    {
    if query2.fieldbyname('r5').value=true then begin
      customerspom1.enabled:=true;
      tb6.Enabled:=true;
    end else begin
      customerspom1.Enabled:=false;
      tb6.Enabled:=false;
    end;
    }
  end;
  statusbar1.panels[2].text:='用戶: '+combobox1.text;
end;

procedure Tfrmmain.FormCreate(Sender: TObject);
begin
  if frmlogin=nil then frmlogin:=tfrmlogin.create(nil);
end;

procedure Tfrmmain.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmain.CustomersPOM1Click(Sender: TObject);
begin
  if frmcustpom=nil then frmcustpom:=tfrmcustpom.create(self);
  frmcustpom.show;
end;

end.
