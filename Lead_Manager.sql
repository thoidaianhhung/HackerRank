CREATE TABLE LeadManager (
	lead_manager_code nvarchar(30) not null,
	company_code nvarchar(30) not null,
	primary key (lead_manager_code),
	foreign key (company_code) references Company (company_code)
);