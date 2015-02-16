unit DataTypesUnit;

interface
uses Classes,typinfo,DateUtils,SysUtils,variants,DB,StdCtrls,controls, Spin, windows, grids, contnrs, graphics,superobject;



type
    TStudentImportFlags = set of (siMain,siPrakts,siDisciplines,siFacDisciplines,siKursovie,siGosses,siNotes,siAll);
    TDPLProperty=record
    typename:string;
    name:string;
    typekind:TTypeKind;
    index:integer;
    value:Variant;
    end;
     DPLJSONException=class(Exception)
     end;
   {$M+}
   TDPLObject=class(TObject)
     constructor create;virtual;
     private
       faliases:TStringList;
       function copyintemplate(i:Integer):Boolean; virtual;
     public
     function ispropvisible(i:Integer):Boolean; virtual;
     function propcount:Integer;
     function propname(i:Integer):string;
     function getprop(i:Integer):TDPLProperty;
     procedure setprop(i:integer;v:Variant);
     function sqlFormatAndEscape(v:Variant):string;
     function getInsertSQL:string;virtual;
     function getUpdateSQL:string;virtual;
     procedure loadFromDataset(d:TDataSet); virtual;
     function LimitBall(ball:integer):integer;
     function saveToSuperObject:ISuperObject; virtual;
     procedure loadFromSuperObject(o:ISuperObject); virtual;
     function saveToJSON:string; virtual;
     procedure loadFromJSON(json:string); virtual;
     procedure loadFromTemplate(tmpl:TDPLObject); virtual;
     procedure loadFromObject(tmpl:TDPLObject); virtual;
     procedure clear; virtual;
     function getAlias(field:string):string;
     function getFieldByAlias(alias:string):string;
     procedure setAlias(i:Integer;alias:string);
     procedure setAliasByFieldName(field:string;alias:string);
     end;
   {$M-}

   TDPLClass=class of TDPLObject;



   TDPLObjectList=class(TObjectList)
   FClass:TDPLClass;
   tablename:string;
   constructor create(AClass:TDPLClass;ATableName:string);
   function saveToSuperObject:ISuperObject;
   procedure loadFromSuperObject(o:ISuperObject);
   function saveToJSON:string;
   procedure loadFromJSON(json:string);
   procedure loadFromTemplate(tmpl:TDPLObjectList);

   end;



   TSGColumnHeader=class(TObject)
   name:string;
   displayname:string;
   propid:integer;
   width:Integer;
   end;

   TDPLControlAdapter=class(TObject)
   protected
     fbindedcontrols:array of Tcontrol;
     fcontrol:TWinControl;
     fobj:TDPLObject;
     public
       prefix:string;
      procedure bindcontrol(c:TWinControl);
      procedure unbindcontrol;
      procedure updatecontrol;
      procedure EditChange(sender:TObject);
      constructor create(aobj:TDPLObject);
   end;

   TDPLMemoAdapter=class(TObject)
  private
    Fmemo: TMemo;
    propindex:integer;
    fclass:TDPLClass;
    procedure Setmemo(const Value: TMemo);

   public
   objects:TDPLObjectList;

   constructor create(o:TDPLObjectList;fieldname:string);
   property memo:TMemo read Fmemo;
   procedure bindmemo(m:TMemo);
   procedure unbindmemo;
   procedure updatememo;
   procedure changememo(Sender:TObject);
   end;
   

   TDPLStringGridAdapter=class(TObject)
   protected
    // FObjects:TObjectList;
     fbindedgrid:TStringGrid;
     fclass:TDPLClass;

   private
    FOnActivate: TNotifyEvent;
    function GetObjects(i: Integer): TDPLObject;
    procedure SetObjects(i: Integer; const Value: TDPLObject);
    function GetCount: Integer;
    procedure SetOnActivate(const Value: TNotifyEvent);

   public
     ColumnHeaders:TObjectList;
     FObjects:TDPLObjectList;

     procedure applyheaderaliases(aliases:TStringList);
     procedure bindgrid(grid:TStringGrid);
     procedure unbindgrid;
     procedure updategrid;
     function Add:TDPLObject;
     function AddAfter(i:Integer):TDPLObject;
     function AddAfterCurrent:TDPLObject;
     procedure Delete(i:Integer);
     procedure SetEditText(Sender: TObject; ACol, ARow: Integer;  const Value: String);
     procedure RemoveSelectedRow;

     procedure GridRowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
     procedure GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
     procedure GridEnter(Sender:TObject);
     constructor create(o:TDPLObjectList);
     
     property Objects[i:Integer]:TDPLObject read GetObjects write SetObjects; default;
     property Count:Integer read GetCount;
     property OnActivate:TNotifyEvent read FOnActivate write SetOnActivate;

     property grid:TStringGrid read fbindedgrid;
   end;

   TMark=class(TDPLObject)
   private
    Ftext: string;
    Fnumber: integer;

    procedure Setnumber(const Value: integer);
    procedure Settext(const Value: string);
    function Getmarktext: string;

   public
    property marktext:string read Getmarktext;
   published
   property text:string read Ftext write Settext;
   property number:integer read Fnumber write Setnumber;
   end;

  TDPLMarksList=class(TDPLObjectList)
  private
    function Getfulltext(i: Integer): string;
    function Gettext(i: Integer): string;
    function Mark(i:Integer):TMark;
  published
   constructor create;
  public
   property text[i:Integer]:string read Gettext;
   property fulltext[i:Integer]:string read Getfulltext;
   procedure addmark(number:integer;text:string);
   procedure fillstrings(s:TStrings);

   end;
 

   TStudent=class(TDPLObject)
   constructor create;override;
   protected
    notcopyprop:TStringList;
    
    fbirth_date:TDateTime;//TDateTime;
    fFIO:string;
    fdiplom_sn:string;
    fdat_FIO:string;
    fzakonchil_god:Integer;
    fvid_date:TDateTime;
    fdiplom_otl:boolean;
    fdiplom_dublikat:boolean;
    fsex:string;
  private
    Fid: integer;
    function copyintemplate(i:Integer):Boolean; override;
    procedure Setdiplom_dublikat(const Value: boolean);
    procedure Setdiplom_otl(const Value: boolean);
    procedure Setsex(const Value: string);
    procedure Setvid_date(const Value: TDateTime);
    procedure Setid(const Value: integer);
   public
    disciplines:TDPLObjectList;
    notes:TDPLObjectList;
    markslist:TDPLMarksList;

    function saveToSuperObject:ISuperObject; override;
    procedure loadFromSuperObject(o:ISuperObject); override;
    procedure loadFromTemplate(tmpl:TStudent;flags:TStudentImportFlags); reintroduce;
    procedure loadFromObject(tmpl:TStudent); reintroduce;
    procedure clear; override;
   published
    property id:integer read Fid write Setid;
    property birth_date:TDateTime read fbirth_date write fbirth_date;//TDateTime;
    property FIO:string read fFIO write fFIO;
    property diplom_sn:string read fdiplom_sn write fdiplom_sn;
    property dat_FIO:string read fdat_FIO write fdat_FIO;
    property zakonchil_god:Integer read fzakonchil_god write fzakonchil_god;
    property vid_date:TDateTime read Fvid_date write Setvid_date;//:TDateTime;
    property diplom_otl:boolean read Fdiplom_otl write Setdiplom_otl;
    property diplom_dublikat:boolean read Fdiplom_dublikat write Setdiplom_dublikat;
    property sex:string read Fsex write Setsex;

   end;


  
   TUnderStudentObject = class(TDPLObject)
  private
    Fstudent_id: Integer;
    Fid: integer;
    procedure Setid(const Value: integer);
    procedure Setstudent_id(const Value: Integer);
  public
    function ispropvisible(i:Integer):Boolean; override;
  published

    property id:integer read Fid write Setid;
    property student_id:Integer read Fstudent_id write Setstudent_id;

   end;

   TNote=class(TUnderStudentObject)
  private
    Fnote: string;
    procedure Setnote(const Value: string);
   published
   property note:string read Fnote write Setnote;
   end;

   TDiscipline=class(TUnderStudentObject)
   constructor create;override;
  private
    Fzach_edinitsy_f: double;

    Fzach_edinitsy: integer;

    Fball: integer;
    Ftime_aud: integer;
    Ftime_all: integer;
    Fname: string;
    procedure Setball(const Value: integer);

    procedure Setname(const Value: string);

    procedure Settime_all(const Value: integer);
    procedure Settime_aud(const Value: integer);
    procedure Setzach_edinitsy(const Value: integer);
    procedure Setzach_edinitsy_f(const Value: double);
  public
    function ispropvisible(i:Integer):Boolean; override;

   published

       property name:string read Fname write Setname;
       property zach_edinitsy_f: double read Fzach_edinitsy_f write Setzach_edinitsy_f;

       property time_all:integer read Ftime_all write Settime_all;
       property time_aud:integer read Ftime_aud write Settime_aud;
       property ball:integer read Fball write Setball default 4;

   //    property zach_edinitsy: integer read Fzach_edinitsy write Setzach_edinitsy;
    end;








