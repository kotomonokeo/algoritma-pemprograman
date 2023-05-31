PROGRAM PROGLAB_2;
USES WINCRT;
VAR
  A,B,C,TT,GT : INTEGER;
BEGIN
     A:=1; B:=20; GT:=0;
     WHILE A<=4 DO
       BEGIN
            C :=1;
            TT:=0;
            WHILE C<=2 DO
              BEGIN
                  WRITELN('   ',B);
                  TT:=TT+B;
                  B :=B-1;
                  C :=C+1;
              END;
            WRITELN('--------- +');
            WRITELN(' TOTAL = ',TT);
            GT := GT+TT;
            A  := A+1;
            WRITELN;
       END;
     WRITELN;
     WRITELN(' TOTAL KESELURUHAN = ',GT);
END.

                   
