program soal1; //nama program
uses crt; //memanggil unit crt

var //pendeklarasian variabel
jarak : integer; //mendeklarasikan variabel jarak adalah tipe data integer
total,hasil : real; //mendeklarasikan variabel total dan hasil adalah tipe data real
prem : string; //mendeklarasikan variabel prem adalah tipe data char

begin //memulai program
    clrscr; //membersihkan terminal
    write('Jarak(KM) : '); readln(jarak); //input jarak tempuh
    write('Anggota Premium (true/false) : ');readln(prem); //menginput nilai apakah anggota premium true atau false 
    
    case jarak of //operasi kondisi dari jarak
        0..4     : total := 20000+(jarak*5000); //jika jarak perjalanan diantara 0-5 KM 
        5..10    : total := 20000+(jarak*4000); //jika jarak perjalanan diantara 5-10KM
    else       
        total := 20000+(jarak*3000); //jika jarak perjalanan diatas 10KM
    end; //mengakhiri operasi kondisi jarak
    
    if prem= ('true') then //operasi kondisi saat prem true
    begin //memulai sub program
        if (total > 100000) then hasil := 0.855*total //operasi kondisi jika total bayar diatas 100.000 dan anggota premium
        else 
            hasil := 0.95*total; //jika total bayar dibawah 100.000 dan anggota premium
        end //mengakhiri operasi kondisi
        else //operasi kondisi saat nilai prem adalah selain True
        begin //memulai operasi kondisi
        if (total > 100000) then hasil := 0.9*total //jika total bayar diatas 100000 dan bukan anggota premium
        else 
            hasil := total; //jika total pembayaran dibawah 100.000 dan bukan anggota premium
    end; //mengakhiri operasi kondisi dan sub program
    
    write('Total Akhir : Rp',hasil:5:2); //output total akhir
end. //mengakhiri program
