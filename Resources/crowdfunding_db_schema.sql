create table category (
    category_id varchar(5) primary key,
    category varchar(15) not null
);

create table subcategory (
    subcategory_id varchar(9) primary key,
    subcategory varchar(20)
);

create table contacts (
    contact_id varchar(5) primary key,
    first_name varchar(30) not null, 
    last_name varchar(30) not null,
    email varchar(50) not null    
);

create table campaign (
    cf_id varchar(5) primary key,
    contact_id varchar(5),
    company_name varchar(50) not null,
    blurb varchar(90) not null,
    goal int not null,
    pledged int not null, 
    outcome varchar(15) not null, 
    backers_count int not null, 
    country varchar(3) not null, 
    currency varchar(4) not null, 
    launch_date date not null,
    end_date date not null,
    category_id varchar(5),
    subcategory_id varchar(9),
    foreign key (contact_id) references contacts (contact_id),
    foreign key (category_id) references category (category_id),
    foreign key (subcategory_id) references subcategory (subcategory_id)
);