implementation

uses JvCombobox,JvExStdCtrls, JvEdit, JvCheckedMaskEdit, JvDatePickerEdit, DPLHelpersUnit;
  
    function escapestring(s:string):string;
    const slchars='"';
    var i:integer;
    begin
      result:='';
      for i:=1 to length(s) do
      begin
        if pos(s[i],slchars)>0 then result:=result+s[i];
        result:=result+s[i];
      end;
    end;
    
    function TDPLObject.getInsertSQL:string;
    var
      I,N:integer;
      names,values:string;
    begin
      n:=self.propcount;
      result:='';
      names:='';
      values:='';
      for i:=1 to n do
      begin
        with self.getprop(i-1) do
        begin

          //result:=result+' '+name+'='+self.sqlFormatAndEscape(value);
          //if i<>n then Result:=result+',';
          if name<>'id' then
          begin
          names:=names+' '+name;
          if i<>n then names:=names+',';
          values:=values+' '+self.sqlFormatAndEscape(value);
          if i<>n then values:=values+',';
          end;
        end;
      end;
      result:='('+names+') values ('+values+')';

    end;

function TDPLObject.getUpdateSQL: string;
var
      I,N:integer;
      sets:string;
      p:TDPLProperty;
    begin
      n:=self.propcount;
      result:='';
      sets:='';
      
      for i:=1 to n do
      begin
        p:=self.getprop(i-1);

          //result:=result+' '+name+'='+self.sqlFormatAndEscape(value);
          //if i<>n then Result:=result+',';
          if p.name<>'id' then
          begin
            sets:=sets+format(' %s = %s',[p.name,self.sqlFormatAndEscape(p.value)]);
            if i<>n then sets:=sets+',';
          end;

      end;
      result:=sets;

    end;



