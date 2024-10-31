program soal2; //nama program
uses crt; //memanggil unit crt

var //pendeklarasian variabel
    jmlhpelanggan, pelangganke, jmlhjns, hrgsyr, jnske, jmlhsyr: integer; //mendeklarasikan variabel jmlhpelanggan, pelangganke, jmlhjns, hrgsyr, jnske, jmlhsyr adalah tipe data integer
    total : real; //mendeklarasikan variabel total adalah tipe data real
begin //memulai program
    clrscr; //membersihkan terminal
    write('Masukkan jumlah pelanggan : '); readln(jmlhpelanggan); //input jumlah pelanggan
    writeln;
    pelangganke := 1; //inisialisasi variabel pelanggan ke = 1
    while (pelangganke <= jmlhpelanggan) do //operasi kondisi jika nilai pelanggan sama atau kurang dari jumlah pelanggan
    begin //mulai operasi kondisi
        writeln('Pelanggan ke-', pelangganke); //output pelanggan ke berapa
        write('Masukkan jumlah jenis sayur yang dibeli : '); readln(jmlhjns); //input jumlah jenis sayur
        writeln; //membuat jarak 1 line
        jnske := 1; //inisialisasi variabel jenis ke = 1
        total := 0; //inisialisasi variabel total = 0
        while (jnske <= jmlhjns) do //operasi kondisi jika nilai jenis sama atau kurang dari nilai jumlah jenis
        begin //mulai operasi kondisi
            write('Masukkan harga sayur ke-', jnske, ' : '); readln(hrgsyr); //input harga sayur
            write('Masukkan jumlah sayur yang dibeli : '); readln(jmlhsyr); //input jumlah sayur
            writeln; //membuat jarak 1 line
            total := hrgsyr * jmlhsyr + total; //menghitung total harga
            jnske := jnske + 1; //penambahan nilai jnske
        end; //akhir operasi kondisi
        writeln('Total harga untuk pelanggan ke-', pelangganke, ' adalah : ', total:0:2); //output total
        writeln; //membuat jarak 1 line
        pelangganke := pelangganke + 1 //tambah nilai pelanggan
    end; //akhir operasi kondisi
end. //mengakhiri program
