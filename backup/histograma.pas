unit Histograma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, TAGraph,
  TAFuncSeries, Global, Math;

type

  { TForm3 }

  TForm3 = class(TForm)
    Chart1: TChart;
    Chart1FuncSeries1: TFuncSeries;
    Chart2: TChart;
    Chart2FuncSeries1: TFuncSeries;
    Chart3: TChart;
    Chart3FuncSeries1: TFuncSeries;
    Chart4: TChart;
    Chart4FuncSeries1: TFuncSeries;
    procedure calcularH(M : MAT3D);
    procedure Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart2FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart3FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart4FuncSeries1Calculate(const AX: Double; out AY: Double);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.calcularH();
var i,j,maxR,maxG,maxB: Integer;
  iR, iB, iG: Byte;
begin
    for i:=0 to 255 do
    begin
        hR[i] := 0;
        hG[i] := 0;
        hB[i] := 0;
    end;

    for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              iR:=Round(IM.M[i][j][0]);
              iG:=Round(IM.M[i][j][1]);
              iB:=Round(IM.M[i][j][2]);
              hR[iR] := hR[iR]+1;
              hG[iG] := hG[iG]+1;
              hB[iB] := hB[iB]+1;
         end;
     end;

    maxR:=0;
    maxG:=0;
    maxB:=0;
    for i:=0 to 255 do
    begin
        maxR := max(maxR, hR[i]);
        maxG := max(maxG, hG[i]);
        maxB := max(maxB, hB[i]);
    end;
    Chart1.Extent.YMax:=maxR;
    Chart2.Extent.YMax:=maxG;
    Chart3.Extent.YMax:=maxB;
    Chart4.Extent.YMax:=round(maxB+maxG+maxR/3.0);

    Chart1FuncSeries1.Extent.YMax:= maxR;
    Chart2FuncSeries1.Extent.YMax:= maxG;
    Chart3FuncSeries1.Extent.YMax:= maxB;
    Chart4FuncSeries1.Extent.YMax:= round(maxB+maxG+maxR/3.0);;

    Chart1.Update;
    Chart2.Update;
    Chart3.Update;
    Chart4.Update;

    Chart1.Refresh;
    Chart2.Refresh;
    Chart3.Refresh;
    Chart4.Refresh;
end;

procedure TForm3.Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
var
   x:Byte;
begin
  x:=round(AX);
  AY:= hR[x];
end;

procedure TForm3.Chart2FuncSeries1Calculate(const AX: Double; out AY: Double);
var
   x:Byte;
begin
  x:=round(AX);
  AY:= hG[x];
end;

procedure TForm3.Chart3FuncSeries1Calculate(const AX: Double; out AY: Double);
var
   x:Byte;
begin
  x:=round(AX);
  AY:= hB[x];
end;

procedure TForm3.Chart4FuncSeries1Calculate(const AX: Double; out AY: Double);
var
   x:Byte;
begin
   x:=round(AX);
   AY:= round(hB[x] + hG[x] + hR[x]/3.0);
end;

end.

