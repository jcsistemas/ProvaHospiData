unit UFiltroRelatorioListaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, QRPDFFilt,
  URelatorioListaFuncionario;

type
  TFFiltroRelatorioListaFuncionario = class(TForm)
    RadioOrdenar: TRadioGroup;
    Panel1: TPanel;
    btnVisualizar: TSpeedButton;
    btnSair: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnSalvarPDF: TSpeedButton;
    SaveDialog1: TSaveDialog;
    procedure montar_relatorio;
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnSalvarPDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltroRelatorioListaFuncionario: TFFiltroRelatorioListaFuncionario;

implementation

{$R *.dfm}

procedure TFFiltroRelatorioListaFuncionario.btnImprimirClick(Sender: TObject);
begin
   montar_relatorio;
   FRelatorioListaFuncionario.QuickRep1.Prepare;
   FRelatorioListaFuncionario.QuickRep1.Print;
end;

procedure TFFiltroRelatorioListaFuncionario.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFFiltroRelatorioListaFuncionario.btnSalvarPDFClick(Sender: TObject);
begin
   SaveDialog1.Execute;
   if(Length(SaveDialog1.FileName) > 0)then
   begin
      montar_relatorio;
      FRelatorioListaFuncionario.QuickRep1.Prepare;
      FRelatorioListaFuncionario.QuickRep1.ExportToFilter(TQRPDFDocumentFilter.Create(SaveDialog1.FileName));
   end;
end;

procedure TFFiltroRelatorioListaFuncionario.btnVisualizarClick(Sender: TObject);
begin
   montar_relatorio;
   FRelatorioListaFuncionario.QuickRep1.Prepare;
   FRelatorioListaFuncionario.QuickRep1.Preview;
end;

procedure TFFiltroRelatorioListaFuncionario.montar_relatorio;
begin
   FRelatorioListaFuncionario := TFRelatorioListaFuncionario.Create(Self);
   FRelatorioListaFuncionario.QRelatorio.Close;
   FRelatorioListaFuncionario.QRelatorio.SQL.Clear;
   FRelatorioListaFuncionario.QRelatorio.SQL.Add('select empregados.*, departamentos.nm_departamento ');
   FRelatorioListaFuncionario.QRelatorio.SQL.Add('from empregados, departamentos ');
   FRelatorioListaFuncionario.QRelatorio.SQL.Add('where empregados.cod_departamento = departamentos.id_departamento ');
   case RadioOrdenar.ItemIndex of
       0: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.id_empregado ');
       1: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.nm_empregado ');
       2: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.nm_departamento ');
       3: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.nm_funcao ');
       4: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.data_admissao ');
       5: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.salario ');
       6: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.salario desc ');
       7: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.comissao ');
       8: FRelatorioListaFuncionario.QRelatorio.SQL.Add('order by empregados.comissao desc ');
   end;
   FRelatorioListaFuncionario.QRelatorio.Open;
   case RadioOrdenar.ItemIndex of
       0: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pelo ID.';
       1: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pelo nome do empregado.';
       2: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pelo nome do departamento.';
       3: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pelo nome da função.';
       4: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pela data de admissão.';
       5: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pelo salário em ordem ascendente.';
       6: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pelo salário em ordem descendente.';
       7: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pela porcentagem de comissão ascendente.';
       8: FRelatorioListaFuncionario.txtDescricao.Caption := 'Relatório de listagem de empregados ordenados pela porcentagem de comissão descendente.';
   end;
end;

end.
