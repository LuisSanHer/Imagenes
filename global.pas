unit Global;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtDlgs,
  ExtCtrls, ComCtrls, Math;

type MAT3D = record
     ancho, alto : Integer;
     M : array of array of array of Double;
end;

type MAT2D = record
     ancho, alto : Integer;
     M : array of array of Double;
end;

const Lambda = 255.0;
const Pi = 3.14159265359;
const e = 2.71828;

var
  IM, M2 : MAT3D;
  IMaux : MAT3D;
  IMaux2 : MAT3D;
  hR : array[0..255] of Integer;
  hG : array[0..255] of Integer;
  hB : array[0..255] of Integer;
  MKxK : array[0..6] of array[0..6] of Double;

procedure bm2mat(const BM: TBitmap; var M: MAT3D);
procedure mat2bm(M: MAT3D; BM: TBitmap);
procedure convolucion(M1: MAT3D; M2: MAT3D; k: Integer);
procedure convolucionPD(M1: MAT3D; M2: MAT3D; k: Integer);
procedure Armonica(M1: Mat3D; M2: MAT3D; K: Integer);
procedure Geometrica(M1: MAT3D; M2: MAT3D; k: Integer; p: Integer);
procedure mat2mat(M1: MAT3D; M2: MAT3D; k: Integer);

implementation

procedure mat2mat(M1: MAT3D; M2: MAT3D; k: Integer);
var
    i, j : Integer;
begin
     for i:=k to M1.alto-1-k do
     begin
         for j:=k to M1.ancho-1-k do
         begin
             M2.M[i][j][0] := M1.M[i][j][0];
             M2.M[i][j][1] := M1.M[i][j][1];
             M2.M[i][j][2] := M1.M[i][j][2];
         end;
     end;
end;


procedure convolucion(M1: MAT3D; M2: MAT3D; k: Integer);
var
    i, j,aa,bb : Integer;
    cR, cG, cB: Double;
begin
     //AplicandoFiltro
     for i:= k to M1.alto-1-k do
     begin
         for j:= k to M1.ancho-1-k do
         begin
             cR:=0.0;
             cG:=0.0;
             cB:=0.0;
             //Convolución
             for aa:=(0-k) to k do
             begin
                for bb:=(0-k) to k do
                begin
                     cR := cR + MKxK[aa+k][bb+k]*M1.M[i+aa][j+bb][0];
                     cG := cG + MKxK[aa+k][bb+k]*M1.M[i+aa][j+bb][1];
                     cB := cB + MKxK[aa+k][bb+k]*M1.M[i+aa][j+bb][2];
                end;
             end;
             M2.M[i][j][0]:=round(max(0.0,min(cR,255.0)));
             M2.M[i][j][1]:=round(max(0.0,min(cG,255.0)));
             M2.M[i][j][2]:=round(max(0.0,min(cB,255.0)));
         end;
     end;
end;

procedure Geometrica(M1: MAT3D; M2: MAT3D; k: Integer; p: Integer);
var
    i, j, aa, bb: Integer;
    sumR, sumG, sumB: Double;
begin
     for i:= k to M1.alto-1-k do
     begin
          for j:= k to M1.ancho-1-k do
          begin
              sumR := 1.0;
              sumG := 1.0;
              sumB := 1.0;
              //Transformada bajo el filtro Media Geometrica
              for aa:=(0-k) to k do ;
              begin
                  for bb:=(0-k) to k do;
                  begin
                      sumR := sumR * M1.M[i+aa][j+bb][0];
                      sumG := sumG * M1.M[i+aa][j+bb][1];
                      sumB := sumB * M1.M[i+aa][j+bb][2];
                  end;
              end;
              M2.M[i][j][0] := round(power( sumR,1.0/p));
              M2.M[i][j][1] := round(power( sumG,1.0/p));
              M2.M[i][j][2] := round(power( sumB,1.0/p));
          end;
     end;
end;

procedure Armonica(M1: MAT3D; M2: MAT3D; k: Integer);
var
    i, j, aa, bb, zR, zG, zB: Integer;
    sumR, sumG, sumB: Double;
