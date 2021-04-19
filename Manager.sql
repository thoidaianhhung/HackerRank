create table Manager (
	manager_code nvarchar(30) not null,
	senior_manager_code nvarchar(30) not null,
	lead_manager_code nvarchar(30) not null,
	company_code nvarchar(30) not null
	primary key (manager_code)
);