
create table Student (
    id integer primary key,
   student_name text,
    batch text
);

inser into Student values(1,"dhanush","b42wd");
inser into Student values(2,"dhanush1","b42we");

update Student set batch = "b43we" where id =2 ;

delete from Student where id = 1;

alter table Student add column course text default "mern";

select * from Student;
drop table Student;










create table IMDB(
  id integer primary key,
  Movie_Image VARBINARY,
  Reviews text,
  User text,
  Artist text,
  Role_of_Artist text
  )
  insert into imdb (id,movie_image,reviews,user,artist,role_of_artist) values(1,"image 1 of Mersal","Nice movie","Dhanush","VIJAY","Father")


-- SQL Lesson 1: SELECT queries 101
    1) SELECT title FROM movies;
    2) select director from movies;
    3) select title,director from movies;
    4) select title,year from movies;
    5) select * from movies;


-- SQL Lesson 2: Queries with constraints (Pt. 1)     
      1)select id,title from movies where id=6;
      2)select title,year from movies where year between 2000 and 2010;
      3)select title,year from movies where year not between 2000 and 2010
      4)select id,title,year from movies  where id <=5
-- SQL Lesson 3: Queries with constraints (Pt. 2)
      1)SELECT * FROM movies where title like "Toy Story%"
      2)SELECT * FROM movies where director = "John Lasseter"
      3)SELECT title,director FROM movies where director !="John Lasseter";
      4)SELECT title FROM movies where title like "wall-%"

-- SQL Lesson 4: Filtering and sorting Query results
      1)SELECT distinct director FROM movies order by director;
      2)select id,title,year from movies order by year desc limit 4 ;
      3)select id,title,year from movies order by title limit 5 ;
      4)select id,title,year from movies order by title limit 5 offset 5 ;

-- SQL Review: Simple SELECT Queries
      1)SELECT city,country,population FROM north_american_cities where country ="Canada" ;
      2)SELECT city,country,latitude FROM north_american_cities where country ="United States" order by latitude desc
      3)SELECT city,longitude FROM north_american_cities where longitude < -88 order by longitude ;
      4)SELECT city , country ,population FROM north_american_cities where country="Mexico" order by population desc limit 2
      5)SELECT city , country ,population FROM north_american_cities where country="United States" order by population desc limit 2 offset 2;

-- SQL Lesson 6: Multi-table queries with JOINs
      1)SELECT title,Domestic_sales,International_sales FROM movies inner join boxoffice on movies.id = boxoffice.Movie_id ;
      2)SELECT * FROM movies inner join boxoffice on movies.id = boxoffice.Movie_id where international_sales > domestic_sales ;
      3)SELECT title,rating FROM movies inner join boxoffice on movies.id = boxoffice.Movie_id order by rating desc ;

-- SQL Lesson 7: OUTER JOINs
      1)SELECT * FROM employees join buildings on employees.building = building_name group by building ;
      2)SELECT * FROM buildings group by capacity
      3)SELECT  distinct building_name,role FROM buildings left join employees on  building_name = employees.building;

-- SQL Lesson 8: A short note on NULLs
       1)SELECT * FROM employees where building is null ;
       2)SELECT distinct building_name ,role FROM buildings left join employees on buildings.building_name = Employees.building where role is null

-- SQL Lesson 9: Queries with expressions
       1)SELECT title, (Domestic_sales+International_sales)/1000000 as sales FROM movies inner join Boxoffice on movies.id = Boxoffice.Movie_id   ;
       2)SELECT title,rating, rating*10 as rating_in_percent FROM movies inner join Boxoffice on movies.id = Boxoffice.Movie_id   ;
       3)SELECT * FROM movies where  year%2=0;

-- SQL Lesson 10: Queries with aggregates (Pt. 1)
       1)SELECT * FROM employees order by years_employed desc limit 1;
       2)SELECT role,name,avg(years_employed) as avg FROM employees group by role;    
       3)SELECT * ,sum(years_employed) as totlal_years FROM employees group by building;

-- SQL Lesson 11: Queries with aggregates (Pt. 2)
       1)SELECT * ,count(role) as Total_artist FROM employees where role="Artist"
       2)SELECT * ,count(role) as Total_artist FROM employees group by role;
       3)SELECT role,sum(years_employed) as Total_year FROM employees where role="Engineer" group by role

--SQL Lesson 12: Order of execution of a Query  
       1)SELECT title,director,count(director) FROM movies group by director;
       2)SELECT title,director,sum(Domestic_sales+International_sales) FROM movies join Boxoffice on Movies.id=boxoffice.movie_id group by director;

-- SQL Lesson 13: Inserting rows
       1) insert into movies values (15,"Toy Story 4","John Lasseter",1995,81);
       2) insert into boxoffice values (15,8.7,3400000000,2700000000);

-- SQL Lesson 14: Updating rows
       1)update movies set director="John Lasseter" where id=2;
       2)update movies set year=1999 where id=3;
       3)update movies set title="Toy Story 3",director="Lee Unkrich" where id=11;

-- SQL Lesson 15: Deleting rows
       1)delete from movies where year<2005;
       2)delete from movies where director="Andrew Stanton";

-- SQL Lesson 16: Creating tables
       1)create table Database (
                              Name text,
                              Version integer,
                              Download_count integer

                                );


-- SQL Lesson 17: Altering tables
        1)alter table movies add Aspect_ratio float;
        2)alter table movies add Language text default "English";

-- SQL Lesson 18: Dropping tables
        1)drop table movies
        2)drop table boxoffice