begin
     for i:= k to M1.alto-1-k do
     begin
          for j:= k to M1.ancho-1-k do
          begin
              sumR := 0.0;
              sumG := 0.0;
              sumB := 0.0;
              zR := 0;
              zG := 0;
              zB := 0;
              //Transformada bajo el filtro Media Armonica
              for aa:=(0-k) to k do ;
              begin
                  for bb:=(0-k) to k do;
                  begin
                      if (M1.M[i+aa][j+bb][0] <> 0) then
                         sumR := sumR + (1.0/M1.M[i+aa][j+bb][0])
                      else
                          zR := zR + 1;
                      if (M1.M[i+aa][j+bb][1] <> 0) then
                         sumG := sumG + (1.0/M1.M[i+aa][j+bb][1])
                      else
                          zG := zG + 1;
                      if (M1.M[i+aa][j+bb][2] <> 0) then
                         sumB := sumB + (1.0/M1.M[i+aa][j+bb][2])
                      else
                          zB := zB + 1;
                  end;
              end;
              if (zR > 0) then
                  M2.M [i][j][0] := 0
              else
                  M2.M [i][j][0] := round(power((k*2+1), 2)/sumR);
              if (zG > 0) then
                  M2.M [i][j][1] := 0
              else
                  M2.M [i][j][1] := round(power((k*2+1), 2)/sumG);
              if (zB > 0) then
                  M2.M [i][j][2] := 0
              else
                  M2.M [i][j][2] := round(power((k*2+1), 2)/sumB);
          end;
     end;
end;

procedure convolucionPD(M1: MAT3D; M2: MAT3D; k: Integer);
var
    cont,i,j,aa,aux : Integer;
    p1r,p2r,p3r,p4r,p1g,p2g,p3g,p4g,p1b,p2b,p3b,p4b: Double;
begin
     //AplicandoFiltro
     for i:= k to M1.alto-1-k do
     begin
         for j:= k to M1.ancho-1-k do
         begin
             p1r := 0.0;
             p1g := 0.0;
             p1b := 0.0;
             p2r := 0.0;
             p2g := 0.0;
             p2b := 0.0;
             p3r := 0.0;
             p3g := 0.0;
             p3b := 0.0;
             p4r := 0.0;
             p4g := 0.0;
             p4b := 0.0;
             cont := 1;
             for aa:=(0-k) to k do//Diagonal ( \ )
             begin
                 p1r:= p1r+M1.M[i+aa][j+aa][0];
                 p1g:= p1g+M1.M[i+aa][j+aa][1];
                 p1b:= p1b+M1.M[i+aa][j+aa][2];
                 cont := cont+1;
             end;
             p1r := p1r/cont;
             p1g := p1g/cont;
             p1b := p1b/cont;
             aux := k;
             for aa:=(0-k) to k do//Diagonal ( / )
             begin
                 p2r:= p2r+M1.M[i+aa][j+aux][0];
                 p2g:= p2g+M1.M[i+aa][j+aux][1];
                 p2b:= p2b+M1.M[i+aa][j+aux][2];
                 aux := aux - 1;
             end;
             p2r := p2r/cont;
             p2g := p2g/cont;
             p2b := p2b/cont;
             for aa:=(0-k) to k do//Vertical (|)
             begin
                 p3r:= p3r+M1.M[i][j+aa][0];
                 p3g:= p3g+M1.M[i][j+aa][1];
                 p3b:= p3b+M1.M[i][j+aa][2];
             end;
             p3r := p3r/cont;
             p3g := p3g/cont;
             p3b := p3b/cont;
             for aa:=(0-k) to k do//Horizontal (-)
             begin
                 p4r:= p4r+M1.M[i+aa][j][0];
                 p4g:= p4g+M1.M[i+aa][j][1];
                 p4b:= p4b+M1.M[i+aa][j][2];
             end;
             p4r := p4r/cont;
             p4g := p4g/cont;
             p4b := p4b/cont;
             M2.M[i][j][0]:=round(max(p1r, max(p2r, max(p3r,p4r) ) ));
             M2.M[i][j][1]:=round(max(p1g, max(p2g, max(p3g,p4g) ) ));
             M2.M[i][j][2]:=round(max(p1b, max(p2b, max(p3b,p4b) ) ));
         end;
     end;
end;

procedure bm2mat(const BM: TBitmap; var M: MAT3D);
var
    i, j, pix: Integer;
begin
     for i:=0 to M.alto-1 do
     begin
         for j:=0 to M.ancho-1 do
         begin
             pix := BM.Canvas.Pixels[j,i];
             M.M[i][j][0] := pix and $FF; // red
             M.M[i][j][1] := (pix shr 8) and $FF; // green
             M.M[i][j][2] := (pix shr 16) and $FF; // blue
         end;
     end;
end;

procedure mat2bm(M: MAT3D; BM: TBitmap);
var
    i, j : Integer;
    r, g, b :  Byte;
begin
     for i:=0 to M.alto-1 do
     begin
         for j:=0 to M.ancho-1 do
         begin
             r := round( M.M[i][j][0] );
             g := round( M.M[i][j][1] );
             b := round( M.M[i][j][2] );
             BM.Canvas.Pixels[j, i] := RGBToColor(r,g,b);
         end;
     end;
end;


end.

