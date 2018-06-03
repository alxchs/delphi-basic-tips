program RemoveReadOnlyAttribute;

uses
  Vcl.Forms,
  uRemoveReadOnlyAttribute in 'uRemoveReadOnlyAttribute.pas' {frmRemoveReadOnlyAttribute};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRemoveReadOnlyAttribute, frmRemoveReadOnlyAttribute);
  Application.Run;
end.
