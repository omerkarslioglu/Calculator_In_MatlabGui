function varargout = Calculator(varargin)
% CALCULATOR MATLAB code for Calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculator

% Last Modified by GUIDE v2.5 28-May-2021 17:20:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculator_OutputFcn, ...
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


% --- Executes just before Calculator is made visible.
function Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculator (see VARARGIN)

% Choose default command line output for Calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);

handles.memoryBuff=0; % defining global variable
handles.valuedeger=1; % defining global variable
guidata(hObject,handles); % my allows to update global variables

% --- Outputs from this function are returned to the command line.
function varargout = Calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in buttonSUB.
function buttonSUB_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '-'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button4.
function button4_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '4'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button5.
function button5_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '5'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button6.
function button6_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '6'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonADD.
function buttonADD_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '+'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani'); % defining first screen 
                              %(that tag name is hesapalani) as ekran
bilgi = get(ekran,'string'); % gets value from ekran
yeniekran = [bilgi '1']; % pre. value + "1"
set(ekran,'String',yeniekran); % writes "1" on screen

% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '2'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '3'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonEQU.
function buttonEQU_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi=get(ekran,'String');
cevap=findobj(gcbf,'Tag','sonuc');
bilgi=str2num(bilgi);
set(cevap,'String',bilgi);

% --- Executes on button press in buttonC.
function buttonC_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani'); % defining calc. screen 
bilgi = get(ekran,'string');  % getting value from first screen         
set(ekran,'String','');

sonuc=findobj(gcbf,'Tag','sonuc');
set(sonuc,'String','');

% --- Executes on button press in buttonANS.
function buttonANS_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
sonuc=findobj(gcbf,'Tag','sonuc');
bilgi2 = get(sonuc,'string');
set(ekran,'string',bilgi2);
set(sonuc,'string',' ')

% --- Executes on button press in buttonDEL.
function buttonDEL_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
set(ekran,'String',' ');
sonuc=findobj(gcbf,'Tag','sonuc');
set(sonuc,'string',' ');

% --- Executes on button press in buttonDIV.
function buttonDIV_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '/'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button7.
function button7_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '7'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button8.
function button8_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '8'];
set(ekran,'String',yeniekran);

% --- Executes on button press in button9.
function button9_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '9'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonMUL.
function buttonMUL_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '*'];
set(ekran,'String',yeniekran);

function hesapalani_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function hesapalani_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function sonuc_Callback(hObject, eventdata, handles)

function sonuc_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in buttonP.
function buttonP_Callback(hObject, eventdata, handles)

if handles.valuedeger==1
    ekran=findobj(gcbf,'Tag','hesapalani')
    yeniekran=get(ekran, 'string')
    bilgi=[yeniekran '(']
    set(ekran,'string',bilgi)
    handles.valuedeger=0
    guidata(hObject,handles);
elseif handles.valuedeger==0 % updates valuedeger
    ekran=findobj(gcbf,'Tag','hesapalani')
    yeniekran=get(ekran, 'string')
    bilgi=[yeniekran ')']
    set(ekran,'string',bilgi)
    handles.valuedeger=1
    guidata(hObject,handles); % updates valuedeger
end

% --- Executes on button press in button0.
function button0_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '0'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonPOINT.
function buttonPOINT_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '.'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonMP.
function buttonMP_Callback(hObject, eventdata, handles)
 
valueBuff=str2num(get(handles.hesapalani,'string'));
handles.memoryBuff=handles.memoryBuff+valueBuff;
guidata(hObject,handles);

% --- Executes on button press in buttonMC.
function buttonMC_Callback(hObject, eventdata, handles)
 
handles.memoryBuff = 0 ;
guidata(hObject,handles);

% --- Executes on button press in buttonMR.
function buttonMR_Callback(hObject, eventdata, handles)

set(handles.sonuc,'string',handles.memoryBuff);
guidata(hObject,handles);

% --- Executes on button press in buttonMS.
function buttonMS_Callback(hObject, eventdata, handles)

handles.memoryBuff=handles.memoryBuff; % can use another variable for store
                                       % operation . But I prefer same
                                       % variable .
guidata(hObject,handles);

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '^(-1)'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonCE.
function buttonCE_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
bilgi(end)='';
yeniekran = bilgi;
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonSQRT.
function buttonSQRT_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
yeniekran = [bilgi '^(1/2)'];
set(ekran,'String',yeniekran);

% --- Executes on button press in buttonPERCENT.
function buttonPERCENT_Callback(hObject, eventdata, handles)

    ekran=findobj(gcbf,'Tag','hesapalani');
    bilgi = get(ekran,'string');
    yeniekran = [bilgi '/100'];
    set(ekran,'String',yeniekran);

% --- Executes on button press in buttonMN.
function buttonMN_Callback(hObject, eventdata, handles)

ekran=findobj(gcbf,'Tag','hesapalani');
bilgi = get(ekran,'string');
handles.memoryBuff=handles.memoryBuff-bilgi;
guidata(hObject,handles);
