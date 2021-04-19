create table CompanyEmployee (
	employee_code nvarchar(30) not null,
	manager_code nvarchar(30),
	senior_manager_code nvarchar(30),
	lead_manager_code nvarchar(30),
	company_code nvarchar(30),
	PRIMARY KEY (employee_code)
);