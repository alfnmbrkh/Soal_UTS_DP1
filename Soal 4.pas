program soal4; //nama program
uses crt; //memanggil unit crt

var //pendeklarasian variabel
uang, jmlhlmbr, kembalian: longint; //mendeklarasikan variabel uang, jmlhlmbr dan kembalian adalah tipe data long integer
begin //memulai program

    clrscr; //membersihkan terminal
    write('Masukkan uang: '); readln(uang); //input uang 
    kembalian:=100000; //menginisialisasi nilai pecahan
    jmlhlmbr:=0; //menginisialisasi jmlhlmbr
    
    while uang>0 do //operasi perulangan ketika uang lebih dari 0
    begin //memulai operasi perulangan
        jmlhlmbr:=jmlhlmbr+(uang div kembalian); //menghitung jumlah lembar/koin uang 
        uang:=uang mod kembalian ; //menghitung uang sisa 
        if kembalian = 100000 then kembalian := 75000 //operasi  mengubah kembalian dari 100000 menjadi 75000
        else if kembalian = 75000 
            then kembalian := 50000 //operasi mengubah kembailan dari 75000 menjadi 50000
        else if kembalian = 50000 
            then kembalian := 20000 //operasi mengubah kembailan dari 50000 menjadi 20000
        else if kembalian = 20000 
            then kembalian := 10000 //operasi mengubah kembailan dari 20000 menjadi 10000
        else if kembalian = 10000 
            then kembalian := 5000 //operasi mengubah kembailan dari 10000 menjadi 5000
        else if kembalian = 5000  
            then kembalian := 2000 //operasi mengubah kembailan dari 5000 menjadi 2000
        else if kembalian = 2000  
            then kembalian := 1000 //operasi mengubah kembailan dari 2000 menjadi 1000
        else if kembalian = 1000  
            then kembalian := 500 //operasi mengubah kembailan dari 1000 menjadi 500
        else if kembalian = 500   
            then kembalian := 200 //operasi mengubah kembailan dari 500 menjadi 200
        else if kembalian = 200   
            then kembalian := 100; //operasi mengubah kembailan dari 200 menjadi 100
    end; //mengakhiri operasi perulangan
    
    writeln; //membuat jarak 1 line
    writeln(jmlhlmbr); //output nilai a(jumlah lembar/koin uang)
end. //mengakhiri program
