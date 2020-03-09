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
  MKxKD1 : array[0..2] of array[0..2] of Double;
  MKxKD2 : array[0..2] of array[0..2] of Double;
  MKxKD3 : array[0..2] of array[0..2] of Double;
  MKxKD4 : array[0..2] of array[0..2] of Double;
  MKxKD5 : array[0..2] of array[0..2] of Double;
  MKxKD6 : array[0..2] of array[0..2] of Double;
  MKxKD7 : array[0..2] of array[0..2] of Double;
  MKxKD8 : array[0..2] of array[0..2] of Double;
  visitados: array of array of Integer;


procedure bm2mat(const BM: TBitmap; var M: MAT3D);
procedure mat2bm(M: MAT3D; BM: TBitmap);
procedure convolucion(M1: MAT3D; M2: MAT3D; k: Integer);
procedure convolucionBordes(M1: MAT3D; M2: MAT3D);
procedure convolucionBordesKirsch(M1: MAT3D; M2: MAT3D);
procedure convolucionBordesLaplacianos(M1: MAT3D; M2: MAT3D);
procedure convolucionPD(M1: MAT3D; M2: MAT3D; k: Integer);
procedure Armonica(M1: Mat3D; M2: MAT3D; K: Integer);
procedure Geometrica(M1: MAT3D; M2: MAT3D; k: Integer);
procedure mat2mat(M1: MAT3D; M2: MAT3D; k: Integer);
procedure matFull(M1: MAT3D; M2: MAT3D);


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

procedure matFull(M1: MAT3D; M2: MAT3D);
var
    i, j : Integer;
begin
     for i:=0 to M1.alto-1 do
     begin
         for j:=0 to M1.ancho-1 do
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

procedure convolucionBordesLaplacianos(M1: MAT3D; M2: MAT3D);
var
    i, j,aa,bb : Integer;
    G1r,G1g,G1b,G2r,G2g,G2b,GTr,GTg,GTb: Double;
begin
     //AplicandoFiltro
     for i:=1 to IM.alto-2 do
     begin
         for j:=1 to IM.ancho-2 do
         begin
             G1r:=0.0; G1g:=0.0; G1b:=0.0;
             G2r:=0.0; G2g:=0.0; G2b:=0.0;
             for aa:=-1 to 1 do
             begin
                for bb:=-1 to 1 do
                begin
                     G1r := G1r + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G1g := G1g + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G1b := G1b + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G2r := G2r + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G2g := G2g + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G2b := G2b + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][2];
                end;
             end;
             GTr := power(G1r*G1r + G2r*G2r, 0.5);
             GTg := power(G1g*G1g + G2g*G2g, 0.5);
             GTb := power(G1r*G1b + G2r*G2b, 0.5);

             M2.M[i][j][0]:=round(max(0.0,min(GTr,255.0)));
             M2.M[i][j][1]:=round(max(0.0,min(GTg,255.0)));
             M2.M[i][j][2]:=round(max(0.0,min(GTb,255.0)));
         end;
     end;
end;

procedure convolucionBordes(M1: MAT3D; M2: MAT3D);
var
    i, j,aa,bb : Integer;
    G1r,G1g,G1b,G2r,G2g,G2b,G3r,G3g,G3b,G4r,G4g,G4b,GTr,GTg,GTb: Double;
