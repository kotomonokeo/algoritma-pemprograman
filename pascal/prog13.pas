PROGRAM PROG13;
USES WINCRT;
VAR
   HB, JB, DK, TH, TD, JR : REAL;
BEGIN
     WRITE('1. HARGA BARANG    = RP.  ');READLN(HB);
     WRITE('2. JUMLAH BARANG   = BIJI ');READLN(JB);
     WRITE('3. DISKON          = %    ');READLN(DK);
     TH := HB*JB;
     TD := (DK/100)*TH;
     JR := TH-TD;
     WRITELN('--------------------------------');
     WRITELN('   TOTAL HARGA   = RP.  ',TH:10:1);
     WRITELN('   TOTAL DISKON  = RP.  ',TD:10:1);
     WRITELN('--------------------------------');
     WRITELN('   JUMLAH BAYAR  = RP.  ',JR:10:1);
END.