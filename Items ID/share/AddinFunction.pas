//use in ReportMachine
//Author:peter
//define function

unit AddinFunction;

interface

{$I rm.inc}

uses
  SysUtils, Classes, DateUtils, RM_class, RM_Common, RM_Parser
{$IFDEF Delphi6}, Variants{$ENDIF};

type
  TMyFunctionLibrary = class(TRMFunctionLibrary)
  public
    constructor Create; override;
    procedure DoFunction(aParser: TRMParser; aFuncNo: Integer; aParams: array of Variant;
      var aValue: Variant); override;
  end;

implementation

//Calculate week no by a Date
function RMCalcWeekNo(vDate: Variant): Integer;
var
  ADate: TDateTime;
begin
  result := 0;
  if VarIsType(vDate, varDate) then
  begin
    ADate := VarToDateTime(vDate);
    Result := WeekOfTheYear(ADate);
  end;
end;
//Int to date :int length must 8
function RMPHIntToDate(vInt: Variant): TDateTime;
var
  AInt: Integer;
  S1, yy, mm, dd: string;
begin
  result := 0;
  if VarIsType(vInt, varInteger) then
  begin
    AInt := vInt;
    S1 := IntToStr(AInt);
    if Length(S1) = 8 then
    begin
      yy := copy(S1, 1, 4);
      mm := copy(S1, 5, 2);
      dd := copy(S1, 7, 2);
      if not TryEncodeDate(StrToInt(yy), StrToInt(mm), StrToInt(dd),result) then
        result := 0;
     // result := EncodeDate(StrToInt(yy), StrToInt(mm), StrToInt(dd));
    end;
  end;
end;
//encapsulate delphi's function :StrToIntDef
function RMPHStrToIntDef(vString: Variant;ADefault:Integer): Integer;
var
  AValue: string;
begin
  result := ADefault;
  if VarIsType(vString, varString) then
  begin
    AValue := VarToStr(vString);
    Result := StrToIntDef(AValue, ADefault);
  end;
end;

//function bcGetLanguagesStr(RID: Integer; sDefautl: string; bGlobal: boolean): string;
//begin
// frmMain.GetLanguagesStr(RID,sDefautl,bGlobal);
//end;
//
const
  SRMCalcWeekNo = 'CalcWeekNo(<vDate>)|Returns the week of the year represented by a TDateTime value.';
  SRMPHIntToDate = 'PHIntToDate(<vInt>)|Returns the TDateTime  represented by a Integer value.';
  SRMPHStrToIntDef = 'PHStrToIntDef(<vString,ADefault>)|Returns the Integer  represented by a String value.';
//  SRMbcGetLanguagesStr = 'bcGetLanguagesStr(<Int,DefautlStr,IsGlobal>)|Returns Special Language Str.';

{------------------------------------------------------------------------------}
{------------------------------------------------------------------------------}
{ TMyFunctionLibrary }

constructor TMyFunctionLibrary.Create;
begin
  inherited Create;
  with List do
  begin
    Add('CALCWEEKNO'); // 函数名成，必须大写
    Add('PHINTTODATE');
    Add('PHSTRTOINTDEF');
//    Add('BCGETLANGUAGESSTR');
  end;

  // 函数使用说明，第一个参数是函数名称，第二个是函数类型，比如字符型函数还是数字型函数
  //  第4个参数是此个函数参数的类型，每个参数都要定义一次，"S"代表字符型,"N"代表数字行,
  // "D"代表日期型,"T"代表实践性,"B"代表逻辑型,"E"代表日期时间型
  AddFunctionDesc('CalcWeekNo', rmftMath, SRMCalcWeekNo, 'V');
  AddFunctionDesc('PHIntToDate', rmftDateTime, SRMPHIntToDate, 'V');
  AddFunctionDesc('PHStrToIntDef', rmftMath, SRMPHStrToIntDef, 'SN');
//  AddFunctionDesc('bcGetLanguagesStr', rmftString, SRMbcGetLanguagesStr, 'NSB');
end;

procedure TMyFunctionLibrary.DoFunction(aParser: TRMParser; aFuncNo: Integer;
  aParams: array of Variant; var aValue: Variant);
begin
  aValue := 0;
  case aFuncNo of // aFuncNo就是这个函数名在List中的Index
    0:
      begin
        aValue := RMCalcWeekNo(aParser.Calc(aParams[0]));
      end;
    1:
      begin
        aValue := RMPHIntToDate(aParser.Calc(aParams[0]));
      end;
    2:
      begin
        aValue := RMPHStrToIntDef(aParser.Calc(aParams[0]),aParser.Calc(aParams[1]));
      end;
//    3:
//      begin
//        aValue := bcGetLanguagesStr(aParser.Calc(aParams[0]),aParser.Calc(aParams[1]),aParser.Calc(aParams[2]));
//      end;
  end;
end;

initialization
  RMRegisterFunctionLibrary(TMyFunctionLibrary); // 注册一个函数库

finalization

end.

