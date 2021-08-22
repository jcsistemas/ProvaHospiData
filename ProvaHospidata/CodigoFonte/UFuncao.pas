unit UFuncao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, UFuncaoEdicao;

type
  TFFuncao = class(TForm)
    Panel4: TPanel;
    Label1: TLabel;
    txtBusca: TEdit;
    Panel2: TPanel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    Panel3: TPanel;
    btnSair: TSpeedButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    E1: TMenuItem;
    S1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure txtBuscaChange(Sender: TObject);
    procedure txtBuscaEnter(Sender: TObject);
    procedure txtBuscaExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncao: TFFuncao;
  funcao_buscada: Integer;
  funcao_editada: Integer;

implementation

{$R *.dfm}

procedure TFFuncao.btnEditarClick(Sender: TObject);
begin
   funcao_editada := DM.TFuncaoid_funcao.Value;
   txtBusca.Text := '';
   DM.TFuncao.Filtered := false;
   if(DM.TFuncao.Locate('id_funcao',funcao_editada,[]))then
   begin
      DM.TFuncao.Locate('id_funcao',funcao_editada,[]);
      DM.TFuncao.Edit;
      FFuncaoEdicao := TFFuncaoEdicao.Create(Self);
      FFuncaoEdicao.ShowModal;
   end;
end;

procedure TFFuncao.btnExcluirClick(Sender: TObject);
begin
   if(Application.MessageBox('Você realmente deseja excluir a função?','Atenção',MB_ICONQUESTION + MB_YESNO)=mrYes)then
   begin
      if(DM.TFuncao.RecordCount > 0)then
      begin
         DM.TFuncao.Delete;
         DM.TFuncao.ApplyUpdates;
      end;
   end;
end;

procedure TFFuncao.btnInserirClick(Sender: TObject);
begin
   txtBusca.Text := '';
   DM.TFuncao.Filtered := false;
   DM.TFuncao.Insert;
   FFuncaoEdicao := TFFuncaoEdicao.Create(Self);
   FFuncaoEdicao.ShowModal;
end;

procedure TFFuncao.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFFuncao.DBGrid1DblClick(Sender: TObject);
begin
   if(btnEditar.Enabled = true)then
   begin
      btnEditar.Click;
   end;
end;

procedure TFFuncao.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if not odd(DM.TFuncao.RecNo) then
   begin
      if not (gdSelected in State) then
      begin
         DBGrid1.Canvas.Brush.Color := TColor($FFEFE0);
         DBGrid1.Canvas.FillRect(Rect);
         DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
      end;
   end;
end;

procedure TFFuncao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if(key = vk_return)then
   begin
      if(btnEditar.Enabled = true)then
      begin
         btnEditar.Click;
      end;
   end else
   if(key = vk_back)then
   begin
      txtBusca.SetFocus;
   end;
end;

procedure TFFuncao.E1Click(Sender: TObject);
begin
   if(btnEditar.Enabled = true)then
   begin
      btnEditar.Click;
   end;
end;

procedure TFFuncao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   funcao_buscada := DM.TFuncaoid_funcao.Value;
end;

procedure TFFuncao.N1Click(Sender: TObject);
begin
   if(btnInserir.Enabled = true)then
   begin
      btnInserir.Click;
   end;
end;

procedure TFFuncao.S1Click(Sender: TObject);
begin
   if(btnSair.Enabled = true)then
   begin
      btnSair.Click;
   end;
end;

procedure TFFuncao.txtBuscaChange(Sender: TObject);
var
   busca: String;
begin
   if(Length(txtBusca.Text) > 0)then
   begin
      busca := '*' + txtBusca.Text + '*';
      DM.TFuncao.Filtered := false;
      DM.TFuncao.Filter := 'UPPER(nm_funcao) LIKE '+QuotedStr(AnsiUpperCase(busca));
      DM.TFuncao.Filtered := true;
      if(DM.TFuncao.RecordCount <= 0)then
      begin
         DM.TFuncao.Filtered := false;
      end;
   end else
   begin
      DM.TFuncao.Filtered := false;
   end;
end;

procedure TFFuncao.txtBuscaEnter(Sender: TObject);
begin
   txtBusca.Color := clInfoBk;
end;

procedure TFFuncao.txtBuscaExit(Sender: TObject);
begin
   txtBusca.Color := clWindow;
end;

procedure TFFuncao.txtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if((key = vk_return)or(key = 40))then
   begin
      DBGrid1.SetFocus;
   end;
end;

procedure TFFuncao.txtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

end.
