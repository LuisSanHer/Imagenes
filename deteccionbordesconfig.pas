unit DeteccionBordesConfig;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Aceptar: TButton;
    Cancelar: TButton;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.CancelarClick(Sender: TObject);
begin
  Form5.RadioButton1.Checked:= false;
  Form5.RadioButton2.Checked:= false;
  Form5.RadioButton3.Checked:= false;
  Form5.RadioButton4.Checked:= false;
  Form5.RadioButton5.Checked:= false;
  Form5.RadioButton6.Checked:= false;
  Form5.RadioButton7.Checked:= false;
  Form5.RadioButton8.Checked:= false;
  Form5.Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.AceptarClick(Sender: TObject);
begin
  Form5.Close;
end;

end.

