select tmp.nama_product as nama_product,
	SUM(tmp.qty) as qty
from (
	select
		mp.nama_product,
		case
			when ts.satuan = 'krat' then SUM(ts.qty) * 24
			when ts.satuan = 'dus' then SUM(ts.qty) * 30
			when ts.satuan = 'botol' then SUM(ts.qty)
		end as qty
	from schema_1.tr_so as ts
	left join schema_1.ms_product as mp on ts.kode_barang = mp.kode_produk
	group by mp.nama_product, ts.satuan
) as tmp
group by tmp.nama_product
order by qty desc, nama_product
limit 3