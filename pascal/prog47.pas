PROGRAM PROG47;
USES WINCRT;
VAR
   X,L1,L2,T,HL,H,M : BYTE;
BEGIN
     WRITE('MASUKKAN JUMLAH DATA = ');READLN(X);
     H:=(X+2) DIV 3;
     WRITELN('JUMLAH HALAMAN       = ',H);
     READLN;
     CLRSCR;
     L1:=1;
     M :=1;
     IF H=1 THEN
       BEGIN
          L2:=X;
       END
       ELSE
       BEGIN
           L2:=3;
       END;
     FOR T:= 1 TO H DO
       BEGIN
            CLRSCR;
            WRITELN('HAL = ',T);
            WRITELN;
            WRITELN('          --------------');
            WRITELN('                DATA    ');
            WRITELN('          --------------');
            FOR HL := L1 TO L2 DO
              BEGIN
                   WRITELN('                    ',HL:2);
              END;
            WRITELN('          --------------');
            READLN;
            L1:=L1+3;
            L2:=L2+3;
            M :=M+1;
       END;
END.