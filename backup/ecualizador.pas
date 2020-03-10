unit Ecualizador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls, Global;

type

  { TForm4 }

  TForm4 = class(TForm)
    Aceptar: TButton;
    Intensidad: TCheckBox;
    Cancelar: TButton;
    B: TCheckBox;
    R: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    G: TCheckBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure IntensidadChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;
  rv,gv,bv,i:Integer;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Label1Click(Sender: TObject);
begin

end;

procedure TForm4.CancelarClick(Sender: TObject);
begin
  rv := 0;
  gv := 0;
  bv := 0;
  i := 0;
  Form4.Close;
end;

procedure TForm4.IntensidadChange(Sender: TObject);
begin
  R.Checked:= Intensidad.Checked;
  G.Checked:= Intensidad.Checked;
  B.Checked:= Intensidad.Checked;
end;

procedure TForm4.AceptarClick(Sender: TObject);
begin
  if (R.Checked) then
     rv:= Trackbar1.Position;
  if (G.Checked) then
     gv:= Trackbar2.Position;
  if (B.Checked) then
     bv:= Trackbar3.Position;
  if (Intensidad.Checked) then
     i:= Trackbar4.Position;
  Form4.Close;
end;

procedure TForm4.TrackBar1Change(Sender: TObject);
begin
  Label8.Caption:= FloatToStr(Trackbar1.Position);
end;

procedure TForm4.TrackBar2Change(Sender: TObject);
begin
  Label7.Caption:= FloatToStr(Trackbar2.Position);
end;

procedure TForm4.TrackBar3Change(Sender: TObject);
begin
  Label6.Caption:= FloatToStr(Trackbar3.Position);
end;

procedure TForm4.TrackBar4Change(Sender: TObject);
begin
  Label5.Caption:= FloatToStr(Trackbar4.Position);
  Trackbar1.Position:= Trackbar4.Position;
  Trackbar2.Position:= Trackbar4.Position;
  Trackbar3.Position:= Trackbar4.Position;
end;

end.

