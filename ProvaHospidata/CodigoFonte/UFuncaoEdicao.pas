unit UFuncaoEdicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus;

type
  TFFuncaoEdicao = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    c1: TMenuItem;
    procedure S1Click(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncaoEdicao: TFFuncaoEdicao;

implementation

{$R *.dfm}

procedure TFFuncaoEdicao.btnCancelarClick(Sender: TObject);
begin
   DM.TFuncao.Cancel;
   btnCancelar.Enabled := false;
   Close;
end;

procedure TFFuncaoEdicao.btnSalvarClick(Sender: TObject);
begin
   DM.TFuncao.Post;
   DM.TFuncao.ApplyUpdates;
   btnCancelar.Enabled := false;
   Close;
end;

procedure TFFuncaoEdicao.c1Click(Sender: TObject);
begin
   if(btnCancelar.Enabled = true)then
   begin
      btnCancelar.Click;
   end;
end;

procedure TFFuncaoEdicao.DBEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFFuncaoEdicao.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

procedure TFFuncaoEdicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if(btnCancelar.Enabled = true)then
   begin
      btnCancelar.Click;
   end;
end;

procedure TFFuncaoEdicao.FormShow(Sender: TObject);
begin
   DBEdit2.SetFocus;
end;

procedure TFFuncaoEdicao.S1Click(Sender: TObject);
begin
   if(btnSalvar.Enabled = true)then
   begin
      btnSalvar.Click;
   end;
end;

end.
