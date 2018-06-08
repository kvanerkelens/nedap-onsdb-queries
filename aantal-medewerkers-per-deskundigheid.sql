SELECT COUNT([expertise_profiles].[objectId]) AS amount
      ,[expertise_profiles].[description]
  FROM ([OnsDB].[dbo].[expertise_profiles] INNER JOIN
                         [OnsDB].[dbo].[expertise_profile_assignments] ON [expertise_profiles].[objectId] = [expertise_profile_assignments].[expertiseProfileObjectId])
						 INNER JOIN employees ON employees.objectId = expertise_profile_assignments.employeeObjectId
						 WHERE expertise_profile_assignments.endTime IS NULL AND employees.contractId IS NOT NULL						 
GROUP BY [expertise_profiles].[description];
