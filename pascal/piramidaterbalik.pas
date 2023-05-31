program prog12;
uses wincrt;
var
   ut, satu, br : integer;
begin
     ut  :=1;
     satu:=1;
     while ut<=7 do
       begin
            br:=ut;
            while br<=7 do
              begin
                   write(satu,' ');
                   br:=br+1;
              end;
            writeln;
            ut:=ut+1;
       end;
end.