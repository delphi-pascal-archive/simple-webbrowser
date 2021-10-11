unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, StdCtrls,xpman, Unit2, Menus,
  Buttons,ActiveX, ComCtrls,Registry,Shlobj,inifiles;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    OpenDialog1: TOpenDialog;
    Edit1: TComboBox;
    MainMenu1: TMainMenu;
    N1111111111: TMenuItem;
    kkkkk1: TMenuItem;
    Label2: TLabel;
    Edition1: TMenuItem;
    Affichage1: TMenuItem;
    Outils1: TMenuItem;
    N1: TMenuItem;
    sourcehtml1: TMenuItem;
    Listedesliens1: TMenuItem;
    Parcourir1: TMenuItem;
    Proprits1: TMenuItem;
    Fermer1: TMenuItem;
    slectionnertout1: TMenuItem;
    Miseenpage1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Couper1: TMenuItem;
    g1: TMenuItem;
    Coller1: TMenuItem;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    re1: TMenuItem;
    FindDialog1: TFindDialog;
    Label1: TLabel;
    SpeedButton9: TSpeedButton;
    Nouveau1: TMenuItem;
    Fenetre1: TMenuItem;
    N2: TMenuItem;
    Envoyer1: TMenuItem;
    RaccourciversleBureau1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Timer1: TTimer;
    ailledutexte1: TMenuItem;
    originalsize1: TMenuItem;
    N75oforiginalsize1: TMenuItem;
    Lapluspetite1: TMenuItem;
    Plusgrande1: TMenuItem;
    Laplusgrande1: TMenuItem;
    Barredtat1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Arrter1: TMenuItem;
    Actualiser1: TMenuItem;
    Imprimer1: TMenuItem;
    Supprimer1: TMenuItem;
    Label3: TLabel;
    Hidethescrollbars1: TMenuItem;
    Information1: TMenuItem;
    Changethescrollbarcolors1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    SpeedButton12: TSpeedButton;
    Panel3: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Favoris1: TMenuItem;
    AjoutdeFavoris1: TMenuItem;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    ComboBox1: TComboBox;
    Favorites1: TMenuItem;
    Panel4: TPanel;
    WebBrowser2: TWebBrowser;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel8: TBevel;
    Memo1: TMemo;
    Panel5: TPanel;
    WebBrowser3: TWebBrowser;
    Panel6: TPanel;
    Panel7: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Bevel9: TBevel;
    Bevel10: TBevel;
    procedure sourcehtml1Click(Sender: TObject);
    procedure Listedesliens1Click(Sender: TObject);
    procedure Parcourir1Click(Sender: TObject);
    procedure kkkkk1Click(Sender: TObject);
    procedure Proprits1Click(Sender: TObject);
    procedure slectionnertout1Click(Sender: TObject);
    procedure Miseenpage1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Couper1Click(Sender: TObject);
    procedure g1Click(Sender: TObject);
    procedure WebBrowser1ProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WebBrowser1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure WebBrowser1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure WebBrowser1NewWindow2(Sender: TObject; var ppDisp: IDispatch;
      var Cancel: WordBool);
    procedure re1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure WebBrowser1TitleChange(Sender: TObject;
      const Text: WideString);
    procedure N75oforiginalsize1Click(Sender: TObject);
    procedure originalsize1Click(Sender: TObject);
    procedure Lapluspetite1Click(Sender: TObject);
    procedure Plusgrande1Click(Sender: TObject);
    procedure Laplusgrande1Click(Sender: TObject);
    procedure Barredtat1Click(Sender: TObject);
    procedure Arrter1Click(Sender: TObject);
    procedure Actualiser1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Imprimer1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure WebBrowser1CommandStateChange(Sender: TObject;
      Command: Integer; Enable: WordBool);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure Hidethescrollbars1Click(Sender: TObject);
    procedure Fenetre1Click(Sender: TObject);
    procedure Changethescrollbarcolors1Click(Sender: TObject);
    procedure Information1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure RaccourciversleBureau1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure AjoutdeFavoris1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure WebBrowser2NewWindow2(Sender: TObject; var ppDisp: IDispatch;
      var Cancel: WordBool);
    procedure FormActivate(Sender: TObject);
    procedure Favorites1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure WebBrowser3DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure WebBrowser3NewWindow2(Sender: TObject; var ppDisp: IDispatch;
      var Cancel: WordBool);

  private
    { Private declarations }
     procedure ButtonValidationClick(Sender: TObject);

  public
    { Public declarations }
  end;
   const
  NotAllowed: set of Char = ['"'] + ['/'] + ['\'] +
['?'] + [':'] + ['*'] +
    ['<'] + ['>'] + ['|'];
var
  Form1: TForm1;

implementation

uses Unit3, Unit4, Unit5;

{$R *.dfm}
procedure WB_LoadHTML(WebBrowser: TWebBrowser; 
HTMLCode: string);
var
  sl: TStringList;              
  ms: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState <
READYSTATE_INTERACTIVE do
   Application.ProcessMessages;
  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.Seek(0, 0);
        (WebBrowser.Document as
IPersistStreamInit).Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
   end;
   
function SpecialFolder(Folder: Integer): String;
var
  SFolder : pItemIDList;
  SpecialPath : Array[0..MAX_PATH] Of Char;
begin
  SHGetSpecialFolderLocation(Form1.Handle, Folder, SFolder);
  SHGetPathFromIDList(SFolder, SpecialPath);
  Result := StrPas(SpecialPath);
end;

function Load(Path, Key: string): string;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey(Path, False);
    try
      Result := Reg.ReadString(Key);
    except
      Result := '';
    end;
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
end;

function WinDir: string;
var
  WinDir: PChar;
begin
  WinDir := StrAlloc(MAX_PATH);
  GetWindowsDirectory(WinDir, MAX_PATH);
  Result := string(WinDir);
  if Result[Length(Result)] <> '\' then
    Result := Result + '\';
  StrDispose(WinDir);
end;

function GetSysDir: string;
var
  dir: array [0..MAX_PATH] of Char;
begin
  GetSystemDirectory(dir, MAX_PATH);
  Result := StrPas(dir);
end;

procedure WB_ShowFindDialog(AWebbrowser:
TWebbrowser);
const
 CGID_WebBrowser: TGUID =
'{ED016940-BD5B-11cf-BA4E-00C04FD70816}';
 HTMLID_FIND = 1;
 HTMLID_VIEWSOURCE = 2;
 HTMLID_OPTIONS = 3;
var
 CmdTarget : IOleCommandTarget;
 vaIn, vaOut: OleVariant;
 PtrGUID: PGUID;
begin
 New(PtrGUID);
 PtrGUID^ := CGID_WebBrowser;
 if AWebbrowser.Document <> nil then
   try

AWebbrowser.Document.QueryInterface(IOleCommandTarget
, CmdTarget);
     if CmdTarget <> nil then
       try
         CmdTarget.Exec(PtrGUID, HTMLID_FIND, 0, 
vaIn, vaOut);
       finally
         CmdTarget._Release;
       end;
   except
     end;
 Dispose(PtrGUID);
end;

procedure TForm1.ButtonValidationClick(Sender: TObject);
begin
  try WebBrowser1.Navigate(edit1.Text,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
   edit1.Items.Add(edit1.Text);
  except end;
end;

procedure TForm1.sourcehtml1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Listedesliens1Click(Sender: TObject);
var
  i : Integer;
begin
form3.Show;
  for i := 0 to
form1.Webbrowser1.OleObject.Document.links.length - 1 do
  begin
form3.Listbox1.items.add(form1.Webbrowser1.OleObject.Document.links.item(i));
  end
end;

procedure TForm1.Parcourir1Click(Sender: TObject);
begin
  if Opendialog1.Execute then
  begin
    edit1.Text:='file://'+OpenDialog1.FileName;
    ButtonValidationClick(Sender);
  end;
end;

procedure TForm1.kkkkk1Click(Sender: TObject);
var eQuery:variant;
  pcmdf: OLECMDF;
begin
  try eQuery:=WebBrowser1.QueryStatusWB(OLECMDID_SAVEAS);
    If eQuery and OLECMDF_ENABLED then
       WebBrowser1.ExecWB(OLECMDID_SAVEAS,OLECMDEXECOPT_PROMPTUSER,EmptyParam,EmptyParam)
      else showmessage('impossible de sauver');
  except end;
end;

procedure TForm1.Proprits1Click(Sender: TObject);
begin
Webbrowser1.ExecWB(OLECMDID_PROPERTIES , OLECMDEXECOPT_DODEFAULT);
end;

procedure TForm1.slectionnertout1Click(Sender: TObject);
begin
webbrowser1.ExecWB(OLECMDID_SELECTALL , OLECMDEXECOPT_DODEFAULT);
Webbrowser1.ExecWB(OLECMDID_COPY , OLECMDEXECOPT_DODEFAULT);
end;

procedure TForm1.Miseenpage1Click(Sender: TObject);
begin
Webbrowser1.ExecWB(OLECMDID_PAGESETUP , OLECMDEXECOPT_DODEFAULT);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
webbrowser1.GoBack;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
webbrowser1.GoForward;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
 try WebBrowser1.GoHome except end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
try WebBrowser1.Stop except end;
end;

procedure TForm1.Couper1Click(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_COPY,
OLECMDEXECOPT_PROMPTUSER);
  except
  end;
end;

procedure TForm1.g1Click(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_CUT,
OLECMDEXECOPT_PROMPTUSER);
  except
  end;
end;

procedure TForm1.WebBrowser1ProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
if Progress > 0 then begin
  ProgressBar1.Visible:=true;
  label3.Visible:=true;
  ProgressBar1.Max := ProgressMax;
  ProgressBar1.Position := Progress;
end else begin
  ProgressBar1.Position := 0;
  ProgressBar1.Visible:=false;
end;
if ProgressMax = 0 then begin
    Label3.caption := '';
    Exit;
   end;
   try
     if (Progress <> -1) and (Progress <= ProgressMax) then
      Label3.caption := IntToStr(
         (Progress * 100) div ProgressMax) + '%loaded...'
     else
      Label3.caption := '';
       except
     on EDivByZero do Exit;
   end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.ParentWindow.ScrollBy(0,
-100)
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.ParentWindow.ScrollBy(0,
+100);
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.ParentWindow.ScrollBy(+100
, 0);
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.ParentWindow.ScrollBy(-100
, 0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Label1.DragMode:=dmAutomatic;
 ProgressBar1.Visible:=false;
 label3.Visible:=false;
 panel3.Visible:=false;
 label6.Visible:=false;
 WB_LoadHTML(WebBrowser3,memo1.Text);
end;

procedure TForm1.WebBrowser1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  item:Variant;
begin
  if (Webbrowser1.ReadyState and READYSTATE_INTERACTIVE)=3 then
  begin
item:=WebBrowser1.OleObject.Document.elementFromPoint(
x,y);
    if Source is TLabel then
    begin
      Accept:=true;
    end;
    Accept:=(item.tagname='INPUT') and
((item.type='text') or
            (item.type='password')) or
(item.tagname='TEXTAREA');
  end;
end;

procedure TForm1.WebBrowser1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  item:Variant;
begin
  if (Webbrowser1.ReadyState and
READYSTATE_INTERACTIVE)=3 then
  begin
item:=WebBrowser1.OleObject.Document.elementFromPoint(
x,y);
    item.Value:=Label1.Caption;
  end;
end;

procedure TForm1.WebBrowser1NewWindow2(Sender: TObject;
  var ppDisp: IDispatch; var Cancel: WordBool);
var
  NewWindow: TForm1;
begin
  NewWindow := TForm1.Create(self);

  NewWindow.Show;
  ppDisp := NewWindow.Webbrowser1.DefaultDispatch;
end;

procedure TForm1.re1Click(Sender: TObject);
begin
 WB_ShowFindDialog(WebBrowser1);
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
 try WebBrowser1.Refresh except end;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
panel3.Visible:=true;
SpeedButton14.Visible:=true;
label4.Caption:='Favoris';
webbrowser2.Navigate(SpecialFolder(CSIDL_FAVORITES));
end;
procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
try WebBrowser1.GoSearch except end; 
end;

procedure TForm1.WebBrowser1TitleChange(Sender: TObject;
  const Text: WideString);
begin
if (Webbrowser1.OleObject.Document.title)='Aucune page à afficher' then
form1.Caption:=(Webbrowser1.OleObject.Document.Url)
else
form1.Caption:=(Webbrowser1.OleObject.Document.title);
end;

procedure TForm1.N75oforiginalsize1Click(Sender: TObject);
begin
  WebBrowser1.OleObject.Document.Body.Style.zoom := 0.75;
end;

procedure TForm1.originalsize1Click(Sender: TObject);
begin
  WebBrowser1.OleObject.Document.Body.Style.zoom := 1;
end;

procedure TForm1.Lapluspetite1Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.Body.Style.zoom := 0.50;
end;

procedure TForm1.Plusgrande1Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.Body.Style.zoom := 1.25;
end;

procedure TForm1.Laplusgrande1Click(Sender: TObject);
begin
WebBrowser1.OleObject.Document.Body.Style.zoom := 1.50;
end;

procedure TForm1.Barredtat1Click(Sender: TObject);
begin
if panel2.Visible=true then
panel2.Visible:=false
else
panel2.Visible:=true;
end;

procedure TForm1.Arrter1Click(Sender: TObject);
begin
try WebBrowser1.Stop except end; 
end;

procedure TForm1.Actualiser1Click(Sender: TObject);
begin
 try WebBrowser1.Refresh except end;
end;

procedure TForm1.Fermer1Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Imprimer1Click(Sender: TObject);
var eQuery:variant;
   pcmdf: OLECMDF;
begin
  try eQuery:=WebBrowser1.QueryStatusWB(OLECMDID_PRINT);
    If eQuery and OLECMDF_ENABLED then
       WebBrowser1.ExecWB(OLECMDID_PRINT,OLECMDEXECOPT_PROMPTUSER,EmptyParam,EmptyParam)
      else Label2.caption:='impossible d''imprimer';
  except end;
end;

procedure TForm1.Supprimer1Click(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_DELETE,OLECMDEXECOPT_PROMPTUSER);
  except
  end;
end;

procedure TForm1.WebBrowser1CommandStateChange(Sender: TObject;
  Command: Integer; Enable: WordBool);
begin
  case Command of
    CSC_NAVIGATEBACK: SpeedButton1.Enabled := Enable ;
    CSC_NAVIGATEFORWARD: SpeedButton2.Enabled := Enable ;
    CSC_UPDATECOMMANDS: SpeedButton4.Enabled := Enable ;
  end;
end;

procedure TForm1.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  CurWebrowser: IWebBrowser;
  TopWebBrowser: IWebBrowser;
  Document: OleVariant;
  WindowName: string;
begin
  CurWebrowser := pDisp as IWebBrowser;
  TopWebBrowser := (Sender as TWebBrowser).DefaultInterface;
  if CurWebrowser = TopWebBrowser then
  Label1.Caption:='Terminé'
  else
  begin
    Document := CurWebrowser.Document;
    WindowName := Document.ParentWindow.Name;
    Label1.Caption:=(Format('Frame "%s" was loaded',[WindowName]));
  end;
  if Webbrowser1.Oleobject.Document.Location.Protocol= 'file:' then
    label6.Visible:=true else label6.Visible:=false;
  end;

procedure TForm1.Hidethescrollbars1Click(Sender: TObject);
begin
  if WebBrowser1.OleObject.Document.Body.Style.OverflowX =''then
    WebBrowser1.OleObject.Document.Body.Style.OverflowX :='hidden'
    else
    WebBrowser1.OleObject.Document.Body.Style.OverflowX := '';

  if WebBrowser1.OleObject.Document.Body.Style.OverflowY = ''then
    WebBrowser1.OleObject.Document.Body.Style.OverflowY :='hidden'
    else
    WebBrowser1.OleObject.Document.Body.Style.OverflowY := ''
end;

procedure TForm1.Fenetre1Click(Sender: TObject);
var
  NewWindow: TForm1;
  ppDisp: IDispatch;
begin
  NewWindow := TForm1.Create(self);
  NewWindow.Show;
  ppDisp := NewWindow.Webbrowser1.DefaultDispatch;
end;

procedure TForm1.Changethescrollbarcolors1Click(Sender: TObject);
begin
  with WebBrowser1 do
  begin
    OleObject.document.body.Style.scrollbarArrowColor 
:= '#0099FF';
    
OleObject.document.body.Style.scrollbar3DLIGHTCOLOR
:= '#FFFFFF';
    
OleObject.document.body.Style.scrollbarDarkShadowColor 
:= '#0099FF';
    OleObject.document.body.Style.scrollbarFaceColor
:= '#99CCFF';
    
OleObject.document.body.Style.scrollbarHighlightColor 
:= '#0099FF';

OleObject.Document.body.Style.scrollbarShadowColor :=
'#0099FF';
    OleObject.Document.body.Style.scrollbarTrackColor
:= '#FFFFFF';
  end;
end;

procedure TForm1.Information1Click(Sender: TObject);
var
nombreframes: integer;
begin
nombreframes := WebBrowser1.OleObject.Document.Frames.Length;
Showmessage('URL: ' + Webbrowser1.OleObject.Document.Url+#13#10#10+
            'Page Titel: ' +Webbrowser1.OleObject.Document.title+#13#10+
            'ScrollHeight: ' +IntToStr(Webbrowser1.OleObject.Document.Body.ScrollHeight)+#13#10+
            'ScrollWidth: ' +IntToStr(Webbrowser1.OleObject.Document.Body.ScrollWidth)+#13#10+
            'ScrollTop: ' +IntToStr(Webbrowser1.OleObject.Document.Body.ScrollTop)+#13#10+
            'ScrollLeft: ' +IntToStr(Webbrowser1.OleObject.Document.Body.ScrollLeft)+#13#10+
            'ClientHeight: ' +IntToStr(Webbrowser1.OleObject.Document.Body.ClientHeight)+#13#10+
            'ClientWidth: ' +IntToStr(Webbrowser1.OleObject.Document.Body.ClientWidth)+#13#10+
            'Background color: ' +WebBrowser1.OleObject.Document.bgColor+#13#10+
            'nombre de Frames: ' +inttostr(nombreframes)+#13#10+
            'Referer: ' +Webbrowser1.OleObject.Document.referrer);
              if Webbrowser1.Oleobject.Document.Location.Protocol
= 'https:' then
    showmessage('Secure(SSL°: Oui')
  else
    showmessage('Secure(SSL): No');
end;

    procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
webbrowser1.Navigate(edit1.Text);
end;

procedure TForm1.RaccourciversleBureau1Click(Sender: TObject);
var FIni:TiniFile;
Raccourci:string;
begin
Raccourci:=SpecialFolder(CSIDL_DESKTOP)+'\'++Webbrowser1.OleObject.Document.title;
if UpperCase(extractFileExt(Raccourci))<>'.URL' then
     Raccourci:=Raccourci+'.Url';
  try
    FIni:=TiniFile.Create(Raccourci);
    FIni.WriteString('InternetShortcut','URL',edit1.Text);
  finally
    Fini.Free;
  end;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
panel3.Visible:=false;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.AjoutdeFavoris1Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then SpeedButton12.Click;
  end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
panel3.Visible:=true;
SpeedButton14.Visible:=false;;
label4.Caption:='Historique';
webbrowser2.Navigate(SpecialFolder(CSIDL_HISTORY));
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
webbrowser2.GoBack;
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
webbrowser2.GoForward;
end;

procedure TForm1.WebBrowser2NewWindow2(Sender: TObject;
  var ppDisp: IDispatch; var Cancel: WordBool);
var
  NewWindow: TForm1;
begin
  NewWindow := TForm1.Create(self);
  NewWindow.Show;
  ppDisp := NewWindow.Webbrowser2.DefaultDispatch;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  Registre: TRegistry;
begin
  Registre := TRegistry.Create;
  try
  case ComboBox1.ItemIndex of
    2 : Registre.RootKey := HKEY_LOCAL_MACHINE;
  end;
    Registre.OpenKey('SOFTWARE\Microsoft\Internet Explorer\Main', True);
    Edit1.Text:= Registre.ReadString('Start Page');
    Registre.CloseKey;
    Registre.Free;
  except
    ShowMessage('Erreur dans pendant la lecture');
    Registre.Free;
  end;
   webbrowser1.Navigate(edit1.Text);
  end;

procedure TForm1.Favorites1Click(Sender: TObject);
var
  url: TStringList;
  fav: string;
  title, b: string;
  i: Integer;
  c: Char;
begin
  fav :=
Load('Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders','Favorites');
  url := TStringList.Create;
  try
    url.Add('[InternetShortcut]');
    url.Add('URL=' + webbrowser1.LocationURL);
    url.Add('WorkingDirectory=' + WinDir());
    url.Add('IconIndex=0');
    url.Add('ShowCommand=7');
    url.Add('IconFile=' + GetSysDir() + '\url.dll');
    title := Webbrowser1.LocationName;
    b := '';
    for i := 1 to Length(title) do
    begin
      c := title[i];
      if not (c in NotAllowed) then
      begin
        b := b + Webbrowser1.LocationName[i];
      end;
    end;
    url.SaveToFile(fav + '\' + b + '.url');
  finally
    url.Free;
end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form5.BringToFront;
AnimateWindow(Form5.Handle, 3000, AW_BLEND);
Form5.Show;
end;

procedure TForm1.WebBrowser3DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
 WebBrowser3.OleObject.Document.Body.Style.OverflowX :='hidden';
   WebBrowser3.OleObject.Document.Body.Style.OverflowY :='hidden';
end;

procedure TForm1.WebBrowser3NewWindow2(Sender: TObject;
  var ppDisp: IDispatch; var Cancel: WordBool);
var
  NewWindow: TForm1;
begin
  NewWindow := TForm1.Create(self);
  NewWindow.Show;
  ppDisp := NewWindow.Webbrowser1.DefaultDispatch;
end;

end.
//Version....
//par Boughanem Adenane
//adnaner_05@yahoo.fr
//begin 11/03/2011
//end. 11/03/2011
{Jamais entendu parler de bookmarklets? Ils
sont de petits utilitaires qui rendent votre
navigateur plus puissant. Fondamentalement,
un bookmarklet est un code Javascript qui peut
être stocké en tant que favori / signet. Lorsque
vous sélectionnez plus tard le bookmarklet,
le code de script s'exécute sur la page Web
actuellement chargée dans votre navigateur. Cela
signifie que vous pouvez manipuler les mots
(ou presque) n'importe quelle page vous voulez,
vous permettant de faire des choses comme mettre
en évidence des mots spécifiques, changer les
couleurs de la page et les polices, générer une
liste de liens, tables de tri par colonnes,
traduisez, etc etc Tout cela avec un simple
clic de souris. Vous pouvez également
trouver des bookmarklets dans ma prochain Version...
