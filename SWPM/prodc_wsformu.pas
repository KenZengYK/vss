unit prodc_wsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, DBClient, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppViewr,
  ppDB, ppDBPipe, ppParameter;

type
  Tfrmprodc_ws = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    sub1: TppLabel;
    sub2: TppLabel;
    ppShape1: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ws001: TppLabel;
    ws002: TppLabel;
    ws003: TppLabel;
    ws004: TppLabel;
    ws005: TppLabel;
    ws006: TppLabel;
    ws007: TppLabel;
    ws008: TppLabel;
    ws009: TppLabel;
    ws010: TppLabel;
    ppLine4: TppLine;
    ppLine11: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppShape2: TppShape;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine5: TppLine;
    ppLine12: TppLine;
    ws011: TppLabel;
    ppDBText13: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprodc_ws: Tfrmprodc_ws;

implementation

uses mainformu, addreportsformu;

{$R *.dfm}

procedure Tfrmprodc_ws.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmprodc_ws:=nil;
end;

procedure Tfrmprodc_ws.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  f1,f2:double;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      if combobox2.text>'' then begin
        commandtext:='execute procedure sp_analysis_temp3_ws_ws(:x1,:x2,:x3,:x4,:x5,:x6)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        params[3].asinteger:=spinedit3.value;
        params[4].asinteger:=spinedit4.value;
        params[5].AsString:=combobox2.text;
      end else begin
        commandtext:='execute procedure sp_analysis_temp3_ws(:x1,:x2,:x3,:x4,:x5,:x6)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        params[3].asinteger:=spinedit3.value;
        params[4].asinteger:=spinedit4.value;
        params[5].AsString:=combobox1.text;
      end;
      execute;
    end;
    if combobox2.text>'' then sub1.Caption:='<  '+combobox2.text+'  >'
    else begin
      if combobox1.text>'' then sub1.Caption:='<  '+combobox1.text+'  >'
      else sub1.Caption:='< SL & KB & FJ >';
    end;
    sub2.Caption:='[  '+inttostr(spinedit1.value)+'/'+inttostr(spinedit2.Value)+'  -  '+inttostr(spinedit3.value)+'/'+inttostr(spinedit4.value)+'  ]';
    //'(Comparison between '+copy(inttostr(spinedit1.value),3,2)+'/'+inttostr(spinedit2.value)+' & '+copy(inttostr(spinedit3.value),3,2)+'/'+inttostr(spinedit4.value)+')';
{
    ox001.Caption:='('+copy(inttostr(spinedit1.value),3,2)+'/'+inttostr(spinedit2.value)+')';
    ox002.Caption:='('+copy(inttostr(spinedit3.value),3,2)+'/'+inttostr(spinedit4.value)+')';
    ox003.Caption:='('+copy(inttostr(spinedit1.value),3,2)+'/'+inttostr(spinedit2.value)+')';
    ox004.Caption:='('+copy(inttostr(spinedit1.value),3,2)+'/'+inttostr(spinedit2.value)+')';
    ox005.Caption:='('+copy(inttostr(spinedit3.value),3,2)+'/'+inttostr(spinedit4.value)+')';
    ox006.Caption:='('+copy(inttostr(spinedit1.value),3,2)+'/'+inttostr(spinedit2.value)+')';

    x001.Caption:=''; x002.Caption:=''; x003.Caption:=''; x004.Caption:=''; x005.Caption:='';
    x006.Caption:=''; x007.Caption:=''; x008.Caption:=''; x009.Caption:=''; x010.Caption:='';
    x0001.Caption:=''; x0002.Caption:=''; x0003.Caption:=''; x0004.Caption:=''; x0005.Caption:='';
    x0006.Caption:=''; x0007.Caption:=''; x0008.Caption:=''; x0009.Caption:=''; x0010.Caption:='';
    x00001.Caption:=''; x00002.Caption:=''; x00003.Caption:=''; x00004.Caption:=''; x00005.Caption:='';
    x00006.Caption:=''; x00007.Caption:=''; x00008.Caption:=''; x00009.Caption:=''; x00010.Caption:='';
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from analysis_tmp3_ws where tm=:x1 order by ws,yr,mn';
      params[0].asdatetime:=tm;
      open;
      first;
      while not eof do begin
        if fieldbyname('ws').value='3A' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x001.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0001.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00001.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00001.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00001.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00001.Font.Color:=clRed;
          end else begin
            x00001.Caption:='0.00';
            x00001.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='3B' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x002.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0002.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00002.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00002.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00002.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00002.Font.Color:=clRed;
          end else begin
            x00002.Caption:='0.00';
            x00002.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='3D' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x003.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0003.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00003.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00003.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00003.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00003.Font.Color:=clRed;
          end else begin
            x00003.Caption:='0.00';
            x00003.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='4A' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x004.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0004.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00004.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00004.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00004.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00004.Font.Color:=clRed;
          end else begin
            x00004.Caption:='0.00';
            x00004.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='4B' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x005.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0005.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00005.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00005.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00005.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00005.Font.Color:=clRed;
          end else begin
            x00005.Caption:='0.00';
            x00005.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='4C' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x006.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0006.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00006.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00006.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00006.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00006.Font.Color:=clRed;
          end else begin
            x00006.Caption:='0.00';
            x00006.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='4D' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x007.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0007.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00007.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00007.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00007.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00007.Font.Color:=clRed;
          end else begin
            x00007.Caption:='0.00';
            x00007.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='KB1A' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x008.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0008.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00008.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00008.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00008.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00008.Font.Color:=clRed;
          end else begin
            x00008.Caption:='0.00';
            x00008.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='KB1B' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x009.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0009.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00009.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00009.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00009.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00009.Font.Color:=clRed;
          end else begin
            x00009.Caption:='0.00';
            x00009.Font.Color:=clBlack;
          end;
        end else if fieldbyname('ws').value='KB2' then begin
          if fieldbyname('mn').value=spinedit2.value then begin
            f1:=fieldbyname('pe').value;
            x010.Caption:=formatfloat('0.00',f1);
          end else if fieldbyname('mn').value=spinedit4.Value then begin
            f2:=fieldbyname('pe').value;
            x0010.Caption:=formatfloat('0.00',f2);
          end;
          if f2>f1 then begin
            x00010.Caption:='��  '+formatfloat('0.00',f2-f1);
            x00010.Font.Color:=clGreen;
          end else if f2<f1 then begin
            x00010.Caption:='��  '+formatfloat('0.00',f1-f2);
            x00010.Font.Color:=clRed;
          end else begin
            x00010.Caption:='0.00';
            x00010.Font.Color:=clBlack;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
}
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from analysis_tmp3_ws_01 where tm=:x1 order by yr,mn';
      params[0].asdatetime:=tm;
      open;
    end;
    ppReport1.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprodc_ws.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmprodc_ws.ppHeaderBand1BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ws001.Caption:=''; ws002.Caption:=''; ws003.Caption:=''; ws004.Caption:=''; ws005.Caption:='';
  ws006.Caption:=''; ws007.Caption:=''; ws008.Caption:=''; ws009.Caption:=''; ws010.Caption:=''; ws011.caption:='';
  i:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct ws from analysis_tmp3_ws where tm=:x1 order by ws';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then ws001.Caption:=fieldbyname('ws').value
      else if i=2 then ws002.Caption:=fieldbyname('ws').value
      else if i=3 then ws003.Caption:=fieldbyname('ws').value
      else if i=4 then ws004.Caption:=fieldbyname('ws').value
      else if i=5 then ws005.Caption:=fieldbyname('ws').value
      else if i=6 then ws006.Caption:=fieldbyname('ws').value
      else if i=7 then ws007.Caption:=fieldbyname('ws').value
      else if i=8 then ws008.Caption:=fieldbyname('ws').value
      else if i=9 then ws009.Caption:=fieldbyname('ws').value
      else if i=10 then ws010.Caption:=fieldbyname('ws').value
      else if i=11 then ws011.Caption:=fieldbyname('ws').value;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
