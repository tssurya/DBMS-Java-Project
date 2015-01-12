create table member
(
	mem_id Varchar(20) primary key default nextval('member_id_seq'),
	mem_name Varchar(20),
	address Varchar(50),
	phno int,
	join_date Date,
	fine int default 0
);

create sequence member_id_seq start with 1 increment by 1;

select * from member;
create table category
(
	category_id Varchar(20) primary key,
	category_name Varchar(20),
	no_of_books int,
	shelf_no int
);

create table book
(
	book_id Varchar(20) primary key,
	book_name Varchar(50),
	author Varchar(30),
	category_id Varchar(20) references category(category_id),
	edition Varchar(20),
	rack_no int
);

create table issue
(
	issue_id Varchar(20) primary key,
	issue_date Date,
	mem_id Varchar(20) references member(mem_id),
	ex_return_date Date,
	book_id Varchar(20) references book(book_id)
);

create table return
(
	return_id Varchar(20) primary key,
	return_date Date,
	issue_date Date,
	mem_id Varchar(20) references member(mem_id),
	book_id Varchar(20) references book(book_id)
);

select * from member;
select * from return;
select * from issue;
select * from book;
select * from category;
select * from fine_calc;

drop table category;
drop table book;
drop table return;
drop table issue;
drop table member;
delete from member ;
------------------------insert---------------------------


insert into category values('C1','Fiction',10,1);
insert into category values('C2','Fantasy',5,2);
insert into category values('C3','Prose',3,3);
insert into category values('C4','Poetry',3,4);
insert into category values('C5','Drama',5,5);

select * FROM category;



insert into book values('B1','Perry Mason','Sir Arthur Conan DOyle','C1','E1',2 );
insert into book values('B2','Secret Seven','Enid Blyton','C1','E1',1 );
insert into book values('B3','Famous Five','Enid Blyton','C1','E1',2 );
insert into book values('B4','Twilight Saga','Stephene Taylor','C2','E1',2 );
insert into book values('B5','Divergent','Stephene Mayor','C2','E1',1 );
insert into book values('B6','Around the world in 80 days','Enid Blyton','C3','E1',2 );
insert into book values('B7','Hamlet','William Shakespear','C5','E1',1 );
insert into book values('B8','Julius Caesar','William Shakespear','C5','E3',2 );
insert into book values('B9','Harry Potter and the Deathyly Hallows','J K Rowling','C2','E1',1 );
insert into book values('B10','Game of Thrones','George RR Martin','C2','E1',1 );
insert into book values('B11','Percy Jackson and the Lightning Theif','Rick Riordan','C2','E1',2 );
insert into book values('B12','Gullivers Travels','Jonathan Swift','C3','E2',1 );
insert into book values('B13','Charlie and the Chocolate Factory ','Roald Dahl','C2','E1',1 );
insert into book values('B14','Alice in Wonderland','Lewis Carroll','C3','E1',2);
insert into book values('B15','Harry Potter and the Half Blood Prince','J K Rowling','C2','E6',1 );

select * from book;

delete from member;
insert into issue values('I1','05/01/2014','1','05/05/2014','B1');
insert into issue values('I2','12/12/2014','2','12/21/2014','B2');
insert into issue values('I3','11/02/2014','2','12/21/2014','B3');

insert into return values('R1','05/07/2014','05/01/2014','1','B1');

