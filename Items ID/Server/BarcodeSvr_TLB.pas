unit BarcodeSvr_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 2005-12-9 17:54:53 from Type Library described below.

// ************************************************************************  //
// Type Lib: H:\Work\Barcode\Server\BarcodeSvr.tlb (1)
// LIBID: {F75DBDEC-5B77-444B-9FD0-5F11F1906E26}
// LCID: 0
// Helpfile: 
// HelpString: BarcodeSvr Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  BarcodeSvrMajorVersion = 1;
  BarcodeSvrMinorVersion = 0;

  LIBID_BarcodeSvr: TGUID = '{F75DBDEC-5B77-444B-9FD0-5F11F1906E26}';

  IID_IPCBarcodeSvr: TGUID = '{53435C01-F6D5-4CF6-9D18-FD9DC27BFDC1}';
  CLASS_PCBarcodeSvr: TGUID = '{EDF103F5-1429-4536-885D-83BA3A06CBF4}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPCBarcodeSvr = interface;
  IPCBarcodeSvrDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PCBarcodeSvr = IPCBarcodeSvr;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IPCBarcodeSvr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53435C01-F6D5-4CF6-9D18-FD9DC27BFDC1}
// *********************************************************************//
  IPCBarcodeSvr = interface(IAppServer)
    ['{53435C01-F6D5-4CF6-9D18-FD9DC27BFDC1}']
    procedure GetDataFromERP(Kind: Integer; var vParams: OleVariant; var vData: OleVariant); safecall;
    procedure UpdateDataToERP(Kind: Integer; var vParams: OleVariant; out bFinish: OleVariant); safecall;
    procedure RefreshFTP(out bOK: OleVariant); safecall;
    procedure PHValidate(const UserID: WideString; const Psw: WideString; out bSite: OleVariant; 
                         out bValid: OleVariant); safecall;
    procedure PHChangePassword(const UserID: WideString; const NewPsw: WideString; 
                               out bValid: OleVariant); safecall;
    procedure PHGetUnEncryptPsw(var Psw: OleVariant); safecall;
    procedure PHGetEncryptPsw(var Psw: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPCBarcodeSvrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53435C01-F6D5-4CF6-9D18-FD9DC27BFDC1}
// *********************************************************************//
  IPCBarcodeSvrDisp = dispinterface
    ['{53435C01-F6D5-4CF6-9D18-FD9DC27BFDC1}']
    procedure GetDataFromERP(Kind: Integer; var vParams: OleVariant; var vData: OleVariant); dispid 2;
    procedure UpdateDataToERP(Kind: Integer; var vParams: OleVariant; out bFinish: OleVariant); dispid 3;
    procedure RefreshFTP(out bOK: OleVariant); dispid 301;
    procedure PHValidate(const UserID: WideString; const Psw: WideString; out bSite: OleVariant; 
                         out bValid: OleVariant); dispid 302;
    procedure PHChangePassword(const UserID: WideString; const NewPsw: WideString; 
                               out bValid: OleVariant); dispid 303;
    procedure PHGetUnEncryptPsw(var Psw: OleVariant); dispid 304;
    procedure PHGetEncryptPsw(var Psw: OleVariant); dispid 305;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoPCBarcodeSvr provides a Create and CreateRemote method to          
// create instances of the default interface IPCBarcodeSvr exposed by              
// the CoClass PCBarcodeSvr. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPCBarcodeSvr = class
    class function Create: IPCBarcodeSvr;
    class function CreateRemote(const MachineName: string): IPCBarcodeSvr;
  end;

implementation

uses ComObj;

class function CoPCBarcodeSvr.Create: IPCBarcodeSvr;
begin
  Result := CreateComObject(CLASS_PCBarcodeSvr) as IPCBarcodeSvr;
end;

class function CoPCBarcodeSvr.CreateRemote(const MachineName: string): IPCBarcodeSvr;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PCBarcodeSvr) as IPCBarcodeSvr;
end;

end.
