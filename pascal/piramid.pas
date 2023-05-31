program piramid1;
uses wincrt;
var
   ut, satu, hasil, br : integer;
begin
     ut  :=1;
     satu:=30;
     while ut<=5 do
       begin
            br:=ut;
            
            while br<=5 do
              begin
                   write(satu,' ');
                   br:=br+1;
                   hasil:=hasil+satu;
                   satu:=satu-1;
              end;
            writeln('= ', hasil);
            hasil:=0;
            writeln;
            ut:=ut+1;
       end;
end.