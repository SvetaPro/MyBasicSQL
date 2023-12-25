CREATE VIEW vw_goods AS
SELECT id_goods, goods, price, id_categories
FROM goods;

CREATE VIEW vw_goods_categories AS
SELECT id_categories, categories_name
FROM goods_categories;

