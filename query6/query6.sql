select 
	n.node as node,
	case 
		when n.node not in (
			select parent from schema_2.nodes where parent is not null
		) then 'Leaf'
		when n.parent is null then 'Root'
		else 'Branch'
	end as position
from
	schema_2.nodes as n 
order by node