insert into member (mem_name,address,phno,join_date) values('Siddharth Menon','Aastha,Kottayam,Kerala',7654321,'1/07/1989');
insert into member (mem_name,address,phno,join_date) values('Athira Lekshmi C V','Chollankal,Kottayam,Kerala',1234567,'06/28/1994');
insert into member (mem_name,address,phno,join_date) values('Adhitya','Janaki Apartments,Bangalore,Karnataka',7653290,'1/07/1989');
insert into member (mem_name,address,phno,join_date) values('Surya Seetharaman','Sitaram Mill Road,Thrissur,Kerala',2345987,'05/05/1994');
insert into member (mem_name,address,phno,join_date) values('Darshana Padmadas','Kadavanthara,Kochi,Kerala',2387503,'12/12/1994');
insert into member (mem_name,address,phno,join_date) values('Anu Vazhayil','Punkunnam,Thrissur,Kerala',7919365,'02/28/1991');
insert into member (mem_name,address,phno,join_date) values('Tina Johnson','Vaitila,Kochi,Kerala',0573513,'10/10/1993');
insert into member (mem_name,address,phno,join_date) values('Anjana S','Kaladi,Angamali,Kerala',6547318,'05/23/1990');
insert into member (mem_name,address,phno,join_date) values('Sowmya Ravidas','Kalpathi,Palakkad,Kerala',9928062,'06/06/1987');
insert into member (mem_name,address,phno,join_date) values('Savita Seetaraman','Sri Ramachandra,Thrissur,Kerala',4576129,'03/21/1992');
insert into member (mem_name,address,phno,join_date) values('Sreepriya Chalakkal','Vallickavu,Kolam,Kerala',1547932,'07/21/1992');
insert into member (mem_name,address,phno,join_date) values('Shankar Raman','R S Puram,Coimbatore,Tamil Nadu',1186354,'06/21/1996');
insert into member (mem_name,address,phno,join_date) values('Bithin Alangot','Chavara,Kozhikode,Kerala',3467831,'05/25/19997');
insert into member (mem_name,address,phno,join_date) values('Vipin Pavithran','Amrita Kripa,Kollam,Kerala',3375681,'03/06/1980');
insert into member (mem_name,address,phno,join_date) values('Sheshagiri Prabhu','Fort Kochi,Kochi,Kerala',2750172,'09/20/1995');
insert into member (mem_name,address,phno,join_date) values('Aravind S Raj','Palamedu,Madurai,Tamil Nadu',3758110,'03/11/1987');
insert into member (mem_name,address,phno,join_date) values('Dia Mirza','Karna Flats,Uganda,Uttar Pradesh',8281925,'11/11/1984');
insert into member (mem_name,address,phno,join_date) values('Kareena Kapoor','Pathan Mansion,Gurgaon,Uttar Pradesh',9605444,'12/12/1990');
insert into member (mem_name,address,phno,join_date) values('Deepika Padukone','Bollywood Street,Navi Mumbai,Mumbai',9695828,'2/22/1996');
insert into member (mem_name,address,phno,join_date) values('Ranbir Kapoor','Kapor Mansion,Nelu Nagar,Mumbai',9446128,'08/08/1993');
insert into member (mem_name,address,phno,join_date) values('Sharukh Khan','King Street,Navi Mumbai,Mumbai',1298345,'11/14/1966');
insert into member (mem_name,address,phno,join_date) values('Raj Malhothra','Ratlam,Kota,Rajasthan',2378612,'12/31/1980');
insert into member (mem_name,address,phno,join_date) values('Sanjeetha Sheikh','Goenka Homes,Chandenagore,Kolkata',8856234,'10/30/1985');
insert into member (mem_name,address,phno,join_date) values('Fawad Khan','Capital Homes,Mumbai,Maharashtra',3487961,'04/12/1988');
insert into member (mem_name,address,phno,join_date) values('Lincy Rappai','Rajapalayam,Vizag,Andhra Pradesh',3281650,'11/18/1994');
insert into member (mem_name,address,phno,join_date) values('Suraj Ravishankar','Highway Road,Chennai,Tamil Nadu',3490216,'01/14/1995');

select * from member;




create or replace function fine_calculation (text,text,text) returns int as 
$$
        DECLARE
            issue1 alias for $1;
            return1 alias for $2;
            member1 alias for $3;
            fine_amt int;
            ExReturnDate Date;
            ReturnDate Date;
        BEGIN
            select ex_return_date into ExReturnDate from issue where issue_id = issue1;
            select return_date into ReturnDate from return where return_id = return1;
            if ReturnDate > ExReturnDate then
		fine_amt:= ReturnDate-ExReturnDate;
		update member set fine = fine+fine_amt where mem_id=member1;
	    end if;
            return fine_amt;
        END;
$$ 
    LANGUAGE 'plpgsql';

-----------QUERY FOR TESTING FUNCTION---------------

select fine_calculation('I1','R1','1');
------------------TRIGGER

create table member_changes 
(
   mem_id Varchar(20) not null,
   old_address Varchar(50) not null,
   new_address Varchar(50) not null,
   changed_on timestamp(6) not null
);

drop table member_changes;
select * from member_changes;
drop table member;
create or replace function address_changes() returns trigger as
$BODY$
	BEGIN
		if NEW.address <> OLD.address then
			insert into member_changes(mem_id,old_address,new_address,changed_on)
			values(OLD.mem_id,OLD.address,new.address,now());
		end if;
 
	return new;
	end;
$BODY$
LANGUAGE plpgsql ;

drop  function ph_no_changes() cascade;
create trigger address_changes6
  before update
  on member
  for each row
  execute procedure address_changes();


  -----------------QUERY TO TEST TRIGGER-----------------------------------
update member
set address='fwfwff'
where mem_id='25';

select *from member_changes;
select * from member;



	-------------VIEW QUERY DONE-------------------------

create view view1 as select category_id,count(category_id) from book group by category_id;

select * from view1;
grant select on view1 to examuser11;

--------------JOIN QUERY---------------

--to check if the books issused have been  returned.
select * from issue
LEFT OUTER JOIN return on (issue.mem_id =return.mem_id);

-------------------------SEQUENCES-------------


select currval('member_id_seq');
select nextval('member_id_seq ');
drop sequence member_id_seq cascade;

---------------CURSORS--------------
--cursor to rack to know how many books are there in a particular rack.
create or replace function curfunc(rackno int) returns int as
$$
	declare
		total_books_in_rack int := 0;
		row_var book%ROWTYPE;
		rack_cur cursor for select * FROM book WHERE rack_no = rackno;
	begin
		open rack_cur;
		fetch rack_cur into row_var;
		while found 
		loop
			total_books_in_rack := total_books_in_rack + (1);
			fetch rack_cur into row_var;
		end loop;
		return total_books_in_rack;
	end; 
$$ 
LANGUAGE plpgsql;

select curfunc(1);
insert into book values('B2','GERT','C1','fwerf',1);



-----------SUBQUERY-----------------

--to get the  books issued in a particular month.
select mem_id,book_id from issue where EXTRACT(month from issue_date) = '05';

--find all the members whose fine is greater than at least one member.
--self join.
select distinct  m1.mem_name from member m1,member m2 
where m1.fine > m2.fine ;

--find the category with the largest amount of books.
select category_name from category where no_of_books=
(select max(no_of_books)from category) ;
