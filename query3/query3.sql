select 
	td.no_do, 
	tmp.nama_customer, 
	td.tgl_do, 
	cast('2018-02-01' as date) as date_measurement,
	(cast('2018-02-01' as date) - td.tgl_do) as aging
from (
	select tmp.no_entry_so, mc.nama_customer
	from (
		select ts.no_entry_so, ts.kode_customer
		from schema_1.tr_so as ts
		where ts.no_entry_so in (
			select td.no_entry_so
			from schema_1.tr_do as td
			where td.no_entry_do not in (
				select ti.no_entry_do	
				from schema_1.tr_inv as ti
			) 
		)
	) as tmp
	left join schema_1.ms_customer mc on tmp.kode_customer = mc.kode_customer
) as tmp
left join schema_1.tr_do as td on tmp.no_entry_so = td.no_entry_so 
order by aging desc, td.no_do