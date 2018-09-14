unit UnitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TfrmCalculadora = class(TForm)
    edtResultado: TEdit;
    btLimpar: TButton;
    btDividir: TButton;
    btMultiplicar: TButton;
    bt7: TButton;
    bt4: TButton;
    bt1: TButton;
    bt8: TButton;
    bt5: TButton;
    bt2: TButton;
    bt9: TButton;
    bt6: TButton;
    bt3: TButton;
    btSoma: TButton;
    btSubtrair: TButton;
    bt0: TButton;
    btPonto: TButton;
    btIgual: TButton;
    Label1: TLabel;
    btPorcent: TButton;
    LblSinal: TLabel;
    procedure bt0Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure bt5Click(Sender: TObject);
    procedure bt6Click(Sender: TObject);
    procedure bt7Click(Sender: TObject);
    procedure bt8Click(Sender: TObject);
    procedure bt9Click(Sender: TObject);
    procedure btPontoClick(Sender: TObject);
    procedure btSomaClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure btPorcentClick(Sender: TObject);
    procedure btIgualClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }



  public

  end;

var
  frmCalculadora: TfrmCalculadora;

  valor1, valor2, porcentagem: real;
  tipoconta     : String;



implementation

{$R *.dfm}




procedure TfrmCalculadora.bt0Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'0';
end;

procedure TfrmCalculadora.bt1Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'1';
end;

procedure TfrmCalculadora.bt2Click(Sender: TObject);
begin
    edtResultado.text := edtResultado.text+'2';
end;

procedure TfrmCalculadora.bt3Click(Sender: TObject);
begin
    edtResultado.text := edtResultado.text+'3';
end;

procedure TfrmCalculadora.bt4Click(Sender: TObject);
begin
    edtResultado.text := edtResultado.text+'4';
end;

procedure TfrmCalculadora.bt5Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'5';
end;

procedure TfrmCalculadora.bt6Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'6';
end;

procedure TfrmCalculadora.bt7Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'7';
end;

procedure TfrmCalculadora.bt8Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'8';
end;

procedure TfrmCalculadora.bt9Click(Sender: TObject);
begin
   edtResultado.text := edtResultado.text+'9';
end;

procedure TfrmCalculadora.btDividirClick(Sender: TObject);
begin
    tipoconta := 'Divisao';
    valor1 := StrToFloat(edtResultado.text);
    edtResultado.text := '';
    LblSinal.Caption := '/';
end;

procedure TfrmCalculadora.btIgualClick(Sender: TObject);
begin
   if tipoconta = 'Adicao' then
   begin
      valor2 := StrToFloat (edtResultado.text);
      edtResultado.Text := FloatToStr(valor1 + valor2);
      LblSinal.Caption := '=';
   end;

   if tipoconta = 'Subtracao' then
   begin
      valor2 := StrToFloat (edtResultado.text);
      edtResultado.Text := FloatToStr(valor1 - valor2);
      LblSinal.Caption := '=';
   end;

   if tipoconta = 'Multiplicacao' then
   begin
      valor2 := StrToFloat (edtResultado.text);
      edtResultado.Text := FloatToStr(valor1 * valor2);
      LblSinal.Caption := '=';
   end;

   if tipoconta = 'Divisao' then
   begin
      valor2 := StrToFloat (edtResultado.text);
      edtResultado.Text := FloatToStr(valor1 / valor2);
      LblSinal.Caption := '=';
   end;
end;

procedure TfrmCalculadora.btLimparClick(Sender: TObject);
begin
   tipoconta := '';
   valor1 := 0;
   valor2 := 0;
   edtResultado.text := '';
   LblSinal.Caption := '--';
end;

procedure TfrmCalculadora.btMultiplicarClick(Sender: TObject);
begin
    tipoconta := 'Multiplicacao';
    valor1 := StrToFloat(edtResultado.text);
    edtResultado.text := '';
    LblSinal.Caption := 'X';
end;

procedure TfrmCalculadora.btPontoClick(Sender: TObject);
begin
     edtResultado.text := edtResultado.text+',';
end;

procedure TfrmCalculadora.btPorcentClick(Sender: TObject);
begin
    if tipoconta = 'Adicao' then
    begin
       porcentagem := StrToFloat(edtResultado.text);
       porcentagem := porcentagem/100;
       porcentagem := porcentagem*valor1;
       edtResultado.text := FloatToStr(valor1+porcentagem);
    end;

    if tipoconta = 'Subtracao' then
     begin
       porcentagem := StrToFloat(edtResultado.text);
       porcentagem := porcentagem/100;
       porcentagem := porcentagem*valor1;
       edtResultado.text := FloatToStr(valor1-porcentagem);
     end;
end;

procedure TfrmCalculadora.btSomaClick(Sender: TObject);
begin
    tipoconta := 'Adicao';
    valor1 := StrToFloat(edtResultado.text);
    edtResultado.text := '';
    LblSinal.Caption := '+';
end;

procedure TfrmCalculadora.btSubtrairClick(Sender: TObject);
begin
    tipoconta := 'Subtracao';
    valor1 := StrToFloat(edtResultado.text);
    edtResultado.text := '';
    LblSinal.Caption := '-';
end;

end.
