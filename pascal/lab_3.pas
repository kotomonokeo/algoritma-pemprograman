PROGRAM LAB3;
USES WINCRT;
VAR
   PS, JJ, HM, JM, HM2, JM2, D, TB, TM, TD, TKB : REAL;
BEGIN
     WRITE('1. HARGA RENTAL PLAYSTATION/JAM = RP.   ');READLN(PS);
     WRITE('2. JUMLAH JAM                   = JAM   ');READLN(JJ);
     WRITE('3. HARGA MAKANAN                = RP.   ');READLN(HM);
     WRITE('4. JUMLAH MAKANAN               = BIJI  ');READLN(JM);
     WRITE('5. HARGA MINUMAN                = RP.   ');READLN(HM2);
     WRITE('6. JUMLAH MINUMAN               = BIJI  ');READLN(JM2);
     WRITE('7. DISKON                       = %     ');READLN(D);
     TB := PS*JJ;
     TM := (HM*JM)+(HM2*JM2);
     TD := (D/100)*(TB+TM);
     TKB:= TB+TM-TD;
     WRITELN('-----------------------------------------');
     WRITELN(' TOTAL BAYAR RENTAL           = RP.   ',TB:10:2);
     WRITELN(' TOTAL BAYAR MAKANAN & MINUMAN= RP.   ',TM:10:2);
     WRITELN(' TOTAL DISKON                 = RP.   ',TD:10:2);
     WRITELN('-----------------------------------------');
     WRITELN(' TOTAL KESELURUHAN BAYAR      = RP.   ',TKB:10:2);
END.