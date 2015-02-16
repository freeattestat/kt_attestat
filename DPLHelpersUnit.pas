unit DPLHelpersUnit;

interface

   function SQLStrToDateTime(s:string):TDateTime;
   function SQLDatetimeTostr(dt:TDateTime):string;
implementation
uses SysUtils;
    function getFormatSettings:TFormatSettings;
    begin
      Result.DateSeparator:='-';
      result.TimeSeparator:=':';
     result.LongDateFormat:='yyyy-mm-dd';
     result.ShortDateFormat:=result.LongDateFormat;
     result.LongTimeFormat:='hh:nn:ss';
     result.ShortTimeFormat:=result.LongTimeFormat;
    end;

   function SQLStrToDateTime(s:string):TDateTime;
   begin
     result:=StrToDateTime(s,getFormatSettings);
   end;

   function SQLDatetimeTostr(dt:TDateTime):string;
   begin
     result:=DateTimeToStr(dt,getFormatSettings);
   end;

end.
