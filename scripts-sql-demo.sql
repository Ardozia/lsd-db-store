SELECT name, email, avatar,  address_name, address_nr
FROM user
WHERE email = "edickens0@phpbb.com";

select address_country, count(iduser) 
from user
group by address_country;

-- user altera o seu nome na página de perfil
update user
set email = "hjmn@wel.com"
where iduser = 4;

delete from user
where iduser = 4;

-- detalhe de producto 5
select product.name, photos, price, category.name categoria
from product, category
where category_idcategory = idcategory
and idproduct = 5;

-- pesquisa de produtos por preço
select name name_produt, price price_base, price*1.23 price_vat, price*1.07 price_dolar from product
where price < 50;

-- pesquisa por produtos com 'ca' no nome
select name, price from product
where name like '%ca%';

select category.name, count(1), avg(price) 
from product, category
where category_idcategory = idcategory
group by category_idcategory;

-- histórico de compras de um user
select product.name, photos, quantity, discount, purchase.dt_created 
from purchase, product
where product_idproduct = idproduct and
user_iduser = 11
order by purchase.dt_created desc;


-- os 3 produtos mais vendidos
select p.name name_product, sum(quantity) qtd
from product p, purchase pr, user u
where product_idproduct = idproduct and
	user_iduser = iduser
group by name_product
order by qtd desc 
limit 3;




