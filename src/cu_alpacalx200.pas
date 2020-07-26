unit cu_alpacalx200;

{$mode objfpc}{$H+}
{$WARN 5024 off : Parameter "$1" not used}
{
Copyright (C) 2020 Patrick Chevalley

http://www.ap-i.net
pch@ap-i.net

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

}

interface

uses  cu_alpacatelescope, cu_alpacadevice, pu_lx200client,
  Forms, Classes, SysUtils;

type

  T_AlpacaLX200 = class(T_AlpacaTelescope)
    protected
    public
      constructor Create(AOwner: TComponent);override;
      destructor  Destroy; override;
      function  GetGuid: string; override;
      function  GetSetupPage: string; override;
      function  Action( actionName, actionParameters: string):string; override;
      procedure CommandBlind( command: string;  raw: boolean = false); override;
      function  CommandBool(command: string;  raw: boolean = false):boolean; override;
      function  CommandString(command: string;  raw: boolean = false):string; override;
      function  Connected:boolean; override;
      procedure SetConnected(value:boolean); override;
      function  Description:string; override;
      function  DriverInfo:string; override;
      function  DriverVersion:string; override;
      function  InterfaceVersion: integer; override;
      function  Name:string; override;
      procedure SetupDialog(x:integer=-1;y:integer=-1); override;
      function  SupportedActions:TStringList; override;
      function  alignmentmode: integer; override;
      function  altitude: double; override;
      function  aperturearea: double; override;
      function  aperturediameter: double; override;
      function  athome: boolean; override;
      function  atpark: boolean; override;
      function  azimuth: double; override;
      function  canfindhome: boolean; override;
      function  canpark: boolean; override;
      function  canunpark: boolean; override;
      function  canpulseguide: boolean; override;
      function  cansetdeclinationrate: boolean; override;
      function  cansetrightascensionrate: boolean; override;
      function  cansetguiderates: boolean; override;
      function  cansetpark: boolean; override;
      function  cansetpierside: boolean; override;
      function  cansettracking: boolean; override;
      function  canslew: boolean; override;
      function  canslewaltaz: boolean; override;
      function  canslewaltazasync: boolean; override;
      function  canslewasync: boolean; override;
      function  cansync: boolean; override;
      function  cansyncaltaz: boolean; override;
      function  declination: double; override;
      function  declinationrate: double; override;
      procedure setdeclinationrate(value: double); override;
      function  doesrefraction: boolean; override;
      procedure setdoesrefraction(value: boolean); override;
      function  equatorialsystem: integer; override;
      function  focallength: double; override;
      function  guideratedeclination: double; override;
      procedure setguideratedeclination(value: double); override;
      function  guideraterightascension: double; override;
      procedure setguideraterightascension(value: double); override;
      function  ispulseguiding: boolean; override;
      function  rightascension: double; override;
      function  rightascensionrate: double; override;
      procedure setrightascensionrate(value: double); override;
      function  sideofpier: integer; override;
      procedure setsideofpier(value: integer); override;
      function  siderealtime: double; override;
      function  siteelevation: double; override;
      procedure setsiteelevation(value: double); override;
      function  sitelatitude: double; override;
      procedure setsitelatitude(value: double); override;
      function  sitelongitude: double; override;
      procedure setsitelongitude(value: double); override;
      function  slewing: boolean; override;
      function  slewsettletime: integer; override;
      procedure setslewsettletime(value: integer); override;
      function  targetdeclination: double; override;
      procedure settargetdeclination(value: double); override;
      function  targetrightascension: double; override;
      procedure settargetrightascension(value: double); override;
      function  tracking: boolean; override;
      procedure settracking(value: boolean); override;
      function  utcdate: string; override;
      function  trackingrate: integer; override;
      procedure settrackingrate(value: integer); override;
      function  trackingrates: TTrackingRates; override;
      procedure setutcdate(value: string); override;
      procedure abortslew; override;
      function  axisrates(axis:integer): TAxisRates; override;
      function  canmoveaxis(axis:integer): boolean; override;
      function  destinationsideofpier(ra,dec: double):integer; override;
      procedure findhome; override;
      procedure moveaxis(axis:integer;rate:double); override;
      procedure park; override;
      procedure pulseguide(direction,duration: integer); override;
      procedure setpark; override;
      procedure slewtoaltaz(az,alt: double); override;
      procedure slewtoaltazasync(az,alt: double); override;
      procedure slewtocoordinates(ra,dec: double); override;
      procedure slewtocoordinatesasync(ra,dec: double); override;
      procedure slewtotarget; override;
      procedure slewtotargetasync; override;
      procedure synctoaltaz(az,alt: double); override;
      procedure synctocoordinates(ra,dec: double); override;
      procedure synctotarget; override;
      procedure unpark; override;
  end;

