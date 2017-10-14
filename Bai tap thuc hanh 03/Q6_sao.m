function varargout = Q6_sao(varargin)
% Q6_SAO MATLAB code for Q6_sao.fig
%      Q6_SAO, by itself, creates a new Q6_SAO or raises the existing
%      singleton*.
%
%      H = Q6_SAO returns the handle to a new Q6_SAO or the handle to
%      the existing singleton*.
%
%      Q6_SAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Q6_SAO.M with the given input arguments.
%
%      Q6_SAO('Property','Value',...) creates a new Q6_SAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Q6_sao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Q6_sao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Q6_sao

% Last Modified by GUIDE v2.5 14-Oct-2017 22:58:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Q6_sao_OpeningFcn, ...
                   'gui_OutputFcn',  @Q6_sao_OutputFcn, ...
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


% --- Executes just before Q6_sao is made visible.
function Q6_sao_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Q6_sao (see VARARGIN)

% Choose default command line output for Q6_sao
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Q6_sao wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = Q6_sao_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Load du lieu train
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll);
% Load du lieu test
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    n = str2num(get(handles.input,'string'));
    
    imgTest = imgTestAll(:,n);
    lblPredictTest = predict(Mdl,imgTest');
    lblImageTest = lblTestAll(n);
    
    img2D = reshape(imgTest,28,28);
    imshow(img2D,'Parent',handles.axes1);
    set(handles.recognition,'string',lblPredictTest);
    if(lblPredictTest==lblImageTest)
      set(handles.result,'string','KQ dung'); 
    else
      set(handles.result,'string','KQ sai');
    end  
    
function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
