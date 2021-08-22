unit UDepartamentoEdicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Menus;

type
  TFDepartamentoEdicao = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    c1: TMenuItem;
    procedure S1Click(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDepartamentoEdicao: TFDepartamentoEdicao;

implementation

{$R *.dfm}

procedure TFDepartamentoEdicao.btnCancelarClick(Sender: TObject);
begin
   DM.TDepartamento.Cancel;
   btnCancelar.Enabled := false;
   Close;
end;

procedure TFDepartamentoEdicao.btnSalvarClick(Sender: TObject);
begin
   DM.TDepartamento.Post;
   DM.TDepartamento.ApplyUpdates;
   btnCancelar.Enabled := false;
   Close;
end;

procedure TFDepartamentoEdicao.c1Click(Sender: TObject);
begin
   if(btnCancelar.Enabled = true)then
   begin
      btnCancelar.Click;
   end;
end;

procedure TFDepartamentoEdicao.DBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFDepartamentoEdicao.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFDepartamentoEdicao.DBEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFDepartamentoEdicao.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFDepartamentoEdicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if(btnCancelar.Enabled = true)then
   begin
      btnCancelar.Click;
   end;
end;

procedure TFDepartamentoEdicao.S1Click(Sender: TObject);
begin
   if(btnSalvar.Enabled = true)then
   begin
      btnSalvar.Click;
   end;
end;

end.
