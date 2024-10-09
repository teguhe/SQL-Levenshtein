Fungsi Levenshtein

Author     : Teguh Prasetyo
Language   : SQL, kompatibel dengan mySQL dan MariaDB
Date       : 1 Agustus 2023

Fungsi levenshtein digunakan untuk mencari prosentase kemiripan antara dua string, kompatibel dengan MySQL dan MariaDB

Petunjuk penggunaan
- jalankan "function levenshtein.sql" untuk membuat fungsi levenshtein
- jalankan "function levenshtein ratio.sql" untuk membuat fungsi levenshtein_ratio
- tampilkan kemiripan data antara dua string dengan menjalankan perintah seperti contoh "SELECT levenshtein_ratio('teguh prasetyo','teguh prasetya') similiarity"
- untuk data dari database, bisa digunakan perintah seperti dibawah ini
  "
      SELECT 
      	A.nip,
      	A.nama_lengkap,
      	B.nama,
      	CONCAT(levenshtein_ratio(A.nama_lengkap, B.nama),' %') similiarity
      FROM (SELECT nip, nama_lengkap from temp_asn LIMIT 20) A
      LEFT JOIN master B ON A.nip=B.nip;
  "