begin
     //AplicandoFiltro
     for i:=1 to IM.alto-2 do
     begin
         for j:=1 to IM.ancho-2 do
         begin
             G1r:=0.0; G1g:=0.0; G1b:=0.0;
             G2r:=0.0; G2g:=0.0; G2b:=0.0;
             G3r:=0.0; G3g:=0.0; G3b:=0.0;
             G4r:=0.0; G4g:=0.0; G4b:=0.0;
             for aa:=-1 to 1 do
             begin
                for bb:=-1 to 1 do
                begin
                     G1r := G1r + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G1g := G1g + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G1b := G1b + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G2r := G2r + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G2g := G2g + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G2b := G2b + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G3r := G3r + MKxKD3[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G3g := G3g + MKxKD3[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G3b := G3b + MKxKD3[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G4r := G4r + MKxKD4[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G4g := G4g + MKxKD4[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G4b := G4b + MKxKD4[aa+1][bb+1]*M1.M[i+aa][j+bb][2];
                end;
             end;
             GTr := power(G1r*G1r + G2r*G2r + G3r*G3r + G4r*G4r, 0.5);
             GTg := power(G1g*G1g + G2g*G2g + G3g*G3g + G4g*G4g, 0.5);
             GTb := power(G1r*G1b + G2r*G2b + G3b*G3b + G4b*G4b, 0.5);

             M2.M[i][j][0]:=round(max(0.0,min(GTr,255.0)));
             M2.M[i][j][1]:=round(max(0.0,min(GTg,255.0)));
             M2.M[i][j][2]:=round(max(0.0,min(GTb,255.0)));
         end;
     end;
end;

procedure convolucionBordesKirsch(M1: MAT3D; M2: MAT3D);
var
    i, j,aa,bb : Integer;
    G1r,G1g,G1b,G2r,G2g,G2b,G3r,G3g,G3b,G4r,G4g,G4b,G5r,G5g,G5b,G6r,G6g,G6b,G7r,G7g,G7b,G8r,G8g,G8b,GTr,GTg,GTb: Double;
begin
     //AplicandoFiltro
     for i:=1 to IM.alto-2 do
     begin
         for j:=1 to IM.ancho-2 do
         begin
             G1r:=0.0; G1g:=0.0; G1b:=0.0;
             G2r:=0.0; G2g:=0.0; G2b:=0.0;
             G3r:=0.0; G3g:=0.0; G3b:=0.0;
             G4r:=0.0; G4g:=0.0; G4b:=0.0;
             G5r:=0.0; G5g:=0.0; G5b:=0.0;
             G6r:=0.0; G6g:=0.0; G6b:=0.0;
             G7r:=0.0; G7g:=0.0; G7b:=0.0;
             G8r:=0.0; G8g:=0.0; G8b:=0.0;
             for aa:=-1 to 1 do
             begin
                for bb:=-1 to 1 do
                begin
                     G1r := G1r + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G1g := G1g + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G1b := G1b + MKxKD1[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G2r := G2r + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G2g := G2g + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G2b := G2b + MKxKD2[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G3r := G3r + MKxKD3[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G3g := G3g + MKxKD3[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G3b := G3b + MKxKD3[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G4r := G4r + MKxKD4[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G4g := G4g + MKxKD4[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G4b := G4b + MKxKD4[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G5r := G5r + MKxKD5[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G5g := G5g + MKxKD5[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G5b := G5b + MKxKD5[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G6r := G6r + MKxKD6[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G6g := G6g + MKxKD6[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G6b := G6b + MKxKD6[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G7r := G7r + MKxKD7[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G7g := G7g + MKxKD7[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G7b := G7b + MKxKD7[aa+1][bb+1]*M1.M[i+aa][j+bb][2];

                     G8r := G8r + MKxKD8[aa+1][bb+1]*M1.M[i+aa][j+bb][0];
                     G8g := G8g + MKxKD8[aa+1][bb+1]*M1.M[i+aa][j+bb][1];
                     G8b := G8b + MKxKD8[aa+1][bb+1]*M1.M[i+aa][j+bb][2];
                end;
             end;
             GTr := power(G1r*G1r + G2r*G2r + G3r*G3r + G4r*G4r + G5r*G5r + G6r*G6r + G7r*G7r + G8r*G8r, 0.5);
             GTg := power(G1g*G1g + G2g*G2g + G3g*G3g + G4g*G4g + G5g*G5g + G6g*G6g + G7g*G7g + G8g*G8g, 0.5);
             GTb := power(G1r*G1b + G2r*G2b + G3b*G3b + G4b*G4b + G5b*G5b + G6b*G6b + G7b*G7b + G8b*G8b, 0.5);

             M2.M[i][j][0]:=round(max(0.0,min(GTr,255.0)));
             M2.M[i][j][1]:=round(max(0.0,min(GTg,255.0)));
             M2.M[i][j][2]:=round(max(0.0,min(GTb,255.0)));
         end;
     end;
end;

procedure Geometrica(M1: MAT3D; M2: MAT3D; k: Integer);
var
    i, j, aa, bb, n: Integer;
    sumR, sumG, sumB: Double;
begin
     n := k*2+1;
     n := n*n;
     for i:= k to M1.alto-k-1 do
     begin
          for j:= k to M1.ancho-k-1 do
          begin
              sumR:=1.0;
              sumG:=1.0;
              sumB:=1.0;
              for aa:=-k to k do
              begin
                 for bb:=-k to k do
                 begin
                      sumR := sumR *M1.M[i+aa][j+bb][0];
                      sumG := sumG *M1.M[i+aa][j+bb][1];
                      sumB := sumB *M1.M[i+aa][j+bb][2];
                 end;
              end;
              M2.M[i][j][0]:=round(max(0.0,min(power(sumR,1/n),255.0)));
              M2.M[i][j][1]:=round(max(0.0,min(power(sumG,1/n),255.0)));
              M2.M[i][j][2]:=round(max(0.0,min(power(sumB,1/n),255.0)));
          end;
     end;
end;

procedure Armonica(M1: MAT3D; M2: MAT3D; k: Integer);
var
    i, j, aa, n, bb, zR, zG, zB: Integer;
    sumR, sumG, sumB: Double;
begin
     n := k*2+1;
     n := n*n;
     for i:= k to M1.alto-k-1 do
     begin
          for j:= k to M1.ancho-k-1 do
          begin
              sumR := 0.0;
              sumG := 0.0;
              sumB := 0.0;
              zR := 0;
              zG := 0;
              zB := 0;
              //Transformada bajo el filtro Media Armonica
              for aa:= -k to k do ;
              begin
                  for bb:= -k to k do;
                  begin
                      if (M1.M[i+aa][j+bb][0] <> 0.0) then
                         sumR := sumR + (1.0/M1.M[i+aa][j+bb][0])
                      else
                          zR := zR + 1;
                      if (M1.M[i+aa][j+bb][1] <> 0.0) then
                         sumG := sumG + (1.0/M1.M[i+aa][j+bb][1])
                      else
                          zG := zG + 1;
                      if (M1.M[i+aa][j+bb][2] <> 0.0) then
                         sumB := sumB + (1.0/M1.M[i+aa][j+bb][2])
                      else
                          zB := zB + 1;
                  end;
              end;
              if (zR > 0) then
                  M2.M [i][j][0] := 0.0
              else
                  sumR := n/sumR;
                  M2.M [i][j][0] := round(max(0.0,min(sumR,255.0)));
              if (zG > 0) then
                  M2.M [i][j][1] := 0.0
              else
                  sumG := n/sumG;
                  M2.M [i][j][1] := round(max(0.0,min(sumG,255.0)));
              if (zB > 0) then
                  M2.M [i][j][2] := 0.0
              else
                  sumB := n/sumB;
                  M2.M [i][j][2] := round(max(0.0,min(sumB,255.0)));
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


