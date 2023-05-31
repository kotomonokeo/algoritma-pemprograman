PROGRAM PROG17;
USES WINCRT;
VAR
  UT, SP, GT, T, SP1, AN, BR, CK, ANGKA : INTEGER;
BEGIN
    UT    := 1;
    ANGKA := 8;
    SP    := 9;
    GT    := 0;
    WHILE UT<=9 DO
        BEGIN
            SP1 := SP; T := 0;
            WHILE SP1>=1 DO
                BEGIN
                    WRITE(  '  '  );
                    SP1 := SP1 - 1;
                END;
                BR := UT;
                CK := ANGKA;
            WHILE BR>=1 DO
                BEGIN
                    WRITE(CK,' ');
                    BR := BR - 1;
                    T := T + CK;
                    CK := CK + 1;
                END;
            WRITELN(' = ',T);
            GT := GT + T;
            SP := SP - 1;
            UT := UT + 1;
            ANGKA := ANGKA - 1;
        END;
        WRITELN('------------------------ +');
        WRITELN('     TOTAL           = ', GT);
END.
