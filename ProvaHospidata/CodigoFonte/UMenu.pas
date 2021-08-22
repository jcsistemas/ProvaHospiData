unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,
  acPNG, MidasLib;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    R1: TMenuItem;
    S1: TMenuItem;
    R2: TMenuItem;
    F1: TMenuItem;
    F2: TMenuItem;
    F3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    btnFuncionarios: TSpeedButton;
    Panel3: TPanel;
    btnDepartamentos: TSpeedButton;
    Panel4: TPanel;
    btnFuncoes: TSpeedButton;
    Panel5: TPanel;
    btnSair: TSpeedButton;
    Image1: TImage;
    Panel6: TPanel;
    btnRelatorioFunc: TSpeedButton;
    procedure S1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure F3Click(Sender: TObject);
    procedure btnDepartamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnFuncoesClick(Sender: TObject);
    procedure btnRelatorioFuncClick(Sender: TObject);
    procedure R2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses UDM, UDepartamento, UFuncionario, UFuncao,
  UFiltroRelatorioListaFuncionario;

{$R *.dfm}

procedure TFMenu.btnDepartamentosClick(Sender: TObject);
begin
   FDepartamento := TFDepartamento.Create(Self);
   FDepartamento.ShowModal;
end;

procedure TFMenu.btnFuncionariosClick(Sender: TObject);
begin
   FFuncionario := TFFuncionario.Create(Self);
   FFuncionario.ShowModal;
end;

procedure TFMenu.btnFuncoesClick(Sender: TObject);
begin
   FFuncao := TFFuncao.Create(Self);
   FFuncao.ShowModal;
end;

procedure TFMenu.btnRelatorioFuncClick(Sender: TObject);
begin
   FFiltroRelatorioListaFuncionario := TFFiltroRelatorioListaFuncionario.Create(Self);
   FFiltroRelatorioListaFuncionario.ShowModal;
end;

procedure TFMenu.btnSairClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TFMenu.F1Click(Sender: TObject);
begin
   if(btnDepartamentos.Enabled = true)then
   begin
      btnDepartamentos.Click;
   end;
end;

procedure TFMenu.F2Click(Sender: TObject);
begin
   if(btnFuncoes.Enabled = true)then
   begin
      btnFuncoes.Click;
   end;
end;

procedure TFMenu.F3Click(Sender: TObject);
begin
   if(btnFuncionarios.Enabled = true)then
   begin
      btnFuncionarios.Click;
   end;
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
   DM := TDM.Create(Self);
   DM.ZConnection1.Connected := true;
   DM.TDepartamento.Open;
   DM.TFuncao.Open;
   DM.TEmpregado.Open;
end;

procedure TFMenu.R2Click(Sender: TObject);
begin
   FFiltroRelatorioListaFuncionario := TFFiltroRelatorioListaFuncionario.Create(Self);
   FFiltroRelatorioListaFuncionario.ShowModal;
end;

procedure TFMenu.S1Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
