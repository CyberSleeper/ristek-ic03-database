select td.no_do,
	ts.kode_customer,
	td.tgl_do, 
	case 
		when ts.satuan = 'krat' then ts.qty * 24
		when ts.satuan = 'dus' then ts.qty * 30
		when ts.satuan = 'botol' then ts.qty * 1
	end as qty,
	case 
		when ts.satuan = 'krat' then mp.harga_satuan * ts.qty * 24 * 11 / 10 + mc.ongkos_kirim
		when ts.satuan = 'dus' then mp.harga_satuan * ts.qty * 30 * 11 / 10 + mc.ongkos_kirim
		when ts.satuan = 'botol' then mp.harga_satuan * ts.qty * 1 * 11 / 10 + mc.ongkos_kirim
	end as amount
from schema_1.tr_do as td
left join schema_1.tr_so as ts
on td.no_entry_so = ts.no_entry_so
left join schema_1.ms_product as mp
on ts.kode_barang = mp.kode_produk 
left join schema_1.ms_customer as mc 
on ts.kode_customer = mc.kode_customer 