procedure TStudent.Setdiplom_dublikat(const Value: boolean);
begin
  Fdiplom_dublikat := Value;
end;

procedure TStudent.Setdiplom_otl(const Value: boolean);
begin
  Fdiplom_otl := Value;
end;






procedure TStudent.Setsex(const Value: string);
begin
  Fsex := Value;
end;



procedure TStudent.Setvid_date(const Value: TDateTime);
begin
  Fvid_date := Value;
end;



{ TDPLObject }

function TDPLObject.getprop(i: Integer): TDPLProperty;
var
   List: PPropList;
   N:integer;
begin

      N:= self.propcount;
      if N <= 0 then
        Exit;
      GetMem(List, SizeOf(PPropInfo)*N);
      try
        GetPropInfos(ClassInfo, List);
        Result.typename:=List^[i].proptype^.Name;
        Result.typekind:=List^[I].PropType^.Kind;
        result.name:=List^[i].name;

        result.value:=GetPropValue(self,List[i].Name,false);
        if List^[I].PropType^.name='TDateTime' then
        begin
          TvarData(result.value).VType:=varDate;//:=VarFromDateTime(VarToDateTime(result.value));
        end;
        {case List[I].PropType^.Kind of
        tkEnumeration, tkInteger:
        begin
          Result.value:=GetOrdProp(Self, List[I]);
        end;
        tkFloat:
        begin
          if List[i].PropType^.Name='TDateTime' then result.value:=FloatToDateTime(GetFloatProp(Self, List[I])) else
          begin
             result.value:=GetFloatProp(Self, List[I]);
          end;
        end;
        tkString, tkLString, tkWString:
        begin
         result.value:=GetStrProp(Self, List[I]);
        end;

        end;  }



      finally
       FreeMem(List,SizeOf(PPropInfo)*N);
      end;
end;

function TDPLObject.propcount: Integer;
var
      TypeData:PTypeData;
begin
      TypeData:= GetTypeData(ClassInfo);
      result:= TypeData.PropCount;

end;

function TDPLObject.sqlFormatAndEscape(v:Variant):string;
begin
  if VarType(v)=varDate then
  begin
  result:='"'+FormatDateTime('yyyy-mm-dd',v)+'"';
  exit;
  end;
  if VarType(v)=varBoolean  then
  begin
    if v then result:='1' else result:='0';
    Exit;
  end;
  if VarIsNumeric(v) then
  begin
  result:=v;
  exit;
  end;

  result:='"'+escapestring(v)+'"';
end;

procedure TStudent.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TDPLObject.loadFromDataset(d: TDataSet);
var i,n:Integer;
p:TDPLProperty;
begin
  n:=self.propcount;
  for i:=1 to n do
  begin
    p:=self.getprop(i-1);
    try


      self.setprop(i-1,d.FieldValues[p.name]);
    except
      on e:Exception do raise Exception.CreateFmt('%s field %s',[e.Message,p.name]);
    end;
  end;

end;

procedure TDPLObject.setprop(i: integer; v: Variant);
var p:TDPLProperty;
begin
  p:=self.getprop(i);
  if (p.typename='TDateTime') and (v=Null) then
  begin
    SetPropValue(Self,p.name,0); //workaround Null value from dataset when 1899-01-01 set
    Exit;
  end;
  SetPropValue(Self,p.name,v);

end;

procedure TDPLControlAdapter.bindcontrol(c: TWinControl);
var t,i,n:Integer;
p:TDPLProperty;
begin
  n:=self.fobj.propcount;
  SetLength(self.fbindedcontrols,n);
  for i:=0 to n-1 do
  begin
    p:=self.fobj.getprop(i);
    self.fbindedcontrols[i]:=nil;
    for t:=0 to c.ControlCount-1 do
    begin
      if UpperCase(Self.prefix+p.name)=UpperCase(c.Controls[t].Name) then
      begin
       
        self.fbindedcontrols[i]:=c.Controls[t];

        if c.Controls[t] is TEdit then
        begin
          TEdit(c.Controls[t]).OnChange:=self.EditChange;
          //TEdit(c.Controls[t]).Color:=clred;
        end;
        if c.Controls[t] is TMemo then
        begin
          TMemo(c.Controls[t]).OnChange:=self.EditChange;
          //TMemo(c.Controls[t]).Color:=clred;
        end;
        if c.Controls[t] is TSpinEdit then
        begin
          TSpinEdit(c.Controls[t]).OnChange:=self.EditChange;
          //TSpinEdit(c.Controls[t]).Color:=clRed;
        end;
        if c.controls[t] is TJvEdit then
        begin
          TJvEdit(c.controls[t]).OnChange:=self.EditChange;
          //TJvEdit(c.controls[t]).Color:=clRed;
        end;

        if c.controls[t] is TComboBox then
        begin
          TComboBox(c.controls[t]).OnChange:=self.EditChange;
         // TComboBox(c.controls[t]).Color:=clRed;
        end;
        if c.controls[t] is TJvComboBox then
        begin
          TJvComboBox(c.controls[t]).OnChange:=self.EditChange;
          //TJvComboBox(c.controls[t]).Color:=clRed;
        end;
        if c.controls[t] is TJvDatePickerEdit then
        begin
          TJvDatePickerEdit(c.controls[t]).OnChange:=self.EditChange;
         // TJvDatePickerEdit(c.controls[t]).Color:=clRed;
        end;
        if c.controls[t] is TCheckBox then
        begin
          TCheckBox(c.controls[t]).OnClick:=self.EditChange;
         // TCheckBox(c.controls[t]).Color:=clRed;
        end;
        end;
    end;
   //if self.fbindedcontrols[i] = nil then raise Exception.Create('Error bind control, '+p.name+' not found');
  end;
  Self.fcontrol:=c;

