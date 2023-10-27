unit newcap_wf_detailformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, GridsEh, DBGridEh, DB,
  DBClient, Buttons, MemTableDataEh, DataDriverEh, MemTableEh, ADODB;

type
  Tfrmnewcap_wf_detail = class(TForm)
    Panel1: TPanel;
    Label55: TLabel;
    Label56: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    BitBtn3: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label14: TLabel;
    BitBtn6: TBitBtn;
    ADOQuery1: TADOQuery;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure DataSource2StateChange(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_wf_detail: Tfrmnewcap_wf_detail;

implementation

uses mainformu, newcap_wfformu, newcap_wf_specificformu, newcap_dhlnotepadformu,
  newcap_wf_notepadformu, newcap_spwfformu;

{$R *.dfm}

procedure Tfrmnewcap_wf_detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_wf_detail:=nil;
end;

procedure Tfrmnewcap_wf_detail.BitBtn1Click(Sender: TObject);
var
  ondutywf,inhandwf,assembly:double;
begin
  screen.cursor:=crSQLWait;
  try
  if (frmnewcap_wf.Query1.state=dsedit) or (frmnewcap_wf.Query1.state=dsinsert) then frmnewcap_wf.query1.post;
  if query1.state=dsedit then query1.post;
  ondutywf:=0; inhandwf:=0;
  //if not frmnewcap_wf.query1.fieldbyname('d11').isnull then ondutywf:=ondutywf+frmnewcap_wf.query1.fieldbyname('d11').value;
  if not frmnewcap_wf.query1.fieldbyname('d12').isnull then ondutywf:=ondutywf+frmnewcap_wf.query1.fieldbyname('d12').value;
  if not frmnewcap_wf.query1.fieldbyname('d13').isnull then ondutywf:=ondutywf+frmnewcap_wf.query1.fieldbyname('d13').value;
  if not frmnewcap_wf.query1.fieldbyname('d14').isnull then ondutywf:=ondutywf+frmnewcap_wf.query1.fieldbyname('d14').value;
  //if not frmnewcap_wf.query1.fieldbyname('h11').isnull then inhandwf:=inhandwf+frmnewcap_wf.query1.fieldbyname('h11').value;
  if not frmnewcap_wf.query1.fieldbyname('h12').isnull then inhandwf:=inhandwf+frmnewcap_wf.query1.fieldbyname('h12').value;
  if not frmnewcap_wf.query1.fieldbyname('h13').isnull then inhandwf:=inhandwf+frmnewcap_wf.query1.fieldbyname('h13').value;
  if not frmnewcap_wf.query1.fieldbyname('h14').isnull then inhandwf:=inhandwf+frmnewcap_wf.query1.fieldbyname('h14').value;
  //{
  assembly:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select sum(ondutywf) as d,sum(inhand) as h from tbl_cap_wf1 where tplant=:x1 and dt=:x2 and typ=:x3';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asdate:=query1.fieldbyname('dt').value;
    params[2].asstring:=query1.fieldbyname('typ').value;
    open;
    if not fieldbyname('d').isnull then begin
      ondutywf:=ondutywf+fieldbyname('d').value;
      assembly:=assembly+fieldbyname('d').value;
    end;
    if not fieldbyname('h').isnull then inhandwf:=inhandwf+fieldbyname('h').value;
  end;
  //}
  with frmnewcap_wf.query1 do begin
    edit;
    fieldbyname('ondutywf').value:=ondutywf;
    fieldbyname('d11').value:=assembly;
    //fieldbyname('inhandwf').value:=inhandwf;
    post;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_wf_detail.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      commandtext:='update tbl_cap_wf1 set ondutywf=:x1,inhand=:x2,remarks=:x7 where tplant=:x3 and dt=:x4 and typ=:x5 and tshop=:x6';

      if not query1.fieldbyname('ondutywf').isnull then
      params[0].asfloat:=query1.fieldbyname('ondutywf').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('inhand').isnull then
      params[1].asfloat:=query1.fieldbyname('inhand').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('remarks').isnull then
      params[2].asstring:=query1.fieldbyname('remarks').value
      else params[2].asstring:='';
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asdate:=query1.fieldbyname('dt').value;
      params[5].asstring:=query1.fieldbyname('typ').value;
      params[6].asstring:=query1.fieldbyname('tshop').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_cap_wf1 set ';
      if not query1.fieldbyname('ondutywf').isnull then
      str1:=str1+'ondutywf='+query1.fieldbyname('ondutywf').asstring+','
      else str1:=str1+'ondutywf=0,';
      if not query1.fieldbyname('inhand').isnull then
      str1:=str1+'inhand='+query1.fieldbyname('inhand').asstring+','
      else str1:=str1+'inhand=0,';
      if not query1.fieldbyname('remarks').isnull then
      str1:=str1+'remarks='''+query1.fieldbyname('remarks').value+''' '
      else str1:=str1+'remarks='''' ';
      str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      str1:=str1+'and dt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt').value)+''' ';
      str1:=str1+'and typ='''+query1.fieldbyname('typ').value+''' ';
      str1:=str1+'and tshop='''+query1.fieldbyname('tshop').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmnewcap_wf_detail.ComboBox1Enter(Sender: TObject);
