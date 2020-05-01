function varargout = pom_projekt(varargin)
% pom_PROJEKT MATLAB code for pom_projekt.fig
%      pom_PROJEKT, by itself, creates a new pom_PROJEKT or raises the existing
%      singleton*.
%
%      H = pom_PROJEKT returns the handle to a new pom_PROJEKT or the handle to
%      the existing singleton*.
%
%      pom_PROJEKT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in pom_PROJEKT.M with the given input arguments.
%
%      pom_PROJEKT('Property','Value',...) creates a new pom_PROJEKT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pom_projekt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pom_projekt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pom_projekt

% Last Modified by GUIDE v2.5 26-Apr-2020 17:52:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pom_projekt_OpeningFcn, ...
                   'gui_OutputFcn',  @pom_projekt_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before pom_projekt is made visible.
function pom_projekt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pom_projekt (see VARARGIN)

% Choose default command line output for pom_projekt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%ustawienie domyslnego przedialu [-n,n] na suwaku
set(handles.SuwakP,'Value',5)
set(handles.AktualnaW,'String',['Próg ustawiony na ',num2str(5)])

% UIWAIT makes pom_projekt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pom_projekt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in poprzedni.
function poprzedni_Callback(hObject, eventdata, handles)
% hObject    handle to poprzedni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% folderDoZdjec=get(handles.folder, 'String')
% selpath=imageDatastore(folderDoZdjec)
% liczba=numpartitions(selpath);
% nrZdjeciaP=get(handles.poprzednie,'String')
% P=str2num(nrZdjeciaP)-1;
% nrZdjeciaN=get(handles.nastepne,'String')
% N=str2num(nrZdjeciaN)-1;
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2

nrZdjeciaP=nrZdjeciaP-1;
nrZdjeciaN=nrZdjeciaN-1;

if nrZdjeciaP<1
    set(handles.poprzedni,'Enable','off');
elseif nrZdjeciaP==1
    axes(handles.obrazP)
    zdjecie1=readimage(selpath,nrZdjeciaP);
    imshow(zdjecie1)
    axes(handles.obrazN)
    zdjecie2=readimage(selpath,nrZdjeciaN);
    imshow(zdjecie2)
    set(handles.poprzednie,'String',nrZdjeciaP)
    set(handles.nastepne,'String',nrZdjeciaN)
    set(handles.poprzedni,'Enable','off');
else
    set(handles.poprzedni,'Enable','on');
    axes(handles.obrazP)
    zdjecie1=readimage(selpath,nrZdjeciaP);
    imshow(zdjecie1)
    axes(handles.obrazN)
    zdjecie2=readimage(selpath,nrZdjeciaN);
    imshow(zdjecie2)
    set(handles.poprzednie,'String',nrZdjeciaP)
    set(handles.nastepne,'String',nrZdjeciaN)
end



% --- Executes on button press in nastepny.
function nastepny_Callback(hObject, eventdata, handles)
% hObject    handle to nastepny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%folderDoZdjec=get(handles.folder, 'String')
%selpath=imageDatastore(folderDoZdjec)
%liczba=numpartitions(selpath);
%nrZdjeciaP=get(handles.poprzednie,'String')
% P= nrZdjeciaP+1;
%nrZdjeciaN=get(handles.nastepne,'String')
% N=nrZdjeciaN+1;
global nrZdjeciaP
global nrZdjeciaN
global selpath
global liczba
global zdjecie1
global zdjecie2

nrZdjeciaP=1+nrZdjeciaP;
nrZdjeciaN=1+nrZdjeciaN;

if nrZdjeciaN>liczba
    set(handles.nastepny,'Enable','off');
elseif nrZdjeciaN==liczba
    axes(handles.obrazP)
    zdjecie1=readimage(selpath,nrZdjeciaP);
    imshow(zdjecie1)
    axes(handles.obrazN)
    zdjecie2=readimage(selpath,nrZdjeciaN);
    imshow(zdjecie2)
    set(handles.poprzednie,'String',nrZdjeciaP)
    set(handles.nastepne,'String',nrZdjeciaN)
    set(handles.nastepny,'Enable','off');