implementation

const guid='beb20602-8709-48c9-a902-c3870b8f5e6c';

constructor T_AlpacaLX200.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor  T_AlpacaLX200.Destroy;
begin
  inherited Destroy;
end;

function  T_AlpacaLX200.GetGuid: string;
begin
  result:=guid;
end;

function  T_AlpacaLX200.Action( actionName, actionParameters: string):string;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:='';
end;

procedure T_AlpacaLX200.CommandBlind( command: string;  raw: boolean = false);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.CommandBool(command: string;  raw: boolean = false):boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.CommandString(command: string;  raw: boolean = false):string;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:='';
end;

function  T_AlpacaLX200.Connected:boolean;
begin
  result:=FConnected;
end;

procedure  T_AlpacaLX200.SetConnected(value:boolean);
var ok: boolean;
begin
  if value then begin
    if pop_lx200.ScopeConnected then begin
      // try to keep previous alignment if any
      FConnected:=true;
    end
    else begin
      TargetRA:=NullCoord;
      TargetDEC:=NullCoord;
      pop_lx200.ScopeConnect(ok);
      FConnected:=ok;
      if not ok then begin
        FErrorNumber:=ERR_DRIVER_ERROR;
        FErrorMessage:='Connection error: '+pop_lx200.statusbar1.SimpleText;
      end;
    end;
  end
  else begin
    FConnected:=false;
  end;
end;

function  T_AlpacaLX200.Description:string;
begin
  result:='LX200 Alpaca driver, based on Cartes du Ciel driver.';
end;

function  T_AlpacaLX200.DriverInfo:string;
begin
  result:=pop_lx200.ScopeGetStatus;
end;

function  T_AlpacaLX200.DriverVersion:string;
begin
  result:=pu_lx200client.lx200_version;
end;

function  T_AlpacaLX200.InterfaceVersion: integer;
begin
  result:=1;
end;

function  T_AlpacaLX200.Name:string;
begin
  result:='LX200 '+pop_lx200.cbo_type.Text;
end;

function  T_AlpacaLX200.SupportedActions:TStringList;
begin
  result:=TStringList.Create;
  result.Clear;
end;

function  T_AlpacaLX200.alignmentmode: integer;
begin
    result:=0;
    FErrorNumber:=ERR_NOT_IMPLEMENTED;
    FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.altitude: double;
var alt, az: double;
    ok: boolean;
begin
  pop_lx200.ScopeGetAltAz(alt,az,ok);
  Result:=alt;
end;

function  T_AlpacaLX200.aperturearea: double;
begin
 FErrorNumber:=ERR_NOT_IMPLEMENTED;
 FErrorMessage:=MSG_NOT_IMPLEMENTED;
 result:=0;
end;

function  T_AlpacaLX200.aperturediameter: double;
begin
 FErrorNumber:=ERR_NOT_IMPLEMENTED;
 FErrorMessage:=MSG_NOT_IMPLEMENTED;
 result:=0;
end;

function  T_AlpacaLX200.athome: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.atpark: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.azimuth: double;
var alt, az: double;
    ok: boolean;
begin
  pop_lx200.ScopeGetAltAz(alt,az,ok);
  Result:=az;
end;

function  T_AlpacaLX200.canfindhome: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.canpark: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.canunpark: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.canpulseguide: boolean;
begin
  result:=false;
end;

function  T_AlpacaLX200.cansetdeclinationrate: boolean;
begin
  result:=false;
end;

function  T_AlpacaLX200.cansetguiderates: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.cansetpark: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.cansetpierside: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.cansetrightascensionrate: boolean;
begin
  result:=false;
end;

function  T_AlpacaLX200.cansettracking: boolean;
begin
  result:=false;
end;

function  T_AlpacaLX200.canslew: boolean;
begin
  result:=true;
end;

function  T_AlpacaLX200.canslewaltaz: boolean;
begin
  result:=false;
end;

function  T_AlpacaLX200.canslewaltazasync: boolean;
begin
  result:=false;
end;

function T_AlpacaLX200.canslewasync: boolean;
begin
  result:=true;
end;

function  T_AlpacaLX200.cansync: boolean;
begin
  result:=true;
end;

function  T_AlpacaLX200.cansyncaltaz: boolean;
begin
  result:=false;
end;

function  T_AlpacaLX200.declination: double;
var ra, de: double;
    ok: boolean;
