select distinct
	least(xy1.x, xy1.y) as x,
	greatest(xy1.x, xy1.y) as y
from schema_2.xy as xy1
inner join schema_2.xy as xy2 on xy1.y = xy2.x 
order by x, y