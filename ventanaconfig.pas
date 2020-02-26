unit VentanaConfig;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  Menus, ExtCtrls, ActnList, Spin, TAGraph, TAFuncSeries, Global, Math;

type

  { TForm2 }

  TForm2 = class(TForm)
    Aceptar: TButton;
    Cancelar: TButton;
    Chart1: TChart;
    Chart1FuncSeries1: TFuncSeries;
    Chart1FuncSeries2: TFuncSeries;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    rbAclarar: TRadioButton;
    rbOscurecer: TRadioButton;
    SpinEdit1: TSpinEdit;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart1FuncSeries2Calculate(const AX: Double; out AY: Double);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  alpha: Double;
  beta: Double;
  k: Integer;
  p: Integer;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin

end;

procedure TForm2.AceptarClick(Sender: TObject);
begin
  alpha := (Form2.TrackBar1.Position/100.0);
  beta := (Form2.TrackBar2.Position/100.0);
  k := SpinEdit1.Value;
  if (RadioButton1.Checked) then
     p := StrToInt(RadioButton1.Caption);
  if (RadioButton2.Checked) then
     p := StrToInt(RadioButton2.Caption);
  if (RadioButton3.Checked) then
     p := StrToInt(RadioButton3.Caption);
  if (RadioButton4.Checked) then
     p := StrToInt(RadioButton4.Caption);
  Form2.Close;
end;

procedure TForm2.CancelarClick(Sender: TObject);
begin
  alpha := 1.0;
  beta := 1.0;
  Form2.CheckBox1.Checked:= false;
  Form2.CheckBox2.Checked:= false;
  Form2.CheckBox3.Checked:= false;
  Form2.Close;
end;

procedure TForm2.Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
  AY := AX;
end;

procedure TForm2.Chart1FuncSeries2Calculate(const AX: Double; out AY: Double);
begin

end;

procedure TForm2.TrackBar1Change(Sender: TObject);
begin
  Label1.Caption:= FloatToStr(TrackBar1.Position/100.0);
  Chart1.Refresh;
  Chart1.Update;
end;

procedure TForm2.TrackBar2Change(Sender: TObject);
begin
  Label2.Caption:= FloatToStr(TrackBar2.Position/100.0);
  Chart1.Refresh;
  Chart1.Update;
end;

end.