begin
  pop_lx200.ScopeGetRaDec(ra,de,ok);
  Result:=de;
end;

function  T_AlpacaLX200.declinationrate: double;
begin
  result:=0;
end;

procedure T_AlpacaLX200.setdeclinationrate(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.doesrefraction: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=true;
end;

procedure T_AlpacaLX200.setdoesrefraction(value: boolean);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.equatorialsystem: integer;
begin
  result:=pop_lx200.ScopeGetEqSys;
end;

function  T_AlpacaLX200.focallength: double;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=0;
end;

function  T_AlpacaLX200.guideratedeclination: double;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=0;
end;

procedure T_AlpacaLX200.setguideratedeclination(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.guideraterightascension: double;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=0;
end;

procedure T_AlpacaLX200.setguideraterightascension(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.ispulseguiding: boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=False;
end;

function  T_AlpacaLX200.rightascension: double;
var ra, de: double;
    ok: boolean;
begin
  pop_lx200.ScopeGetRaDec(ra,de,ok);
  Result:=ra;
end;

function  T_AlpacaLX200.rightascensionrate: double;
begin
  result:=0;
end;

procedure T_AlpacaLX200.setrightascensionrate(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.sideofpier: integer;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=0;
end;

procedure T_AlpacaLX200.setsideofpier(value: integer);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.siderealtime: double;
var buf: string;
begin
  result:=pop_lx200.ScopeGetSideralTime;
end;

function  T_AlpacaLX200.siteelevation: double;
begin
  result:=0;
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.setsiteelevation(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.sitelatitude: double;
begin
  result:=0;
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.setsitelatitude(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.sitelongitude: double;
begin
  result:=0;
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.setsitelongitude(value: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.slewing: boolean;
begin
  result:=pop_lx200.Slewing;
end;

function  T_AlpacaLX200.slewsettletime: integer;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=0;
end;

procedure T_AlpacaLX200.setslewsettletime(value: integer);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.targetdeclination: double;
begin
  if TargetDEC>NullCoord then
    result:=TargetDEC
  else begin
    result:=0;
    FErrorNumber:=ERR_VALUE_NOT_SET;
    FErrorMessage:=MSG_VALUE_NOT_SET;
  end;
end;

procedure T_AlpacaLX200.settargetdeclination(value: double);
begin
  if (value>=-90)and(value<=90) then
     TargetDEC:=value
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' dec='+ FormatFloat('0.000',value);
  end;
end;

function  T_AlpacaLX200.targetrightascension: double;
begin
  if TargetDEC>NullCoord then
    result:=TargetRA
  else begin
    result:=0;
    FErrorNumber:=ERR_VALUE_NOT_SET;
    FErrorMessage:=MSG_VALUE_NOT_SET;
  end;
end;

procedure T_AlpacaLX200.settargetrightascension(value: double);
begin
  if (value>=0)and(value<=24) then
     TargetRA:=value
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' ra='+ FormatFloat('0.000',value);
  end;
end;

function  T_AlpacaLX200.tracking: boolean;
begin
  result:=pop_lx200.ScopeGetTracking;
end;

procedure T_AlpacaLX200.settracking(value: boolean);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.trackingrate: integer;
begin
  result:=0;
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.settrackingrate(value: integer);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.trackingrates: TTrackingRates;
begin
  result:=nil;
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.utcdate: string;
begin
  result:=pop_lx200.GetUTCDate;
end;

procedure T_AlpacaLX200.setutcdate(value: string);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.abortslew;
begin
  pop_lx200.ScopeAbortSlew;
end;

function  T_AlpacaLX200.axisrates(axis:integer): TAxisRates;
begin
  result:=nil;
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

function  T_AlpacaLX200.canmoveaxis(axis:integer): boolean;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=false;
end;

function  T_AlpacaLX200.destinationsideofpier(ra,dec: double):integer;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
  result:=0;
end;

procedure T_AlpacaLX200.findhome;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.moveaxis(axis:integer;rate:double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.park;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.pulseguide(direction,duration: integer);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.setpark;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.slewtoaltaz(az,alt: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.slewtoaltazasync(az,alt: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.slewtocoordinates(ra,dec: double);
var ok:boolean;
begin
  if (dec>=-90)and(dec<=90)and(ra>=0)and(ra<=24)  then begin
    TargetRA:=ra;
    TargetDEC:=dec;
    pop_lx200.ScopeGotoWait(ra,dec,ok);
    if not ok then begin
      FErrorNumber:=ERR_DRIVER_ERROR;
      FErrorMessage:=MSG_DRIVER_ERROR;
    end;
  end
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' ra='+FormatFloat('0.000',ra)+' dec='+FormatFloat('0.000',dec);
  end;
end;

procedure T_AlpacaLX200.slewtocoordinatesasync(ra,dec: double);
var ok:boolean;
begin
  if (dec>=-90)and(dec<=90)and(ra>=0)and(ra<=24)  then begin
    TargetRA:=ra;
    TargetDEC:=dec;
    pop_lx200.ScopeGoto(ra,dec,ok);
    if not ok then begin
      FErrorNumber:=ERR_DRIVER_ERROR;
      FErrorMessage:=MSG_DRIVER_ERROR;
    end;
  end
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' ra='+FormatFloat('0.000',ra)+' dec='+FormatFloat('0.000',dec);
  end;
end;

procedure T_AlpacaLX200.slewtotarget;
var ok:boolean;
begin
  if (TargetDEC>=-90)and(TargetDEC<=90)and(TargetRA>=0)and(TargetRA<=24)  then begin
    pop_lx200.ScopeGotoWait(TargetRA,TargetDEC,ok);
    if not ok then begin
      FErrorNumber:=ERR_DRIVER_ERROR;
      FErrorMessage:=MSG_DRIVER_ERROR;
    end;
  end
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' ra='+FormatFloat('0.000',TargetRA)+' dec='+FormatFloat('0.000',TargetDEC);
  end;
end;

procedure T_AlpacaLX200.slewtotargetasync;
var ok:boolean;
begin
  if (TargetDEC>=-90)and(TargetDEC<=90)and(TargetRA>=0)and(TargetRA<=24)  then begin
    pop_lx200.ScopeGoto(TargetRA,TargetDEC,ok);
    if not ok then begin
      FErrorNumber:=ERR_DRIVER_ERROR;
      FErrorMessage:=MSG_DRIVER_ERROR;
    end;
  end
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' ra='+FormatFloat('0.000',TargetRA)+' dec='+FormatFloat('0.000',TargetDEC);
  end;
end;

procedure T_AlpacaLX200.synctoaltaz(az,alt: double);
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.synctocoordinates(ra,dec: double);
var ok:boolean;
begin
  if (dec>=-90)and(dec<=90)and(ra>=0)and(ra<=24)  then begin
    TargetRA:=ra;
    TargetDEC:=dec;
    ok:=pop_lx200.ScopeSync(ra,dec);
    if not ok then begin
      FErrorNumber:=ERR_DRIVER_ERROR;
      FErrorMessage:=MSG_DRIVER_ERROR;
    end;
  end
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' ra='+FormatFloat('0.000',ra)+' dec='+FormatFloat('0.000',ra);
  end;
end;

procedure T_AlpacaLX200.synctotarget;
var ok:boolean;
begin
  if (TargetRA<>NullCoord)and(TargetDEC<>NullCoord) then begin
    ok:=pop_lx200.ScopeSync(TargetRA,TargetDEC);
    if not ok then begin
      FErrorNumber:=ERR_DRIVER_ERROR;
      FErrorMessage:=MSG_DRIVER_ERROR;
    end;
  end
  else begin
    FErrorNumber:=ERR_INVALID_VALUE;
    FErrorMessage:=MSG_INVALID_VALUE +' TargetRightAscension or TargetDeclination not set.';
  end;
end;

procedure T_AlpacaLX200.unpark;
begin
  FErrorNumber:=ERR_NOT_IMPLEMENTED;
  FErrorMessage:=MSG_NOT_IMPLEMENTED;
end;

procedure T_AlpacaLX200.SetupDialog(x:integer=-1;y:integer=-1);
const margin=60;
begin
  if (x>=0) and (y>=0) then begin
    with pop_lx200 do
     begin
       if x > margin then left := x
          else left := margin;
       if left + Width > (Screen.Width - margin) then
         left := Screen.Width - Width - margin;
       if left < 0 then
         left := 0;
       if y > margin then top := y
          else top := margin;
       if top + Height > (Screen.Height - margin) then
         top := Screen.Height - Height - margin;
       if top < 0 then
         top := 0;
     end;
  end;
  pop_lx200.ScopeShow;
end;

function   T_AlpacaLX200.GetSetupPage: string;
begin
  result:='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">'+
       '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">'+
       '<title>Alpaca LX200 driver</title></head><body text>'+
       '<H1>Alpaca LX200 driver Setup</H1><br/>'+
       'To setup this Alpaca driver you must use the GUI of the main program.<br/><br/>'+
       'See detail with the Help button.<br/>'+
       '</body></html>';
end;

end.

