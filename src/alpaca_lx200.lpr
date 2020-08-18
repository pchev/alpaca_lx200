program alpaca_lx200;

{$mode objfpc}{$H+}
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

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, pu_server, synapse, enhedit, sysutils,
  cu_alpacalx200, cu_lx200protocol, pu_lx200client;

{$R *.res}

begin
  {$ifdef USEHEAPTRC}
    {$ifdef mswindows}
      DeleteFile('C:\Temp\alpaca_lx200_heap.trc');
      SetHeapTraceOutput('C:\Temp\alpaca_lx200_heap.trc');
    {$else}
      DeleteFile('/tmp/alpaca_lx200_heap.trc');
      SetHeapTraceOutput('/tmp/alpaca_lx200_heap.trc');
    {$endif}
  {$endif}

  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tpop_lx200, pop_lx200);
  Application.CreateForm(Tf_server, f_server);
  Application.Run;
end.

