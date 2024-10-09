#CALL prep_asn('2023-08-01');

SELECT 
	A.nip,
	A.nama_lengkap,
	B.nama,
	CONCAT(levenshtein_ratio(A.nama_lengkap, B.nama),' %') similiarity
FROM (SELECT nip, nama_lengkap from temp_asn LIMIT 20) A
LEFT JOIN master B ON A.nip=B.nip;