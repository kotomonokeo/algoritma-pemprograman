PROGRAM PROG8;
USES WINCRT;
VAR
   KT, BT, T : INTEGER;
BEGIN
     KT := 5;
     BT := 1;
     T  := 5;
     WRITE (KT);
     WHILE BT <= 6 DO
       BEGIN
            T := T + KT;
            WRITE(' + ',KT);
            BT := BT + 1;
       END;
     WRITE(' = ',T);
END.