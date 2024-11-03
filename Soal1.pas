program HitungBiayaPerjalanan;

var
  jarak: Integer;
  anggotaPremium: Boolean;
  biayaDasar, biayaTambahan, total: Real;

begin
  jarak := 15;  //contoh jarak perjalanan 
  anggotaPremium := True;  

  biayaDasar := 20000;

  if jarak <= 5 then
    biayaTambahan := jarak * 5000  // Jika jarak <= 5 km, biaya tambahan Rp5.000 per km 
  else if jarak <= 10 then
    biayaTambahan := (5 * 5000) + ((jarak - 5) * 4000); 
    biayaTambahan := (5 * 5000) + (5 * 4000) + ((jarak - 10) * 3000);  
  { Total biaya sebelum diskon }
  total := biayaDasar + biayaTambahan;

  { Terapkan diskon utama 10% jika total biaya lebih dari Rp100.000 }
  if total > 100000 then
    total := total * 0.90;  // Diskon 10% 

  { Diskon tambahan 5% untuk anggota premium setelah diskon utama (jika ada) }
  if anggotaPremium then
    total := total * 0.95;  // Diskon tambahan 5% 

  { Output hasil akhir total biaya perjalanan }
  WriteLn('Total akhir: Rp', total:2:0);
end.
