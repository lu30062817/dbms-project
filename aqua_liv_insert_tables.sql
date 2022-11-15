LOAD DATA LOCAL INFILE 'C:\\Users\\akshitha\\Desktop\\Aqua-liv\\category.csv'
into table category
fields terminated by ','
lines terminated by '\r\n'
ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:\\Users\\akshitha\\Desktop\\Aqua-liv\\product.csv'
into table product
fields terminated by ','
lines terminated by '\r\n'
ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:\\Users\\akshitha\\Desktop\\Aqua-liv\\annual_sales.csv'
into table annual_sales
fields terminated by ','
lines terminated by '\r\n'
ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:\\Users\\akshitha\\Desktop\\Aqua-liv\\branch.csv'
into table branch
fields terminated by ','
lines terminated by '\r\n'
ignore 1 lines;

LOAD DATA LOCAL INFILE 'C:\\Users\\akshitha\\Desktop\\Aqua-liv\\person.csv'
into table person
fields terminated by ','
lines terminated by '\r\n'
ignore 1 lines;