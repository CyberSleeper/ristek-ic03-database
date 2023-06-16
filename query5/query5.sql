select 
    mv.vendor,
    SUM(tmp.amount) as amount
from (
    select 
        mp.kode_vendor,
        tmp.kode_barang,
        (tmp.qty * mp.harga_satuan) as amount
    from (
        select
            ts.kode_barang,
            case
                when ts.satuan = 'krat' then SUM(ts.qty) * 24
                when ts.satuan = 'dus' then SUM(ts.qty) * 30
                when ts.satuan = 'botol' then SUM(ts.qty)
            end as qty
        from (
            select
                ti.no_entry_do,
                ti.no_inv,
                td.no_entry_so
            from 
                schema_1.tr_inv as ti
            left join
                schema_1.tr_do as td 
                    on ti.no_entry_do = td.no_entry_do 
        ) as tmp
        left join schema_1.tr_so as ts 
            on tmp.no_entry_so = ts.no_entry_so 
        group by ts.kode_barang, ts.satuan
    ) as tmp
    left join schema_1.ms_product as mp 
        on tmp.kode_barang = mp.kode_produk
) as tmp
left join schema_1.ms_vendor as mv 
    on tmp.kode_vendor = mv.kode_vendor
group by vendor
order by amount desc, vendor
limit 3