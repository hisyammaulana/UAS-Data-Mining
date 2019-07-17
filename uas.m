function varargout = uas(varargin)
% UAS MATLAB code for uas.fig
%      UAS, by itself, creates a new UAS or raises the existing
%      singleton*.
%
%      H = UAS returns the handle to a new UAS or the handle to
%      the existing singleton*.
%
%      UAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UAS.M with the given input arguments.
%
%      UAS('Property','Value',...) creates a new UAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before uas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to uas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help uas

% Last Modified by GUIDE v2.5 17-Jul-2019 14:24:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @uas_OpeningFcn, ...
                   'gui_OutputFcn',  @uas_OutputFcn, ...
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


% --- Executes just before uas is made visible.
function uas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to uas (see VARARGIN)

% Choose default command line output for uas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes uas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = uas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ingg_Callback(hObject, eventdata, handles)
bingg = str2double(get(hObject,'String'))
handles.bingg=bingg;
guidata(hObject,handles)
% hObject    handle to ingg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ingg as text
%        str2double(get(hObject,'String')) returns contents of ingg as a double


% --- Executes during object creation, after setting all properties.
function ingg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ingg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function semester_Callback(hObject, eventdata, handles)
semester = str2double(get(hObject,'String'))
handles.semester=semester;
guidata(hObject,handles)
% hObject    handle to semester (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of semester as text
%        str2double(get(hObject,'String')) returns contents of semester as a double


% --- Executes during object creation, after setting all properties.
function semester_CreateFcn(hObject, eventdata, handles)
% hObject    handle to semester (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtSKS_Callback(hObject, eventdata, handles)
% hObject    handle to txtSKS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSKS as text
%        str2double(get(hObject,'String')) returns contents of txtSKS as a double


% --- Executes during object creation, after setting all properties.
function txtSKS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSKS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnKeputusan.
function btnKeputusan_Callback(hObject, eventdata, handles)
if(handles.ipk >= 2.8 && handles.bingg >= 70 && handles.semester >= 2)
    set(handles.keputusan,'String','Berpotensi');
elseif(handles.ipk >= 2.9 && handles.bingg >= 75 && handles.semester >= 4)
    set(handles.keputusan,'String','Berpotensi');
elseif(handles.ipk >= 3.0 && handles.bingg >= 80 && handles.semester >= 6)
    set(handles.keputusan,'String','Berpotensi');
else
    set (handles.keputusan,'String','TIDAK BERPOTENSI'); 
end
    
    
% hObject    handle to btnKeputusan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function keputusan_Callback(hObject, eventdata, handles)
% hObject    handle to keputusan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of keputusan as text
%        str2double(get(hObject,'String')) returns contents of keputusan as a double


% --- Executes during object creation, after setting all properties.
function keputusan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to keputusan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ipk_Callback(hObject, eventdata, handles)
ipk = str2double(get(hObject,'String'))
handles.ipk=ipk;
guidata(hObject,handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ipk as text
%        str2double(get(hObject,'String')) returns contents of ipk as a double


% --- Executes during object creation, after setting all properties.
function ipk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
