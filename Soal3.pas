program soal3; //nama program 
uses crt; //memanggil unit crt

var //pendeklarasian variabel
n,baris,kolom  : integer; //mendeklarasikan variabel n, baris dan kolom adalah tipe data real

begin //memulai program
    clrscr; //membersihkan terminal
    write('n = ');readln(n); //input nilai n 
    
    if n mod 2 = 1 then //operasi kondisi jika n bernilai bilangan ganjil
    begin //memulai operasi kondisi
        for baris := 1 to n do //operasi kondisi baris
        begin //memulai operasi kondisi baris
            for kolom := 1 to n do //operasi kondisi kolom
            begin //memulai operasi kondisi kolom
                if (baris=kolom) or (baris+kolom=n+1) then //operasi kondisi untuk output "*"
                write('*') //output "*"
                else //operasi jika kondisi tidak terpenuhi
                write(' '); //operasi kondisi untuk output ' '
            end; //mengakhiri operasi kondisi kolom
            writeln; //berpindah baris
        end; //mengakhiri operasi 
    end //mengakhiri operasi kondisi baris
    else //operasi jika kondisi tidak terpenuhi
    
    write('angka tidak valid, harus angka ganjil'); //operasi kondisi saat n genap
end. //mengakhiri program 
