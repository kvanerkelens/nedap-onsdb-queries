SELECT        employees.firstName, employees.contractId
FROM            employees INNER JOIN
                         expertise_profile_assignments ON employees.objectId = expertise_profile_assignments.employeeObjectId INNER JOIN
                         expertise_profiles ON expertise_profile_assignments.expertiseProfileObjectId = expertise_profiles.objectId WHERE expertise_profiles.description='Applicatiebeheer';
