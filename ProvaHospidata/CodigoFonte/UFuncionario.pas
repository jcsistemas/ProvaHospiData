unit UFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Menus;

type
  TFFuncionario = class(TForm)
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure txtBuscaEnter(Sender: TObject);
    procedure txtBuscaExit(Sender: TObject);
    procedure txtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure txtBuscaChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncionario: TFFuncionario;
  empregado_editado: Integer;

implementation

uses UDM, UFuncionarioEdicao;

{$R *.dfm}

procedure TFFuncionario.btnEditarClick(Sender: TObject);
begin
   txtBusca.Text := '';
   empregado_editado := DM.TEmpregadoid_empregado.Value;
   txtBusca.Text := '';
   DM.TEmpregado.Filtered := false;
   if(DM.TEmpregado.Locate('id_empregado',empregado_editado,[]))then
   begin
      DM.TEmpregado.Locate('id_empregado',empregado_editado,[]);
      DM.TEmpregado.Edit;
      FFuncionarioEdicao := TFFuncionarioEdicao.Create(Self);
      FFuncionarioEdicao.ShowModal;
      txtBusca.SetFocus;
   end;
end;

procedure TFFuncionario.btnExcluirClick(Sender: TObject);
begin
   if(Application.MessageBox('Você realmente deseja excluir o empregado?','Atenção',MB_ICONQUESTION + MB_YESNO)=mrYes)then
   begin
      if(DM.TEmpregado.RecordCount > 0)then
      begin
         DM.TEmpregado.Delete;
         DM.TEmpregado.ApplyUpdates;
      end;
   end;
end;

procedure TFFuncionario.btnInserirClick(Sender: TObject);
begin
   txtBusca.Text := '';
   DM.TEmpregado.Filtered := false;
   DM.TEmpregado.Insert;
   FFuncionarioEdicao := TFFuncionarioEdicao.Create(Self);
   FFuncionarioEdicao.ShowModal;
   txtBusca.SetFocus;
end;

procedure TFFuncionario.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFFuncionario.DBGrid1DblClick(Sender: TObject);
begin
   if(btnEditar.Enabled = true)then
   begin
      btnEditar.Click;
   end;
end;

procedure TFFuncionario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if not odd(DM.TEmpregado.RecNo) then
   begin
      if not (gdSelected in State) then
      begin
         DBGrid1.Canvas.Brush.Color := TColor($FFEFE0);
         DBGrid1.Canvas.FillRect(Rect);
         DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
      end;
   end;
end;

procedure TFFuncionario.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFFuncionario.E1Click(Sender: TObject);
begin
   if(btnEditar.Enabled = true)then
   begin
      btnEditar.Click;
   end;
end;

procedure TFFuncionario.FormShow(Sender: TObject);
begin
   txtBusca.SetFocus;
end;

procedure TFFuncionario.N1Click(Sender: TObject);
begin
   if(btnInserir.Enabled = true)then
   begin
      btnInserir.Click;
   end;
end;

procedure TFFuncionario.S1Click(Sender: TObject);
begin
   if(btnSair.Enabled = true)then
   begin
      btnSair.Click;
   end;
end;

procedure TFFuncionario.txtBuscaChange(Sender: TObject);
var
   busca: String;
begin
   if(Length(txtBusca.Text) > 0)then
   begin
      busca := '*' + txtBusca.Text + '*';
      DM.TEmpregado.Filtered := false;
      DM.TEmpregado.Filter := 'UPPER(nm_empregado) LIKE '+QuotedStr(AnsiUpperCase(busca));
      DM.TEmpregado.Filtered := true;
      if(DM.TEmpregado.RecordCount <= 0)then
      begin
         DM.TEmpregado.Filtered := false;
         DM.TEmpregado.Filter := 'UPPER(nm_funcao) LIKE '+QuotedStr(AnsiUpperCase(busca));
         DM.TEmpregado.Filtered := true;
         if(DM.TEmpregado.RecordCount <= 0)then
         begin
            DM.TEmpregado.Filtered := false;
            DM.TEmpregado.Filter := 'UPPER(nomedepto) LIKE '+QuotedStr(AnsiUpperCase(busca));
            DM.TEmpregado.Filtered := true;
            if(DM.TEmpregado.RecordCount <= 0)then
            begin
               DM.TEmpregado.Filtered := false;
            end;
         end;
      end;
   end else
   begin
      DM.TEmpregado.Filtered := false;
   end;
end;

procedure TFFuncionario.txtBuscaEnter(Sender: TObject);
begin
   txtBusca.Color := clInfoBk;
end;

procedure TFFuncionario.txtBuscaExit(Sender: TObject);
begin
   txtBusca.Color := clWindow;
end;

procedure TFFuncionario.txtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if((key = vk_return)or(key = 40))then
   begin
      DBGrid1.SetFocus;
   end;
end;

procedure TFFuncionario.txtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13)then
   begin
      key := #0;
   end;
end;

end.