end;

procedure TDPLControlAdapter.unbindcontrol;
begin
  self.fcontrol:=nil;
end;

procedure TDPLControlAdapter.EditChange(sender: TObject);
var i:Integer;
v:Variant;
begin
  for i:=0 to High(fbindedcontrols) do
  begin
    if sender=self.fbindedcontrols[i] then
    begin
      v:=NULL;
      if sender is TCustomEdit then v:=TCustomEdit(sender).Text;
      if sender is TSpinEdit then v:=TSpinEdit(sender).value;
      if sender is TJvEdit then v:=TJvEdit(sender).Text;
      if sender is TJvComboBox then v:=TJvComboBox(sender).ItemIndex;
      if sender is TComboBox then v:=TComboBox(sender).text;
      if sender is TJvDatePickerEdit then v:=VarFromDateTime(TJvDatePickerEdit(sender).Date);
      if sender is TCheckBox then v:=TCheckBox(sender).Checked;
      if v=null then raise Exception.Create('unsupported control '+sender.ClassName);
      try
        Self.fobj.setprop(i,v);
      except
        if sender is TCustomEdit then TCustomEdit(sender).Text:=self.fobj.getprop(i).value;
        if sender is TJvEdit then TJvEdit(sender).Text:=self.fobj.getprop(i).value;
      end
    end;
  end;
end;

procedure TDPLControlAdapter.updatecontrol;
var i:Integer;
p:TDPLProperty;
begin
if Self.fcontrol<>nil then
begin
  for i:=0 to High(fbindedcontrols) do
  begin
   try
    p:=self.fobj.getprop(i);
    if self.fbindedcontrols[i] is TCustomEdit then TCustomEdit(self.fbindedcontrols[i]).Text:=p.value;
    if self.fbindedcontrols[i] is TMemo then TMemo(self.fbindedcontrols[i]).Text:=p.value;
    if self.fbindedcontrols[i] is TSpinEdit then TSpinEdit(self.fbindedcontrols[i]).value:=p.value;
    if self.fbindedcontrols[i] is TJvEdit then TJvEdit(self.fbindedcontrols[i]).Text:=p.value;
    if self.fbindedcontrols[i] is TJvComboBox then TJvComboBox(self.fbindedcontrols[i]).ItemIndex:=p.value;
    if self.fbindedcontrols[i] is TComboBox then TComboBox(self.fbindedcontrols[i]).ItemIndex:=TComboBox(self.fbindedcontrols[i]).Items.IndexOf(p.value);
    if self.fbindedcontrols[i] is TJvDatePickerEdit then TJvDatePickerEdit(self.fbindedcontrols[i]).Date:=p.value;
    if self.fbindedcontrols[i] is TCheckBox then TCheckBox(self.fbindedcontrols[i]).Checked:=p.value;
   except
     on e:Exception do
     begin
       Writeln(e.message,'  ',p.value,'  ', self.fbindedcontrols[i].name);
       
     end;
   end;

  end;
end;
end;

{procedure TDPLObject.KeyPress(sender: TObject; var key: Char);
var i:Integer;
v:Variant;
rstring:string;
e:TEdit;
begin
  for i:=0 to High(fbindedcontrols) do
  begin
    if sender=self.fbindedcontrols[i] then
    begin

     if sender is TEdit then
     begin
       e:=TEdit(sender);
       rstring:=e.Text;
       if e.SelLength>0 then Delete(rstring,e.SelStart,e.SelLength);
       if key>=#32 then
       rstring:=Copy(rstring,1,e.SelStart)+key+copy(rstring,e.SelStart+1,Length(rstring)-e.SelStart);
       if key=Chr(VK_BACK) then
       rstring:=Copy(rstring,1,e.SelStart-1)+copy(rstring,e.SelStart+1,Length(rstring)-e.SelStart);
       if key=Chr(VK_DELETE) then
       rstring:=Copy(rstring,1,e.SelStart)+copy(rstring,e.SelStart+2,Length(rstring)-e.SelStart-1);

       if pos('-',rstring)>0 then key:=#0;

       log('selstart %d %s',[TEdit(sender).SelStart,rstring]);
     end;

      //Self.setprop(i,v);
    end;
  end;     

end;}



function TDPLObject.ispropvisible(i: Integer): Boolean;
begin
result:=true;
end;

function TDPLObject.propname(i: Integer): string;
begin
result:=self.getprop(i).name;
end;

function TDPLObject.LimitBall(ball: integer): integer;
begin
result:=ball;
if result>29 then raise Exception.create('Value too high');//result:=9;
if result<1 then raise Exception.create('Value too low');//result:=1;

end;

constructor TDPLObject.create;
var i:Integer;
begin
  self.faliases:=TStringList.Create;
  for i:=0 to Self.propcount-1 do
  begin
    self.faliases.Add(self.propname(i));
  end;
  inherited create;
end;

