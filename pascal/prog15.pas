PROGRAM PROG15;
USES WINCRT;
VAR
   UT, SP, GT, T, SP1, SP2, BR : INTEGER;
BEGIN
    UT := 1;
    SP := 8;
    GT := 0;
    WHILE UT<=8 DO
      BEGIN
           SP1 := SP; T := 0;
           WHILE SP1>=1 DO
             BEGIN
                  WRITE(' ');
                  SP1 := SP1 - 1;
             END;

           BR := UT;
           WHILE BR>=1 DO
             BEGIN
                  WRITE(UT,' ');
                  BR := BR - 1;
                  T  := T + UT;
             END;

           SP2 := SP;
           WHILE SP2>=1 DO
             BEGIN
                 WRITE(' ');
                 SP2 := SP2 - 1;
             END;
           WRITELN('= ',T);
           GT := GT + T;
           SP := SP - 1;
           UT := UT + 1;
      END;
    WRITELN('_____________________ +');
    WRITELN('      TOTAL       = ',GT);
END.