begin
  {
  combobox1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct ws from tbl_cap_wf1 where tplant='''+frmnewcap_wf.query1.fieldbyname('tplant').value+'''';
    open;
    first;
    while not eof do begin
      combobox1.items.Add(fieldbyname('ws').value);
      application.ProcessMessages;
      next;
    end;
  end;
  }
end;

procedure Tfrmnewcap_wf_detail.ComboBox1Change(Sender: TObject);
var
  tplant,ws:string;
  dt:tdate;
begin
  tplant:=frmnewcap_wf.query1.fieldbyname('tplant').value;
  ws:=combobox1.text;
  dt:=frmnewcap_wf.query1.fieldbyname('dt').value;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select * from tbl_cap_wf1 where tplant='''+tplant+''' and dt=:x1';
    if ws>'' then commandtext:=commandtext+' and ws='''+ws+'''';
    params[0].asdate:=dt;
    open;
  end;
end;

procedure Tfrmnewcap_wf_detail.Query1AfterScroll(DataSet: TDataSet);
begin
  if query1.state=dsbrowse then begin
    datasource1statechange(self);
    if copy(query1.fieldbyname('tshop').Value,1,1)='T' then begin
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        {
        commandtext:='select distinct pline,seq,j2_job||''-''||rwo||''-''||fccs as qn,acol,lstr,sjrs,csect+ceot as sect from line_shjs where pline=:x1 and dt1=:x2 and flag=''0''';
        }
        commandtext:='select * from sp_cap_hdl_sp(:x1,:x2)';
        params[0].asstring:=query1.fieldbyname('tshop').value;
        params[1].asdate:=query1.fieldbyname('dt').value;
        open;
      end;
    end else query4.close;
  end;
end;

