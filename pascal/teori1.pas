PROGRAM REMIDI_TEORI1;
USES WINCRT;
VAR
   UT, BR, A, B, C, D, E, F, T : INTEGER;
BEGIN
     UT := 1;
     B  := 12;
     E  := 10;
     WHILE UT<=2 DO
        BEGIN
             T := 0;
             C := 10;
             D := 0;
             F := 0;
             BR:= 1;
             WHILE BR<=3 DO
                BEGIN
                     A := 10;
                     WHILE A<=12 DO
                        BEGIN
                             D := A + B - C;
                             F := D + E;
                             T := T + F;
                             WRITELN(A,' + ',B,' - ',C,' = ',D,' + ',E,' = ',F);
                             A := A + 2;
                             C := C + 2;
                             E := E + 10;
                        END;
                     BR := BR + 1;
                END;
             WRITELN;
             WRITELN('-------------------------------------- +');
             WRITELN('         TOTAL KESELURUHAN     = ', T);
             WRITELN;
             UT := UT + 1;
        END;
END. 