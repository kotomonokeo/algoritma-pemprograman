PROGRAM PROG14;
USES WINCRT;
VAR
   HS, JH, KJ, P, TB, TK, TP, TKB : REAL;
BEGIN
     WRITE('1. HARGA SEWA MOBIL/HARI   = RP.  ');READLN(HS);
     WRITE('2. JUMLAH HARI             = HARI ');READLN(JH);
     WRITE('3. KELEBIHAN JAM/JAM 50000 = JAM  ');READLN(KJ);
     WRITE('4. PPN                     = %    ');READLN(P);
     TB := HS*JH;
     TK := KJ*50000;
     TP := (P/100)*(TB+TK);
     TKB:= TB+TK+TP;
     WRITELN('-----------------------------------------');
     WRITELN('  TOTAL BAYAR SEWA        = RP.  ',TB:10:1);
     WRITELN('  TOTAL KELEBIHAN JAM     = RP.  ',TK:10:1);
     WRITELN('  TOTAL PAJAK             = RP.  ',TP:10:1);
     WRITELN('-----------------------------------------');
     WRITELN('  TOTAL KESELURUHAN BAYAR = RP.  ',TKB:10:1);
END.
