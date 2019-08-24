use empdb1;
-- a through e
select client_name, city from client;
select * from product;
select client_name from client where client_name like '_a%';
select * from client where city like 'Tezpur';
select * from product;
select * from product where selling_price between 2001 AND 5000;


-- g,h,i

ALTER TABLE product
ADD COLUMN `new_price` DECIMAL(10,2) NULL;
select * from product order by description;
select order_date,idorder from 	`order`;

select * from `order`;
-- j


delete FROM `order` where order_date < '08-08-25';

-- k
UPDATE `order`
SET
`delivery_date`='16-08-08'
WHERE idorder='ON01008';

-- l
UPDATE client
SET
`total_bal`=1200
WHERE idclient= 'CN01003';
-- m
select * from product where description like 'HDD1034' or 'DVDRW';
-- n
select client_name,city,State from client where State <> 'Assam';
-- o
select * from `order` where cancel_date like '%-03-%';

-- resetting the table so queries can be run again
INSERT INTO `empdb1`.`order`
(`idorder`,`order_date`,`client_number`,
`salesman_number`,`billed_whole_payment`,`delivery_date`,`prod_id`,`new_prod_rate`)
VALUES
('ON1008','08-08-24',4,1,0,'08-08-26',3,50);
alter table product drop column `new_price`
