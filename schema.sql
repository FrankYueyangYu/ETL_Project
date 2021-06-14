Create table Unemployment2020(
"State_ID" int, 
"State_name" varchar(30) primary key, 
"Jan_2020" dec, 
"Feb_2020" dec, 
"Mar_2020" dec, 
"Apr_2020" dec,
"May_2020" dec, 
"Jun_2020" dec, 
"Jul_2020" dec, 
"Aug_2020" dec, 
"Sep_2020" dec, 
"Oct_2020" dec,
"Nov_2020" dec, 
"Dec_2020" dec, 
"Jan_2021" dec, 
"Feb_2021" dec, 
"Mar_2021" dec, 
"Apr_2021" dec
);

Create table MedianIncome2019 (
"State_name" varchar(30) primary key,
"Median_Income_2019" int,
"SE_2019" int
);

create table estpop2020(
"State_ID" int,
"State_name" varchar(30) primary KEY,
"EST2020Pop" bigint
);


-- queries: 

select * from Unemployment2020 join MedianIncome2019
using ("State_name") join estpop2020 using ("State_name") limit 10; 

