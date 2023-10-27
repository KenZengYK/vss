unit mbrandformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DB, DBClient, GridsEh;

type
  Tfrmmbrand = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmbrand: Tfrmmbrand;

implementation

uses mainformu, allmcformu, mcimgformu, mcinfoformu;

{$R *.dfm}

procedure Tfrmmbrand.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.append;
end;

procedure Tfrmmbrand.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmbrand:=nil;
end;

procedure Tfrmmbrand.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_mcbrand where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').IsNull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftstring,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          params.createparam(ftstring,'x20',ptinput);
          params.createparam(ftstring,'x21',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(ftstring,'x24',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='update tbl_mcbrand set mbrand=:x1,mcimg=:x3,maxspeed=:x4,aspeed=:x5,maxneedle=:x6,maxfeed=:x7,thrtimer=:x8,'
                      +'stitch=:x9,luboil=:x10,bneedle=:x11,tneedle=:x12,gneedle=:x13,overedge=:x14,pflift=:x15,diffratio=:x16,'
                      +'diffratio1=:x17,thread=:x18,sewarea=:x19,sewarea1=:x20,wflift=:x21,memo1=:x22,memo2=:x23,nlift=:x24 where seq=:x2';
          if not query1.fieldbyname('mbrand').isnull then
          params[0].asstring:=query1.fieldbyname('mbrand').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mcimg').isnull then
          params[1].asstring:=query1.fieldbyname('mcimg').value
          else params[1].asstring:='';
          if not query1.fieldbyname('maxspeed').isnull then
          params[2].asstring:=query1.fieldbyname('maxspeed').value
          else params[2].asstring:='';
          if not query1.fieldbyname('aspeed').isnull then
          params[3].asstring:=query1.fieldbyname('aspeed').value
          else params[3].asstring:='';
          if not query1.fieldbyname('maxneedle').isnull then
          params[4].asstring:=query1.fieldbyname('maxneedle').value
          else params[4].asstring:='';
          if not query1.fieldbyname('maxfeed').isnull then
          params[5].asstring:=query1.fieldbyname('maxfeed').value
          else params[5].asstring:='';
          if not query1.fieldbyname('thrtimer').isnull then
          params[6].asstring:=query1.fieldbyname('thrtimer').value
          else params[6].asstring:='';
          if not query1.fieldbyname('stitch').isnull then
          params[7].asstring:=query1.fieldbyname('stitch').value
          else params[7].asstring:='';
          if not query1.fieldbyname('luboil').isnull then
          params[8].asstring:=query1.fieldbyname('luboil').value
          else params[8].asstring:='';
          if not query1.fieldbyname('bneedle').isnull then
          params[9].asstring:=query1.fieldbyname('bneedle').value
          else params[9].asstring:='';
          if not query1.fieldbyname('tneedle').isnull then
          params[10].asstring:=query1.fieldbyname('tneedle').value
          else params[10].asstring:='';
          if not query1.fieldbyname('gneedle').isnull then
          params[11].asstring:=query1.fieldbyname('gneedle').value
          else params[11].asstring:='';
          if not query1.fieldbyname('overedge').isnull then
          params[12].asstring:=query1.fieldbyname('overedge').value
          else params[12].asstring:='';
          if not query1.fieldbyname('pflift').isnull then
          params[13].asstring:=query1.fieldbyname('pflift').value
          else params[13].asstring:='';
          if not query1.fieldbyname('diffratio').isnull then
          params[14].asstring:=query1.fieldbyname('diffratio').value
          else params[14].asstring:='';
          if not query1.fieldbyname('diffratio1').isnull then
          params[15].asstring:=query1.fieldbyname('diffratio1').value
          else params[15].asstring:='';
          if not query1.fieldbyname('thread').isnull then
          params[16].asstring:=query1.fieldbyname('thread').value
          else params[16].asstring:='';
          if not query1.fieldbyname('sewarea').isnull then
          params[17].asstring:=query1.fieldbyname('sewarea').value
          else params[17].asstring:='';
          if not query1.fieldbyname('sewarea1').isnull then
          params[18].asstring:=query1.fieldbyname('sewarea1').value
          else params[18].asstring:='';
          if not query1.fieldbyname('wflift').isnull then
          params[19].asstring:=query1.fieldbyname('wflift').value
          else params[19].asstring:='';
          if not query1.fieldbyname('memo1').isnull then
          params[20].asstring:=query1.fieldbyname('memo1').value
          else params[20].asstring:='';
          if not query1.fieldbyname('memo2').isnull then
          params[21].asstring:=query1.fieldbyname('memo2').value
          else params[21].asstring:='';
          if not query1.fieldbyname('nlift').isnull then
          params[22].asstring:=query1.fieldbyname('nlift').value
          else params[22].asstring:='';
          params[23].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftstring,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          params.createparam(ftstring,'x20',ptinput);
          params.createparam(ftstring,'x21',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(ftstring,'x24',ptinput);
          params.createparam(ftstring,'x25',ptinput);
          commandtext:='insert into tbl_mcbrand(mbrand,seq,mcimg,maxspeed,aspeed,maxneedle,maxfeed,thrtimer,stitch,luboil,'
                      +'bneedle,tneedle,gneedle,overedge,pflift,diffratio,diffratio1,thread,sewarea,sewarea1,wflift,memo1,memo2,nlift,tplant) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,:x24,:x25)';
          if not query1.fieldbyname('mbrand').isnull then
          params[0].asstring:=query1.fieldbyname('mbrand').value
          else params[0].asstring:='';
          params[1].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('mcimg').isnull then
          params[2].asstring:=query1.fieldbyname('mcimg').value
          else params[2].asstring:='';
          if not query1.fieldbyname('maxspeed').isnull then
          params[3].asstring:=query1.fieldbyname('maxspeed').value
          else params[3].asstring:='';
          if not query1.fieldbyname('aspeed').isnull then
          params[4].asstring:=query1.fieldbyname('aspeed').value
          else params[4].asstring:='';
          if not query1.fieldbyname('maxneedle').isnull then
          params[5].asstring:=query1.fieldbyname('maxneedle').value
          else params[5].asstring:='';
          if not query1.fieldbyname('maxfeed').isnull then
          params[6].asstring:=query1.fieldbyname('maxfeed').value
          else params[6].asstring:='';
          if not query1.fieldbyname('thrtimer').isnull then
          params[7].asstring:=query1.fieldbyname('thrtimer').value
          else params[7].asstring:='';
          if not query1.fieldbyname('stitch').isnull then
          params[8].asstring:=query1.fieldbyname('stitch').value
          else params[8].asstring:='';
          if not query1.fieldbyname('luboil').isnull then
          params[9].asstring:=query1.fieldbyname('luboil').value
          else params[9].asstring:='';
          if not query1.fieldbyname('bneedle').isnull then
          params[10].asstring:=query1.fieldbyname('bneedle').value
          else params[10].asstring:='';
          if not query1.fieldbyname('tneedle').isnull then
          params[11].asstring:=query1.fieldbyname('tneedle').value
          else params[11].asstring:='';
          if not query1.fieldbyname('gneedle').isnull then
          params[12].asstring:=query1.fieldbyname('gneedle').value
          else params[12].asstring:='';
          if not query1.fieldbyname('overedge').isnull then
          params[13].asstring:=query1.fieldbyname('overedge').value
          else params[13].asstring:='';
          if not query1.fieldbyname('pflift').isnull then
          params[14].asstring:=query1.fieldbyname('pflift').value
          else params[14].asstring:='';
          if not query1.fieldbyname('diffratio').isnull then
          params[15].asstring:=query1.fieldbyname('diffratio').value
          else params[15].asstring:='';
          if not query1.fieldbyname('diffratio1').isnull then
          params[16].asstring:=query1.fieldbyname('diffratio1').value
          else params[16].asstring:='';
          if not query1.fieldbyname('thread').isnull then
          params[17].asstring:=query1.fieldbyname('thread').value
          else params[17].asstring:='';
          if not query1.fieldbyname('sewarea').isnull then
          params[18].asstring:=query1.fieldbyname('sewarea').value
          else params[18].asstring:='';
          if not query1.fieldbyname('sewarea1').isnull then
          params[19].asstring:=query1.fieldbyname('sewarea1').value
          else params[19].asstring:='';
          if not query1.fieldbyname('wflift').isnull then
          params[20].asstring:=query1.fieldbyname('wflift').value
          else params[20].asstring:='';
          if not query1.fieldbyname('memo1').isnull then
          params[21].asstring:=query1.fieldbyname('memo1').value
          else params[21].asstring:='';
          if not query1.fieldbyname('memo2').isnull then
          params[22].asstring:=query1.fieldbyname('memo2').value
          else params[22].asstring:='';
          if not query1.fieldbyname('nlift').isnull then
          params[23].asstring:=query1.fieldbyname('nlift').value
          else params[23].asstring:='';
          params[24].asstring:=query1.fieldbyname('tplant').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmmbrand.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tbl_mcbrand';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('tplant').value:=frmallmc.Query1.fieldbyname('tplant').value;
end;

procedure Tfrmmbrand.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.Post;
end;

procedure Tfrmmbrand.BitBtn4Click(Sender: TObject);
var
  seq:integer;
begin
  bitbtn3click(self);
  if not query1.FieldByName('mbrand').isnull then begin
    if (frmallmc.Query1.state=dsedit) or (frmallmc.Query1.state=dsinsert) then frmallmc.Query1.Post;
    seq:=frmallmc.Query1.fieldbyname('seq').value;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mname='''+query1.fieldbyname('mbrand').value+''' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
    frmallmc.ComboBox1Change(self);
    frmallmc.Query1.Locate('seq',seq,[]);
    frmmbrand.Close;
  end;
end;

procedure Tfrmmbrand.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmmcimg=nil then frmmcimg:=tfrmmcimg.create(nil);
  frmmcimg.Label1.Caption:='brand';
  try
    if not query1.fieldbyname('mcimg').isnull then
    frmmcimg.WebBrowser1.Navigate(query1.fieldbyname('mcimg').value);
  except
  end;
  frmmcimg.show;
end;

procedure Tfrmmbrand.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmmcinfo=nil then frmmcinfo:=tfrmmcinfo.Create(nil);
  frmmcinfo.Show;
end;

end.
 