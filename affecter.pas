unit affecter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFAffecter = class(TForm)
    Label1: TLabel;
    DBLookupComboBoxP: TDBLookupComboBox;
    Button1: TButton;
    Label2: TLabel;
    DBLookupComboBoxE: TDBLookupComboBox;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FAffecter: TFAffecter;

implementation

{$R *.dfm}

uses DM;

procedure TFAffecter.Button1Click(Sender: TObject);
begin
  with DataModule1.QInsertAffecter do
  begin
    Close;
    ParamByName('idPrestation').AsString := DBLookupComboBoxP.KeyValue;
    ParamByName('idEmploye').AsString := DBLookupComboBoxE.KeyValue;
    ExecSQL;
  end;
    ShowMessage('Employé affecté à la prestation avec Succès');
    DBLookupComboBoxP.KeyValue := null;
    DBLookupComboBoxE.KeyValue := null;
    DataModule1.QListeAffecter.Close;
    DataModule1.QListeAffecter.Open;
end;

procedure TFAffecter.Button2Click(Sender: TObject);
begin
  DBLookupComboBoxP.KeyValue := null;
  DBLookupComboBoxE.KeyValue := null;
end;

procedure TFAffecter.DBGrid1CellClick(Column: TColumn);
begin
  DBLookupComboBoxP.KeyValue := DBGrid1.Fields[0].AsInteger;
  DBLookupComboBoxE.KeyValue := DBGrid1.Fields[1].AsInteger;
end;

end.
