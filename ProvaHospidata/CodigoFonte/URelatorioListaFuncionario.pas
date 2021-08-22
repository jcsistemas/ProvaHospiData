unit URelatorioListaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, Vcl.ExtCtrls, QuickRpt,
  QRCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, UDM;

type
  TFRelatorioListaFuncionario = class(TForm)
    QuickRep1: TQuickRep;
    QRPDFFilter1: TQRPDFFilter;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    txtDescricao: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    txtQuantidadeFuncionarios: TQRLabel;
    txtSomaSalarios: TQRLabel;
    QRelatorio: TZQuery;
    DSRelatorio: TDataSource;
    QRelatorioid_empregado: TIntegerField;
    QRelatoriocod_departamento: TIntegerField;
    QRelatoriocod_emp_funcao: TIntegerField;
    QRelatorionm_empregado: TWideStringField;
    QRelatorionm_funcao: TWideStringField;
    QRelatoriodata_admissao: TDateField;
    QRelatoriosalario: TFloatField;
    QRelatoriocomissao: TFloatField;
    QRelatorionm_departamento: TWideStringField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioListaFuncionario: TFRelatorioListaFuncionario;
  qtdfuncionarios: Integer;
  somasalarios: Double;

implementation

{$R *.dfm}

procedure TFRelatorioListaFuncionario.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   qtdfuncionarios := qtdfuncionarios + 1;
   somasalarios := somasalarios + QRelatoriosalario.Value;
end;

procedure TFRelatorioListaFuncionario.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   txtQuantidadeFuncionarios.Caption := 'Quantidade de Funcionários Listados: '+IntToStr(qtdfuncionarios);
   txtSomaSalarios.Caption := 'Soma de Salários Listados: '+FormatFloat('R$###,###,##0.00',somasalarios);
end;

procedure TFRelatorioListaFuncionario.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
   i: Integer;
begin
   for i := 0 to Screen.FormCount - 1 do
   if Screen.Forms[i].ClassName = 'TQRStandardPreview' then
   begin
      Screen.Forms[i].BorderIcons:= Screen.Forms[i].BorderIcons-[biMinimize]; //hides minimize button
      Screen.Forms[i].BorderIcons:= Screen.Forms[i].BorderIcons-[biMaximize]; //hides maximize button
   end;
   qtdfuncionarios := 0;
   somasalarios := 0;
end;

end.
