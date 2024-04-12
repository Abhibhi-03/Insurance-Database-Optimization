create table CLIENT(CLIENT_CODE integer primary key not null, CLIENT_FNAME varchar(50), CLIENT_LNAME varchar(50), CLIENT_PNUMBER integer, CLIENT_ADDRESS varchar(100))

Create table CLIENT_DEPENDENT(DEP_CODE integer primary key not null, CLIENT_CODE integer foreign key references CLIENT(CLIENT_CODE), DEP_LNAME varchar(50), DEP_FNAME varchar(50))

Create table INSURANCE_PRODUCT(PRODUCT_CODE varchar(4) primary key not null, TAX_CHARGES numeric(7,2))

create table SUPERVISOR(SUP_CODE varchar(10) primary key not null, SUP_LNAME varchar(50), SUP_FNAME varchar(50), SUP_ADDRESS varchar(100), SUP_PNUMBER integer, SUP_DATE date) 

create table INSURANCE_AGENT(AGENT_CODE varchar(7) primary key not null, AGENT_LNAME varchar(50), AGENT_FNAME varchar(50), AGENT_ADDRESS varchar(100), AGENT_PNUMBER integer, AGENT_HIRE date, SUP_CODE varchar(10) foreign key references SUPERVISOR(SUP_CODE))

Create table INSURANCE_POLICY(POLICY_NUM integer primary key not null, AGENT_CODE varchar(7) foreign key references INSURANCE_AGENT(AGENT_CODE), CLIENT_CODE integer references CLIENT(CLIENT_CODE), PRODUCT_CODE varchar(4) references INSURANCE_PRODUCT (PRODUCT_CODE), STARTDATE date, ENDDATE date, MONTHLY_PAY integer)

