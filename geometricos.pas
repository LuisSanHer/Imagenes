unit Geometricos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Aceptar: TButton;
    Cancelar: TButton;
    Izquierda: TRadioButton;
    Derecha: TRadioButton;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DerechaChange(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.DerechaChange(Sender: TObject);
begin

end;

procedure TForm6.FormCreate(Sender: TObject);
begin

end;

procedure TForm6.CancelarClick(Sender: TObject);
begin
  Form6.Izquierda.Checked:= false;
  Form6.Derecha.Checked:= false;
  Form6.Close;
end;

procedure TForm6.AceptarClick(Sender: TObject);
begin
  Form6.Close;
end;

end.

