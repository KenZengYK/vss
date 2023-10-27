unit scbbformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, rxToolEdit, Buttons, DB, DBClient,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppPrnabl, ppCtrls, ppBands, ppCache, ppViewr, ppVar, ppParameter;

type
  Tfrmscbb = class(TForm)
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    opt1: TRadioButton;
    opt2: TRadioButton;
    opt3: TRadioButton;
    opt4: TRadioButton;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    opt5: TRadioButton;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    hd1: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    dtrange1: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    hd2: TppLabel;
    dtrange2: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel13: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape2: TppShape;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscbb: Tfrmscbb;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmscbb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmscbb:=nil;
end;

procedure Tfrmscbb.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmscbb.FormShow(Sender: TObject);
begin
  dateedit1.Date:=date;
  dateedit2.date:=date+6;
end;

procedure Tfrmscbb.BitBtn1Click(Sender: TObject);
var
  dt1,dt2,i_now:tdatetime;
  i_type:string;
begin
  screen.cursor:=crHourglass;
  i_now:=now;
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date+6;
  if opt1.Checked then begin
    i_type:='CUT';
    dt1:=dt1+7;
    dt2:=dt2+7;
  end else if opt2.Checked then begin
    i_type:='SUNTRESS';
    dt1:=dt1+7;
    dt2:=dt2+7;
  end else if opt4.Checked then i_type:='QC'
  else if opt5.Checked then i_type:='PACK';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'now',ptinput);
    params.createparam(ftdate,'dt1',ptinput);
    params.createparam(ftdate,'dt2',ptinput);
    params.createparam(ftstring,'type',ptinput);
    commandtext:='execute procedure ppc_genscbb(:now,:dt1,:dt2,:type)';
    params[0].asdatetime:=i_now;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    params[3].asstring:=i_type;
    execute;
  end;
  if opt1.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'type',ptinput);
      commandtext:='select * from tbltmpscbb where t_dt=:dt and t_type=:type order by t_date,t_date1,t_jno,t_job,t_acol';
      params[0].asdatetime:=i_now;
      params[1].asstring:=i_type;
      open;
      if recordcount>0 then begin
        hd1.Caption:=opt1.Caption;
        dtrange1.Caption:='日期  從: '+dateedit1.Text+'  到: '+dateedit2.text;
        ppReport1.Print;
      end;
    end;
  end else if opt2.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'type',ptinput);
      commandtext:='select * from tbltmpscbb where t_dt=:dt and t_type=:type order by t_date,t_date1,t_jno,t_job,t_acol';
      params[0].asdatetime:=i_now;
      params[1].asstring:=i_type;
      open;
      if recordcount>0 then begin
        hd1.Caption:=opt2.Caption;
        dtrange1.Caption:='日期  從: '+dateedit1.Text+'  到: '+dateedit2.text;
        ppReport1.Print;
      end;
    end;
  end else if opt3.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'dt1',ptinput);
      params.createparam(ftdate,'dt2',ptinput);
      commandtext:='select * from tblpopc where rdate>=:dt1 and rdate<=:dt2 order by rdate,j_no,mattype';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
      if recordcount>0 then begin
        hd2.Caption:=opt3.Caption;
        dtrange2.Caption:='日期  從: '+dateedit1.Text+'  到: '+dateedit2.text;
        ppReport2.Print;
      end;
    end;
  end else if opt4.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'type',ptinput);
      commandtext:='select * from tbltmpscbb where t_dt=:dt and t_type=:type order by t_date,t_date1,t_jno,t_job,t_acol';
      params[0].asdatetime:=i_now;
      params[1].asstring:=i_type;
      open;
      if recordcount>0 then begin
        hd1.Caption:=opt4.Caption;
        dtrange1.Caption:='日期  從: '+dateedit1.Text+'  到: '+dateedit2.text;
        ppReport1.Print;
      end;
    end;
  end else if opt5.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'type',ptinput);
      commandtext:='select * from tbltmpscbb where t_dt=:dt and t_type=:type order by t_date,t_date1,t_jno,t_job,t_acol';
      params[0].asdatetime:=i_now;
      params[1].asstring:=i_type;
      open;
      if recordcount>0 then begin
        hd1.Caption:=opt5.Caption;
        dtrange1.Caption:='';//'日期  從: '+dateedit1.Text+'  到: '+dateedit2.text;
        ppReport1.Print;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscbb.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmscbb.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
