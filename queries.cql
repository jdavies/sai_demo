-- Here are some sample queries that use the Storage Attacked Indexes
SELECT * FROM cyclist_semi_pro WHERE lastname = 'Eppinger';

SELECT * FROM cyclist_semi_pro WHERE age <= 23;

SELECT * FROM cyclist_semi_pro WHERE country = 'GBR';

SELECT * FROM cyclist_semi_pro WHERE registration > '2010-01-01' AND registration < '2015-12-31' LIMIT 10;

SELECT * FROM cyclist_semi_pro WHERE age <= 23 AND country = 'FRA';

select * from book where tags CONTAINS 'Adventure';

select * from book where tags CONTAINS 'Novel' and tags CONTAINS 'Classic';

select author as Author, publishedOn as "Published On", tags as "Tags"  from book where tags CONTAINS 'Novel' and tags CONTAINS 'Classic';
