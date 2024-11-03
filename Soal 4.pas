program HitungKembalianMinimum;

var
  kembalian, jumlahUang: Integer;
  pecahan: array[1..11] of Integer = (100000, 75000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100);
  i, jumlahPecahan: Integer;

begin
  Write('Masukkan jumlah kembalian: ');
  ReadLn(kembalian);

  jumlahPecahan := 0;  // Inisialisasi jumlah total pecahan yang akan diberikan 
  
  { Loop melalui setiap pecahan uang untuk memberikan kembalian dengan jumlah minimum }
  for i := 1 to 11 do
  begin
    if kembalian >= pecahan[i] then
    begin
      jumlahUang := kembalian div pecahan[i];  //Hitung jumlah lembar/koin dari pecahan ini 
      jumlahPecahan := jumlahPecahan + jumlahUang;  //Tambahkan ke total jumlah pecahan 
      kembalian := kembalian mod pecahan[i];  // Update kembalian yang tersisa 
    end;
  end;

  { Output jumlah minimum lembaran atau koin yang dibutuhkan }
  WriteLn('Jumlah minimum lembaran atau koin: ', jumlahPecahan);
end.
