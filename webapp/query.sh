#!/bin/bash

mysql -u tester --password='panaya' -h 172.31.16.118 -P 3306 -e "SELECT As_company.Id AS Company_ID, As_company.name AS Company_name, As_account.Id AS Account_ID, As_account.name AS Account_name, As_project.id AS Project_Id, As_project.name AS Project_name,CASE As_project.status WHEN  '0' THEN   'Inactive' WHEN  '1' THEN    'Active' WHEN  '2' THEN    'Frozen' END AS Project_Status FROM As_company  INNER JOIN As_account ON As_company.Id = As_account.company_id INNER JOIN As_project ON As_account.Id = As_project.account_id" -H booker > index.html