else
    set(handles.poprzedni,'Enable','on');
    set(handles.nastepny,'Enable','on');
    axes(handles.obrazP)
    zdjecie1=readimage(selpath,nrZdjeciaP);
    imshow(zdjecie1)
    axes(handles.obrazN)
    zdjecie2=readimage(selpath,nrZdjeciaN);
    imshow(zdjecie2)
    set(handles.poprzednie,'String',nrZdjeciaP)
    set(handles.nastepne,'String',nrZdjeciaN)
end

% --- Executes on button press in off.
function off_Callback(hObject, eventdata, handles)
% hObject    handle to off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of off

% --- Executes on button press in surf.
function surf_Callback(hObject, eventdata, handles)
% hObject    handle to surf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1

P=zdjecie1;
N=zdjecie2;
  points1 = detectSURFFeatures(rgb2gray(P));
  points2 = detectSURFFeatures(rgb2gray(N));
  
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    points3 = detectSURFFeatures(zdjecieP);
    points4 = detectSURFFeatures(zdjecieN);
  end

  
  figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1.selectStrongest(20));
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
  
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points2.selectStrongest(20));
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3.selectStrongest(20));
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4.selectStrongest(20));
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end
DopasowanieCech(hObject, eventdata, handles)
% --- Executes on button press in brisk.
function brisk_Callback(hObject, eventdata, handles)
% hObject    handle to brisk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1
P=zdjecie1;
N=zdjecie2;

  points1 = detectBRISKFeatures(rgb2gray(P));
  points2 = detectBRISKFeatures(rgb2gray(N));
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    points3 = detectBRISKFeatures(zdjecieP);
    points4 = detectBRISKFeatures(zdjecieN);
  end

  
  figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1.selectStrongest(20));
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
    
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points2.selectStrongest(20));
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3.selectStrongest(20));
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4.selectStrongest(20));
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end
DopasowanieCech(hObject, eventdata, handles)
% --- Executes on button press in hog.
function hog_Callback(hObject, eventdata, handles)
% hObject    handle to hog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1
P=zdjecie1;
N=zdjecie2;

  [featureVector1,points1] = extractHOGFeatures(rgb2gray(P));
  [featureVector2,points2] = extractHOGFeatures(rgb2gray(N));
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    [featureVector1,points3] = extractHOGFeatures(zdjecieP);
    [featureVector2,points4] = extractHOGFeatures(zdjecieN);
  end

  
  figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1);
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
    
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points2);
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3);
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4);
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end
DopasowanieCech(hObject, eventdata, handles)
% --- Executes on button press in fast.
function fast_Callback(hObject, eventdata, handles)
% hObject    handle to fast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1
P=zdjecie1;
N=zdjecie2;

  points1 = detectFASTFeatures(rgb2gray(P));
  points2 = detectFASTFeatures(rgb2gray(N));
  
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    points3 = detectFASTFeatures(zdjecieP);
    points4 = detectFASTFeatures(zdjecieN);
  end

  
  figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1.selectStrongest(20));
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
    
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points2.selectStrongest(20));
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3.selectStrongest(20));
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4.selectStrongest(20));
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end
DopasowanieCech(hObject, eventdata, handles)
% --- Executes on button press in orb.
function orb_Callback(hObject, eventdata, handles)
% hObject    handle to orb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1
P=zdjecie1;
N=zdjecie2;
  points1 = detectORBFeatures(rgb2gray(P));
  points2 = detectORBFeatures(rgb2gray(N));
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    points3 = detectORBFeatures(zdjecieP);
    points4 = detectORBFeatures(zdjecieN);
  end

  
      figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1,'ShowScale',false);
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
    
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points2,'ShowScale',false);
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3,'ShowScale',false);
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4,'ShowScale',false);
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end
DopasowanieCech(hObject, eventdata, handles)
% --- Executes on button press in mser.
function mser_Callback(hObject, eventdata, handles)
% hObject    handle to mser (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1
P=zdjecie1;
N=zdjecie2;

  points1 = detectMSERFeatures(rgb2gray(P));
  points2 = detectMSERFeatures(rgb2gray(N));
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    points3 = detectMSERFeatures(zdjecieP);
    points4 = detectMSERFeatures(zdjecieN);
  end

  
  figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1);
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
    
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points3);
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3);
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4);
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end