procedure TDPLObject.loadFromJSON(json: string);
var o:ISuperObject;
ss:TStringStream;
begin
  ss:=TStringStream.Create(json);
  try
  o:=TSuperObject.ParseStream(ss,true);
  if o=nil then raise DPLJSONexception.CreateFmt('Error Load %s from json',[self.ClassName]);
  self.loadFromSuperObject(o);
  finally
  ss.Free;
  end;
end;

function TDPLObject.saveToSuperObject: ISuperObject;
var o:ISuperObject;
i:Integer;
p:TDPLProperty;

begin
  o:=TSuperObject.ParseString('{}',false);
  for i:=0 to self.propcount-1 do
  begin
    p:=self.getprop(i);

    case p.typekind of
    tkInteger,tkEnumeration,tkInt64:
    begin
      if  VarType(p.value)=varBoolean then
      begin
        o.B[p.name]:=p.value;
      end else o.I[p.name]:=p.value;
    end;
    tkChar,tkWChar,tkString,tkLString, tkWString:
    begin
      o.S[p.name]:=p.value;
    end;
    tkFloat:
    begin

      if (p.typename='TDateTime') then o.S[p.name]:=SQLDateTimeToStr(VarToDateTime(p.value))  else o.D[p.name]:=p.value
    end;

    end;
    
  end;
  result:=o;
end;

function TDPLObject.saveToJSON: string;
begin
result:=self.saveToSuperObject.asJson;
end;

procedure TDPLObject.loadFromSuperObject(o: ISuperObject);
var
i:Integer;
p:TDPLProperty;
v:Variant;
begin
 
  for i:=0 to self.propcount-1 do
  begin
    p:=self.getprop(i);

    case p.typekind of
    tkInteger,tkEnumeration,tkInt64:
    begin


      if VarType(v)=varBoolean then
      begin
        v:=o.B[p.name];
      end else
      begin
        v:=o.I[p.name];
      end;
    end;
    tkChar,tkWChar,tkString,tkLString, tkWString:
    begin
      v:=o.S[p.name];
    end;
    tkFloat:
    begin
      v:=o.D[p.name];
      if (p.typename='TDateTime') then v:=VarFromDateTime(SQLStrToDateTime(o.S[p.name]))
    end;

    end;
    self.setprop(i,v);
  end;

end;

procedure TDPLObject.loadFromTemplate(tmpl: TDPLObject);
var i:Integer;
begin
  if tmpl.ClassType<> self.ClassType then raise Exception.CreateFmt('Objects must be instances of the same class: %s and %s',[self.ClassName,tmpl.ClassName]);
  for i:=0 to self.propcount-1 do
  begin
    if self.copyintemplate(i) then
    self.setprop(i,tmpl.getprop(i).value);
  end;
end;

function TDPLObject.copyintemplate(i: Integer): Boolean;
begin
result:=true;
end;

procedure TDPLObject.loadFromObject(tmpl: TDPLObject);
var i:Integer;
begin
  if tmpl.ClassType<> self.ClassType then raise Exception.CreateFmt('Objects must be instances of the same class: %s and %s',[self.ClassName,tmpl.ClassName]);
  for i:=0 to self.propcount-1 do
  begin
    self.setprop(i,tmpl.getprop(i).value);
  end;

end;

procedure TDPLObject.clear;
var o:TDPLObject;
begin

  o:=TDPLClass(self.ClassType).Create;
  self.loadFromObject(o);
  o.Free;
end;

function TDPLObject.getAlias(field: string): string;
var i:integer;
begin
  for i:=0 to self.propcount-1 do
  begin
    if field = Self.propname(i) then
    begin
      Result:= self.faliases[i];
      exit;
    end;
  end;
  raise Exception.CreateFmt('Field %s not found in %s',[field,ClassName]);
end;

function TDPLObject.getFieldByAlias(alias: string): string;
begin
  if self.faliases.IndexOf(alias)>=0 then
  begin
    result:=self.propname(self.faliases.IndexOf(alias));
  end else raise Exception.CreateFmt('Alias %s not found in %s',[alias,ClassName]);
end;

procedure TDPLObject.setAlias(i: Integer; alias: string);
begin
 self.faliases[i]:=alias;
end;

procedure TDPLObject.setAliasByFieldName(field, alias: string);
 var i:integer;
begin
  for i:=0 to self.propcount-1 do
  begin
    if field = Self.propname(i) then
    begin
      self.faliases[i]:=alias;
      exit;
    end;
  end;
  raise Exception.CreateFmt('Field %s not found in %s',[field,ClassName]);
end;

{ TDiscipline }

constructor TDiscipline.create;
begin
self.ball:=4;
inherited create;
end;

function TDiscipline.ispropvisible(i: Integer): Boolean;
var pn:string;
begin
Result:= inherited  ispropvisible(i);
pn:=self.propname(i);
result:=Result and (not (pn='zach_edinitsy'));
end;

procedure TDiscipline.Setball(const Value: integer);
begin

  Fball := LimitBall(Value);

end;





procedure TDiscipline.Setname(const Value: string);
begin
  Fname := Value;
end;




procedure TDiscipline.Settime_all(const Value: integer);
begin
  Ftime_all := Value;
end;

procedure TDiscipline.Settime_aud(const Value: integer);
begin
  Ftime_aud := Value;
end;

procedure TDiscipline.Setzach_edinitsy(const Value: integer);
begin
  Fzach_edinitsy := Value;
end;

procedure TDiscipline.Setzach_edinitsy_f(const Value: double);
begin
  Fzach_edinitsy_f := Value;
end;


