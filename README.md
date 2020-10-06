# Tast 2


## Import Database

clone the repo and use `tast2.sql` file to import database

```bash
> open up pgAdmin 4
> create new Database
> right click on database
> click restore
> select task2.sql file
> Done
```
> if you have schema already! there is also CSV files included if you just want to import data!

## Queries

- Find author by name "Leo"

> Time Complexity: O(M + N)


```mysql
SELECT name
FROM public."Authors" 
WHERE to_tsvector(name) @@ to_tsquery('Leo')

```


- Find books of author "Fitzgerald"

> Time complexity: O(M + N log N)


```mysql
SELECT b.name
FROM public."Authors" as a
INNER JOIN public."Books" as b
ON a.id=b.author_id
WHERE to_tsvector(a.name) @@ to_tsquery('Fitzgerald')
ORDER BY a.name;

```

- Find authors without books

> Timie Complexity: O(M + N log N)

```mysql
SELECT a.name
FROM public."Authors" as a
LEFT JOIN public."Books" as b
ON a.id=b.author_id
WHERE b.auther_id IS NULL;

```

- Count books per country

> Time Complexity: O(M + N log N)

```mysql
SELECT DISTINCT a.country, COUNT(b.id) AS number_of_books
FROM public."Authors" as a
LEFT JOIN public."Books" as b
ON a.id=b.author_id
GROUP BY a.country;

```

- Count average book length (in pages) per author

> Time Complexity: O(M + N log N)

```mysql
SELECT a.name, coalesce(AVG(b.pages), 0) AS avg_book_length
FROM public."Authors" as a
LEFT JOIN public."Books" as b
ON a.id=b.author_id
GROUP BY a.name;
```

> Include potential suggestions on how to improve it.
Consider that there might be millions of authors with millions of books.


because all of my queries joined based on author id, i have created index on author id to speed-up query response time!
For further improvement, we should use `LIMIT`
