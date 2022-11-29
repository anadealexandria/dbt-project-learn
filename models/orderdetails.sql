

select d.order_id, d.product_id, d.unit_price, d.quantity, p.product_name, p.supplier_id, p.category_id,
d.unit_price  * d.quantity as total,
(p.unit_price * d.quantity) - total as discount
from {{source('sources', 'order_details')}} as d
left join {{source('sources', 'products')}} as p on d.product_id = p.product_id 







