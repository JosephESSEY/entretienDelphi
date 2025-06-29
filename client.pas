unit client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFClient = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdNom: TEdit;
    EdPrenom: TEdit;
    EdTel: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FClient: TFClient;

implementation

{$R *.dfm}

uses DM;

procedure TFClient.Button1Click(Sender: TObject);
begin
  with DataModule1.QUpdateClient do
  begin
    Close;
    ParamByName('nom').AsString := EdNom.Text;
    ParamByName('prenom').AsString := EdPrenom.Text;
    ParamByName('tel').AsString := EdTel.Text;
    ParamByName('value').AsInteger := DBGrid1.Fields[0].AsInteger;
    ExecSQL;
  end;
    ShowMessage('Employ� Modifi� avec Succ�s');
    EdNom.Text := '';
    EdPrenom.Text := '';
    EdTel.Text := '';
    DataModule1.QListeClient.Close;
    DataModule1.QListeClient.Open;
    DataModule1.QNomCompletClient.Close;
    DataModule1.QNomCompletClient.Open;
    DataModule1.QListePrestation.Close;
    DataModule1.QListePrestation.Open;
end;

procedure TFClient.Button2Click(Sender: TObject);
begin
  with DataModule1.QInsertClient do
  begin
    Close;
    ParamByName('nom').AsString := EdNom.Text;
    ParamByName('prenom').AsString := EdPrenom.Text;
    ParamByName('tel').AsString := EdTel.Text;
    ExecSQL;
  end;
    ShowMessage('Client Ins�r� avec Succ�s');
    EdNom.Text := '';
    EdPrenom.Text := '';
    EdTel.Text := '';
    DataModule1.QListeClient.Close;
    DataModule1.QListeClient.Open;
    DataModule1.QNomCompletClient.Close;
    DataModule1.QNomCompletClient.Open;
    DataModule1.QListePrestation.Close;
    DataModule1.QListePrestation.Open;
end;

procedure TFClient.Button3Click(Sender: TObject);
begin
  if (MessageDlg('Voulez vous vraiment supprimer l''enregistrement ?', mtConfirmation, [mbYes,mbNo], 0) = MrYes) then
  begin
     with DataModule1.QDeleteClient do
    begin
      Close;
      ParamByName('value').AsInteger := DBGrid1.Fields[0].AsInteger;
      ExecSQL;
    end;
    ShowMessage('Client Supprim� avec Succ�s');
    EdNom.Text := '';
    EdPrenom.Text := '';
    EdTel.Text := '';
    DataModule1.QListeClient.Close;
    DataModule1.QListeClient.Open;
    DataModule1.QNomCompletClient.Close;
    DataModule1.QNomCompletClient.Open;
    DataModule1.QListePrestation.Close;
    DataModule1.QListePrestation.Open;
  end;
end;

procedure TFClient.Button4Click(Sender: TObject);
begin
  EdNom.Text := '';
  EdPrenom.Text := '';
  EdTel.Text := '';
end;

procedure TFClient.DBGrid1CellClick(Column: TColumn);
begin
  EdNom.Text := DBGrid1.Fields[1].Value;
  EdPrenom.Text := DBGrid1.Fields[2].Value;
  EdTel.Text := DBGrid1.Fields[3].Value;
end;

end.