constructor TDPLControlAdapter.create(aobj: TDPLObject);
begin
self.fobj:=aobj;
end;

{ TDPLStringGridRowAdapter }



{ TDPLStringGridAdapter }





function TDPLStringGridAdapter.Add: TDPLObject;
begin
  result:=Self.fclass.Create;
  self.FObjects.Add(result);
  Self.updategrid;
end;

function TDPLStringGridAdapter.AddAfter(i: Integer): TDPLObject;
var gr:TGridRect;
begin
  result:=Self.fclass.Create;
  if (self.FObjects.Count=0) then self.FObjects.Add(result) else
  begin
  self.FObjects.Insert(i+1,result);
  end;
  gr:=self.fbindedgrid.Selection;
  gr.Top:=gr.Top+1;
  gr.Bottom:=gr.Top;
  self.fbindedgrid.Selection:=gr;
  Self.updategrid;
end;

function TDPLStringGridAdapter.AddAfterCurrent: TDPLObject;
begin
self.AddAfter(self.fbindedgrid.Selection.Top-self.fbindedgrid.FixedRows);

end;

procedure TDPLStringGridAdapter.applyheaderaliases(aliases: TStringList);
var i:Integer;
ch:TSGColumnHeader;
begin
  if aliases=nil then Exit;
for i:=0 to self.ColumnHeaders.Count-1 do
begin
  ch:=TSGColumnHeader(self.ColumnHeaders[i]);

  if aliases.Values[ch.name]<>'' then ch.displayname:=aliases.Values[ch.name];
end;

end;

procedure TDPLStringGridAdapter.bindgrid(grid: TStringGrid);
begin
  self.fbindedgrid:=grid;
  self.fbindedgrid.OnSetEditText:=Self.setedittext;
  self.fbindedgrid.OnColumnMoved:=self.GridColumnMoved;
  self.fbindedgrid.OnRowMoved:=self.GridRowMoved;
  self.fbindedgrid.OnEnter:=self.GridEnter;
end;

constructor TDPLStringGridAdapter.create(o:TDPLObjectList);
var aobj:TDPLObject;
i:integer;
ch:TSGColumnHeader;
begin
  self.FObjects:=o;
  self.ColumnHeaders:=TObjectList.Create;
//  self.fo:=ac.Create;
  aobj:=o.FClass.create;
  self.Fclass:=o.FClass;
  for i:=0 to aobj.propcount-1 do
  begin
    ch:=TSGColumnHeader.create;
    ch.propid:=i;
    ch.name:=aobj.getprop(i).name;
    ch.displayname:=ch.name;
    if aobj.ispropvisible(i) then
    self.ColumnHeaders.Add(ch);

//    propbinding[i]:=aobj.getprop(i).name;
 //   fpropbinding[i]:=i;
  end;
end;

procedure TDPLStringGridAdapter.Delete(i: Integer);
begin
  self.FObjects.Delete(i);
  self.updategrid;
end;

function TDPLStringGridAdapter.GetCount: Integer;
begin
result:=self.FObjects.Count;
end;

function TDPLStringGridAdapter.GetObjects(i: Integer): TDPLObject;
begin
result:=TDPLObject(Self.Fobjects[i]);
end;

procedure TDPLStringGridAdapter.GridColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
self.ColumnHeaders.Move(FromIndex-self.fbindedgrid.FixedCols,Toindex-self.fbindedgrid.FixedCols);
end;

procedure TDPLStringGridAdapter.GridEnter(Sender: TObject);
begin
self.OnActivate(self);
end;

procedure TDPLStringGridAdapter.GridRowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
 self.FObjects.Move(Fromindex-self.fbindedgrid.FixedRows,ToIndex-self.fbindedgrid.FixedRows);
end;

procedure TDPLStringGridAdapter.RemoveSelectedRow;
begin
self.Delete(Self.fbindedgrid.Selection.Top-self.fbindedgrid.FixedRows);
end;

procedure TDPLStringGridAdapter.SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
  if (Sender=self.fbindedgrid)  then
  begin
   if (Arow-self.fbindedgrid.FixedRows>self.Count-1) then
   self.Add;
   try
   self.Objects[Arow-self.fbindedgrid.FixedRows].setprop(TSGColumnHeader(self.ColumnHeaders[Acol-self.fbindedgrid.FixedCols]).propid,value);
   
   except
     if Value<>'' then self.fbindedgrid.Cells[ACol,ARow]:=self.Objects[Arow-self.fbindedgrid.FixedRows].getprop(TSGColumnHeader(self.ColumnHeaders[Acol-self.fbindedgrid.FixedCols]).propid).value;
   end;
  end;
end;

procedure TDPLStringGridAdapter.SetObjects(i: Integer;
  const Value: TDPLObject);
begin
  self.FObjects[i]:=value;
end;

procedure TDPLStringGridAdapter.SetOnActivate(const Value: TNotifyEvent);
begin
  FOnActivate := Value;
end;

procedure TDPLStringGridAdapter.unbindgrid;
begin
  self.fbindedgrid:=nil;
end;

