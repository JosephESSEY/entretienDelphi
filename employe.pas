unit employe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFEmploye = class(TForm)
    Label1: TLabel;
    EdNom: TEdit;
    Label2: TLabel;
    EdPrenom: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdTel: TEdit;
    EdEmail: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FEmploye: TFEmploye;

implementation

{$R *.dfm}

uses DM;

procedure TFEmploye.Button1Click(Sender: TObject);
begin
  if (MessageDlg('Voulez vous vraiment supprimer l''enregistrement ?', mtConfirmation, [mbYes,mbNo], 0) = MrYes) then
  begin
     with DataModule1.QDeleteEmploye do
    begin
      Close;
      ParamByName('value').AsInteger := DBGrid1.Fields[0].AsInteger;
      ExecSQL;
    end;
    ShowMessage('Employé Supprimé avec Succès');
    EdNom.Text := '';
    EdPrenom.Text := '';
    EdTel.Text := '';
    EdEmail.Text := '';
    DataModule1.QListeEmploye.Close;
    DataModule1.QListeEmploye.Open;
    DataModule1.QNomCompletEmploye.Close;
    DataModule1.QNomCompletEmploye.Open;
    DataModule1.QListeAffecter.Close;
    DataModule1.QListeAffecter.Open;
  end;
end;

procedure TFEmploye.Button2Click(Sender: TObject);
begin
  with DataModule1.QUpdateEmploye do
  begin
    Close;
    ParamByName('nom').AsString := EdNom.Text;
    ParamByName('prenom').AsString := EdPrenom.Text;
    ParamByName('tel').AsString := EdTel.Text;
    ParamByName('email').AsString := EdEmail.Text;
    ParamByName('value').AsInteger := DBGrid1.Fields[0].AsInteger;
    ExecSQL;
  end;
    ShowMessage('Employé Modifié avec Succès');
    EdNom.Text := '';
    EdPrenom.Text := '';
    EdTel.Text := '';
    EdEmail.Text := '';
    DataModule1.QListeEmploye.Close;
    DataModule1.QListeEmploye.Open;
    DataModule1.QNomCompletEmploye.Close;
    DataModule1.QNomCompletEmploye.Open;
    DataModule1.QListeAffecter.Close;
    DataModule1.QListeAffecter.Open;
end;

procedure TFEmploye.Button3Click(Sender: TObject);
begin
  with DataModule1.QInsertEmploye do
  begin
    Close;
    ParamByName('nom').AsString := EdNom.Text;
    ParamByName('prenom').AsString := EdPrenom.Text;
    ParamByName('tel').AsString := EdTel.Text;
    ParamByName('email').AsString := EdEmail.Text;
    ExecSQL;
  end;
    ShowMessage('Employé Inséré avec Succès');
    EdNom.Text := '';
    EdPrenom.Text := '';
    EdTel.Text := '';
    EdEmail.Text := '';
    DataModule1.QListeEmploye.Close;
    DataModule1.QListeEmploye.Open;
    DataModule1.QNomCompletEmploye.Close;
    DataModule1.QNomCompletEmploye.Open;
    DataModule1.QListeAffecter.Close;
    DataModule1.QListeAffecter.Open;
end;

procedure TFEmploye.Button4Click(Sender: TObject);
begin
  EdNom.Text := '';
  EdPrenom.Text := '';
  EdTel.Text := '';
  EdEmail.Text := '';
end;

procedure TFEmploye.DBGrid1CellClick(Column: TColumn);
begin
  EdNom.Text := DBGrid1.Fields[1].Value;
  EdPrenom.Text := DBGrid1.Fields[2].Value;
  EdTel.Text := DBGrid1.Fields[3].Value;
  EdEmail.Text := DBGrid1.Fields[4].Value;
end;

end.
