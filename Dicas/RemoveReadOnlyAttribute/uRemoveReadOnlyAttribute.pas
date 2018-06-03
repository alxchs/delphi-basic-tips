unit uRemoveReadOnlyAttribute;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmRemoveReadOnlyAttribute = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRemoveReadOnlyAttribute: TfrmRemoveReadOnlyAttribute;

procedure RemoveReadOnlyAttribute(sNomeArquivo: string);

implementation

{$R *.dfm}

procedure RemoveReadOnlyAttribute(sNomeArquivo: string);
var
  Attributes: Word;
begin
  Attributes := FileGetAttr(sNomeArquivo);
  Attributes := Attributes and (not faReadOnly);
  FileSetAttr(sNomeArquivo, Attributes);
end;

procedure TfrmRemoveReadOnlyAttribute.Button1Click(Sender: TObject);
begin
  RemoveReadOnlyAttribute('c:\arquivo.txt');
end;

end.
