use project;
# 1
select * from user where city='Tehran';
# 2
select * from user where phoneNumber like '_912%';
# 3
select * from product where producer=1234567890;
# 4
select p.name,avg(`rank`) as avg from list l ,product p where p.code=l.product group by product  having avg between 3 and 4;
# 5
update product set salePrice=1.1*salePrice;
# 6
select * from product p1 inner join  (select code,avg(`rank`) as avg from list l ,product where code=l.product group by product having avg>3)p2 on p1.code=p2.code  where p1.producer=1234567890;
# 7
select * from factor where buyer=1122334455;
# 8
select distinct producer from product where product.code in (select product from list l inner join (select * from factor)f where f.code=l.factor and f.buyer=1122334455);
# 9
select * from product p1 where p1.code in (select product from list l inner join (select * from factor)f on l.factor = f.code where f.purchaseDate >'2020-01-01');
# 10
select * from product where product.salePrice-product.purchasePrice>100;
# 11
select name from user where user.ID in (select buyer from factor f inner join (select * from list)l on l.factor=f.code and l.product=10010020);
# average of all ranks is approximately 3.27
select avg(`rank`) from list l ,product p where p.code=l.product;
# 12
select p.name,avg from product p inner join (select p.name,avg(`rank`) as avg from list l ,product p where p.code=l.product group by product having avg>(select avg(`rank`) from list l ,product p where p.code=l.product))q on q.name=p.name;
# 13
select p.name,avg(`rank`) as avg from list l ,product p where p.code=l.product group by product order by avg desc LIMIT 1;
# 14
select p1.name,sc from product p1 inner join (select sum(count) as sc,product from list group by product)p2 on p1.code=p2.product;
# 15
select u.name,u.lastname from user u inner join (select f.buyer,product,count(product) as cp from list l inner join (select * from factor)f on f.code=l.factor group by buyer,product)x on x.buyer=u.ID where x.cp >1;
# 16
select l.product,p.producer,sum(l.count) from list l inner join product p on l.product = p.code group by p.producer;
# 17
select x.name,x.lastname,sc from producer x inner join (select p.producer,sum(count)as sc from product p inner join (select l.product,l.count from factor f inner join list l on f.code = l.factor where f.purchaseDate>'2020-01-01')x on x.product=p.code group by p.producer)y on y.producer=x.ID order by sc ;
# 18
select f.code,sum(price) from factor f inner join (select p.salePrice,l.count,l.factor as f_code,l.count*p.salePrice as price from product p,list l where l.product=p.code)x on x.f_code=f.code  group by f.code ;
# 19
select f.code,sum(s_price-p_price) as benefit from factor f inner join (select l.factor as f_code,l.count*p.salePrice as s_price,l.count*p.purchasePrice as p_price from product p,list l where l.product=p.code)x on x.f_code=f.code  group by f.code ;
#
#
#views
# 1
CREATE VIEW first as (select w1.product_name,w1.producer_name,w1.producer_lastname, COUNT(distinct w2.buyer) from (select p2.name as producer_name,p2.lastname as producer_lastname,p1.name as product_name,p1.code as
    product_id from Product p1 inner join Producer p2 on p1.producer = p2.id) w1 inner join (
    select buyer,code from factor fd inner join list l on fd.code = l.factor
    )w2 on w2.code=product_id GROUP BY w1.product_name, w1.producer_name, w1.producer_lastname);
select * from first;
# # 2
create view sec as select producer.name,producer.ID,count(p.name) from producer inner join (select * from product )p on producer.ID = p.producer group by producer;
