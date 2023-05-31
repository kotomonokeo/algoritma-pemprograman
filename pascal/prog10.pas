PROGRAM PROG10;
USES WINCRT;
VAR
   A,B,C,D,T,TT,GT : INTEGER;
BEGIN
     A:=1; B:=2; GT:=0;
     WHILE A<=3 DO
       BEGIN
            T:=0;
            C:=10;
            D:=1;
            TT:=0;
            WHILE D<=3 DO
              BEGIN
                   T:=C*B;
                   WRITELN(' ',C,'*',B,'=',T);
                   TT:=TT+T;
                   C:=C+10;
                   B:=B+1;
                   D:=D+1;
              END;
            WRITELN('----------------------- +');
            WRITELN(' SUB TOTAL =',TT);
            GT:= GT+TT;
            A:=A+1;
            WRITELN;
       END;
     WRITELN;
     WRITELN(' TOTAL KESELURUHAN = ',GT);
END.