unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ActiveX,SHDocVw;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}
function WB_SaveHTMLCode(WebBrowser: TWebBrowser;
const FileName: TFileName): Boolean;
var
  ps: IPersistStreamInit;
  fs: TFileStream;
  sa: IStream;
begin
  ps := WebBrowser.Document as IPersistStreamInit;
  fs := TFileStream.Create(FileName, fmCreate);
  try
    sa := TStreamAdapter.Create(fs, soReference) as
IStream;
    Result := Succeeded(ps.Save(sa, True));
  finally
    fs.Free;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Memo1.Text := form1.WebBrowser1.OleObject.Document.Body.InnerHTML;
Memo2.Text := form1.WebBrowser1.OleObject.Document.Body.Innertext;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
WB_SaveHTMLCode(form1.Webbrowser1, edit1.Text);
end;

end.