procedure TDPLStringGridAdapter.updategrid;
var t,i,n:Integer;
p:TDPLProperty;
rc,cc:integer;
begin
  if self.fbindedgrid.RowCount-self.fbindedgrid.FixedRows<>self.Count then
  begin
    rc:=self.Count+self.fbindedgrid.FixedRows;
    if rc<2 then  rc:=2;
    self.fbindedgrid.RowCount:=rc;
   

  end;
  n:=self.ColumnHeaders.Count;
  if self.fbindedgrid.ColCount-self.fbindedgrid.FixedCols<>n then
  begin
    cc:=n+self.fbindedgrid.FixedCols;
    if cc<2 then cc:=2;
    self.fbindedgrid.ColCount:=cc;
  end;
  for i:=1 to self.fbindedgrid.ColCount-1 do
  begin
    self.fbindedgrid.Cells[i,self.fbindedgrid.FixedCols]:='';
  end;
  for i:=0 to self.fbindedgrid.FixedCols-1 do self.fbindedgrid.ColWidths[i]:=40;



  for i:=0 to n-1 do
  begin

    self.fbindedgrid.Cells[i+self.fbindedgrid.FixedCols,0]:=TSGColumnHeader(self.ColumnHeaders[i]).displayname;
  end;

  for t:=0 to self.count-1 do
  begin
    self.fbindedgrid.Cells[0,t+self.fbindedgrid.FixedRows]:=IntToStr(t+1);
  for i:=0 to n-1 do
  begin
    p:=self.Objects[t].getprop(TSGColumnHeader(self.ColumnHeaders[i]).propid);
    self.fbindedgrid.Cells[i+self.fbindedgrid.FixedCols,t+self.fbindedgrid.FixedRows]:=p.value;
  end;
  end;
end;




{ TUnderStudent }

function TUnderStudentObject.ispropvisible(i: Integer): Boolean;
var pn:string;
begin

pn:=self.propname(i);
result:=not ((pn='id') or (pn='student_id'));
end;

procedure TUnderStudentObject.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TUnderStudentObject.Setstudent_id(const Value: Integer);
begin
  Fstudent_id := Value;
end;



{ TNote }

procedure TNote.Setnote(const Value: string);
begin
  Fnote := Value;
end;

{ TDPLMemoAdapter }

procedure TDPLMemoAdapter.bindmemo(m: TMemo);
begin
self.Fmemo:=m;
self.Fmemo.OnChange:=self.changememo;
end;

procedure TDPLMemoAdapter.changememo(Sender: TObject);
var i:integer;
n:TDPLObject;
begin
 if Sender=self.Fmemo then
 begin

   while (self.Fmemo.Lines.Count>self.objects.Count) do
   begin
     n:=self.fclass.create;
     Self.objects.Add(n);
   end;

   while (self.Fmemo.Lines.Count<self.objects.Count) do
   begin
     Self.objects.Delete(0);
   end;
   for i:=0 to Self.Fmemo.Lines.Count-1 do
   begin
     n:=TDPLObject(self.objects[i]);
     n.setprop(self.propindex,self.Fmemo.Lines[i]);
   end;

 end;
end;

constructor TDPLMemoAdapter.create(o: TDPLObjectList;
  fieldname: string);
var aobj:TDPLObject;
i:integer;
begin
self.objects:=o;
self.fclass:=o.fclass;
aobj:=o.FClass.create;
self.propindex:=-1;
for i:=0 to aobj.propcount-1 do
begin
  if aobj.propname(i)=fieldname then self.propindex:=i;
end;
if self.propindex=-1 then raise Exception.CreateFmt('Field %s not found in object %s',[fieldname,aobj.ClassName]);

end;

procedure TDPLMemoAdapter.Setmemo(const Value: TMemo);
begin
  Fmemo := Value;
end;

procedure TDPLMemoAdapter.unbindmemo;
begin
 self.Fmemo.OnChange:=nil;
 self.Fmemo:=nil;
end;

procedure TDPLMemoAdapter.updatememo;
var i:Integer;
sl:TStringList;
begin
  //self.Fmemo.Clear;
  sl:=TStringList.Create;
  for i:=0 to self.objects.Count-1 do
  begin
   sl.Add(TDPLObject(Self.objects[i]).getprop(self.propindex).value);
  end;
  self.Fmemo.Lines.Assign(sl);
  sl.Free;
end;

{ TDPLObjectList }

constructor TDPLObjectList.create(AClass: TDPLClass;ATableName:string);
begin
self.FClass:=AClass;
self.tablename:=ATableName;
inherited create;
end;

constructor TStudent.create;
begin
  self.notcopyprop:=TStringList.create;
  self.notcopyprop.Sorted:=true;
  self.notcopyprop.Add('FIO');
  self.notcopyprop.Add('dat_FIO');
  self.notcopyprop.Add('birth_date');
  self.notcopyprop.Add('diplom_mark');
  self.notcopyprop.Add('diplom_regnum');
  self.notcopyprop.Add('diplom_sn');
  self.notcopyprop.Add('diplom_work');
  self.notcopyprop.Add('dok_pred');
  self.notcopyprop.Add('dok_pred_num');
  self.notcopyprop.Add('dok_pred_seria');
  self.notcopyprop.Add('dok_pred_year');
  self.notcopyprop.Add('gak');
  self.notcopyprop.Add('gak_mark');
  self.notcopyprop.Add('school');
  self.notcopyprop.Add('sex');
  self.notcopyprop.Add('id');

  self.fbirth_date:=SQLSTRToDateTime('1980-01-01');
  self.vid_date:=self.fbirth_date;

  disciplines:=TDPLObjectList.create(TDiscipline,'disciplines');

  notes:=TDPLObjectList.create(TNote,'notes');

  markslist:=TDPLMarksList.create;

  inherited create;

end;