% kolory na zdjêciu DODATEK  
%   figure
%   subplot(2,2,1)
%   imshow(zdjecie1); hold on;
%   plot(points1,'showPixelList',true,'showEllipses',false);
%   p=num2str(nrZdjeciaP);
%   title(['Nr zdjêcia ',p, ', zdjêcie RGB'])
%   
%   subplot(2,2,2)
%   imshow(P); hold on;
%   plot(points3,'showPixelList',true,'showEllipses',false);
%   n=num2str(nrZdjeciaN);
%   title(['Nr zdjêcia ', n,' zdjêcie bez kana³u Red']) 
%   
%   subplot(2,2,3)
%   imshow(zdjecie2); hold on;
%   plot(points2,'showPixelList',true,'showEllipses',false);
%   p=num2str(nrZdjeciaP);
%   title(['Nr zdjêcia ',p, ', zdjêcie RGB'])
%   
%   subplot(2,2,4)
%   imshow(N); hold on;
%   plot(points4,'showPixelList',true,'showEllipses',false);
%   n=num2str(nrZdjeciaN);
%   title(['Nr zdjêcia ', n,' zdjêcie bez kana³u Red']) 
DopasowanieCech(hObject, eventdata, handles)

% --- Executes on button press in harris.
function harris_Callback(hObject, eventdata, handles)
% hObject    handle to harris (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        generowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure1
P=zdjecie1;
N=zdjecie2;
  points1 = detectHarrisFeatures(rgb2gray(P));
  points2 = detectHarrisFeatures(rgb2gray(N));
  brakRed=get(handles.off, 'Value');
  if(brakRed)
    P(:,:,1)=0;
    N(:,:,1)=0;
    zdjecieP=rgb2gray(P);
    zdjecieN=rgb2gray(N);
  
    points3 = detectHarrisFeatures(zdjecieP);
    points4 = detectHarrisFeatures(zdjecieN);
  end

  
  figure(figure1)
  subplot(2,2,1)
  imshow(zdjecie1); hold on;
  plot(points1.selectStrongest(20));
  p=num2str(nrZdjeciaP);
  title(['Nr zdjêcia ',p, ', zdjêcie RGB']);
    
  subplot(2,2,2)
  imshow(zdjecie2); hold on;
  plot(points2.selectStrongest(20));
  n=num2str(nrZdjeciaN);
  title(['Nr zdjêcia ',n, ', zdjêcie RGB']);
  
  if(brakRed)
  subplot(2,2,3)
  imshow(P); hold on;
  plot(points3.selectStrongest(20));
  title(['Nr zdjêcia ',p, ', zdjêcie bez kana³u Red']);
  end
  
  if(brakRed)
  subplot(2,2,4)
  imshow(N); hold on;
  plot(points4.selectStrongest(20));
  title(['Nr zdjêcia ',n, ', zdjêcie bez kana³u Red']);
  end
  DopasowanieCech(hObject, eventdata, handles)

% --- Executes on button press in sciezka.
function sciezka_Callback(hObject, eventdata, handles)
% hObject    handle to sciezka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sciezka
sciezka = uigetdir;
if sciezka ~= ' '
    set(handles.poprzedni,'Visible','on');
    set(handles.nastepny,'Visible','on');
end
global selpath
selpath =imageDatastore(sciezka);
global liczba
liczba=numpartitions(selpath);
global nrZdjeciaP
global nrZdjeciaN
nrZdjeciaP=1;
nrZdjeciaN=2;
if nrZdjeciaP<=1
    set(handles.poprzedni,'Enable','off');
elseif nrZdjeciaN>=liczba
    set(handles.nastepny,'Enable','off');
end
axes(handles.obrazP)
global zdjecie1
zdjecie1=readimage(selpath,1);
imshow(zdjecie1)
axes(handles.obrazN)
global zdjecie2
zdjecie2=readimage(selpath,2);
imshow(zdjecie2)
set(handles.poprzednie,'String',nrZdjeciaP)
set(handles.nastepne,'String',nrZdjeciaN)
set(handles.folder,'String',sciezka)
global figure1
global figure2
figure1=figure('Name','Uzyskane wyniki','NumberTitle','off');
figure2=figure('Name','Dopasowanie pozyskanych cech','NumberTitle','off');

% --- Executes on slider movement.
function SuwakP_Callback(hObject, eventdata, handles)
% hObject    handle to SuwakP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Do = get(findobj('Tag','SuwakP'),'Value');        %dla minimum %krok = 0.5

set(findobj('Tag','AktualnaW'),'String',['Próg ustawiony na ',num2str(Do)]);
DopasowanieCech(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function SuwakP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SuwakP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function DopasowanieCech(hObject, eventdata, handles)
global nrZdjeciaP
global nrZdjeciaN
global selpath
global zdjecie1
global zdjecie2
global P
global N
global zdjecieP
global zdjecieN
global points1
global points2
global points3
global points4
global figure2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        dopasowanie cech                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
try
%RGB
%funkcja s¹siedztwa
[features1,valid_points1] = extractFeatures(rgb2gray(P),points1);
[features2,valid_points2] = extractFeatures(rgb2gray(N),points2);
%dopasowanie funkcji
indexPairsRGB = matchFeatures (features1, features2,"MatchThreshold",get(handles.SuwakP,'Value'));
%Pobierz lokalizacje odpowiednich punktów dla ka¿dego obrazu
matchedPoints1 = valid_points1(indexPairsRGB(:,1),:);
matchedPoints2 = valid_points2(indexPairsRGB(:,2),:);
%wyœwietlenie wyników
figure(figure2); subplot(1,2,1); showMatchedFeatures(P,N,matchedPoints1,matchedPoints2); title('Dopasowanie cech obrazów RGB');
catch
    error='Nie uda³o siê dopasowaæ wybranych zdjêæ';
    figure(figure2);  subplot(1,2,1);
    text(0.5,0.5,error);
end
try
% bez RED
if(get(handles.off,'Value')==1)
[features3,valid_points3] = extractFeatures(zdjecieP,points3);
[features4,valid_points4] = extractFeatures(zdjecieN,points4);
%dopasowanie funkcji
indexPairsGB = matchFeatures (features3, features4,"MatchThreshold",get(handles.SuwakP,'Value'));
%Pobierz lokalizacje odpowiednich punktów dla ka¿dego obrazu
matchedPoints3 = valid_points3(indexPairsGB(:,1),:);
matchedPoints4 = valid_points4(indexPairsGB(:,2),:);
%wyœwietlenie wyników
figure(figure2);subplot(1,2,2); showMatchedFeatures(zdjecieP,zdjecieN,matchedPoints3,matchedPoints4); title('Dopasowanie cech obrazów bez kana³u Red');
else
    error1='Brak danych'; 
    figure(figure2);subplot(1,2,2); text(0.5,0.5,error1);
end
catch
    error='Nie uda³o siê dopasowaæ wybranych zdjêæ';
    hF=figure(figure2); subplot(1,2,2);
    text(0.5,0.5,error);
end
