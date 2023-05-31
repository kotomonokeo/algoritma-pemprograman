PROGRAM PROG39;
USES WINCRT;
PROCEDURE HITUNG1;
VAR
   A,B,C : BYTE;
BEGIN
     A := 50;
     B := 70;
     C := A+B;
     WRITELN('            NILAI     A = ',A);
     WRITELN('            NILAI     B = ',B);
     WRITELN('            TOTAL A + B = ',C);
END;
PROCEDURE HITUNG2;
VAR
    A,B,C : INTEGER;
BEGIN
     A:=10;
     B:=40;
     C:=A-B;
     WRITELN('            NILAI     A = ',A);
     WRITELN('            NILAI     B = ',B);
     WRITELN('            TOTAL A - B = ',C);
END;
BEGIN
     CLRSCR;
     HITUNG1;
     HITUNG2;
END.