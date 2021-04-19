create table SeniorManager (
	senior_manager_code nvarchar(30) not null,
	lead_manager_code nvarchar(30) not null,
	company_code nvarchar(30) not null,
	primary key (senior_manager_code),
	foreign key (lead_manager_code) references LeadManager (lead_manager_code),
	foreign key (company_code) references company (company_code)
);