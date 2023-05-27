select mp.nama_pegawai,
	emp_so.jumlah_so,
	mp.target,
	case
		when jumlah_so < target then 'ya'
		else 'tidak'
	end as kurang_dari_target
from (
	select tmp.kode_sales as kode_pegawai, count(tmp.kode_sales) as jumlah_so
	from (
		select distinct no_so, kode_sales
		from schema_1.tr_so
		order by kode_sales
	) as tmp
	group by tmp.kode_sales
) as emp_so
left join schema_1.ms_pegawai as mp
on emp_so.kode_pegawai = mp.kode_pegawai
order by nama_pegawai;