procedure TDPLObjectList.loadFromJSON(json: string);
var o:ISuperObject;
ss:TStringStream;
begin
  ss:=TStringStream.Create(json);
  try
  o:=TSuperObject.ParseStream(ss,true);
  if o=nil then raise DPLJSONException.CreateFmt('Error Load %s from json',[self.ClassName]);
  self.loadFromSuperObject(o);
  finally
    ss.Free;
  end;
end;

procedure TDPLObjectList.loadFromSuperObject(o: ISuperObject);
var i:Integer;
obj:TDPLObject;
begin
  self.Clear;
  for i:=0 to o.asArray.Length-1 do
  begin
    obj:=self.FClass.create;
    obj.loadFromSuperObject(o.asArray[i]);
    self.Add(obj);
  end;
end;

procedure TDPLObjectList.loadFromTemplate(tmpl: TDPLObjectList);
var i:integer;
o:TDPLObject;
begin
  if tmpl.ClassType<> self.ClassType then raise Exception.CreateFmt('Objects must be instances of the same class: %s and %s',[self.ClassName,tmpl.ClassName]);
  Self.Clear;
  for i:=0 to tmpl.Count-1 do
  begin
    o:=self.FClass.create;
    o.loadFromTemplate(TDPLObject(tmpl[i]));
    self.Add(o);
  end;

end;

function TDPLObjectList.saveToJSON: string;
begin
  self.saveToSuperObject.AsJSon(true);
end;

function TDPLObjectList.saveToSuperObject: ISuperObject;
var i:integer;

begin
  result:=TSuperObject.ParseString('[]',false);

  for i:=0 to self.Count-1 do
  begin
    Result.AsArray[i]:=TDPLObject(self[i]).saveToSuperObject;
  end;
  
end;

procedure TStudent.loadFromSuperObject(o: ISuperObject);
begin
  inherited loadFromSuperObject(o);
  self.disciplines.loadFromSuperObject(o.O[self.disciplines.tablename]);

  self.notes.loadFromSuperObject(o.O[self.notes.tablename]);
  try
  Self.markslist.loadFromSuperObject(o.O['markslist']);
  except
  end;
  
end;

function TStudent.saveToSuperObject: ISuperObject;
begin
  result:=inherited saveToSuperObject;
  Result.O[self.disciplines.tablename]:=self.disciplines.savetoSuperObject;
  Result.O[self.notes.tablename]:=self.notes.savetoSuperObject;
  Result.O['markslist']:=Self.markslist.saveToSuperObject;

end;

procedure TStudent.loadFromTemplate(tmpl: TStudent;flags:TStudentImportFlags);
var st: TStudent;
begin
  inherited loadFromTemplate(tmpl);
  st:=TStudent(tmpl);
  if (siDisciplines in flags) or (siAll in flags) then self.disciplines.loadFromTemplate(st.disciplines);
  if (siNotes in flags) or (siAll in flags) then self.notes.loadFromTemplate(st.notes);
  try
  self.markslist.loadFromTemplate(st.markslist);
  except
  end;
end;

procedure TStudent.loadFromObject(tmpl: TStudent);

  var st: TStudent;
begin
  inherited loadFromObject(tmpl);
  st:=TStudent(tmpl);
  self.disciplines.loadFromTemplate(st.disciplines);
  self.notes.loadFromTemplate(st.notes);
  try
  self.markslist.loadFromTemplate(st.markslist);
  except
  end;
end;


function TStudent.copyintemplate(i: Integer): Boolean;
begin
  result:=not (self.notcopyprop.IndexOf(propname(i))>=0);
end;

procedure TStudent.clear;
begin
  inherited clear;
  self.disciplines.Clear;
  self.notes.Clear;
  self.markslist.Clear;
end;

{ TMark }



function TMark.Getmarktext: string;
begin
Result:=format('%d. %s',[self.Fnumber,self.Ftext]);
end;

procedure TMark.Setnumber(const Value: integer);
begin
  Fnumber := Value;
end;

procedure TMark.Settext(const Value: string);
begin
  Ftext := Value;
end;

{ TDPLMarksList }

procedure TDPLMarksList.addmark(number: integer; text: string);
var m:tMark;
begin
m:=self.mark(number);
if m=nil then
begin
  m:=TMark.create;
  m.text:=text;
  m.number:=number;
  self.Add(m)
end else raise Exception.CreateFmt('Mark %d already exists',[number]);

end;

constructor TDPLMarksList.create;
begin
inherited create(TMark,'');
end;

procedure TDPLMarksList.fillstrings(s: TStrings);
var i:Integer;
begin
  s.Clear;
  for i:=0 to self.count-1 do
  begin
    s.Add(TMark(self[i]).marktext);
  end;
end;

function TDPLMarksList.Getfulltext(i: Integer): string;
var t:Integer;
m:TMark;
begin
  result:='';
  m:=self.Mark(i);
  if m<>nil then result:=m.marktext;
end;

function TDPLMarksList.Gettext(i: Integer): string;
var t:Integer;
m:TMark;
begin
  result:='';
  m:=self.Mark(i);
  if m<>nil then result:=m.text;
end;



function TDPLMarksList.Mark(i: Integer): TMark;
var m:TMark;
t:Integer;
begin
  result:=nil;
  For t:=0 to self.Count-1 do
  begin
    m:=TMark(self[t]);
    if m.number=i then
    begin
    result:=m;
    Break;
    end;
  end;
end;



end.
