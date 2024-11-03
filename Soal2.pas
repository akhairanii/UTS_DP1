program HitungTotalBelanja;

var
  jumlahPelanggan, jumlahJenis, i, j: Integer;
  hargaSayur, jumlahSayur, totalBelanja: Real;

begin
  { Meminta input jumlah pelanggan }
  Write('Masukkan jumlah pelanggan: ');
  ReadLn(jumlahPelanggan);

  i := 1;
  while i <= jumlahPelanggan do
  begin
    WriteLn;
    WriteLn('Pelanggan ke-', i, ':');
    
    { Meminta input jumlah jenis sayur yang dibeli }
    Write('Masukkan jumlah jenis sayur yang dibeli: ');
    ReadLn(jumlahJenis);
    
    totalBelanja := 0;  // Inisialisasi total belanja untuk setiap pelanggan 
    
    j := 1;
    while j <= jumlahJenis do
    begin
      { Meminta input harga sayur dan jumlah yang dibeli }
      Write('Masukkan harga sayur ke-', j, ': ');
      ReadLn(hargaSayur);
      Write('Masukkan jumlah sayur yang dibeli: ');
      ReadLn(jumlahSayur);
      
      { Menambahkan total untuk jenis sayur ini ke total belanja }
      totalBelanja := totalBelanja + (hargaSayur * jumlahSayur);
      
      j := j + 1;
    end;
    
    { Menampilkan total belanja untuk pelanggan ini }
    WriteLn('Total belanja untuk pelanggan ke-', i, ': Rp ', totalBelanja:0:2);
    
    i := i + 1;
  end;
end.
