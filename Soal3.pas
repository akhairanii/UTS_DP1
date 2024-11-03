program PolaX;

var
  n, i, j: Integer;

begin
  { Meminta input ukuran n }
  Write('Masukkan ukuran n: ');
  ReadLn(n);

  { Cek apakah n ganjil atau genap }
  if n mod 2 = 0 then
  begin
    WriteLn('angka tidak valid, harus angka ganjil');
  end
  else
  begin
    { Loop untuk mencetak pola X }
    for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        { Cek apakah di posisi diagonal atau diagonal inverse }
        if (j = i) or (j = n - i + 1) then
          Write('*')
        else
          Write(' ');
      end;
      WriteLn;  // Pindah ke baris berikutnya 
    end;
  end;
end.
