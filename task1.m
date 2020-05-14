%%PREREQUISITES:
%1)The given excel file(data.xlsx)and GUI figure must be saved in current folder.
%2)The "task1.m" and "task.fig" files must also be stored in current folder.
%3)The "data.xlsx" file must be imported to MATLAB and all cells are selected.
%4)All the data is imported as a single table[data table(609*7)]
%5)The data table must be dragged and dropped in current folder fro "Workspace".
%6)It must be renamed as "data.mat" file which is being loaded in this code.

%%"task1.m" is the  MATLAB code and "task1.fig" is the GUI created
function varargout = task1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task1_OpeningFcn, ...
                   'gui_OutputFcn',  @task1_OutputFcn, ...
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

function task1_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);


function varargout = task1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
set(handles.edit2,'string',' ');
    load data.mat
    figure;
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
switch popup_sel_index
    case 1  
    x= data.dateRep(2:122);
    y=data.cases(2:122);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('GERMANY');
    set(handles.edit1,'string',sum(y));
    case 2
    x= data.dateRep(124:244);
    y=data.cases(124:244);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('CHINA');
    set(handles.edit1,'string',sum(y));
    case 3
    x= data.dateRep(246:365);
    y=data.cases(246:365);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('INDIA');
    set(handles.edit1,'string',sum(y));
    case 4
    x= data.dateRep(367:487);
    y=data.cases(367:487);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('ITALY');
    set(handles.edit1,'string',sum(y));
    case 5
    x= data.dateRep(489:609);
    y=data.cases(489:609);
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('UNITED STATES OF AMERICA');
    set(handles.edit1,'string',sum(y));
end

function pushbutton2_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
set(handles.edit1,'string',' ' );
  load data.mat
  figure;
switch popup_sel_index
    case 1
    x= data.dateRep(2:122);
    y=data.deaths(2:122);
    bar(x,y,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('GERMANY');
    set(handles.edit2,'string',sum(y));
    case 2
    x= data.dateRep(124:244);
    y=data.deaths(124:244);
    bar(x,y,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('CHINA');
    set(handles.edit2,'string',sum(y));
    case 3
    x= data.dateRep(246:365);
    y=data.deaths(246:365);
    bar(x,y,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('INDIA');
    set(handles.edit2,'string',sum(y));
    case 4
    x= data.dateRep(367:487);
    y=data.deaths(367:487);
    bar(x,y,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('ITALY');
    set(handles.edit2,'string',sum(y));
    case 5
    x= data.dateRep(489:609);
    y=data.deaths(489:609);
    bar(x,y,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('UNITED STATES OF AMERICA');
    set(handles.edit2,'string',sum(y));
end

function pushbutton3_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
    load data.mat
    figure;
switch popup_sel_index
    case 1  
    x= data.dateRep(2:122);
    y=data.cases(2:122);
    z=data.deaths(2:122);
    subplot(211)
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('GERMANY');
    subplot(212)
    bar(x,z,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('GERMANY');
    set(handles.edit1,'string',sum(y));
    set(handles.edit2,'string',sum(z));
    case 2
    x= data.dateRep(124:244);
    y=data.cases(124:244);
    z=data.deaths(124:244);
    subplot(211)
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('CHINA');
    subplot(212)
    bar(x,z,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('CHINA');
    set(handles.edit1,'string',sum(y));
    set(handles.edit2,'string',sum(z));
    case 3
    x= data.dateRep(246:365);
    y=data.cases(246:365);
    z=data.deaths(246:365);
    subplot(211)
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('INDIA');
    subplot(212)
    bar(x,z,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('INDIA');
    set(handles.edit1,'string',sum(y));
    set(handles.edit2,'string',sum(z));
    case 4
    x= data.dateRep(367:487);
    y=data.cases(367:487);
    z=data.deaths(367:487);
    subplot(211)
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('ITALY');
    subplot(212)
    bar(x,z,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
     title('ITALY');
    set(handles.edit1,'string',sum(y));
    set(handles.edit2,'string',sum(z));
    case 5
    x= data.dateRep(489:609);
    y=data.cases(489:609);
    z=data.deaths(489:609);
    subplot(211)
    bar(x,y);
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF CASES');
    title('UNITED STATES OF AMERICA');
    subplot(212)
    bar(x,z,'r');
    xlabel('NUMBER OF DAYS');
    ylabel('NUMBER OF DEATHS');
    title('UNITED STATES OF AMERICA');
    set(handles.edit1,'string',sum(y));
    set(handles.edit2,'string',sum(z));
end
function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu1_Callback(hObject, eventdata, handles)
set(handles.edit1,'string',' ' );
set(handles.edit2,'string',' ');

function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'Germany', 'China', 'India', 'Italy', 'United States of America'});
