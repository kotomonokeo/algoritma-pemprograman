PROGRAM PROG46;
USES WINCRT;
VAR
   X,L1,L2,T,HL,H : BYTE;
BEGIN
     WRITE('MASUKKAN JUMLAH DATA = ');READLN(X);
     H:=(X+2) DIV 3;
     WRITELN('JUMLAH HALAMAN       = ',H);
     READLN;
     CLRSCR;
     L1:=1;
     IF H=1 THEN
       BEGIN
          L2:=X;
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
       END;
END.