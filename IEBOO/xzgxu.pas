unit xzgxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Db, DBTables, ADODB, DBClient;

type
  Tfrmxzgx = class(TForm)
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    Bevel1: TBevel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    Query1: TClientDataSet;
    Query5: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBComboBox3: TDBComboBox;
    Label10: TLabel;
    DBComboBox4: TDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBComboBox5: TDBComboBox;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxzgx: Tfrmxzgx;

implementation
uses scgxu, cbgxu, scgxxzu, dlu;
{$R *.DFM}

procedure Tfrmxzgx.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxzgx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //frmscgx.zygx1.refresh;
  //action:=cafree;
  //frmxzgx:=nil;
end;

procedure Tfrmxzgx.FormShow(Sender: TObject);
var
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)<>'LIMIN' then begin
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then begin
  if not r20 then begin
    DBEdit21.ReadOnly:=True;
    DBCombobox1.ReadOnly:=True;
    DBEdit3.ReadOnly:=true;
    DBEdit2.ReadOnly:=true;
    SpeedButton1.Enabled:=False;
    DBEdit17.ReadOnly:=False;
    DBEdit18.ReadOnly:=False;
    DBEdit19.ReadOnly:=False;
    DBEdit22.ReadOnly:=False;
    DBNavigator1.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbPost];
  end
  else begin
    DBEdit21.ReadOnly:=False;
    DBCombobox1.ReadOnly:=False;
    DBEdit3.ReadOnly:=False;
    DBEdit2.ReadOnly:=False;
    SpeedButton1.Enabled:=True;
    DBNavigator1.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbPost];    
  end;
  dbcombobox1.items.clear;
  query2.close;
  query2.params.clear;
  query2.commandtext:='select mc from IE_bzgx1';
  query2.open;
  if query2.recordcount>0 then
  begin
    query2.first;
    while not query2.eof do
    begin
      if not query2.fieldbyname('mc').isnull then
      dbcombobox1.items.add(query2.fieldbyname('mc').value);
      query2.next;
    end;
  end;
end;

procedure Tfrmxzgx.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if button=nbinsert then
  begin
   if label29.caption='scgx' then begin
     query3.close;
     query3.params.clear;
     Query3.params.createparam(ftinteger,'Seq',ptinput);
     query3.commandtext:='select max(gxh) as seq from IE_zygx1 where seq=:seq and (trtpt=0 or trtpt is null)';
//     query3.prepare;
     query3.params[0].value:=frmscgx.zygx.fieldbyname('seq').value;
     query3.open;
     if query3.fieldbyname('seq').isnull then
     begin
       frmscgx.zygx1.append;
       frmscgx.zygx1.fieldbyname('kh').value:=frmscgx.zygx.fieldbyname('kh').value;
       frmscgx.zygx1.fieldbyname('gxh').value:=5;//10;
       frmscgx.zygx1.post;
     end
     else
     begin
       frmscgx.zygx1.append;
       frmscgx.zygx1.fieldbyname('kh').value:=frmscgx.zygx.fieldbyname('kh').value;
       frmscgx.zygx1.fieldbyname('gxh').value:=query3.fieldbyname('seq').value+5;//(query3.fieldbyname('seq').value div 10)*10+10;//query3.recordcount+1;
       frmscgx.zygx1.post;
     end;
   end
   else begin
     query3.close;
     query3.params.clear;
     Query3.params.createparam(ftinteger,'Seq',ptinput);
     query3.commandtext:='select max(gxh) as seq from IE_zygxn1 where Seq=:Seq';
//     query3.prepare;
     query3.params[0].value:=frmcbgx.zygx.fieldbyname('Seq').value;
     query3.open;
     if query3.fieldbyname('seq').isnull then
     begin
       frmcbgx.zygx1.append;
       frmcbgx.zygx1.fieldbyname('kh').value:=frmcbgx.zygx.fieldbyname('kh').value;
       frmcbgx.zygx1.fieldbyname('gxh').value:=5;//10;
       frmcbgx.zygx1.post;
     end
     else
     begin
       frmcbgx.zygx1.append;
       frmcbgx.zygx1.fieldbyname('kh').value:=frmcbgx.zygx.fieldbyname('kh').value;
       frmcbgx.zygx1.fieldbyname('gxh').value:=query3.fieldbyname('seq').value+5;//(query3.fieldbyname('seq').value div 10)*10+10;//query3.recordcount+1;
       frmcbgx.zygx1.post;
     end;
   end;
  end;
end;

procedure Tfrmxzgx.SpeedButton1Click(Sender: TObject);
begin
  if frmscgxxz=nil then frmscgxxz:=tfrmscgxxz.create(self);
  frmscgxxz.show;
end;

end.
