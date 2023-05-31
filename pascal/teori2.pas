PROGRAM REMIDI_TEORI2;
USES WINCRT;
VAR
   A, B, SP, SP1, BR : INTEGER;
BEGIN
   A := 20;
   B := 1;
   SP:= 6;
   WHILE B<=6 DO
      BEGIN
           SP1 := SP;
           WHILE SP1>=1 DO
             BEGIN
                  WRITE('  ');
                  SP1 := SP1 - 1;
             END;

           BR := B;
           WHILE BR>=1 DO
             BEGIN
                  WRITE(A,'  ');
                  BR := BR - 1;
                  A  := A + 1;
             END;

           WRITELN;
           SP := SP - 1;
           B  := B + 1;
      END;
END.