procedure Tfrmnewcap_wf_detail.DataSource2StateChange(Sender: TObject);
begin
  if query4.active then begin
    if query4.state=dsbrowse then begin
      if not query4.fieldbyname('pline').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          //commandtext:='select sum(lstr*(csect+ceot))/sum(csect+ceot) as x1,sum(sjrs*(csect+ceot))/sum(csect+ceot) as x2  from line_shjs where pline=:x1 and dt1=:x2 and flag=''0'' and csect+ceot>0';
          commandtext:='select sum(lstr*sect)/sum(sect) as x1,sum(sjrs*sect)/sum(sect) as x2,sum(eff1*sect)/sum(sect) as x3,sum(eff2*sect)/sum(sect) as x4,'
                      +'sum(lstr1*sect)/sum(sect) as x5,sum(sjrs1*sect)/sum(sect) as x6,sum(sjrs2*sect)/sum(sect) as x7,sum(sjrs3*sect)/sum(sect) as x8,'
                      +'sum(lb4wf*sect)/sum(sect) as x9,sum(lb4wf1*sect)/sum(sect) as x10,sum(lb4wf2*sect)/sum(sect) as x11,sum(lb4wf3*sect)/sum(sect) as x12,'
                      +'sum(lb6wf*sect)/sum(sect) as x13,sum(lb6wf1*sect)/sum(sect) as x14,sum(lb6wf2*sect)/sum(sect) as x15,sum(lb6wf3*sect)/sum(sect) as x16 from sp_cap_hdl_sp(:x1,:x2) where sect>0';
          params[0].asstring:=query1.fieldbyname('tshop').value;
          params[1].asdate:=query1.fieldbyname('dt').value;
          open;
          if not fieldbyname('x1').isnull then begin
            dbgrideh2.columns[3].Footer.value:=formatfloat('#0.0',fieldbyname('x1').value);
            dbgrideh2.columns[4].Footer.value:=formatfloat('#0.0',fieldbyname('x5').value);
            dbgrideh2.columns[5].Footer.value:=formatfloat('#0.0',fieldbyname('x9').value);
            dbgrideh2.columns[6].Footer.value:=formatfloat('#0.0',fieldbyname('x10').value);
            dbgrideh2.columns[7].Footer.value:=formatfloat('#0.0',fieldbyname('x11').value);
            dbgrideh2.columns[8].Footer.value:=formatfloat('#0.0',fieldbyname('x12').value);
            dbgrideh2.columns[9].Footer.value:=formatfloat('#0.0',fieldbyname('x2').value);
            dbgrideh2.columns[10].Footer.value:=formatfloat('#0.0',fieldbyname('x6').value);
            dbgrideh2.columns[11].Footer.value:=formatfloat('#0.0',fieldbyname('x7').value);
            dbgrideh2.columns[12].Footer.value:=formatfloat('#0.0',fieldbyname('x8').value);
            dbgrideh2.columns[13].Footer.value:=formatfloat('#0.0',fieldbyname('x13').value);
            dbgrideh2.columns[14].Footer.value:=formatfloat('#0.0',fieldbyname('x14').value);
            dbgrideh2.columns[15].Footer.value:=formatfloat('#0.0',fieldbyname('x15').value);
            dbgrideh2.columns[16].Footer.value:=formatfloat('#0.0',fieldbyname('x16').value);
            dbgrideh2.columns[17].Footer.value:=formatfloat('#0.00',fieldbyname('x3').value);
            dbgrideh2.columns[18].Footer.value:=formatfloat('#0.00',fieldbyname('x4').value);
          end else begin
            dbgrideh2.columns[3].Footer.value:='0.0';
            dbgrideh2.columns[4].Footer.value:='0.0';
            dbgrideh2.columns[5].Footer.value:='0.0';
            dbgrideh2.columns[6].Footer.value:='0.0';
            dbgrideh2.columns[7].Footer.value:='0.0';
            dbgrideh2.columns[8].Footer.value:='0.0';
            dbgrideh2.columns[9].Footer.value:='0.0';
            dbgrideh2.columns[10].Footer.value:='0.0';
            dbgrideh2.columns[11].Footer.value:='0.0';
            dbgrideh2.columns[12].Footer.value:='0.0';
            dbgrideh2.columns[13].Footer.value:='0.0';
            dbgrideh2.columns[14].Footer.value:='0.0';
            dbgrideh2.columns[15].Footer.value:='0.0';
            dbgrideh2.columns[16].Footer.value:='0.0';
            dbgrideh2.columns[17].Footer.value:='0.00';
            dbgrideh2.columns[18].Footer.value:='0.00';
          end;
        end;
      end;
    end;
  end else begin
    dbgrideh2.columns[3].Footer.value:='0.0';
    dbgrideh2.columns[4].Footer.value:='0.0';
    dbgrideh2.columns[5].Footer.value:='0.0';
    dbgrideh2.columns[6].Footer.value:='0.0';
    dbgrideh2.columns[7].Footer.value:='0.0';
    dbgrideh2.columns[8].Footer.value:='0.0';
    dbgrideh2.columns[9].Footer.value:='0.0';
    dbgrideh2.columns[10].Footer.value:='0.0';
    dbgrideh2.columns[11].Footer.value:='0.0';
    dbgrideh2.columns[12].Footer.value:='0.0';
    dbgrideh2.columns[13].Footer.value:='0.0';
    dbgrideh2.columns[14].Footer.value:='0.0';
    dbgrideh2.columns[15].Footer.value:='0.0';
    dbgrideh2.columns[16].Footer.value:='0.0';
    dbgrideh2.columns[17].Footer.value:='0.00';
    dbgrideh2.columns[18].Footer.value:='0.00';
  end;
