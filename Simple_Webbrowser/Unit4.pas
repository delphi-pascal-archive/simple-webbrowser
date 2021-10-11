unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Shlobj,inifiles;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}
function SpecialFolder(Folder: Integer): String;
var
  SFolder : pItemIDList;
  SpecialPath : Array[0..MAX_PATH] Of Char;
begin
  SHGetSpecialFolderLocation(Form1.Handle, Folder, SFolder);
  SHGetPathFromIDList(SFolder, SpecialPath);
  Result := StrPas(SpecialPath);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
if (form1.Webbrowser1.OleObject.Document.title)<>'Aucune page à afficher' then
edit1.text:=(form1.Webbrowser1.OleObject.Document.title)
else
edit1.Text:=('Page Web');
end;

procedure TForm4.Button1Click(Sender: TObject);
var FIni:TiniFile;
Raccourci:string;
begin
Raccourci:=SpecialFolder(CSIDL_FAVORITES)+'\'+edit1.Text;
if UpperCase(extractFileExt(Raccourci))<>'.URL' then
     Raccourci:=Raccourci+'.Url';
  try
    FIni:=TiniFile.Create(Raccourci);
    FIni.WriteString('InternetShortcut','URL',edit1.Text);
  finally
    Fini.Free;
    form4.Close;
  end;

end;

end.
 