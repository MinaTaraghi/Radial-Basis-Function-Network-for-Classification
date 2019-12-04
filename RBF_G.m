function varargout = RBF_G(varargin)
% RBF_G MATLAB code for RBF_G.fig
%      RBF_G, by itself, creates a new RBF_G or raises the existing
%      singleton*.
%
%      H = RBF_G returns the handle to a new RBF_G or the handle to
%      the existing singleton*.
%
%      RBF_G('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RBF_G.M with the given input arguments.
%
%      RBF_G('Property','Value',...) creates a new RBF_G or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RBF_G_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RBF_G_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RBF_G

% Last Modified by GUIDE v2.5 03-Dec-2015 23:17:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RBF_G_OpeningFcn, ...
                   'gui_OutputFcn',  @RBF_G_OutputFcn, ...
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


% --- Executes just before RBF_G is made visible.
function RBF_G_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RBF_G (see VARARGIN)

% Choose default command line output for RBF_G
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RBF_G wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RBF_G_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function load_name_Callback(hObject, eventdata, handles)
% hObject    handle to load_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of load_name as text
%        str2double(get(hObject,'String')) returns contents of load_name as a double
handles.load_name_=get(hObject,'String');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function load_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to load_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function train_ratio_Callback(hObject, eventdata, handles)
% hObject    handle to train_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of train_ratio as text
%        str2double(get(hObject,'String')) returns contents of train_ratio as a double
handles.train_ratio_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function train_ratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to train_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valid_ratio_Callback(hObject, eventdata, handles)
% hObject    handle to valid_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valid_ratio as text
%        str2double(get(hObject,'String')) returns contents of valid_ratio as a double
handles.valid_ratio_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function valid_ratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valid_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Save_btn.
function Save_btn_Callback(hObject, eventdata, handles)
% hObject    handle to Save_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    Name=handles.save_name_;
catch e
    Name='RBF1';
end

try
    Ws=handles.Weights;
catch e
    Ws=0;
end

try
    TrainError=handles.trainerror;
catch e
    TrainError=0;
end

try
    TestError=handles.testerror;
catch e
    TestError=0;
end

try
    EW_train=handles.trainerror_EW;
catch e
    EW_train=0;
end

try
    EW_test=handles.testerror_EW;
catch e
    EW_test=0;
end

try
    EW_Ws=handles.Weights_EW;
catch e
    EW_Ws=0;
end

fID=fopen(strcat(Name,'.TrainError'),'w');
N=size(TrainError,2);
for i=1:N
    fprintf(fID,'%d\n',TrainError(i));
end
fclose(fID);

fID=fopen(strcat(Name,'.TestError'),'w');
N=size(TestError,2);

for i=1:N
    fprintf(fID,'%d\n',TestError(i));
end
fclose(fID);

fID=fopen(strcat(Name,'.TrainError_EW'),'w');
N=size(EW_train,2);

for i=1:N
    fprintf(fID,'%d\n',EW_train(i));
end
fclose(fID);

fID=fopen(strcat(Name,'.TestError_EW'),'w');
N=size(EW_test,2);

for i=1:N
    fprintf(fID,'%d\n',EW_test(i));
end
fclose(fID);

function save_name_Callback(hObject, eventdata, handles)
% hObject    handle to save_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of save_name as text
%        str2double(get(hObject,'String')) returns contents of save_name as a double
handles.save_name_=get(hObject,'String');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function save_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to save_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Start_btn.
function Start_btn_Callback(hObject, eventdata, handles)
% hObject    handle to Start_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=importdata('Shuffled_Data.txt');
TotalNo=size(data,1);
try
train_R=handles.train_ratio_;
catch e
    train_R=0.7;
end
try
    valid_R=handles.valid_ratio_;
catch e
    valid_R=0.1;
end

trainNo=floor(TotalNo*train_R);
valNo=floor(TotalNo*valid_R);

input_no=size(data,2)-1;

train_x=data(1:trainNo,1:3);
train_y=data(1:trainNo,4);

valid_x=data(trainNo+1:trainNo+valNo,1:3);
valid_y=data(trainNo+1:trainNo+valNo,4);

testNo=TotalNo-trainNo-valNo;
test_x=data(trainNo+valNo+1:trainNo+valNo+testNo,1:3);
test_y=data(trainNo+valNo+1:trainNo+valNo+testNo,4);

try
    train_mode=handles.train_method_;
catch e
    train_mode=1;
end

classNo=4;

try
    nEBF=~handles.EBF_;
catch e
    nEBF=true;
end
try
    center_selection=handles.center_selection_;
catch e
    center_selection=1;
end
if (center_selection==1)
useKmeans=true;
else
    useKmeans=false;
end
m = size(train_x, 1);
try
    lambda=handles.lambda_;
catch e
    lambda=0.01;
end

try
    minc=handles.minc_;
catch e
    minc=1;
end

try
    maxc=handles.maxc_;
catch e
    maxc=25;
end

try
    func=handles.kernel_function_;
catch e
    func=1;
end
switch func
    case 1
        phi_func=@gaussian;
    case 2
        phi_func=@multiquadratic;
    case 3
        phi_func=@inverse_multiquadratic;
    case 4
        phi_func=@log_kernel;
end


tic
for i=minc:maxc
[Centers, sigma, Ws] = train_RBF(train_x, train_y, i,phi_func,train_mode,nEBF,center_selection,useKmeans,lambda);
train_time=toc;
tic
error_rate(i)=eval_RBF(Centers, sigma, Ws,test_x,test_y,phi_func);
error_rate_train(i)=eval_RBF(Centers, sigma, Ws,train_x,train_y,phi_func);
 end


if(train_mode==2)
    
[Centers, sigma, Ws_EW] = train_RBF_EW(train_x, train_y, maxc,phi_func,train_mode,nEBF,center_selection,useKmeans,lambda);
for i=1:size(Ws_EW,1)
% disp(i);
EW_train(i)=eval_RBF(Centers, sigma, Ws_EW{i},train_x,train_y,phi_func);
EW_test(i)=eval_RBF(Centers, sigma, Ws_EW{i},test_x,test_y,phi_func);
end
end
test_time=toc;
if(train_mode==2)
axes(handles.RPlot);
plot(handles.RPlot,EW_train);
handles.RPlot.Title.String='Error Rates';
hold
plot(EW_test);
legend(handles.RPlot,'Train Error','TestError');
hold

handles.trainerror_EW=EW_train;
guidata(hObject,handles);
handles.testerror_EW=EW_test;
guidata(hObject,handles);
handles.Weights_EW=Ws_EW;
guidata(hObject,handles);
end

handles.trainerror=error_rate_train;
guidata(hObject,handles);
handles.testerror=error_rate;
guidata(hObject,handles);
handles.Weights=Ws;
guidata(hObject,handles);
set(handles.train_time,'String',num2str(train_time));
set(handles.test_time,'String',num2str(test_time));

set(handles.train_error,'String',num2str(error_rate_train(end)));
set(handles.test_error,'String',num2str(error_rate(end)));
axes(handles.LPlot);
plot(handles.LPlot,error_rate_train(1,minc:maxc));
handles.LPlot.Title.String='Error Rates';
hold
plot(error_rate(1,minc:maxc));
legend(handles.LPlot,'Train Error','TestError');
hold

% --- Executes on button press in load_btn.
function load_btn_Callback(hObject, eventdata, handles)
% hObject    handle to load_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    Name=handles.load_name_;
catch e
    Name='RBF1';
end
error_rate_train=importdata(strcat(Name,'.TrainError'));


error_rate=importdata(strcat(Name,'.TestError'));

EW_train=importdata(strcat(Name,'.TrainError_EW'));


EW_test=importdata(strcat(Name,'.TestError_EW'));

set(handles.train_error,'String',num2str(error_rate_train(end)));
set(handles.test_error,'String',num2str(error_rate(end)));
axes(handles.RPlot);
plot(handles.RPlot,error_rate_train);
handles.RPlot.Title.String='Error Rates';
hold
plot(error_rate);
legend(handles.RPlot,'Train Error','TestError');
hold

if(EW_test~=0)
axes(handles.LPlot);
plot(handles.LPlot,EW_train);
handles.LPlot.Title.String='Error Rates';
hold
plot(EW_test);
legend(handles.RPlot,'Train Error','TestError');
hold
end

% --- Executes on selection change in center_selection.
function center_selection_Callback(hObject, eventdata, handles)
% hObject    handle to center_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns center_selection contents as cell array
%        contents{get(hObject,'Value')} returns selected item from center_selection
handles.center_selection_=get(hObject,'Value');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function center_selection_CreateFcn(hObject, eventdata, handles)
% hObject    handle to center_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in train_method.
function train_method_Callback(hObject, eventdata, handles)
% hObject    handle to train_method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns train_method contents as cell array
%        contents{get(hObject,'Value')} returns selected item from train_method
handles.train_method_=get(hObject,'Value');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function train_method_CreateFcn(hObject, eventdata, handles)
% hObject    handle to train_method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lambda_Callback(hObject, eventdata, handles)
% hObject    handle to lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lambda as text
%        str2double(get(hObject,'String')) returns contents of lambda as a double
handles.lambda_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function lambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in EBF.
function EBF_Callback(hObject, eventdata, handles)
% hObject    handle to EBF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of EBF
handles.EBF_=get(hObject,'Value');
guidata(hObject,handles);


function minc_Callback(hObject, eventdata, handles)
% hObject    handle to minc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minc as text
%        str2double(get(hObject,'String')) returns contents of minc as a double
handles.minc_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function minc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxc_Callback(hObject, eventdata, handles)
% hObject    handle to maxc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxc as text
%        str2double(get(hObject,'String')) returns contents of maxc as a double
handles.maxc_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function maxc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in kernel_function.
function kernel_function_Callback(hObject, eventdata, handles)
% hObject    handle to kernel_function (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns kernel_function contents as cell array
%        contents{get(hObject,'Value')} returns selected item from kernel_function
handles.kernel_function_=get(hObject,'Value');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function kernel_function_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kernel_function (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function train_error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to train_error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function test_error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test_error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function train_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to train_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function test_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