end;

procedure Tfrmnewcap_wf_detail.DataSource1StateChange(Sender: TObject);
var
  w1,onlinewf,d1,d2,d3,d4,ondutywf,h1,h2,h3,h4,inhand:double;
  r3a,r3b,r3d,r4a,r4b,r4c,r4d:string;
begin
  if query1.state=dsbrowse then begin
    w1:=0; onlinewf:=0; d1:=0; d2:=0; d3:=0; d4:=0; ondutywf:=0; h1:=0; h2:=0; h3:=0; h4:=0; inhand:=0;
    r3a:=''; r3b:=''; r3d:=''; r4a:=''; r4b:=''; r4c:=''; r4d:='';
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct ws,remarks from tbl_cap_wf_notepad where tplant=:x1 and dt=:x2';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asdate:=query1.fieldbyname('dt').value;
      open;
      first;
      while not eof do begin
        if (fieldbyname('ws').value='3A') or (fieldbyname('ws').value='1H') or (fieldbyname('ws').value='NS') then begin
          if not fieldbyname('remarks').isnull then r3a:=fieldbyname('remarks').value;
        end else if (fieldbyname('ws').value='3B') or (fieldbyname('ws').value='RX') then begin
          if not fieldbyname('remarks').isnull then r3b:=fieldbyname('remarks').value;
        end else if fieldbyname('ws').value='3D' then begin
          if not fieldbyname('remarks').isnull then r3d:=fieldbyname('remarks').value;
        end else if fieldbyname('ws').value='4A' then begin
          if not fieldbyname('remarks').isnull then r4a:=fieldbyname('remarks').value;
        end else if fieldbyname('ws').value='4B' then begin
          if not fieldbyname('remarks').isnull then r4b:=fieldbyname('remarks').value;
        end else if fieldbyname('ws').value='4C' then begin
          if not fieldbyname('remarks').isnull then r4c:=fieldbyname('remarks').value;
        end else if fieldbyname('ws').value='4D' then begin
          if not fieldbyname('remarks').isnull then r4d:=fieldbyname('remarks').value;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select distinct ws,sum(w1) as x1,sum(onlinewf) as x2,sum(d1) as x3,sum(d2) as x4,sum(d3) as x5,sum(d4) as x6,sum(ondutywf) as x7,sum(h1) as x8,sum(h2) as x9,sum(h3) as x10,sum(h4) as x11,sum(inhand) as x12 '
                  +'from tbl_cap_wf1 where tplant='''+query1.fieldbyname('tplant').value+''' and dt=:x1 group by ws';
      params[0].asdate:=query1.fieldbyname('dt').value;
      open;
      first;
      while not eof do begin
        w1:=w1+fieldbyname('x1').value;
        onlinewf:=onlinewf+fieldbyname('x2').value;
        d1:=d1+fieldbyname('x3').value;
        d2:=d2+fieldbyname('x4').value;
        d3:=d3+fieldbyname('x5').value;
        d4:=d4+fieldbyname('x6').value;
        ondutywf:=ondutywf+fieldbyname('x7').value;
        h1:=h1+fieldbyname('x8').value;
        h2:=h2+fieldbyname('x9').value;
        h3:=h3+fieldbyname('x10').value;
        h4:=h4+fieldbyname('x11').value;
        inhand:=inhand+fieldbyname('x12').value;
        if (fieldbyname('ws').value='3A') or (fieldbyname('ws').value='1H') then begin
          dbgrideh1.Columns[4].Footers[0].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[0].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[0].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[0].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[0].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[0].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[0].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[0].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[0].Value:=r3a;
          if (combobox1.text='3A') or (combobox1.text='1H') then begin
            dbgrideh1.Columns[0].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[0].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[0].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[0].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[0].Color:=clWindow;
          end;
        end else if (fieldbyname('ws').value='3B') or (fieldbyname('ws').value='RX') then begin
          dbgrideh1.Columns[4].Footers[1].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[1].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[1].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[1].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[1].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[1].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[1].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[1].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[1].Value:=r3b;
          if (combobox1.text='3B') or (combobox1.text='RX') then begin
            dbgrideh1.Columns[0].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[1].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[1].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[1].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[1].Color:=clWindow;
          end;
        end else if fieldbyname('ws').value='3D' then begin
          dbgrideh1.Columns[4].Footers[2].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[2].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[2].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[2].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[2].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[2].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[2].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[2].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[2].Value:=r3d;
          if combobox1.text='3D' then begin
            dbgrideh1.Columns[0].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[2].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[2].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[2].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[2].Color:=clWindow;
          end;
        end else if fieldbyname('ws').value='4A' then begin
          dbgrideh1.Columns[4].Footers[3].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[3].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[3].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[3].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[3].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[3].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[3].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[3].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[3].Value:=r4a;
          if combobox1.text='4A' then begin
            dbgrideh1.Columns[0].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[3].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[3].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[3].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[3].Color:=clWindow;
          end;
        end else if fieldbyname('ws').value='4B' then begin
          dbgrideh1.Columns[4].Footers[4].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[4].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[4].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[4].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[4].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[4].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[4].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[4].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[4].Value:=r4b;
          if combobox1.text='4B' then begin
            dbgrideh1.Columns[0].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[4].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[4].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[4].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[4].Color:=clWindow;
          end;
        end else if fieldbyname('ws').value='4C' then begin
          dbgrideh1.Columns[4].Footers[5].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[5].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[5].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[5].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[5].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[5].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[5].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[5].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[5].Value:=r4c;
          if combobox1.text='4C' then begin
            dbgrideh1.Columns[0].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[5].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[5].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[5].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[5].Color:=clWindow;
          end;
        end else if fieldbyname('ws').value='4D' then begin
          dbgrideh1.Columns[4].Footers[6].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[7].Footers[6].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[12].Footers[6].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[2].Footers[6].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[3].Footers[6].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[5].Footers[6].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[6].Footers[6].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[13].Footers[6].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[14].Footers[6].Value:=r4d;
          if combobox1.text='4D' then begin
            dbgrideh1.Columns[0].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[1].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[2].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[3].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[4].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[5].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[6].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[7].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[12].Footers[6].Color:=clYellow;
            dbgrideh1.Columns[14].Footers[6].Color:=clYellow;
          end else begin
            dbgrideh1.Columns[0].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[1].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[2].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[3].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[4].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[5].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[6].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[7].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[12].Footers[6].Color:=clWindow;
            dbgrideh1.Columns[14].Footers[6].Color:=clWindow;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    dbgrideh1.Columns[4].footers[7].Value:=formatfloat('#,0',w1);
    dbgrideh1.Columns[7].footers[7].Value:=formatfloat('#,0',onlinewf);
    dbgrideh1.Columns[12].footers[7].Value:=formatfloat('#,0',ondutywf);
    dbgrideh1.Columns[2].footers[7].Value:=formatfloat('#,0',h1);
    dbgrideh1.Columns[3].footers[7].Value:=formatfloat('#,0',h2);
    dbgrideh1.Columns[5].footers[7].Value:=formatfloat('#,0',h3);
    dbgrideh1.Columns[6].footers[7].Value:=formatfloat('#,0',h4);
    dbgrideh1.Columns[13].footers[7].Value:=formatfloat('#,0',inhand);
    if not frmnewcap_wf.Query1.fieldbyname('remarks').isnull then
    dbgrideh1.Columns[14].Footers[7].Value:=frmnewcap_wf.Query1.fieldbyname('remarks').value;
  end;
end;

procedure Tfrmnewcap_wf_detail.SpeedButton1Click(Sender: TObject);
begin
  if frmnewcap_wf_specific=nil then frmnewcap_wf_specific:=tfrmnewcap_wf_specific.Create(nil);
  //
  if query1.fieldbyname('tplant').value='SL' then begin
    frmnewcap_wf_specific.label1.caption:='3A';
    frmnewcap_wf_specific.label2.caption:='3B';
    frmnewcap_wf_specific.label3.caption:='3D';
    frmnewcap_wf_specific.label4.caption:='4A';
    frmnewcap_wf_specific.label5.caption:='4B';
    frmnewcap_wf_specific.label6.caption:='4C';
    frmnewcap_wf_specific.label7.caption:='4D';
  end else if query1.fieldbyname('tplant').value='GG' then begin
    frmnewcap_wf_specific.label1.caption:='1H';
    frmnewcap_wf_specific.label2.caption:='RX';
    frmnewcap_wf_specific.label3.caption:='--';
    frmnewcap_wf_specific.label4.caption:='--';
    frmnewcap_wf_specific.label5.caption:='--';
    frmnewcap_wf_specific.label6.caption:='--';
    frmnewcap_wf_specific.label7.caption:='--';
  end else if query1.fieldbyname('tplant').value='RX' then begin
    frmnewcap_wf_specific.label1.caption:='RX1';
    frmnewcap_wf_specific.label2.caption:='RX2';
    frmnewcap_wf_specific.label3.caption:='RX3';
    frmnewcap_wf_specific.label4.caption:='--';
    frmnewcap_wf_specific.label5.caption:='--';
    frmnewcap_wf_specific.label6.caption:='--';
    frmnewcap_wf_specific.label7.caption:='--';
  end else if query1.fieldbyname('tplant').value='CS' then begin
    frmnewcap_wf_specific.label1.caption:='NS';
    frmnewcap_wf_specific.label2.caption:='--';
    frmnewcap_wf_specific.label3.caption:='--';
    frmnewcap_wf_specific.label4.caption:='--';
    frmnewcap_wf_specific.label5.caption:='--';
    frmnewcap_wf_specific.label6.caption:='--';
    frmnewcap_wf_specific.label7.caption:='--';
  end;
  frmnewcap_wf_specific.show;
end;

procedure Tfrmnewcap_wf_detail.BitBtn2Click(Sender: TObject);
begin
  if frmnewcap_dhlnotepad=nil then frmnewcap_dhlnotepad:=tfrmnewcap_dhlnotepad.create(nil);
  frmnewcap_dhlnotepad.DBText1.DataSource:=datasource1;
  frmnewcap_dhlnotepad.DBText1.DataField:='TSHOP';
  frmnewcap_dhlnotepad.Label1.Caption:='Line ';
  frmnewcap_dhlnotepad.DBText2.DataSource:=datasource1;
  frmnewcap_dhlnotepad.DBMemo1.DataSource:=datasource1;
  frmnewcap_dhlnotepad.show;
end;

procedure Tfrmnewcap_wf_detail.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='execute PROCEDURE SP_CAP_GENWFNOTEPAD(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asdate:=query1.fieldbyname('dt').value;
      execute;
    end;
    if frmnewcap_wf_notepad=nil then frmnewcap_wf_notepad:=tfrmnewcap_wf_notepad.create(nil);
    with frmnewcap_wf_notepad.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from tbl_cap_wf_notepad where tplant=:x1 and dt=:x2';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asdate:=query1.fieldbyname('dt').value;
      open;
    end;
    frmnewcap_wf_notepad.show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_wf_detail.FormShow(Sender: TObject);
begin
  if combobox1.Items.Count>0 then combobox1.Text:=combobox1.Items[0];
  combobox1change(self);
  Label14.Caption:=' = '+formatfloat('#,0',frmnewcap_wf.query1.fieldbyname('d11').value+frmnewcap_wf.query1.fieldbyname('d12').value+frmnewcap_wf.query1.fieldbyname('d13').value+frmnewcap_wf.query1.fieldbyname('d14').value+frmnewcap_wf.query1.fieldbyname('d16').value+frmnewcap_wf.query1.fieldbyname('dc01').value);
end;

procedure Tfrmnewcap_wf_detail.BitBtn4Click(Sender: TObject);
begin
  if combobox1.text>'' then begin
    // detail by line
  end else if combobox1.text='' then begin
    // detail by workshop
  end;
end;

procedure Tfrmnewcap_wf_detail.BitBtn6Click(Sender: TObject);
var
  exec:string;
begin
  // access data from rfid system
  screen.Cursor:=crSQLWait;
  try
    exec:='1';
    if frmnewcap_wf.Query1.FieldByName('dt').Value<date then begin
      with query2 do begin
        close;
        params.Clear;
        commandtext:='select dt from tbl_cap_spwf1 where tplant=''SL'' and dt='''+formatdatetime('yyyy-MM-dd',frmnewcap_wf.Query1.fieldbyname('dt').Value)+'''';
        open;
        if not fieldbyname('dt').IsNull then exec:='0';        
      end;
    end;
    if exec='1' then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='delete from tbl_cap_spwf01 where tplant=''SL'' and dt='''+formatdatetime('yyyy-MM-dd',frmnewcap_wf.Query1.fieldbyname('dt').Value)+'''';
        execute;
      end;
      with adoquery1 do begin
        close;
        sql.Clear;
        sql.Text:='exec phdb..sp_access_rfid_data :x1';
        parameters[0].Value:=formatdatetime('yyyy-MM-dd',frmnewcap_wf.Query1.fieldbyname('dt').Value);
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.Clear;
            params.CreateParam(ftstring,'x1',ptinput);
            params.CreateParam(ftstring,'x2',ptinput);
            params.CreateParam(ftstring,'x3',ptinput);
            params.CreateParam(ftstring,'x4',ptinput);
            params.CreateParam(ftdate,'x5',ptinput);
            params.CreateParam(ftstring,'x6',ptinput);
            params.CreateParam(ftstring,'x7',ptinput);
            params.CreateParam(ftstring,'x8',ptinput);
            params.CreateParam(ftstring,'x9',ptinput);
            params.CreateParam(ftstring,'x10',ptinput);
            params.CreateParam(ftinteger,'x11',ptinput);
            params.CreateParam(ftstring,'x12',ptinput);
            params.CreateParam(ftstring,'x13',ptinput);
            params.CreateParam(ftfloat,'x14',ptinput);
            params.CreateParam(ftfloat,'x15',ptinput);
            commandtext:='insert into tbl_cap_spwf01(tplant,grp,wfid,wfname,dt,j2_job,style,rwo,acol,fccs,qty,opt,optname,tmu,tsah) '
                        +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15)';
            params[0].AsString:='SL';
            params[1].AsString:=trim(copy(adoquery1.FieldByName('prod_section').Value,3,5));
            params[2].AsString:=trim(copy(adoquery1.FieldByName('employee_id').Value,1,10));
            params[3].AsString:=trim(copy(adoquery1.FieldByName('namecn').Value,1,15));
            params[4].Asdate:=adoquery1.FieldByName('work_date').Value;
            params[5].AsString:=copy(adoquery1.FieldByName('sp_ord_no').Value,1,7);
            params[6].AsString:=trim(adoquery1.FieldByName('style').Value);
            params[7].AsString:=copy(adoquery1.FieldByName('sp_ord_no').Value,9,5);
            params[8].AsString:=adoquery1.FieldByName('colour').Value;
            params[9].AsString:=copy(adoquery1.FieldByName('sp_ord_no').Value,15,5);
            params[10].Asinteger:=adoquery1.FieldByName('qty').Value;
            params[11].AsString:=trim(copy(adoquery1.FieldByName('major').Value,1,5));
            params[12].AsString:=trim(adoquery1.FieldByName('gxm').Value);
            params[13].Asfloat:=adoquery1.FieldByName('sj').Value;
            params[14].Asfloat:=adoquery1.FieldByName('sah').Value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query2 do begin
        close;
        params.Clear;
        params.CreateParam(ftdate,'x1',ptinput);
        commandtext:='execute procedure SP_CAP_SPWF(:x1)';
        params[0].AsDate:=frmnewcap_wf.Query1.fieldbyname('dt').Value;
        execute;
      end;
    end;
    if frmnewcap_spwf=nil then frmnewcap_spwf:=tfrmnewcap_spwf.Create(nil);
    with frmnewcap_spwf.Query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftstring,'x1',ptinput);
      params.CreateParam(ftdate,'x2',ptinput);
      commandtext:='select * from tbl_cap_spwf1 where tplant=:x1 and dt=:x2';
      params[0].AsString:=frmnewcap_wf.Query1.FieldByName('tplant').Value;
      params[1].AsDate:=frmnewcap_wf.Query1.FieldByName('dt').Value;
      open;
    end;
    frmnewcap_spwf.Show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
