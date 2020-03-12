unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtDlgs,
  ExtCtrls, ComCtrls, StdCtrls, Global, Math, VentanaConfig, Histograma,
  Ecualizador, deteccionbordesconfig,Geometricos;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    Abrir: TMenuItem;
    Logaritmico: TMenuItem;
    FEscenciales: TMenuItem;
    EscalaGris: TMenuItem;
    Exponencial: TMenuItem;
    FOscurecimiento: TMenuItem;
    Coseno: TMenuItem;
    ExpCreciente: TMenuItem;
    FAclaOsc: TMenuItem;
    Lineal: TMenuItem;
    Correccion: TMenuItem;
    FAltoContraste: TMenuItem;
    FBajoContraste: TMenuItem;
    FEscalaGrises: TMenuItem;
    BinUmbral: TMenuItem;
    BinIntensidad: TMenuItem;
    IntervaloUmbral: TMenuItem;
    IntervaloInvertido: TMenuItem;
    Herramientas: TMenuItem;
    Histogramas: TMenuItem;
    Ecualizacion: TMenuItem;
    FiltrosRegion: TMenuItem;
    MediaAritmetica: TMenuItem;
    MediaPonderada: TMenuItem;
    MediaGaussiana: TMenuItem;
    MediaGeometrica: TMenuItem;
    MediaArmonica: TMenuItem;
    MediaRecortada: TMenuItem;
    Mediana: TMenuItem;
    DeteccionBordes: TMenuItem;
    FiltroRoberts: TMenuItem;
    FiltroKirsch: TMenuItem;
    FiltroSobel: TMenuItem;
    FiltroFreiChen: TMenuItem;
    FiltrosSegundaDerivada: TMenuItem;
    GaussianaFuerte: TMenuItem;
    GaussianaDebil: TMenuItem;
    FiltroPrewitt: TMenuItem;
    EscaladoLinealx2: TMenuItem;
    EscaladoLinealE2: TMenuItem;
    EscaladoBiLix2: TMenuItem;
    EscaladoBiLiE2: TMenuItem;
    EscaladoLazyLibre: TMenuItem;
    ReflexionHorizontal: TMenuItem;
    ReflexionVertical: TMenuItem;
    Rotacion90g: TMenuItem;
    Rotacion180g: TMenuItem;
    RotacionLibre: TMenuItem;
    FiltrosGeometricos: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    EscaladoLazyx2: TMenuItem;
    EscaladoLazyE2: TMenuItem;
    OperadorLapGaussiana: TMenuItem;
    OperadorLaplaciano: TMenuItem;
    PromedioDireccional: TMenuItem;
    Suavizado: TMenuItem;
    Sepia: TMenuItem;
    ReduccionGrises: TMenuItem;
    SaveDialog1: TSaveDialog;
    Deshacer: TToolButton;
    Rehacer: TToolButton;
    UmbralInvertido: TMenuItem;
    UmbralGrises: TMenuItem;
    SenoidalBajo: TMenuItem;
    Polinomial: TMenuItem;
    SenoidalAlto: TMenuItem;
    Hiperbolica: TMenuItem;
    Seno: TMenuItem;
    Negativo: TMenuItem;
    FAclarado: TMenuItem;
    Guardar: TMenuItem;
    BotonSalir: TMenuItem;
    FiltrosPixel: TMenuItem;
    OpenDialog1: TOpenDialog;
    ScrollBox1: TScrollBox;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure AbrirClick(Sender: TObject);
    procedure BinIntensidadClick(Sender: TObject);
    procedure BinUmbralClick(Sender: TObject);
    procedure CorreccionClick(Sender: TObject);
    procedure EscalaGrisClick(Sender: TObject);
    procedure ExpCrecienteClick(Sender: TObject);
    procedure ExponencialClick(Sender: TObject);
    procedure FAclaOscClick(Sender: TObject);
    procedure FAclaradoClick(Sender: TObject);
    procedure FiltroFreiChenClick(Sender: TObject);
    procedure FiltroKirschClick(Sender: TObject);
    procedure FiltroPrewittClick(Sender: TObject);
    procedure FiltroRobertsClick(Sender: TObject);
    procedure FiltroSobelClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BotonSalirClick(Sender: TObject);
    procedure GaussianaDebilClick(Sender: TObject);
    procedure GaussianaFuerteClick(Sender: TObject);
    procedure GuardarClick(Sender: TObject);
    procedure HiperbolicaClick(Sender: TObject);
    procedure HistogramasClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure IntervaloInvertidoClick(Sender: TObject);
    procedure IntervaloUmbralClick(Sender: TObject);
    procedure LinealClick(Sender: TObject);
    procedure LogaritmicoClick(Sender: TObject);
    procedure HerramientasClick(Sender: TObject);
    procedure EcualizacionClick(Sender: TObject);
    procedure MediaAritmeticaClick(Sender: TObject);
    procedure CosenoClick(Sender: TObject);
    procedure MediaArmonicaClick(Sender: TObject);
    procedure MediaGeometricaClick(Sender: TObject);
    procedure MedianaClick(Sender: TObject);
    procedure MediaPonderadaClick(Sender: TObject);
    procedure MediaRecortadaClick(Sender: TObject);
    procedure EscaladoLinealx2Click(Sender: TObject);
    procedure EscaladoLinealE2Click(Sender: TObject);
    procedure EscaladoBiLix2Click(Sender: TObject);
    procedure EscaladoBiLiE2Click(Sender: TObject);
    procedure EscaladoLazyLibreClick(Sender: TObject);
    procedure ReflexionHorizontalClick(Sender: TObject);
    procedure ReflexionVerticalClick(Sender: TObject);
    procedure Rotacion90gClick(Sender: TObject);
    procedure Rotacion180gClick(Sender: TObject);
    procedure EscaladoLazyx2Click(Sender: TObject);
    procedure EscaladoLazyE2Click(Sender: TObject);
    procedure NegativoClick(Sender: TObject);
    procedure OperadorLapGaussianaClick(Sender: TObject);
    procedure OperadorLaplacianoClick(Sender: TObject);
    procedure PromedioDireccionalClick(Sender: TObject);
    procedure RotacionLibreClick(Sender: TObject);
    procedure SepiaClick(Sender: TObject);
    procedure PolinomialClick(Sender: TObject);
    procedure ScrollBox1Click(Sender: TObject);
    procedure SenoClick(Sender: TObject);
    procedure SenoidalAltoClick(Sender: TObject);
    procedure SenoidalBajoClick(Sender: TObject);
    procedure SuavizadoClick(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure DeshacerClick(Sender: TObject);
    procedure RehacerClick(Sender: TObject);
    procedure UmbralGrisesClick(Sender: TObject);
    procedure UmbralInvertidoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  BM: TBitMap;
  BMaux: TBitMap;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.AbrirClick(Sender: TObject);
var
  fname : String;
begin
  if OpenDialog1.Execute() then
  begin
    BM := TBitmap.Create;
    fname := OpenDialog1.FileName;
    BM.LoadFromFile(fname);
    Image1.Picture.Assign(BM);
    Form1.Caption := fname;
    StatusBar1.Panels[0].Text :=  IntToStr(BM.Width) + ' x ' +IntToStr(BM.Height) + ' píxeles';
    FiltrosPixel.Enabled:=True;
    FiltrosRegion.Enabled:=True;
    FiltrosGeometricos.Enabled:= True;
    Herramientas.Enabled:=True;
    // Crear espacio en memoria para la imagen
    IM.alto := BM.Height;
    IM.ancho := BM.Width;
    SetLength(IM.M, IM.alto, IM.ancho, 3);
    // Crear espacio en memoria para la imagen auxiliar en filtros de region
    M2.alto := BM.Height;
    M2.ancho := BM.Width;
    SetLength(M2.M, M2.alto, M2.ancho, 3);
    // Almacena el BitMap en la Matriz
    bm2mat(BM, IM);
  end;
end;

procedure TForm1.BinIntensidadClick(Sender: TObject);
var
    i, j: Integer;
begin
    //ConfigurandoVentanaExterna
    Form2.TrackBar1.Min:= 0;
    Form2.TrackBar1.Max:= 25500;
    Form2.ShowModal;
    //GuardarImagenAntesDeAplicarFiltro
    IMaux.alto := BM.Height;
    IMaux.ancho := BM.Width;
    SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
    bm2mat(BM,IMaux);
    //AplicandoFiltro
    for i:=0 to IM.alto-1 do
    begin
        for j:=0 to IM.ancho-1 do
        begin
            //
            //Preguntar formula
            //
            If Form2.CheckBox1.Checked then
            If Form2.CheckBox2.Checked then
            If Form2.Checkbox3.Checked then
        end;
    end;
    mat2bm(IM, BM);
    Image1.Picture.Bitmap.Assign(BM);
    //GuardarImagenConFiltroAplicado
    IMaux2.alto := BM.Height;
    IMaux2.ancho := BM.Width;
    SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
    bm2mat(BM,IMaux2);
    //Reiniciar Formulario Configuraciones
    Form2.Label1.Caption:= 'alpha';
    Form2.TrackBar1.Position:=100;
    Form2.Label2.Caption:= 'beta';
    Form2.TrackBar2.Position:=100;
    Form2.CheckBox1.Checked:= false;
    Form2.CheckBox2.Checked:= false;
    Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.BinUmbralClick(Sender: TObject);
var
  i, j: Integer;
  aux: Double;
begin
  //ConfigurandoVentanaExterna
  Form2.TrackBar1.Min:= 0;
  Form2.TrackBar1.Max:= 25500;
  Form2.ShowModal;
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  for i:=0 to IM.alto-1 do
  begin
      for j:=0 to IM.ancho-1 do
      begin
          aux :=round(Lambda);//Otro caso
          If (IM.M[i][j][0]<=alpha) then
             aux:= 0;
          If Form2.CheckBox1.Checked then
             IM.M[i][j][0]:= aux;
          If Form2.CheckBox2.Checked then
             IM.M[i][j][1]:= aux;
          If Form2.Checkbox3.Checked then
             IM.M[i][j][2]:= aux;
      end;
  end;
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
  //Reiniciar Formulario Configuraciones
  Form2.Label1.Caption:= 'alpha';
  Form2.TrackBar1.Position:=100;
  Form2.Label2.Caption:= 'beta';
  Form2.TrackBar2.Position:=100;
  Form2.CheckBox1.Checked:= false;
  Form2.CheckBox2.Checked:= false;
  Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.CorreccionClick(Sender: TObject);
var
  i, j: Integer;
begin
  //ConfigurandoVentanaExterna
  Form2.TrackBar1.Min:= 0;
  Form2.TrackBar1.Max:= 200;
  Form2.ShowModal;
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  for i:=0 to IM.alto-1 do
  begin
      for j:=0 to IM.ancho-1 do
      begin
          If Form2.CheckBox1.Checked then
             IM.M[i][j][0] := round(Lambda * power( (IM.M[i][j][0] / Lambda ), alpha));
          If Form2.CheckBox2.Checked then
             IM.M[i][j][1] := round(Lambda * power( (IM.M[i][j][1] / Lambda ), alpha));
          If Form2.Checkbox3.Checked then
             IM.M[i][j][2] := round(Lambda * power( (IM.M[i][j][2] / Lambda ), alpha));
      end;
  end;
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
  //Reiniciar Formulario Configuraciones
  Form2.Label1.Caption:= 'alpha';
  Form2.TrackBar1.Position:=100;
  Form2.CheckBox1.Checked:= false;
  Form2.CheckBox2.Checked:= false;
  Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.EscalaGrisClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
begin
     //ConfigurandoVentanaExterna
     Form2.Label1.Visible:= False;
     Form2.TrackBar1.Visible:= False;
     Form2.ShowModal;
     Form2.Label1.Visible:= True;
     Form2.TrackBar1.Visible:= True;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round(gris);
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round(gris);
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round(gris);
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.ExpCrecienteClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 500;
     Form2.TrackBar1.Min:= 10;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              aux := Lambda/(power(e,alpha)-1);
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round( aux * (power(e, alpha*(IM.M[i][j][0]/Lambda))-1));
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round( aux * (power(e, alpha*(IM.M[i][j][1]/Lambda))-1));
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round( aux * (power(e, alpha*(IM.M[i][j][2]/Lambda))-1));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.ExponencialClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 500;
     Form2.TrackBar1.Min:= 10;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              If Form2.CheckBox1.Checked then
                 aux := Lambda / (1-power(e, (-1)*alpha));
                 IM.M[i][j][0] := round( aux * (1-power(e, (-1)*alpha*(IM.M[i][j][0]/Lambda ))));
              If Form2.CheckBox2.Checked then
                 aux := Lambda / (1-power(e, (-1)*alpha));
                 IM.M[i][j][1] := round( aux * (1-power(e, (-1)*alpha*(IM.M[i][j][1]/Lambda ))));
              If Form2.CheckBox3.Checked then
                 aux := Lambda / (1-power(e, (-1)*alpha));
                 IM.M[i][j][2] := round( aux * (1-power(e, (-1)*alpha*(IM.M[i][j][2]/Lambda ))));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.FAclaOscClick(Sender: TObject);
begin

end;

procedure TForm1.FAclaradoClick(Sender: TObject);
begin

end;

procedure TForm1.FiltroFreiChenClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
begin
     //ConfigurandoVentanaExterna
     Form5.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //Aplicando escala de grises
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
              IM.M[i][j][0] := round(gris);
              IM.M[i][j][1] := round(gris);
              IM.M[i][j][2] := round(gris);
         end;
     end;
     //Llenando matriz KxK
     k := 3;
     //MKxK para ReflexionHorizontal
     if (Form5.RadioButton1.Checked) then
     begin
       MkxK[0][0]:=  1; MkxK[0][1]:=  power(2, 0.5); MkxK[0][2]:=  1;
       MkxK[1][0]:=  0; MkxK[1][1]:=  0; MkxK[1][2]:=  0;
       MkxK[2][0]:= -1; MkxK[2][1]:=  (-1)*power(2, 0.5); MkxK[2][2]:= -1;
       for i:=0 to k-1 do
       begin
            for j:=0 to k-1 do
            begin
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
            end;
       end;
       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para vertical
     if (Form5.RadioButton2.Checked) then
     begin
       MkxK[0][0]:= 1; MkxK[0][1]:= 0; MkxK[0][2]:= -1;
       MkxK[1][0]:= power(2, 0.5); MkxK[1][1]:=  0; MkxK[1][2]:= (-1)*power(2, 0.5);
       MkxK[2][0]:= 1; MkxK[2][1]:= 0; MkxK[2][2]:= -1;
       for i:=0 to k-1 do
       begin
            for j:=0 to k-1 do
            begin
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
            end;
       end;
       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 45°
     if (Form5.RadioButton3.Checked) then
     begin
       MkxK[0][0]:=  power(2, 0.5); MkxK[0][1]:= -1; MkxK[0][2]:= 0;
       MkxK[1][0]:= -1; MkxK[1][1]:= 0; MkxK[1][2]:=  1;
       MkxK[2][0]:=  0; MkxK[2][1]:= 1; MkxK[2][2]:= (-1)*power(2, 0.5);
       for i:=0 to k-1 do
       begin
            for j:=0 to k-1 do
            begin
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
            end;
       end;
       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para -45°
     if (Form5.RadioButton4.Checked) then
     begin
       MkxK[0][0]:= 0; MkxK[0][1]:= -1; MkxK[0][2]:= power(2, 0.5);
       MkxK[1][0]:= 1; MkxK[1][1]:=  0; MkxK[1][2]:= -1;
       MkxK[2][0]:= (-1)*power(2, 0.5); MkxK[2][1]:=  1; MkxK[2][2]:=  0;
       for i:=0 to k-1 do
       begin
            for j:=0 to k-1 do
            begin
                 MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                 MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
                 MKxK[i][j]:= MkxK[i][j] * 1.0/2*power(2,0.5);
            end;
       end;
       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para Completo
     if (Form5.RadioButton5.Checked) then
     begin
       MkxKD1[0][0]:=  1; MkxKD1[0][1]:=  power(2, 0.5); MkxKD1[0][2]:=  1;
       MkxKD1[1][0]:=  0; MkxKD1[1][1]:=  0; MkxKD1[1][2]:=  0;
       MkxKD1[2][0]:= -1; MkxKD1[2][1]:=  (-1)*power(2, 0.5); MkxKD1[2][2]:= -1;

       MkxKD2[0][0]:= 1; MkxKD2[0][1]:= 0; MkxKD2[0][2]:= -1;
       MkxKD2[1][0]:= power(2, 0.5); MkxKD2[1][1]:=  0; MkxKD2[1][2]:= (-1)*power(2, 0.5);
       MkxKD2[2][0]:= 1; MkxKD2[2][1]:= 0; MkxKD2[2][2]:= -1;

       MkxKD3[0][0]:=  power(2, 0.5); MkxKD3[0][1]:= -1; MkxKD3[0][2]:= 0;
       MkxKD3[1][0]:= -1; MkxKD3[1][1]:= 0; MkxKD3[1][2]:=  1;
       MkxKD3[2][0]:=  0; MkxKD3[2][1]:= 1; MkxKD3[2][2]:= (-1)*power(2, 0.5);

       MkxKD4[0][0]:= 0; MkxKD4[0][1]:= -1; MkxKD4[0][2]:= power(2, 0.5);
       MkxKD4[1][0]:= 1; MkxKD4[1][1]:=  0; MkxKD4[1][2]:= -1;
       MkxKD4[2][0]:= (-1)*power(2, 0.5); MkxKD4[2][1]:=  1; MkxKD4[2][2]:=  0;
       for i:=0 to k-1 do
       begin
            for j:=0 to k-1 do
            begin
                 MKxKD1[i][j]:= MkxKD1[i][j] * 1.0/2*power(2,0.5);
                 MKxKD2[i][j]:= MkxKD2[i][j] * 1.0/2*power(2,0.5);
                 MKxKD3[i][j]:= MkxKD3[i][j] * 1.0/2*power(2,0.5);
                 MKxKD4[i][j]:= MkxKD4[i][j] * 1.0/2*power(2,0.5);
            end;
       end;
       convolucionBordes(IM,M2);
     end;
     mat2mat(M2,IM,(k div 2));
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciando Formulario
     Form5.RadioButton1.Checked:= false;
     Form5.RadioButton2.Checked:= false;
     Form5.RadioButton3.Checked:= false;
     Form5.RadioButton4.Checked:= false;
     Form5.RadioButton5.Checked:= false;
end;

procedure TForm1.FiltroKirschClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
begin
     //ConfigurandoVentanaExterna
     Form5.RadioButton6.Visible:= true;
     Form5.RadioButton7.Visible:= true;
     Form5.RadioButton8.Visible:= true;
     Form5.RadioButton9.Visible:= true;
     Form5.RadioButton1.Caption:= '0°';
     Form5.RadioButton2.Caption:= '45°';
     Form5.RadioButton3.Caption:= '90°';
     Form5.RadioButton4.Caption:= '135°';
     Form5.RadioButton5.Caption:= '180°';
     Form5.ShowModal;
     Form5.RadioButton1.Caption:= 'Horizontal';
     Form5.RadioButton2.Caption:= 'Vertical';
     Form5.RadioButton3.Caption:= '45°';
     Form5.RadioButton4.Caption:= '-45°';
     Form5.RadioButton5.Caption:= 'Completo';
     Form5.RadioButton6.Visible:= false;
     Form5.RadioButton7.Visible:= false;
     Form5.RadioButton8.Visible:= false;
     Form5.RadioButton9.Visible:= false;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //Aplicando escala de grises
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
              IM.M[i][j][0] := round(gris);
              IM.M[i][j][1] := round(gris);
              IM.M[i][j][2] := round(gris);
         end;
     end;
     //Llenando matriz KxK
     k := 3;
     //MKxK para 0°
     if (Form5.RadioButton1.Checked) then
     begin
       MkxK[0][0]:= -3; MkxK[0][1]:= -3; MkxK[0][2]:= 5;
       MkxK[1][0]:= -3; MkxK[1][1]:=  0; MkxK[1][2]:= 5;
       MkxK[2][0]:= -3; MkxK[2][1]:= -3; MkxK[2][2]:= 5;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 45°
     if (Form5.RadioButton2.Checked) then
     begin
       MkxK[0][0]:= -3; MkxK[0][1]:=  5; MkxK[0][2]:=  5;
       MkxK[1][0]:= -3; MkxK[1][1]:=  0; MkxK[1][2]:=  5;
       MkxK[2][0]:= -3; MkxK[2][1]:= -3; MkxK[2][2]:= -3;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 90°
     if (Form5.RadioButton3.Checked) then
     begin
       MkxK[0][0]:=  5; MkxK[0][1]:=  5; MkxK[0][2]:=  5;
       MkxK[1][0]:= -3; MkxK[1][1]:=  0; MkxK[1][2]:= -3;
       MkxK[2][0]:= -3; MkxK[2][1]:= -3; MkxK[2][2]:= -3;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 135°
     if (Form5.RadioButton4.Checked) then
     begin
       MkxK[0][0]:=  5; MkxK[0][1]:=  5; MkxK[0][2]:= -3;
       MkxK[1][0]:=  5; MkxK[1][1]:=  0; MkxK[1][2]:= -3;
       MkxK[2][0]:= -3; MkxK[2][1]:= -3; MkxK[2][2]:= -3;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 180°
     if (Form5.RadioButton5.Checked) then
     begin
       MkxK[0][0]:= 5; MkxK[0][1]:= -3; MkxK[0][2]:= -3;
       MkxK[1][0]:= 5; MkxK[1][1]:=  0; MkxK[1][2]:= -3;
       MkxK[2][0]:= 5; MkxK[2][1]:= -3; MkxK[2][2]:= -3;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 225°
     if (Form5.RadioButton6.Checked) then
     begin
       MkxK[0][0]:= -3; MkxK[0][1]:= -3; MkxK[0][2]:= -3;
       MkxK[1][0]:=  5; MkxK[1][1]:=  0; MkxK[1][2]:= -3;
       MkxK[2][0]:=  5; MkxK[2][1]:=  5; MkxK[2][2]:= -3;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 270°
     if (Form5.RadioButton7.Checked) then
     begin
       MkxK[0][0]:= -3; MkxK[0][1]:= -3; MkxK[0][2]:= -3;
       MkxK[1][0]:= -3; MkxK[1][1]:=  0; MkxK[1][2]:= -3;
       MkxK[2][0]:=  5; MkxK[2][1]:=  5; MkxK[2][2]:=  5;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para 315°
     if (Form5.RadioButton8.Checked) then
     begin
       MkxK[0][0]:= -3; MkxK[0][1]:= -3; MkxK[0][2]:= -3;
       MkxK[1][0]:= -3; MkxK[1][1]:=  0; MkxK[1][2]:=  5;
       MkxK[2][0]:= -3; MkxK[2][1]:=  5; MkxK[2][2]:=  5;

       convolucion(IM,M2,(k div 2));
     end;
     //MKxK para Completo
     if (Form5.RadioButton9.Checked) then
     begin
       MkxKD1[0][0]:= -3; MkxKD1[0][1]:= -3; MkxKD1[0][2]:= 5;
       MkxKD1[1][0]:= -3; MkxKD1[1][1]:=  0; MkxKD1[1][2]:= 5;
       MkxKD1[2][0]:= -3; MkxKD1[2][1]:= -3; MkxKD1[2][2]:= 5;

       MkxKD2[0][0]:= -3; MkxKD2[0][1]:=  5; MkxKD2[0][2]:=  5;
       MkxKD2[1][0]:= -3; MkxKD2[1][1]:=  0; MkxKD2[1][2]:=  5;
       MkxKD2[2][0]:= -3; MkxKD2[2][1]:= -3; MkxKD2[2][2]:= -3;

       MkxKD3[0][0]:=  5; MkxKD3[0][1]:=  5; MkxKD3[0][2]:=  5;
       MkxKD3[1][0]:= -3; MkxKD3[1][1]:=  0; MkxKD3[1][2]:= -3;
       MkxKD3[2][0]:= -3; MkxKD3[2][1]:= -3; MkxKD3[2][2]:= -3;

       MkxKD4[0][0]:=  5; MkxKD4[0][1]:=  5; MkxKD4[0][2]:= -3;
       MkxKD4[1][0]:=  5; MkxKD4[1][1]:=  0; MkxKD4[1][2]:= -3;
       MkxKD4[2][0]:= -3; MkxKD4[2][1]:= -3; MkxKD4[2][2]:= -3;

       MkxKD5[0][0]:= 5; MkxKD5[0][1]:= -3; MkxKD5[0][2]:= -3;
       MkxKD5[1][0]:= 5; MkxKD5[1][1]:=  0; MkxKD5[1][2]:= -3;
       MkxKD5[2][0]:= 5; MkxKD5[2][1]:= -3; MkxKD5[2][2]:= -3;

       MkxKD6[0][0]:= -3; MkxKD6[0][1]:= -3; MkxKD6[0][2]:= -3;
       MkxKD6[1][0]:=  5; MkxKD6[1][1]:=  0; MkxKD6[1][2]:= -3;
       MkxKD6[2][0]:=  5; MkxKD6[2][1]:=  5; MkxKD6[2][2]:= -3;

       MkxKD7[0][0]:= -3; MkxKD7[0][1]:= -3; MkxKD7[0][2]:= -3;
       MkxKD7[1][0]:= -3; MkxKD7[1][1]:=  0; MkxKD7[1][2]:= -3;
       MkxKD7[2][0]:=  5; MkxKD7[2][1]:=  5; MkxKD7[2][2]:=  5;

       convolucionBordesKirsch(IM,M2);
     end;
     mat2mat(M2,IM,(k div 2));
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciando Formulario
     Form5.RadioButton1.Checked:= false;
     Form5.RadioButton2.Checked:= false;
     Form5.RadioButton3.Checked:= false;
     Form5.RadioButton4.Checked:= false;
     Form5.RadioButton5.Checked:= false;
     Form5.RadioButton6.Checked:= false;
     Form5.RadioButton7.Checked:= false;
     Form5.RadioButton8.Checked:= false;
     Form5.RadioButton9.Checked:= false;
end;

procedure TForm1.FiltroPrewittClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
  begin
       //ConfigurandoVentanaExterna
       Form5.ShowModal;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Aplicando escala de grises
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
                IM.M[i][j][0] := round(gris);
                IM.M[i][j][1] := round(gris);
                IM.M[i][j][2] := round(gris);
           end;
       end;
       //Llenando matriz KxK
       k := 3;
       //MKxK para ReflexionHorizontal
       if (Form5.RadioButton1.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:=0; MkxK[0][2]:=1;
         MkxK[1][0]:= -1; MkxK[1][1]:=0; MkxK[1][2]:=1;
         MkxK[2][0]:= -1; MkxK[2][1]:=0; MkxK[2][2]:=1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para vertical
       if (Form5.RadioButton2.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:=-1; MkxK[0][2]:=-1;
         MkxK[1][0]:=  0; MkxK[1][1]:= 0; MkxK[1][2]:= 0;
         MkxK[2][0]:=  1; MkxK[2][1]:= 1; MkxK[2][2]:= 1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para 45°
       if (Form5.RadioButton3.Checked) then
       begin
         MkxK[0][0]:=  0; MkxK[0][1]:= 1; MkxK[0][2]:= 1;
         MkxK[1][0]:= -1; MkxK[1][1]:= 0; MkxK[1][2]:= 1;
         MkxK[2][0]:= -1; MkxK[2][1]:=-1; MkxK[2][2]:= 0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para -45°
       if (Form5.RadioButton4.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:=-1; MkxK[0][2]:=0;
         MkxK[1][0]:= -1; MkxK[1][1]:= 0; MkxK[1][2]:=1;
         MkxK[2][0]:=  0; MkxK[2][1]:= 1; MkxK[2][2]:=1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Completo
       if (Form5.RadioButton5.Checked) then
       begin
         MkxKD1[0][0]:= -1; MkxKD1[0][1]:=0; MkxKD1[0][2]:=1;
         MkxKD1[1][0]:= -1; MkxKD1[1][1]:=0; MkxKD1[1][2]:=1;
         MkxKD1[2][0]:= -1; MkxKD1[2][1]:=0; MkxKD1[2][2]:=1;

         MkxKD2[0][0]:= -1; MkxKD2[0][1]:=-1; MkxKD2[0][2]:=-1;
         MkxKD2[1][0]:=  0; MkxKD2[1][1]:= 0; MkxKD2[1][2]:= 0;
         MkxKD2[2][0]:=  1; MkxKD2[2][1]:= 1; MkxKD2[2][2]:= 1;

         MkxKD3[0][0]:=  0; MkxKD3[0][1]:= 1; MkxKD3[0][2]:= 1;
         MkxKD3[1][0]:= -1; MkxKD3[1][1]:= 0; MkxKD3[1][2]:= 1;
         MkxKD3[2][0]:= -1; MkxKD3[2][1]:=-1; MkxKD3[2][2]:= 0;

         MkxKD4[0][0]:= -1; MkxKD4[0][1]:=-1; MkxKD4[0][2]:=0;
         MkxKD4[1][0]:= -1; MkxKD4[1][1]:= 0; MkxKD4[1][2]:=1;
         MkxKD4[2][0]:=  0; MkxKD4[2][1]:= 1; MkxKD4[2][2]:=1;

         convolucionBordes(IM,M2);
       end;
       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciando Formulario
       Form5.RadioButton1.Checked:= false;
       Form5.RadioButton2.Checked:= false;
       Form5.RadioButton3.Checked:= false;
       Form5.RadioButton4.Checked:= false;
       Form5.RadioButton5.Checked:= false;
end;

procedure TForm1.FiltroRobertsClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
  begin
       //ConfigurandoVentanaExterna
       Form5.ShowModal;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Aplicando escala de grises
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
                IM.M[i][j][0] := round(gris);
                IM.M[i][j][1] := round(gris);
                IM.M[i][j][2] := round(gris);
           end;
       end;
       //Llenando matriz KxK
       k := 3;
       //MKxK para ReflexionHorizontal
       if (Form5.RadioButton1.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:=0; MkxK[0][2]:=0;
         MkxK[1][0]:=  1; MkxK[1][1]:=0; MkxK[1][2]:=0;
         MkxK[2][0]:=  0; MkxK[2][1]:=0; MkxK[2][2]:=0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para vertical
       if (Form5.RadioButton2.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:= 1; MkxK[0][2]:= 0;
         MkxK[1][0]:=  0; MkxK[1][1]:= 0; MkxK[1][2]:= 0;
         MkxK[2][0]:=  0; MkxK[2][1]:= 0; MkxK[2][2]:= 0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para 45°
       if (Form5.RadioButton3.Checked) then
       begin
         MkxK[0][0]:=  0; MkxK[0][1]:= -1; MkxK[0][2]:= 0;
         MkxK[1][0]:=  1; MkxK[1][1]:=  0; MkxK[1][2]:= 0;
         MkxK[2][0]:=  0; MkxK[2][1]:=  0; MkxK[2][2]:= 0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para -45°
       if (Form5.RadioButton4.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:= 0; MkxK[0][2]:=0;
         MkxK[1][0]:=  0; MkxK[1][1]:= 1; MkxK[1][2]:=0;
         MkxK[2][0]:=  0; MkxK[2][1]:= 0; MkxK[2][2]:=0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Completo
       if (Form5.RadioButton5.Checked) then
       begin
         MkxKD1[0][0]:= -1; MkxKD1[0][1]:=0; MkxKD1[0][2]:=0;
         MkxKD1[1][0]:=  1; MkxKD1[1][1]:=0; MkxKD1[1][2]:=0;
         MkxKD1[2][0]:=  0; MkxKD1[2][1]:=0; MkxKD1[2][2]:=0;

         MkxKD2[0][0]:= -1; MkxKD2[0][1]:= 1; MkxKD2[0][2]:= 0;
         MkxKD2[1][0]:=  0; MkxKD2[1][1]:= 0; MkxKD2[1][2]:= 0;
         MkxKD2[2][0]:=  0; MkxKD2[2][1]:= 0; MkxKD2[2][2]:= 0;

         MkxKD3[0][0]:=  0; MkxKD3[0][1]:= -1; MkxKD3[0][2]:= 0;
         MkxKD3[1][0]:=  1; MkxKD3[1][1]:=  0; MkxKD3[1][2]:= 0;
         MkxKD3[2][0]:=  0; MkxKD3[2][1]:=  0; MkxKD3[2][2]:= 0;

         MkxKD4[0][0]:= -1; MkxKD4[0][1]:= 0; MkxKD4[0][2]:=0;
         MkxKD4[1][0]:=  0; MkxKD4[1][1]:= 1; MkxKD4[1][2]:=0;
         MkxKD4[2][0]:=  0; MkxKD4[2][1]:= 0; MkxKD4[2][2]:=0;

         convolucionBordes(IM,M2);
       end;
       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciando Formulario
       Form5.RadioButton1.Checked:= false;
       Form5.RadioButton2.Checked:= false;
       Form5.RadioButton3.Checked:= false;
       Form5.RadioButton4.Checked:= false;
       Form5.RadioButton5.Checked:= false;
end;

procedure TForm1.FiltroSobelClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
  begin
       //ConfigurandoVentanaExterna
       Form5.ShowModal;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Aplicando escala de grises
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
                IM.M[i][j][0] := round(gris);
                IM.M[i][j][1] := round(gris);
                IM.M[i][j][2] := round(gris);
           end;
       end;
       //Llenando matriz KxK
       k := 3;
       //MKxK para ReflexionHorizontal
       if (Form5.RadioButton1.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:=0; MkxK[0][2]:=1;
         MkxK[1][0]:= -2; MkxK[1][1]:=0; MkxK[1][2]:=2;
         MkxK[2][0]:= -1; MkxK[2][1]:=0; MkxK[2][2]:=1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para vertical
       if (Form5.RadioButton2.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:=-2; MkxK[0][2]:=-1;
         MkxK[1][0]:=  0; MkxK[1][1]:= 0; MkxK[1][2]:= 0;
         MkxK[2][0]:=  1; MkxK[2][1]:= 2; MkxK[2][2]:= 1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para 45°
       if (Form5.RadioButton3.Checked) then
       begin
         MkxK[0][0]:=  0; MkxK[0][1]:= 1; MkxK[0][2]:= 2;
         MkxK[1][0]:= -1; MkxK[1][1]:= 0; MkxK[1][2]:= 1;
         MkxK[2][0]:= -2; MkxK[2][1]:=-1; MkxK[2][2]:= 0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para -45°
       if (Form5.RadioButton4.Checked) then
       begin
         MkxK[0][0]:= -2; MkxK[0][1]:=-1; MkxK[0][2]:=0;
         MkxK[1][0]:= -1; MkxK[1][1]:= 0; MkxK[1][2]:=1;
         MkxK[2][0]:=  0; MkxK[2][1]:= 1; MkxK[2][2]:=2;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Completo
       if (Form5.RadioButton5.Checked) then
       begin
         MkxKD1[0][0]:= -1; MkxKD1[0][1]:=0; MkxKD1[0][2]:=1;
         MkxKD1[1][0]:= -2; MkxKD1[1][1]:=0; MkxKD1[1][2]:=2;
         MkxKD1[2][0]:= -1; MkxKD1[2][1]:=0; MkxKD1[2][2]:=1;

         MkxKD2[0][0]:= -1; MkxKD2[0][1]:=-2; MkxKD2[0][2]:=-1;
         MkxKD2[1][0]:=  0; MkxKD2[1][1]:= 0; MkxKD2[1][2]:= 0;
         MkxKD2[2][0]:=  1; MkxKD2[2][1]:= 2; MkxKD2[2][2]:= 1;

         MkxKD3[0][0]:=  0; MkxKD3[0][1]:= 1; MkxKD3[0][2]:= 2;
         MkxKD3[1][0]:= -1; MkxKD3[1][1]:= 0; MkxKD3[1][2]:= 1;
         MkxKD3[2][0]:= -2; MkxKD3[2][1]:=-1; MkxKD3[2][2]:= 0;

         MkxKD4[0][0]:= -2; MkxKD4[0][1]:=-1; MkxKD4[0][2]:=0;
         MkxKD4[1][0]:= -1; MkxKD4[1][1]:= 0; MkxKD4[1][2]:=1;
         MkxKD4[2][0]:=  0; MkxKD4[2][1]:= 1; MkxKD4[2][2]:=2;

         convolucionBordes(IM,M2);
       end;
       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciando Formulario
       Form5.RadioButton1.Checked:= false;
       Form5.RadioButton2.Checked:= false;
       Form5.RadioButton3.Checked:= false;
       Form5.RadioButton4.Checked:= false;
       Form5.RadioButton5.Checked:= false;
end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.BotonSalirClick(Sender: TObject);
begin
  Form1.Close;
  Form1.Destroy;
end;

procedure TForm1.GaussianaDebilClick(Sender: TObject);
var
  i, j : Integer;
  varianza : Double;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.Label3.Visible:= true;
       Form2.SpinEdit1.Visible:= true;
       Form2.TrackBar1.Visible:= false;
       Form2.CheckBox1.Visible:= false;
       Form2.CheckBox2.Visible:= false;
       Form2.CheckBox3.Visible:= false;
       Form2.ShowModal;
       Form2.SpinEdit1.Visible:= false;
       Form2.Label3.Visible:= false;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       Form2.CheckBox1.Visible:= True;
       Form2.CheckBox2.Visible:= True;
       Form2.CheckBox3.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Llenando matriz KxK
       varianza := 5.0929;
       for i:= 0 to k-1 do
       begin
           for j:= 0 to k-1 do
           begin
               MKxK [i][j] := (1.0/(2*Pi*varianza)) * (power( e,(-1)*( ( (k div 2)* (k div 2) + (k div 2)* (k div 2) )/(2*varianza)) ));
           end;
       end;

       convolucion(IM,M2,(k div 2));

       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.SpinEdit1.Value:=3;
end;

procedure TForm1.GaussianaFuerteClick(Sender: TObject);
var
  i, j : Integer;
  varianza : Double;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.Label3.Visible:= true;
       Form2.SpinEdit1.Visible:= true;
       Form2.TrackBar1.Visible:= false;
       Form2.CheckBox1.Visible:= false;
       Form2.CheckBox2.Visible:= false;
       Form2.CheckBox3.Visible:= false;
       Form2.ShowModal;
       Form2.SpinEdit1.Visible:= false;
       Form2.Label3.Visible:= false;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       Form2.CheckBox1.Visible:= True;
       Form2.CheckBox2.Visible:= True;
       Form2.CheckBox3.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Llenando matriz KxK
       varianza := 2.5464;
       for i:= 0 to k-1 do
       begin
           for j:= 0 to k-1 do
           begin
               MKxK [i][j] := (1.0/(2*Pi*varianza)) * (power( e,(-1)*( ( (k div 2)* (k div 2) + (k div 2)* (k div 2) )/(2*varianza)) ));
           end;
       end;

       convolucion(IM,M2,(k div 2));

       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.SpinEdit1.Value:=3;
end;

procedure TForm1.GuardarClick(Sender: TObject);
var
  fname: String;
begin
  if SaveDialog1.Execute() then
  begin
    try
      fname := SaveDialog1.FileName;
      BM.SaveToFile(fname+'.bmp');
      ShowMessage('Guardado exitosamente!');
    except
      begin
      end;
    end;
  end;
end;

procedure TForm1.HiperbolicaClick(Sender: TObject);
var
  i,j: Integer;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 500;
     Form2.TrackBar1.Min:= 1;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round( Lambda/2 * ( 1+tanh (alpha*(IM.M[i][j][0]-Lambda/2))));
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round( Lambda/2 * ( 1+tanh (alpha*(IM.M[i][j][1]-Lambda/2))));
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round( Lambda/2 * ( 1+tanh (alpha*(IM.M[i][j][2]-Lambda/2))));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.HistogramasClick(Sender: TObject);
begin
  Form3.calcularH();
  Form3.ShowModal;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  StatusBar1.Panels[1].Text:= IntToStr(X) + ' , '+IntToStr(Y);
end;

procedure TForm1.IntervaloInvertidoClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 12700;
     Form2.TrackBar1.Min:= 1;
     Form2.TrackBar2.Visible:= true;
     Form2.Label2.Visible:= true;
     Form2.TrackBar2.Max:=25500;
     Form2.TrackBar2.Min:=12800;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              aux :=round(Lambda);//Otro caso
              If (IM.M[i][j][0]<=alpha) or (IM.M[i][j][0]>=beta) then
                aux:= 0;
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := aux;
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := aux;
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := aux;
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.Label2.Caption:= 'beta';
     Form2.TrackBar2.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
     Form2.TrackBar2.Visible:= false;
     Form2.Label2.Visible:= false;
end;

procedure TForm1.IntervaloUmbralClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 12700;
     Form2.TrackBar1.Min:= 1;
     Form2.TrackBar2.Visible:= true;
     Form2.Label2.Visible:= true;
     Form2.TrackBar2.Max:=25500;
     Form2.TrackBar2.Min:=12800;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              aux :=0;//Otro caso
              If (IM.M[i][j][0]<=alpha) or (IM.M[i][j][0]>=beta) then
                aux:= round(Lambda);
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := aux;
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := aux;
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := aux;
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.Label2.Caption:= 'beta';
     Form2.TrackBar2.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
     Form2.TrackBar2.Visible:= false;
     Form2.Label2.Visible:= false;
end;

procedure TForm1.LinealClick(Sender: TObject);
var
  i, j: Integer;
begin
  //ConfigurandoVentanaExterna
  Form2.TrackBar1.Max:=20000;
  Form2.TrackBar1.Min:=100;
  Form2.rbAclarar.Visible:= true;
  Form2.rbOscurecer.Visible:= true;
  Form2.ShowModal;
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  //Modificar para que funcione con aclarado y/u obscurecimiento
  for i:=0 to IM.alto-1 do
  begin
      for j:=0 to IM.ancho-1 do
      begin
          If Form2.rbAclarar.Checked then
          begin
               If Form2.CheckBox1.Checked then
                  IM.M[i][j][0] := round( min( Lambda,IM.M[i][j][0] + alpha ));
               If Form2.CheckBox2.Checked then
                  IM.M[i][j][1] := round( min( Lambda,IM.M[i][j][1] + alpha ));
               If Form2.CheckBox3.Checked then
                  IM.M[i][j][2] := round( min( Lambda,IM.M[i][j][2] + alpha ));
          end;
          If Form2.rbOscurecer.Checked then
          begin
               If Form2.CheckBox1.Checked then
                  IM.M[i][j][0] := round( max( 0,IM.M[i][j][0] - alpha ));
               If Form2.CheckBox2.Checked then
                  IM.M[i][j][1] := round( max( 0,IM.M[i][j][1] - alpha ));
               If Form2.CheckBox3.Checked then
                  IM.M[i][j][2] := round( max( 0,IM.M[i][j][2] - alpha ));
          end;
      end;
  end;
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
  //Reiniciar Formulario Configuraciones
  Form2.rbAclarar.Checked:= false;
  Form2.rbOscurecer.Checked:= false;
  Form2.Label1.Caption:= 'alpha';
  Form2.TrackBar1.Position:=100;
  Form2.CheckBox1.Checked:= false;
  Form2.CheckBox2.Checked:= false;
  Form2.CheckBox3.Checked:= false;
  Form2.rbAclarar.Visible:= false;
  Form2.rbOscurecer.Visible:= false;
end;

procedure TForm1.LogaritmicoClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 20000;
     Form2.TrackBar1.Min:= 100;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              aux := Lambda/(ln(alpha*Lambda+1));
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round( aux*ln( alpha*IM.M[i][j][0] + 1 ));
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round( aux*ln( alpha*IM.M[i][j][1] + 1 ));
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round( aux*ln( alpha*IM.M[i][j][2] + 1 ));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.HerramientasClick(Sender: TObject);
begin

end;

procedure TForm1.EcualizacionClick(Sender: TObject);
var
  i,j: Integer;
begin
  Form4.ShowModal;
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoEcualización
  for i:=0 to IM.alto-1 do
  begin
      for j:=0 to IM.ancho-1 do
      begin
           If Form4.R.Checked then
              IM.M[i][j][0] := IM.M[i][j][0] + rv;
              if (IM.M[i][j][0] + rv > 255) then
                 IM.M[i][j][0] := 255;
              if (IM.M[i][j][0] + rv < 0) then
                 IM.M[i][j][0] := 0;
           If Form4.G.Checked then
              IM.M[i][j][1] := IM.M[i][j][1] + gv;
              if (IM.M[i][j][1] + gv > 255) then
                 IM.M[i][j][1] := 255;
              if (IM.M[i][j][1] + gv < 0) then
                 IM.M[i][j][1] := 0;
           If Form4.B.Checked then
              IM.M[i][j][2] := IM.M[i][j][2] + bv;
              if (IM.M[i][j][2] + bv > 255) then
                 IM.M[i][j][2] := 255;
              if (IM.M[i][j][2] + bv < 0) then
                 IM.M[i][j][2] := 0;
      end;
  end;
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
  //Reiniciando formulario
  Form4.TrackBar1.Position:=0;
  Form4.TrackBar2.Position:=0;
  Form4.TrackBar3.Position:=0;
  Form4.TrackBar4.Position:=0;

  Form4.R.Checked:=false;
  Form4.G.Checked:=false;
  Form4.B.Checked:=false;
  Form4.Intensidad.Checked:=false;

  Form4.Label5.Caption:= '0';
  Form4.Label6.Caption:= '0';
  Form4.Label7.Caption:= '0';
  Form4.Label8.Caption:= '0';

end;

procedure TForm1.MediaAritmeticaClick(Sender: TObject);
var
  i, j : Integer;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.Label3.Visible:= true;
       Form2.SpinEdit1.Visible:= true;
       Form2.TrackBar1.Visible:= false;
       Form2.CheckBox1.Visible:= false;
       Form2.CheckBox2.Visible:= false;
       Form2.CheckBox3.Visible:= false;
       Form2.ShowModal;
       Form2.SpinEdit1.Visible:= false;
       Form2.Label3.Visible:= false;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       Form2.CheckBox1.Visible:= True;
       Form2.CheckBox2.Visible:= True;
       Form2.CheckBox3.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Llenando matriz KxK

       for i:= 0 to k-1 do
       begin
           for j:= 0 to k-1 do
           begin
               MKxK [i][j] := 1/power(k,2);
           end;
       end;

       convolucion(IM,M2,(k div 2));

       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.SpinEdit1.Value:=3;
end;

procedure TForm1.CosenoClick(Sender: TObject);
var
     i,j: Integer;
begin
     //ConfigurandoVentanaExterna
     Form2.Label1.Visible:= false;
     Form2.TrackBar1.Visible:= false;
     Form2.ShowModal;
     Form2.Label1.Visible:= True;
     Form2.TrackBar1.Visible:= True;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round( Lambda*(1-cos( (Pi*IM.M[i][j][0]) / (2*Lambda) )));
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round( Lambda*(1-cos( (Pi*IM.M[i][j][1]) / (2*Lambda) )));
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round( Lambda*(1-cos( (Pi*IM.M[i][j][2]) / (2*Lambda) )));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.MediaArmonicaClick(Sender: TObject);
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.TrackBar1.Visible:= false;
       Form2.CheckBox1.Visible:= false;
       Form2.CheckBox2.Visible:= false;
       Form2.CheckBox3.Visible:= false;
       Form2.SpinEdit1.Visible:= true;
       Form2.Label3.Visible:= True;
       Form2.ShowModal;
       Form2.SpinEdit1.Visible:= false;
       Form2.Label3.Visible:= false;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       Form2.CheckBox1.Visible:= True;
       Form2.CheckBox2.Visible:= True;
       Form2.CheckBox3.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);

       //Aplicando filtro
       Armonica(IM, M2, (k div 2));

       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.SpinEdit1.Value:=3;
end;

procedure TForm1.MediaGeometricaClick(Sender: TObject);
begin
      //ConfigurandoVentanaExterna
      Form2.Label1.Visible:= false;
      Form2.TrackBar1.Visible:= false;
      Form2.CheckBox1.Visible:= false;
      Form2.CheckBox2.Visible:= false;
      Form2.CheckBox3.Visible:= false;
      Form2.SpinEdit1.Visible:= true;
      Form2.Label3.Visible:= True;
      Form2.ShowModal;
      Form2.SpinEdit1.Visible:= false;
      Form2.Label3.Visible:= false;
      Form2.Label1.Visible:= True;
      Form2.TrackBar1.Visible:= True;
      Form2.CheckBox1.Visible:= True;
      Form2.CheckBox2.Visible:= True;
      Form2.CheckBox3.Visible:= True;
      //GuardarImagenAntesDeAplicarFiltro
      IMaux.alto := BM.Height;
      IMaux.ancho := BM.Width;
      SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
      bm2mat(BM,IMaux);
      //Aplicando filtro
      Geometrica(Im, M2, (k div 2));

      mat2mat(M2,IM,(k div 2));
      mat2bm(IM, BM);
      Image1.Picture.Bitmap.Assign(BM);
      //GuardarImagenConFiltroAplicado
      IMaux2.alto := BM.Height;
      IMaux2.ancho := BM.Width;
      SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
      bm2mat(BM,IMaux2);
      //Reiniciando formulario config
      Form2.SpinEdit1.Value:=3;
end;

procedure TForm1.MedianaClick(Sender: TObject);
begin

end;

procedure TForm1.MediaPonderadaClick(Sender: TObject);
var
  i, j: Integer;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.TrackBar1.Visible:= false;
       Form2.CheckBox1.Visible:= false;
       Form2.CheckBox2.Visible:= false;
       Form2.CheckBox3.Visible:= false;
       Form2.SpinEdit1.Visible:= true;
       Form2.RadioButton1.Visible:= True;
       Form2.RadioButton2.Visible:= True;
       Form2.RadioButton3.Visible:= True;
       Form2.RadioButton4.Visible:= True;
       Form2.Label3.Visible:= True;
       Form2.Label4.Visible:= True;
       Form2.ShowModal;
       Form2.Label4.Visible:= false;
       Form2.SpinEdit1.Visible:= false;
       Form2.Label3.Visible:= false;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       Form2.CheckBox1.Visible:= True;
       Form2.CheckBox2.Visible:= True;
       Form2.CheckBox3.Visible:= True;
       Form2.RadioButton1.Visible:= false;
       Form2.RadioButton2.Visible:= false;
       Form2.RadioButton3.Visible:= false;
       Form2.RadioButton4.Visible:= false;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Llenando matriz KxK
       for i:= 0 to k-1 do
       begin
           for j:= 0 to k-1 do
           begin
               MKxK [i][j] := 1/(power(k,2)-1+p);
           end;
       end;
       MKxK [k div 2][k div 2] := p/(power(k,2)-1+p); //Celda central de la matríz

       convolucion(IM,M2,(k div 2));

       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.SpinEdit1.Value:=3;
       Form2.RadioButton1.Checked:=false;
       Form2.RadioButton2.Checked:=false;
       Form2.RadioButton3.Checked:=false;
       Form2.RadioButton4.Checked:= false;
end;

procedure TForm1.MediaRecortadaClick(Sender: TObject);
begin

end;

procedure TForm1.EscaladoLinealx2Click(Sender: TObject);
var
  i,j : Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  SetLength(M2.M,IM.alto*2,IM.ancho*2,3);
  M2.alto:=IM.alto*2;
  M2.ancho:=IM.ancho*2;
  for i:=0 to IM.alto-1 do
  begin
       for j:=0 to IM.ancho-1 do
       begin
            M2.M[i*2][j*2][0]:=IM.M[i][j][0];
            M2.M[i*2][j*2][1]:=IM.M[i][j][1];
            M2.M[i*2][j*2][2]:=IM.M[i][j][2];
       end;
  end;

  i:=0;
  while i < M2.alto do
  begin
       j:=1;
          while j < M2.ancho do
          begin
             if j= M2.ancho-1 then
             begin
                M2.M[i][j][0]:=M2.M[i][j-1][0];
                M2.M[i][j][1]:=M2.M[i][j-1][1];
                M2.M[i][j][2]:=M2.M[i][j-1][2];
             end
             else
             begin
                M2.M[i][j][0]:=round((M2.M[i][j-1][0] + M2.M[i][j+1][0])/2.0);
                M2.M[i][j][1]:=round((M2.M[i][j-1][1] + M2.M[i][j+1][1])/2.0);
                M2.M[i][j][2]:=round((M2.M[i][j-1][2] + M2.M[i][j+1][2])/2.0);
             end;
             j:=j+2;
          end;
          i:=i+2;
  end;

  i:=1;
  while i < M2.alto do
  begin
     j:=0;
          while j < M2.ancho do
          begin
             if i= M2.alto-1 then
             begin
                M2.M[i][j][0] := M2.M[i-1][j][0];
                M2.M[i][j][1] := M2.M[i-1][j][1];
                M2.M[i][j][2] := M2.M[i-1][j][2];
             end
             else
             begin
                M2.M[i][j][0] := round((M2.M[i-1][j][0] + M2.M[i+1][j][0])/2.0);
                M2.M[i][j][1] := round((M2.M[i-1][j][1] + M2.M[i+1][j][1])/2.0);
                M2.M[i][j][2] := round((M2.M[i-1][j][2] + M2.M[i+1][j][2])/2.0);
             end;
             j:=j+2;
          end;
          i:=i+2;
  end;


  i:=1;
  while i < M2.alto do
  begin
     j:=1;
          while j < M2.ancho do
          begin
             if j= M2.ancho-1 then
             begin
                if (i=M2.alto-1) and (j=M2.ancho-1)  then
                   M2.M[i][j][0]:=round((M2.M[i][j-1][0]+ M2.M[i-1][j][0])/2.0)
                else
                begin
                     M2.M[i][j][0]:=round((M2.M[i][j-1][0] + M2.M[i+1][j][0] + M2.M[i-1][j][0])/3.0);
                     M2.M[i][j][1]:=round((M2.M[i][j-1][1] + M2.M[i+1][j][1] + M2.M[i-1][j][1])/3.0);
                     M2.M[i][j][2]:=round((M2.M[i][j-1][2] + M2.M[i+1][j][2] + M2.M[i-1][j][2])/3.0);
                end;
             end
             else if i=M2.alto-1 then
             begin
                M2.M[i][j][0]:=round((M2.M[i][j-1][0] + M2.M[i][j+1][0] + M2.M[i-1][j][0])/3.0);
                M2.M[i][j][1]:=round((M2.M[i][j-1][1] + M2.M[i][j+1][1] + M2.M[i-1][j][1])/3.0);
                M2.M[i][j][2]:=round((M2.M[i][j-1][2] + M2.M[i][j+1][2] + M2.M[i-1][j][2])/3.0);
             end
             else
             begin
                M2.M[i][j][0]:=round((M2.M[i][j-1][0] + M2.M[i][j+1][0] + M2.M[i+1][j][0] + M2.M[i-1][j][0])/4.0);
                M2.M[i][j][1]:=round((M2.M[i][j-1][1] + M2.M[i][j+1][1] + M2.M[i+1][j][1] + M2.M[i-1][j][1])/4.0);
                M2.M[i][j][2]:=round((M2.M[i][j-1][2] + M2.M[i][j+1][2] + M2.M[i+1][j][2] + M2.M[i-1][j][2])/4.0);
             end;
             j:=j+2;
          end;
          i:=i+2;
  end;

  SetLength(IM.M, M2.alto, M2.ancho, 3);
  IM.alto := M2.alto;
  IM.ancho := M2.ancho;
  matFull(M2,IM);
  BM.SetSize(M2.ancho, M2.alto);
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
end;

procedure TForm1.EscaladoLinealE2Click(Sender: TObject);
var
  i,j,a,b:Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  SetLength(M2.M, IM.alto div 2, IM.ancho div 2, 3);
  M2.alto := IM.alto div 2;
  M2.ancho := IM.ancho div 2;
  for i:=1 to IM.alto-2 do
  begin
      a := i div 2;
      for j:=1 to IM.ancho-2 do
      begin
          b := j div 2;
          M2.M[a][b][0] := (IM.M[i-1][j][0] + IM.M[i][j-1][0] + IM.M[i+1][j][0] + IM.M[i][j+1][0])/4.0;
          M2.M[a][b][1] := (IM.M[i-1][j][1] + IM.M[i][j-1][1] + IM.M[i+1][j][1] + IM.M[i][j+1][1])/4.0;
          M2.M[a][b][2] := (IM.M[i-1][j][2] + IM.M[i][j-1][2] + IM.M[i+1][j][2] + IM.M[i][j+1][2])/4.0;
      end;
  end;
  SetLength(IM.M, M2.alto, M2.ancho, 3);
  IM.alto := M2.alto;
  IM.ancho := M2.ancho;
  matFull(M2,IM);
  BM.SetSize(M2.ancho, M2.alto);
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
end;

procedure TForm1.EscaladoBiLix2Click(Sender: TObject);
var
  i,j : Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  SetLength(M2.M,IM.alto*2,IM.ancho*2,3);
  M2.alto:=IM.alto*2;
  M2.ancho:=IM.ancho*2;
  for i:=0 to IM.alto-1 do
  begin
       for j:=0 to IM.ancho-1 do
       begin
            M2.M[i*2][j*2][0] := IM.M[i][j][0];
            M2.M[i*2][j*2][1] := IM.M[i][j][1];
            M2.M[i*2][j*2][2] := IM.M[i][j][2];
       end;
  end;

  i:=0;
  while i < M2.alto do
  begin
       j:=1;
          while j < M2.ancho do
          begin
             if j= M2.ancho-1 then
             begin
                M2.M[i][j][0]:=M2.M[i][j-1][0];
                M2.M[i][j][1]:=M2.M[i][j-1][1];
                M2.M[i][j][2]:=M2.M[i][j-1][2];
             end
             else
             begin

                M2.M[i][j][0]:=round((M2.M[i][j-1][0] + M2.M[i][j+1][0])/2.0);
                M2.M[i][j][1]:=round((M2.M[i][j-1][1] + M2.M[i][j+1][1])/2.0);
                M2.M[i][j][2]:=round((M2.M[i][j-1][2] + M2.M[i][j+1][2])/2.0);
             end;
             j:=j+2;
          end;
          i:=i+2;
  end;

  i:=1;
  while i < M2.alto do
  begin
     j:=0;
          while j< M2.ancho do
          begin
             if i= M2.alto-1 then
             begin
                if j=0 then
                begin

                  M2.M[i][j][0]:=round((M2.M[i-1][j][0] + M2.M[i][j+1][0] + M2.M[i-1][j+1][0])/3.0);
                  M2.M[i][j][1]:=round((M2.M[i-1][j][1] + M2.M[i][j+1][1] + M2.M[i-1][j+1][1])/3.0);
                  M2.M[i][j][2]:=round((M2.M[i-1][j][2] + M2.M[i][j+1][2] + M2.M[i-1][j+1][2])/3.0);
                end
                else if (i=M2.alto-1) and (j=M2.ancho-1)  then
                begin
                  M2.M[i][j][0]:=round((M2.M[i-1][j][0] + M2.M[i][j-1][0] + M2.M[i-1][j-1][0])/3.0);
                  M2.M[i][j][1]:=round((M2.M[i-1][j][1] + M2.M[i][j-1][1] + M2.M[i-1][j-1][1])/3.0);
                  M2.M[i][j][2]:=round((M2.M[i-1][j][2] + M2.M[i][j-1][2] + M2.M[i-1][j-1][2])/3.0);
                end
                else
                begin
                  M2.M[i][j][0]:=round((M2.M[i-1][j][0] + M2.M[i-1][j+1][0] + M2.M[i-1][j-1][0] + M2.M[i][j-1][0])/4.0);
                  M2.M[i][j][1]:=round((M2.M[i-1][j][1] + M2.M[i-1][j+1][1] + M2.M[i-1][j-1][1] + M2.M[i][j-1][1])/4.0);
                  M2.M[i][j][2]:=round((M2.M[i-1][j][2] + M2.M[i-1][j+1][2] + M2.M[i-1][j-1][2] + M2.M[i][j-1][2])/4.0);
                end;
             end
             else if j=M2.ancho-1 then
             begin
               M2.M[i][j][0]:=round((M2.M[i-1][j][0] + M2.M[i][j-1][0] + M2.M[i+1][j][0])/3.0);
               M2.M[i][j][1]:=round((M2.M[i-1][j][1] + M2.M[i][j-1][1] + M2.M[i+1][j][1])/3.0);
               M2.M[i][j][2]:=round((M2.M[i-1][j][2] + M2.M[i][j-1][2] + M2.M[i+1][j][2])/3.0);
             end
             else if j=0 then
                begin

                  M2.M[i][j][0]:=round((M2.M[i-1][j][0] + M2.M[i][j+1][0] + M2.M[i+1][j+1][0] + M2.M[i+1][j][0])/4.0);
                  M2.M[i][j][1]:=round((M2.M[i-1][j][1] + M2.M[i][j+1][1] + M2.M[i+1][j+1][1] + M2.M[i+1][j][1])/4.0);
                  M2.M[i][j][2]:=round((M2.M[i-1][j][2] + M2.M[i][j+1][2] + M2.M[i+1][j+1][2] + M2.M[i+1][j][2])/4.0);
                end
             else
             begin
                M2.M[i][j][0]:=round((M2.M[i][j-1][0] + M2.M[i-1][j][0] + M2.M[i+1][j][0] + M2.M[i-1][j-1][0] + M2.M[i-1][j+1][0] + M2.M[i+1][j-1][0] + M2.M[i+1][j+1][0])/7.0);
                M2.M[i][j][1]:=round((M2.M[i][j-1][1] + M2.M[i-1][j][1] + M2.M[i+1][j][1] + M2.M[i-1][j-1][1] + M2.M[i-1][j+1][1] + M2.M[i+1][j-1][1] + M2.M[i+1][j+1][1])/7.0);
                M2.M[i][j][2]:=round((M2.M[i][j-1][2] + M2.M[i-1][j][2] + M2.M[i+1][j][2] + M2.M[i-1][j-1][2] + M2.M[i-1][j+1][2] + M2.M[i+1][j-1][2] + M2.M[i+1][j+1][2])/7.0);
             end;
             j:=j+1;
          end;
     i:=i+2;
  end;
  SetLength(IM.M, M2.alto, M2.ancho, 3);
  IM.alto := M2.alto;
  IM.ancho := M2.ancho;
  matFull(M2,IM);
  BM.SetSize(M2.ancho, M2.alto);
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
end;

procedure TForm1.EscaladoBiLiE2Click(Sender: TObject);
var
  i,j,a,b:Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  SetLength(M2.M, IM.alto div 2, IM.ancho div 2, 3);
  M2.alto := IM.alto div 2;
  M2.ancho := IM.ancho div 2;
  for i:=1 to IM.alto-2 do
  begin
      a := i div 2;
      for j:=1 to IM.ancho-2 do
      begin
          b := j div 2;
          M2.M[a][b][0] := (IM.M[i-1][j][0] + IM.M[i][j-1][0] + IM.M[i+1][j][0] + IM.M[i][j+1][0] + IM.M[i-1][j-1][0] + IM.M[i-1][j+1][0] + IM.M[i+1][j-1][0] + IM.M[i+1][j+1][0])/8.0;
          M2.M[a][b][1] := (IM.M[i-1][j][1] + IM.M[i][j-1][1] + IM.M[i+1][j][1] + IM.M[i][j+1][1] + IM.M[i-1][j-1][1] + IM.M[i-1][j+1][1] + IM.M[i+1][j-1][1] + IM.M[i+1][j+1][1])/8.0;
          M2.M[a][b][2] := (IM.M[i-1][j][2] + IM.M[i][j-1][2] + IM.M[i+1][j][2] + IM.M[i][j+1][2] + IM.M[i-1][j-1][2] + IM.M[i-1][j+1][2] + IM.M[i+1][j-1][2] + IM.M[i+1][j+1][2])/8.0;
      end;
  end;
  SetLength(IM.M, M2.alto, M2.ancho, 3);
  IM.alto := M2.alto;
  IM.ancho := M2.ancho;
  matFull(M2,IM);
  BM.SetSize(M2.ancho, M2.alto);
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
end;

procedure TForm1.EscaladoLazyLibreClick(Sender: TObject);
var
  P,anchot,altot,i,j,jt,it:Integer;
  E,proi,proj:Double;
begin
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Configurando formulario externo
       Form6.Porcentaje.Visible:= true;
       Form6.Label1.Visible:= true;
       Form6.Izquierda.Visible:= false;
       Form6.Derecha.Visible:= false;
       Form6.ShowModal;
       //Aplicando Filtro
       P:=Form6.Porcentaje.Position;
       E:=P/100;
       altot:=round(IM.alto*E);
       anchot:=round(IM.ancho*E);
       proi:=IM.alto/(IM.alto*E);
       proj:=IM.ancho/(IM.ancho*E);
       SetLength(M2.M,altot,anchot,3);
       M2.ancho:=anchot;
       M2.alto:=altot;

       for i:=0 to M2.alto-1 do
       begin
         for j:=0 to M2.ancho-1 do
         begin
            jt:=round(j*proj);
            it:=round(i*proi);
            if jt= IM.ancho then
               jt:=jt-1;
            if it= IM.alto then
               it:=it-1;

            M2.M[i][j][0]:=IM.M[it][jt][0];
            M2.M[i][j][1]:=IM.M[it][jt][1];
            M2.M[i][j][2]:=IM.M[it][jt][2];
         end;
       end;
       SetLength(IM.M, M2.alto, M2.ancho, 3);
       IM.alto := M2.alto;
       IM.ancho := M2.ancho;
       matFull(M2,IM);
       BM.SetSize(M2.ancho, M2.alto);
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciando formulario externo
       Form6.Porcentaje.Visible:= false;
       Form6.Label1.Visible:= false;
       Form6.Izquierda.Visible:= true;
       Form6.Derecha.Visible:= true;
       Form6.Porcentaje.Position:=0;
       Form6.Label1.Caption:='0';
end;

procedure TForm1.ReflexionHorizontalClick(Sender: TObject);
var
  i,j:Integer;
begin

         //GuardarImagenAntesDeAplicarFiltro
         IMaux.alto := BM.Height;
         IMaux.ancho := BM.Width;
         SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
         bm2mat(BM,IMaux);
         //AplicandoFiltro
         for i:=0 to IM.alto-1 do
         begin
             for j:=0 to IM.ancho-1 do
             begin
                 M2.M[i][j][0] := IM.M[i][IM.ancho-1-j][0];
                 M2.M[i][j][1] := IM.M[i][IM.ancho-1-j][1];
                 M2.M[i][j][2] := IM.M[i][IM.ancho-1-j][2];
             end;
         end;
         matFull(M2, IM);
         mat2bm(IM, BM);
         Image1.Picture.Bitmap.Assign(BM);
         //GuardarImagenConFiltroAplicado
         IMaux2.alto := BM.Height;
         IMaux2.ancho := BM.Width;
         SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
         bm2mat(BM,IMaux2);
end;

procedure TForm1.ReflexionVerticalClick(Sender: TObject);
var
  i,j:Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
         IMaux.alto := BM.Height;
         IMaux.ancho := BM.Width;
         SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
         bm2mat(BM,IMaux);
         //AplicandoFiltro
         for i:=0 to IM.alto-1 do
         begin
             for j:=0 to IM.ancho-1 do
             begin
                 M2.M[i][j][0] := IM.M[IM.alto-1-i][j][0];
                 M2.M[i][j][1] := IM.M[IM.alto-1-i][j][1];
                 M2.M[i][j][2] := IM.M[IM.alto-1-i][j][2];
             end;
         end;
         matFull(M2, IM);
         mat2bm(IM, BM);
         Image1.Picture.Bitmap.Assign(BM);
         //GuardarImagenConFiltroAplicado
         IMaux2.alto := BM.Height;
         IMaux2.ancho := BM.Width;
         SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
         bm2mat(BM,IMaux2);
end;

procedure TForm1.Rotacion90gClick(Sender: TObject);
var
    i,j : Integer;
begin
    //GuardarImagenAntesDeAplicarFiltro
    IMaux.alto := BM.Height;
    IMaux.ancho := BM.Width;
    SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
    bm2mat(BM,IMaux);
    Form6.ShowModal;
    //Aplicando filtro
    SetLength(M2.M,IM.ancho,IM.alto,3);
    M2.ancho:=IM.alto;
    M2.alto:=IM.ancho;
    if Form6.Izquierda.Checked then
    begin
      for i:=0 to IM.alto-1 do
      begin
           for j:=0 to IM.ancho-1 do
           begin
                M2.M[M2.alto-1-j][i][0]:=IM.M[i][j][0];
                M2.M[M2.alto-1-j][i][1]:=IM.M[i][j][1];
                M2.M[M2.alto-1-j][i][2]:=IM.M[i][j][2];
           end;
      end;
    end
    else if Form6.Derecha.Checked then
    begin
         for i:=0 to IM.alto-1 do
         begin
           for j:=0 to IM.ancho-1 do
           begin
              M2.M[j][M2.ancho-1-i][0]:=IM.M[i][j][0];
              M2.M[j][M2.ancho-1-i][1]:=IM.M[i][j][1];
              M2.M[j][M2.ancho-1-i][2]:=IM.M[i][j][2];
           end;
         end;
    end;
    SetLength(IM.M, M2.alto, M2.ancho, 3);
    IM.alto := M2.alto;
    IM.ancho := M2.ancho;
    matFull(M2,IM);
    BM.SetSize(M2.ancho, M2.alto);
    mat2bm(IM, BM);
    Image1.Picture.Bitmap.Assign(BM);
    StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
    //GuardarImagenConFiltroAplicado
    IMaux2.alto := BM.Height;
    IMaux2.ancho := BM.Width;
    SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
    bm2mat(BM,IMaux2);
end;

procedure TForm1.Rotacion180gClick(Sender: TObject);
var
  i,j:Integer;
begin
    //GuardarImagenAntesDeAplicarFiltro
    IMaux.alto := BM.Height;
    IMaux.ancho := BM.Width;
    SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
    bm2mat(BM,IMaux);
    for i:=0 to IM.alto-1 do
    begin
         for j:=0 to IM.ancho-1 do
         begin
            M2.M[M2.alto-1-i][M2.ancho-1-j][0]:=IM.M[i][j][0];
            M2.M[M2.alto-1-i][M2.ancho-1-j][1]:=IM.M[i][j][1];
            M2.M[M2.alto-1-i][M2.ancho-1-j][2]:=IM.M[i][j][2];
         end;
    end;
    SetLength(IM.M, M2.alto, M2.ancho, 3);
    IM.alto := M2.alto;
    IM.ancho := M2.ancho;
    matFull(M2,IM);
    BM.SetSize(M2.ancho, M2.alto);
    mat2bm(IM, BM);
    Image1.Picture.Bitmap.Assign(BM);
    StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
    //GuardarImagenConFiltroAplicado
    IMaux2.alto := BM.Height;
    IMaux2.ancho := BM.Width;
    SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
    bm2mat(BM,IMaux2);
end;

procedure TForm1.EscaladoLazyx2Click(Sender: TObject);
var
  i,j,a,b:Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  SetLength(M2.M, IM.alto*2, IM.ancho*2, 3);
  M2.alto := IM.alto*2;
  M2.ancho := IM.ancho*2;
  for i:=0 to IM.alto-1 do
  begin
      a := i*2;
      for j:=0 to IM.ancho-1 do
      begin
          b := j*2;
          M2.M[a][b][0] := IM.M[i][j][0];
          M2.M[a][b][1] := IM.M[i][j][1];
          M2.M[a][b][2] := IM.M[i][j][2];

          M2.M[a][b+1][0] := IM.M[i][j][0];
          M2.M[a][b+1][1] := IM.M[i][j][1];
          M2.M[a][b+1][2] := IM.M[i][j][2];

          M2.M[a+1][b][0] := IM.M[i][j][0];
          M2.M[a+1][b][1] := IM.M[i][j][1];
          M2.M[a+1][b][2] := IM.M[i][j][2];

          M2.M[a+1][b+1][0] := IM.M[i][j][0];
          M2.M[a+1][b+1][1] := IM.M[i][j][1];
          M2.M[a+1][b+1][2] := IM.M[i][j][2];
      end;
  end;
  SetLength(IM.M, M2.alto, M2.ancho, 3);
  IM.alto := M2.alto;
  IM.ancho := M2.ancho;
  matFull(M2,IM);
  BM.SetSize(M2.ancho, M2.alto);
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
end;

procedure TForm1.EscaladoLazyE2Click(Sender: TObject);
var
  i,j,a,b:Integer;
begin
  //GuardarImagenAntesDeAplicarFiltro
  IMaux.alto := BM.Height;
  IMaux.ancho := BM.Width;
  SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
  bm2mat(BM,IMaux);
  //AplicandoFiltro
  SetLength(M2.M, IM.alto div 2, IM.ancho div 2, 3);
  M2.alto := IM.alto div 2;
  M2.ancho := IM.ancho div 2;
  for i:=0 to IM.alto-2 do
  begin
      a := i div 2;
      for j:=0 to IM.ancho-2 do
      begin
          b := j div 2;
          M2.M[a][b][0] := IM.M[i][j][0];
          M2.M[a][b][1] := IM.M[i][j][1];
          M2.M[a][b][2] := IM.M[i][j][2];
      end;
  end;
  SetLength(IM.M, M2.alto, M2.ancho, 3);
  IM.alto := M2.alto;
  IM.ancho := M2.ancho;
  matFull(M2,IM);
  BM.SetSize(M2.ancho, M2.alto);
  mat2bm(IM, BM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(M2.ancho) + 'x' + IntToStr(M2.alto) + 'pixeles';
  //GuardarImagenConFiltroAplicado
  IMaux2.alto := BM.Height;
  IMaux2.ancho := BM.Width;
  SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
  bm2mat(BM,IMaux2);
end;

procedure TForm1.NegativoClick(Sender: TObject);
var
    i,j: Integer;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.TrackBar1.Visible:= false;
       Form2.ShowModal;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //AplicandoFiltro
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                If Form2.CheckBox1.Checked then
                   IM.M[i][j][0] := Lambda - (IM.M[i][j][0]);
                If Form2.CheckBox2.Checked then
                   IM.M[i][j][1] := Lambda - (IM.M[i][j][1]);
                If Form2.CheckBox3.Checked then
                   IM.M[i][j][2] := Lambda - (IM.M[i][j][2]);
           end;
       end;
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.Label1.Caption:= 'alpha';
       Form2.TrackBar1.Position:=100;
       Form2.CheckBox1.Checked:= false;
       Form2.CheckBox2.Checked:= false;
       Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.OperadorLapGaussianaClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
  begin
       //ConfigurandoVentanaExterna
       Form5.RadioButton1.Caption:='Horizontal/Vertical';
       Form5.RadioButton2.Caption:='Diagonales';
       Form5.RadioButton3.Caption:='Completo';
       Form5.RadioButton4.Visible:= false;
       Form5.RadioButton5.Visible:= false;
       Form5.ShowModal;
       Form5.RadioButton4.Visible:= true;
       Form5.RadioButton5.Visible:= true;
       Form5.RadioButton1.Caption:='Horizontal';
       Form5.RadioButton2.Caption:='Vertical';
       Form5.RadioButton3.Caption:='45°';
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Aplicando escala de grises
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
                IM.M[i][j][0] := round(gris);
                IM.M[i][j][1] := round(gris);
                IM.M[i][j][2] := round(gris);
           end;
       end;
       //Llenando matriz KxK
       k := 3;
       //MKxK para ReflexionHorizontal/Vertical
       if (Form5.RadioButton1.Checked) then
       begin
         MkxK[0][0]:=  1; MkxK[0][1]:= -2; MkxK[0][2]:=  1;
         MkxK[1][0]:= -2; MkxK[1][1]:=  4; MkxK[1][2]:= -2;
         MkxK[2][0]:=  1; MkxK[2][1]:= -2; MkxK[2][2]:=  1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Diagonales
       if (Form5.RadioButton2.Checked) then
       begin
         MkxK[0][0]:= -2; MkxK[0][1]:= 1; MkxK[0][2]:= -2;
         MkxK[1][0]:=  1; MkxK[1][1]:= 4; MkxK[1][2]:= 1;
         MkxK[2][0]:= -2; MkxK[2][1]:= 1; MkxK[2][2]:= -2;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Completo
       if (Form5.RadioButton3.Checked) then
       begin
         MkxKD1[0][0]:=  1; MkxKD1[0][1]:= -2; MkxKD1[0][2]:=  1;
         MkxKD1[1][0]:= -2; MkxKD1[1][1]:=  4; MkxKD1[1][2]:= -2;
         MkxKD1[2][0]:=  1; MkxKD1[2][1]:= -2; MkxKD1[2][2]:=  1;

         MkxKD2[0][0]:= -2; MkxKD2[0][1]:= 1; MkxKD2[0][2]:= -2;
         MkxKD2[1][0]:=  1; MkxKD2[1][1]:= 4; MkxKD2[1][2]:= 1;
         MkxKD2[2][0]:= -2; MkxKD2[2][1]:= 1; MkxKD2[2][2]:= -2;

         convolucionBordesLaplacianos(IM,M2);
       end;
       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciando Formulario
       Form5.RadioButton1.Checked:= false;
       Form5.RadioButton2.Checked:= false;
       Form5.RadioButton3.Checked:= false;
end;

procedure TForm1.OperadorLaplacianoClick(Sender: TObject);
var
  i,j: Integer;
  gris: Double;
  begin
       //ConfigurandoVentanaExterna
       Form5.RadioButton1.Caption:='Horizontal/Vertical';
       Form5.RadioButton2.Caption:='Diagonales';
       Form5.RadioButton3.Caption:='Completo';
       Form5.RadioButton4.Visible:= false;
       Form5.RadioButton5.Visible:= false;
       Form5.ShowModal;
       Form5.RadioButton4.Visible:= true;
       Form5.RadioButton5.Visible:= true;
       Form5.RadioButton1.Caption:='Horizontal';
       Form5.RadioButton2.Caption:='Vertical';
       Form5.RadioButton3.Caption:='45°';
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //Aplicando escala de grises
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                gris := (IM.M[i][j][0] + IM.M[i][j][1] + IM.M[i][j][2])/3.0;
                IM.M[i][j][0] := round(gris);
                IM.M[i][j][1] := round(gris);
                IM.M[i][j][2] := round(gris);
           end;
       end;
       //Llenando matriz KxK
       k := 3;
       //MKxK para ReflexionHorizontal/Vertical
       if (Form5.RadioButton1.Checked) then
       begin
         MkxK[0][0]:=  0; MkxK[0][1]:= -1; MkxK[0][2]:=  0;
         MkxK[1][0]:= -1; MkxK[1][1]:=  4; MkxK[1][2]:= -1;
         MkxK[2][0]:=  0; MkxK[2][1]:= -1; MkxK[2][2]:=  0;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Diagonales
       if (Form5.RadioButton2.Checked) then
       begin
         MkxK[0][0]:= -1; MkxK[0][1]:= 0; MkxK[0][2]:= -1;
         MkxK[1][0]:=  0; MkxK[1][1]:= 4; MkxK[1][2]:= 0;
         MkxK[2][0]:= -1; MkxK[2][1]:= 0; MkxK[2][2]:= -1;

         convolucion(IM,M2,(k div 2));
       end;
       //MKxK para Completo
       if (Form5.RadioButton3.Checked) then
       begin
         MkxKD1[0][0]:=  0; MkxKD1[0][1]:= -1; MkxKD1[0][2]:=  0;
         MkxKD1[1][0]:= -1; MkxKD1[1][1]:=  4; MkxKD1[1][2]:= -1;
         MkxKD1[2][0]:=  0; MkxKD1[2][1]:= -1; MkxKD1[2][2]:=  0;

         MkxKD2[0][0]:= -1; MkxKD2[0][1]:= 0; MkxKD2[0][2]:= -1;
         MkxKD2[1][0]:=  0; MkxKD2[1][1]:= 4; MkxKD2[1][2]:= 0;
         MkxKD2[2][0]:= -1; MkxKD2[2][1]:= 0; MkxKD2[2][2]:= -1;

         convolucionBordesLaplacianos(IM,M2);
       end;
       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciando Formulario
       Form5.RadioButton1.Checked:= false;
       Form5.RadioButton2.Checked:= false;
       Form5.RadioButton3.Checked:= false;
end;

procedure TForm1.PromedioDireccionalClick(Sender: TObject);
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.Label3.Visible:= true;
       Form2.SpinEdit1.Visible:= true;
       Form2.TrackBar1.Visible:= false;
       Form2.CheckBox1.Visible:= false;
       Form2.CheckBox2.Visible:= false;
       Form2.CheckBox3.Visible:= false;
       Form2.ShowModal;
       Form2.SpinEdit1.Visible:= false;
       Form2.Label3.Visible:= false;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       Form2.CheckBox1.Visible:= True;
       Form2.CheckBox2.Visible:= True;
       Form2.CheckBox3.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);

       convolucionPD(IM,M2,(k div 2));

       mat2mat(M2,IM,(k div 2));
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.SpinEdit1.Value:=3;
end;

procedure TForm1.RotacionLibreClick(Sender: TObject);
var
    grados: Integer;
    radianes: Double;
    i,j: Integer;
    xR,yR: Double;
    it, jt: Integer;
    dxc,dyc :  Double;
    ic, jc: Integer;
    minI, minJ: Integer;
    maxI, maxJ: Integer;
begin
    //GuardarImagenAntesDeAplicarFiltro
    IMaux.alto := BM.Height;
    IMaux.ancho := BM.Width;
    SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
    bm2mat(BM,IMaux);
    //Configurando formulario externo
    Form6.Porcentaje.Visible:= true;
    Form6.Porcentaje.Max:=360;
    Form6.Label1.Visible:= true;
    Form6.Izquierda.Visible:= false;
    Form6.Derecha.Visible:= false;
    Form6.ShowModal;
    //Aplicando Filtro
        grados := Form6.Porcentaje.Position;
        radianes := grados*(pi/180.0);

        ic := round(IM.alto/2.0);
        jc := round(IM.ancho/2.0);

        minI := 1000;
        minJ := 1000;

        maxI := -1000;
        maxJ := -1000;

        i:=0;
        j:=0;
        dxc :=  jc*cos(radianes)+ ic*sin(radianes);
        dyc :=  -jc*sin(radianes)+ ic*cos(radianes);
        xR:= round(j*cos(radianes)+ i*sin(radianes)  + dxc);
        yR:= round(-j*sin(radianes)+ i*cos(radianes) + dyc);

        minI:= min(minI, round(yR));
        minJ:= min(minJ, round(xR));
        maxI:= max(maxI, round(yR));
        maxJ:= max(maxJ, round(xR));


        i:=0;
        j:=IM.ancho-1;
        dxc :=  jc*cos(radianes)+ ic*sin(radianes);
        dyc :=  -jc*sin(radianes)+ ic*cos(radianes);

        xR:= round(j*cos(radianes)+ i*sin(radianes)  + dxc);
        yR:= round(-j*sin(radianes)+ i*cos(radianes) + dyc);

        minI:= min(minI, round(yR));
        minJ:= min(minJ, round(xR));
        maxI:= max(maxI, round(yR));
        maxJ:= max(maxJ, round(xR));

        i:=IM.alto-1;
        j:=0;
        dxc :=  jc*cos(radianes)+ ic*sin(radianes);
        dyc :=  -jc*sin(radianes)+ ic*cos(radianes);

        xR:= round(j*cos(radianes)+ i*sin(radianes)  + dxc);
        yR:= round(-j*sin(radianes)+ i*cos(radianes) + dyc);
        minI:= min(minI, round(yR));
        minJ:= min(minJ, round(xR));
        maxI:= max(maxI, round(yR));
        maxJ:= max(maxJ, round(xR));

        i:=IM.alto-1;
        j:=IM.ancho-1;
        dxc :=  jc*cos(radianes)+ ic*sin(radianes);
        dyc :=  -jc*sin(radianes)+ ic*cos(radianes);

        xR:= round(j*cos(radianes)+ i*sin(radianes)  + dxc);
        yR:= round(-j*sin(radianes)+ i*cos(radianes) + dyc);
        minI:= round(min(minI, round(yR)));
        minJ:= round(min(minJ, round(xR)));
        maxI:= round(max(maxI, round(yR)));
        maxJ:= round(max(maxJ, round(xR)));

        M2.alto:=(maxI-minI)+1;
        M2.ancho:=(maxJ-minJ)+1;
        SetLength(M2.M, M2.alto, M2.ancho, 3);

        for i:=0 to IM.alto-1 do
        begin
            for j:=0 to IM.ancho-1 do
            begin

              dxc :=  jc*cos(radianes)+ ic*sin(radianes);
              dyc :=  -jc*sin(radianes)+ ic*cos(radianes);

              xR:= round(j*cos(radianes)+ i*sin(radianes)  + dxc);
              yR:= round(-j*sin(radianes)+ i*cos(radianes) + dyc);

              jt:= round(xR)-minJ;
              it:= round(yR)-minI;

              if (0<=it)  and (it<M2.alto-1) and (0<=jt)  and (jt<M2.ancho-1) then
              begin
                M2.M[it][jt][0] := IM.M[i][j][0];
                M2.M[it][jt][1] := IM.M[i][j][1];
                M2.M[it][jt][2] := IM.M[i][j][2];
              end;
            end;
        end;
        SetLength(IM.M, M2.alto, M2.ancho, 3);
        IM.ancho:=M2.ancho;
        IM.alto:=M2.alto;
        mat2mat(M2, IM);
        BM.SetSize(M2.ancho,M2.alto);
        mat2bm(IM, BM);
        Image1.Picture.Bitmap.Assign(BM);
end;

procedure TForm1.SepiaClick(Sender: TObject);
var
  i,j,x: Integer;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 200;
     Form2.TrackBar1.Min:= 0;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
             begin
                If Form2.CheckBox1.Checked then
                   x := round( 0.393*alpha*IM.M[i][j][0] + 0.769*alpha*IM.M[i][j][1] + 0.189*alpha*IM.M[i][j][2] );
                   IM.M[i][j][0] := x;
                   if(x>255) then
                      IM.M[i][j][0] := 255;
                   if (x<0) then
                      IM.M[i][j][0] := 0;
                If Form2.CheckBox2.Checked then
                   x := round( 0.349*alpha*IM.M[i][j][0] + 0.686*alpha*IM.M[i][j][1] + 0.168*alpha*IM.M[i][j][2] );
                   IM.M[i][j][1] := x;
                   if(x>255) then
                      IM.M[i][j][1] := 255;
                   if (x<0) then
                      IM.M[i][j][1] := 0;
                If Form2.CheckBox3.Checked then
                   x := round( 0.272*alpha*IM.M[i][j][0] + 0.554*alpha*IM.M[i][j][1] + 0.131*alpha*IM.M[i][j][2] );
                   IM.M[i][j][2] := x;
                   if(x>255) then
                      IM.M[i][j][2] := 255;
                   if (x<0) then
                      IM.M[i][j][2] := 0;
             end;
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.PolinomialClick(Sender: TObject);
var
    i,j: Integer;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.TrackBar1.Visible:= false;
       Form2.ShowModal;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //AplicandoFiltro
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                If Form2.CheckBox1.Checked then
                   IM.M[i][j][0] := round( Lambda/2 + (4/power(Lambda,2)) * power(IM.M[i][j][0]-(Lambda/2),3));
                If Form2.CheckBox2.Checked then
                   IM.M[i][j][1] := round( Lambda/2 + (4/power(Lambda,2)) * power(IM.M[i][j][1]-(Lambda/2),3));
                If Form2.CheckBox3.Checked then
                   IM.M[i][j][2] := round( Lambda/2 + (4/power(Lambda,2)) * power(IM.M[i][j][2]-(Lambda/2),3));
           end;
       end;
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.Label1.Caption:= 'alpha';
       Form2.TrackBar1.Position:=100;
       Form2.CheckBox1.Checked:= false;
       Form2.CheckBox2.Checked:= false;
       Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.ScrollBox1Click(Sender: TObject);
begin

end;

procedure TForm1.SenoClick(Sender: TObject);
var
    i,j: Integer;
  begin
       //ConfigurandoVentanaExterna
       Form2.Label1.Visible:= false;
       Form2.TrackBar1.Visible:= false;
       Form2.ShowModal;
       Form2.Label1.Visible:= True;
       Form2.TrackBar1.Visible:= True;
       //GuardarImagenAntesDeAplicarFiltro
       IMaux.alto := BM.Height;
       IMaux.ancho := BM.Width;
       SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
       bm2mat(BM,IMaux);
       //AplicandoFiltro
       for i:=0 to IM.alto-1 do
       begin
           for j:=0 to IM.ancho-1 do
           begin
                If Form2.CheckBox1.Checked then
                   IM.M[i][j][0] := round( Lambda*sin( (Pi*IM.M[i][j][0]) / (2*Lambda) ));
                If Form2.CheckBox2.Checked then
                   IM.M[i][j][1] := round( Lambda*sin( (Pi*IM.M[i][j][1]) / (2*Lambda) ));
                If Form2.CheckBox3.Checked then
                   IM.M[i][j][2] := round( Lambda*sin( (Pi*IM.M[i][j][2]) / (2*Lambda) ));
           end;
       end;
       mat2bm(IM, BM);
       Image1.Picture.Bitmap.Assign(BM);
       //GuardarImagenConFiltroAplicado
       IMaux2.alto := BM.Height;
       IMaux2.ancho := BM.Width;
       SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
       bm2mat(BM,IMaux2);
       //Reiniciar Formulario Configuraciones
       Form2.Label1.Caption:= 'alpha';
       Form2.TrackBar1.Position:=100;
       Form2.CheckBox1.Checked:= false;
       Form2.CheckBox2.Checked:= false;
       Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.SenoidalAltoClick(Sender: TObject);
var
  i,j: Integer;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 4000;
     Form2.TrackBar1.Min:= 10;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round( IM.M[i][j][0] - alpha*sin((2*Pi*IM.M[i][j][0])/Lambda));
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round( IM.M[i][j][1] - alpha*sin((2*Pi*IM.M[i][j][1])/Lambda));
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round( IM.M[i][j][2] - alpha*sin((2*Pi*IM.M[i][j][2])/Lambda));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;

end;

procedure TForm1.SenoidalBajoClick(Sender: TObject);
var
  i,j: Integer;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 4000;
     Form2.TrackBar1.Min:= 10;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := round( IM.M[i][j][0] + alpha*sin((2*Pi*IM.M[i][j][0])/Lambda));
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := round( IM.M[i][j][1] + alpha*sin((2*Pi*IM.M[i][j][1])/Lambda));
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := round( IM.M[i][j][2] + alpha*sin((2*Pi*IM.M[i][j][2])/Lambda));
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.TrackBar1.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
end;

procedure TForm1.SuavizadoClick(Sender: TObject);
begin

end;

procedure TForm1.ToolBar1Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
     AbrirClick(Sender);
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
     GuardarClick(Sender);
end;

procedure TForm1.DeshacerClick(Sender: TObject);
begin
  BM.SetSize(IMaux.ancho, IMaux.alto);
  IM.alto := IMaux.alto;
  IM.ancho := IMaux.ancho;
  SetLength(IM.M, IM.alto, IM.ancho, 3);
  mat2bm(IMaux, BM);
  bm2mat(BM,IM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(IM.ancho) + 'x' + IntToStr(IM.alto) + 'pixeles';
end;

procedure TForm1.RehacerClick(Sender: TObject);
begin
  BM.SetSize(IMaux2.ancho, IMaux2.alto);
  IM.alto := IMaux2.alto;
  IM.ancho := IMaux2.ancho;
  SetLength(IM.M, IM.alto, IM.ancho, 3);
  mat2bm(IMaux2, BM);
  bm2mat(BM,IM);
  Image1.Picture.Bitmap.Assign(BM);
  StatusBar1.Panels[0].Text := IntToStr(IM.ancho) + 'x' + IntToStr(IM.alto) + 'pixeles';
end;

procedure TForm1.UmbralGrisesClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 12700;
     Form2.TrackBar1.Min:= 1;
     Form2.TrackBar2.Visible:= true;
     Form2.Label2.Visible:= true;
     Form2.TrackBar2.Max:=25500;
     Form2.TrackBar2.Min:=12800;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              aux :=IM.M[i][j][0];//Otro caso
              If (IM.M[i][j][0]<=alpha) or (IM.M[i][j][0]>=beta) then
                aux:= round(Lambda);
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := aux;
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := aux;
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := aux;
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.Label2.Caption:= 'beta';
     Form2.TrackBar1.Position:=100;
     Form2.TrackBar2.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
     Form2.TrackBar2.Visible:= false;
     Form2.Label2.Visible:= false;
end;

procedure TForm1.UmbralInvertidoClick(Sender: TObject);
var
  i,j: Integer;
  aux: Double;
  begin
     //ConfigurandoVentanaExterna
     Form2.TrackBar1.Max:= 12700;
     Form2.TrackBar1.Min:= 1;
     Form2.TrackBar2.Visible:= true;
     Form2.Label2.Visible:= true;
     Form2.TrackBar2.Max:=25500;
     Form2.TrackBar2.Min:=12800;
     Form2.ShowModal;
     //GuardarImagenAntesDeAplicarFiltro
     IMaux.alto := BM.Height;
     IMaux.ancho := BM.Width;
     SetLength(IMaux.M, IMaux.alto, IMaux.ancho, 3);
     bm2mat(BM,IMaux);
     //AplicandoFiltro
     for i:=0 to IM.alto-1 do
     begin
         for j:=0 to IM.ancho-1 do
         begin
              aux :=IM.M[i][j][0];//Otro caso
              If (IM.M[i][j][0]<=alpha) or (IM.M[i][j][0]>=beta) then
                aux:= 0;
              If Form2.CheckBox1.Checked then
                 IM.M[i][j][0] := aux;
              If Form2.CheckBox2.Checked then
                 IM.M[i][j][1] := aux;
              If Form2.CheckBox3.Checked then
                 IM.M[i][j][2] := aux;
         end;
     end;
     mat2bm(IM, BM);
     Image1.Picture.Bitmap.Assign(BM);
     //GuardarImagenConFiltroAplicado
     IMaux2.alto := BM.Height;
     IMaux2.ancho := BM.Width;
     SetLength(IMaux2.M, IMaux2.alto, IMaux2.ancho, 3);
     bm2mat(BM,IMaux2);
     //Reiniciar Formulario Configuraciones
     Form2.Label1.Caption:= 'alpha';
     Form2.Label2.Caption:= 'beta';
     Form2.TrackBar1.Position:=100;
     Form2.TrackBar2.Position:=100;
     Form2.CheckBox1.Checked:= false;
     Form2.CheckBox2.Checked:= false;
     Form2.CheckBox3.Checked:= false;
     Form2.TrackBar2.Visible:= false;
     Form2.Label2.Visible:= false;
end;

end.

