{*******************************************************}
{                                                       }
{       Pangya Server                                   }
{                                                       }
{       Copyright (C) 2015 Shad'o Soft tm               }
{                                                       }
{*******************************************************}

unit IffManager.Mascot;

interface

uses
  IffManager.IffEntry, IffManager.IffEntryList;

type

  TMascotData = packed Record // $11C
    var base: TIffbase;
    var un: array [0..$8B] of AnsiChar;
  End;

  TMascotDataClass = class (TIffEntry<TMascotData>)
    public
      constructor Create(data: PAnsiChar);
  end;

  TMascot = class (TIffEntryList<TMascotData, TMascotDataClass>)
    private
    public
  end;

implementation

uses ConsolePas;

constructor TMascotDataClass.Create(data: PAnsiChar);
begin
  inherited;
end;

end.