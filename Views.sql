CREATE VIEW vw_goods AS
SELECT id_goods, goods, price, id_categories
FROM goods;

CREATE VIEW vw_goods_categories AS
SELECT id_categories, categories_name
FROM goods_categories;

SELECT c.categories_name, COUNT(id_goods)
FROM vw_goods AS g
LEFT JOIN vw_goods_categories AS c
ON g.id_categories = c.id_categories
GROUP BY c.categories_name;