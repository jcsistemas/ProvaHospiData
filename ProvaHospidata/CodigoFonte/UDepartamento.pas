unit UDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UDM, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, UDepartamentoEdicao, Vcl.StdCtrls, Vcl.Menus;

type
  TFDepartamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    Panel3: TPanel;
    btnSair: TSpeedButton;
    Panel4: TPanel;
    Label1: TLabel;
    txtBusca: TEdit;
    PopupMenu1: TPopupMenu;
    n1: TMenuItem;
    E1: TMenuItem;
    S1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure txtBuscaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure txtBuscaEnter(Sender: TObject);
    procedure txtBuscaExit(Sender: TObject);
    procedure n1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDepartamento: TFDepartamento;
  depto_buscado: Integer;

implementation

{$R *.dfm}

procedure TFDepartamento.btnEditarClick(Sender: TObject);
var
   depto_editado: Integer;
begin
   depto_editado := DM.TDepartamentoid_departamento.Value;
   txtBusca.Text := '';
   DM.TDepartamento.Filtered := false;
   if(DM.TDepartamento.Locate('id_departamento',depto_editado,[]))then
   begin
      DM.TDepartamento.Locate('id_departamento',depto_editado,[]);
      DM.TDepartamento.Edit;
      FDepartamentoEdicao := TFDepartamentoEdicao.Create(Self);
      FDepartamentoEdicao.ShowModal;
      txtBusca.SetFocus;
   end;
end;

procedure TFDepartamento.btnExcluirClick(Sender: TObject);
begin
   if(Application.MessageBox('Você realmente deseja excluir o departamento?','Atenção',MB_ICONQUESTION + MB_YESNO)=mrYes)then
   begin
      if(DM.TDepartamento.RecordCount > 0)then
      begin
         DM.TDepartamento.Delete;
         DM.TDepartamento.ApplyUpdates;
         txtBusca.SetFocus;
      end;
   end;
end;

procedure TFDepartamento.btnInserirClick(Sender: TObject);
begin
   txtBusca.Text := '';
   DM.TDepartamento.Filtered := false;
   DM.TDepartamento.Insert;
   DM.TDepartamentoid_departamento.Value := 15;
   FDepartamentoEdicao := TFDepartamentoEdicao.Create(Self);
   FDepartamentoEdicao.ShowModal;
   txtBusca.SetFocus;
end;

procedure TFDepartamento.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFDepartamento.DBGrid1DblClick(Sender: TObject);
begin
   if(btnEditar.Enabled = true)then
   begin
      btnEditar.Click;
   end;
end;

procedure TFDepartamento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if not odd(DM.TDepartamento.RecNo) then
   begin
      if not (gdSelected in State) then
      begin
         DBGrid1.Canvas.Brush.Color := TColor($FFEFE0);
         DBGrid1.Canvas.FillRect(Rect);
         DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
      end;
   end;
end;

procedure TFDepartamento.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFDepartamento.E1Click(Sender: TObject);
begin
   if(btnEditar.Enabled = true)then
   begin
      btnEditar.Click;
   end;
end;

procedure TFDepartamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   depto_buscado := DM.TDepartamentoid_departamento.Value;
end;

procedure TFDepartamento.FormShow(Sender: TObject);
begin
   txtBusca.SetFocus;
end;

procedure TFDepartamento.n1Click(Sender: TObject);
begin
   if(btnInserir.Enabled = true)then
   begin
      btnInserir.Click;
   end;
end;

procedure TFDepartamento.S1Click(Sender: TObject);
begin
   if(btnSair.Enabled = true)then
   begin
      btnSair.Click;
   end;
end;

procedure TFDepartamento.txtBuscaChange(Sender: TObject);
var
   busca: String;
begin
   if(Length(txtBusca.Text) > 0)then
   begin
      busca := '*' + txtBusca.Text + '*';
      DM.TDepartamento.Filtered := false;
      DM.TDepartamento.Filter := 'UPPER(nm_departamento) LIKE '+QuotedStr(AnsiUpperCase(busca));
      DM.TDepartamento.Filtered := true;
      if(DM.TDepartamento.RecordCount <= 0)then
      begin
         DM.TDepartamento.Filtered := false;
         DM.TDepartamento.Filter := 'UPPER(local) LIKE '+QuotedStr(AnsiUpperCase(busca));
         DM.TDepartamento.Filtered := true;
         if(DM.TDepartamento.RecordCount <= 0)then
         begin
            DM.TDepartamento.Filtered := false;
         end;
      end;
   end else
   begin
      DM.TDepartamento.Filtered := false;
   end;
end;

procedure TFDepartamento.txtBuscaEnter(Sender: TObject);
begin
   txtBusca.Color := clInfoBk;
end;

procedure TFDepartamento.txtBuscaExit(Sender: TObject);
begin
   txtBusca.Color := clWindow;
end;

procedure TFDepartamento.txtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if((key = vk_return)or(key = 40))then
   begin
      DBGrid1.SetFocus;
   end;
end;

procedure TFDepartamento.txtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

end.

