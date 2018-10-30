del /F "C:\Output\Active_Policy_List.csv"

cd "C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\Binn"

SQLCMD -S "IN-AIR-GPADM1\SQLEXPRESS" -U "sa" -P "Jan@2016" -W -Q "Select POLICY_ID,POLICY_NAME,FUND_VALUE from JUGEHANI.dbo.Policy where ACTIVE='Y';" > C:\Output\Active_Policy_List.csv -h-1 -s,

timeout /t 10 /nobreak > NUL

cd C:\Weblogic_12c

powershell ./Active_Policy_List.ps1