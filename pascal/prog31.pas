PROGRAM PROG31;
USES WINCRT;
VAR
   UT, T1, T2, GT, K, N, BR, BR1 : INTEGER;
BEGIN
     UT:=1; T1:=0; T2:=0;
     GT:=0;
     REPEAT
           BR:=1; N:=12; K:=1;
           REPEAT
                 BR1:=1;
                 REPEAT
                       WRITELN(N:3,'   ',K:3);
                       T1:= T1 + N;
                       T2:= T2 + K;
                       K := K + 1;
                       BR1:= BR1 + 1;
                 UNTIL (BR1>2);
                 N:= N + 1;
                 BR:= BR + 1;
           UNTIL (BR>2);
           UT:= UT + 1;
     UNTIL (UT>2);
     WRITELN('---------------- +');
     GT:= T1 + T2;
     WRITELN(T1,' + ',T2,' = ',GT);
END.
