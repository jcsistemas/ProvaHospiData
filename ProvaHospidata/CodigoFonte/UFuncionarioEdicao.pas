unit UFuncionarioEdicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFuncionario, UDM, Vcl.Buttons,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, UDepartamento, UFuncao;

type
  TFFuncionarioEdicao = class(TForm)
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    c1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    btnDepartamento: TSpeedButton;
    btnFuncao: TSpeedButton;
    procedure S1Click(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDepartamentoClick(Sender: TObject);
    procedure btnFuncaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncionarioEdicao: TFFuncionarioEdicao;

implementation

{$R *.dfm}

procedure TFFuncionarioEdicao.btnCancelarClick(Sender: TObject);
begin
   DM.TEmpregado.Cancel;
   btnCancelar.Enabled := false;
   Close;
end;

procedure TFFuncionarioEdicao.btnDepartamentoClick(Sender: TObject);
begin
   FDepartamento := TFDepartamento.Create(Self);
   FDepartamento.ShowModal;
   if(depto_buscado > 0)then
   begin
      DM.TEmpregadocod_departamento.Value := depto_buscado;
   end;
end;

procedure TFFuncionarioEdicao.btnFuncaoClick(Sender: TObject);
begin
   FFuncao := TFFuncao.Create(Self);
   FFuncao.ShowModal;
   if(funcao_buscada > 0)then
   begin
      DM.TEmpregadocod_emp_funcao.Value := funcao_buscada;
      DBEdit3.SetFocus;
   end;
end;

procedure TFFuncionarioEdicao.btnSalvarClick(Sender: TObject);
var
   salvar: Boolean;
begin
   salvar := true;
   if(DM.TFuncao.Locate('id_funcao',DM.TEmpregadocod_emp_funcao.Value,[]))then
   begin
      DM.TFuncao.Locate('id_funcao',DM.TEmpregadocod_emp_funcao.Value,[]);
      DM.TEmpregadonm_funcao.Value := DM.TFuncaonm_funcao.Value;
   end else
   begin
      salvar := false;
      if(DM.TEmpregadocod_emp_funcao.Value <= 0)then
      begin
         ShowMessage('Informe a função do funcionário!');
         DBEdit3.SetFocus;
      end else
      begin
         ShowMessage('Função não encontrada! Informe a função do funcionário!');
         DBEdit3.SetFocus;
      end;
   end;

   if(DM.TDepartamento.Locate('id_departamento',DM.TEmpregadocod_departamento.Value,[]))then
   begin
      DM.TDepartamento.Locate('id_departamento',DM.TEmpregadocod_departamento.Value,[]);
   end else
   begin
      salvar := false;
      if(DM.TEmpregadocod_departamento.Value <= 0)then
      begin
         ShowMessage('Informe o departamento do funcionário!');
         DBEdit2.SetFocus;
      end else
      begin
         ShowMessage('Departamento não encontrado! Informe o departamento do funcionário!');
         DBEdit2.SetFocus;
      end;
   end;


   if(salvar = true)then
   begin
      DM.TEmpregado.Post;
      DM.TEmpregado.ApplyUpdates;
      btnCancelar.Enabled := false;
      Close;
   end;
end;

procedure TFFuncionarioEdicao.c1Click(Sender: TObject);
begin
   if(btnCancelar.Enabled = true)then
   begin
      btnCancelar.Click;
   end;
end;

procedure TFFuncionarioEdicao.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if((key = vk_return)or(key = 40))then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
   end else
   if(key = 38)then
   begin
      Perform(WM_NEXTDLGCTL,1,0);
   end;
end;

procedure TFFuncionarioEdicao.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFFuncionarioEdicao.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if((key = vk_return)or(key = 40))then
   begin
      if(btnSalvar.Enabled = true)then
      begin
         btnSalvar.Click;
      end;
   end else
   if(key = 38)then
   begin
      Perform(WM_NEXTDLGCTL,1,0);
   end;
end;

procedure TFFuncionarioEdicao.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFFuncionarioEdicao.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if(key = vk_return)then
   begin
      Perform(WM_NEXTDLGCTL,0,0);
   end else
   if(key = vk_back)then
   begin
      Perform(WM_NEXTDLGCTL,1,0);
   end;
end;

procedure TFFuncionarioEdicao.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFFuncionarioEdicao.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFFuncionarioEdicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if(btnCancelar.Enabled = true)then
   begin
      btnCancelar.Click;
   end;
end;

procedure TFFuncionarioEdicao.FormShow(Sender: TObject);
begin
   DBEdit4.SetFocus;
end;

procedure TFFuncionarioEdicao.S1Click(Sender: TObject);
begin
   if(btnSalvar.Enabled = true)then
   begin
      btnSalvar.Click;
   end;
end;

end.
