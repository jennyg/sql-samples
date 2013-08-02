SELECT     dbo.incident_report.rid, dbo.incident_infraction_report.rid AS Expr1, dbo.incident_infraction_report.iid, dbo.incident_report.RDate, dbo.incident_report.RTime, 
                      dbo.incident_report.RLocationID, dbo.incident_report.RDescription, dbo.incident_report.R911, dbo.incident_report.RResponseTime, dbo.incident_report.RActionNotes, 
                      dbo.incident_report.ROfficer, dbo.incident_report.RCaseNumber
FROM         dbo.incident_report INNER JOIN
                      dbo.incident_infraction_report ON dbo.incident_report.rid = dbo.incident_infraction_report.rid
WHERE iid=4 AND RDate>=2013
ORDER BY dbo.incident_report.RDate DESC;
