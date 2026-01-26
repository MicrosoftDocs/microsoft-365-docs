---
title: SAP SuccessFactors Manager read & write scenarios with Employee Self-Service
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 12/15/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about SAP SuccessFactors manager read and write scenarios for Employee Self-Service agent.
appliesto:
- ✅ Microsoft 365 Copilot
---

# SAP SuccessFactors manager read & write scenarios with Employee Self-Service
The following article describes the different manager read and write scenarios for Employee Self-Service agent connected to SAP SuccessFactors:

- [SAP SuccessFactors manager read scenarios](#sap-successfactors-manager-read-scenarios)
- [SAP SuccessFactors manager write scenarios](#sap-successfactor-manager-write-scenarios)

## SAP SuccessFactors manager read scenarios

Manager read Topics check if the user is a manager using `ESS_UserContext_Is_Manager` variable. Afterwards most of the Topics follow the same format, which is simply redirecting the Topic to `SuccessFactors System Get Common Execution`, which calls the `Get Common Orchestrator` flow and then having the Large Language Model interpret responses from the flow and generate a response for the Manager. The `SuccessFactors System Get Common Execution` expects the following inputs:

**Filter Parameters:**  
Generally passing `Employee ID` and `User ID` for filter query for `Employee Read` Topics:

Example format used in a Topic: 

```json
"{""personIdExternalVal"": """ & Global.ESS_UserContext_Employee_Id & """,""userIdVal"": """ & Global.ESS_UserContext_User_Id & """}" 
```

Example Template configuration: 

```json
{ 
  ... 
  "filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'", 
  ... 
} 
```

The keys present in the filterParam must match what is expected in the Template configuration. In the previous examples, `personIdExternalVal` would be used as a key to insert `Global.ESS_UserContext_Employee_Id` into the filter expression. 

**ScenarioName:** Configuration name, which is used by Dataverse call to get scenario configuration. 
**userIdentifier:**  User ID 

- Common Orchestrator then returns a `ModelResponse` and `LabelResponse`, which is then parsed using a large language model using the following instructions and generates answer for a Manager:
- Extract the input from the below response (map the Label response *value* as key in model response attribute then provide model value) 
- Provide response to the user in a human readable form  
- Format it properly so it looks clean and readable
- Use **only** data values from variable named as `successfactorsModelResponse` and use variable named as `successfactorsLabelResponse` for labelling the data. Response Example:
 
```json
Label Response : key":"company","value":"company" 

Model Response : 
"company":"11111" 

Example Output : 
Your company is 11111
```

The only exception to this general format is `Get Employee Id` and `Get Service Anniversary`, which are further explained in the following sections.

### Company Code

|Company Code | Details |
|----------------------|--------|
|**Description**       | Retrieves the manager direct reports current company code and displays it. Manager can also include direct and job title in prompt.  |
|**Prompts**           | <li>Update cost center for `[EmployeeName]` <li>I want to update `[EmployeeName]`'s cost center <li>I'd like to update a team member's cost center to `[id_costCenter]` <li>Update `[EmployeeName]`'s cost center to `[id_costCenter]` <li> Update cost center for my team |
|**Response** | Here are the company codes for your direct reports: <li>Manuela	Torres: 2000 (Contoso UK)<BR> <li> Gerardo Palacios: 2000 (Contoso UK)<li>Xiang	Tao: 2000 (Contoso UK)<BR> If you need any further assistance, feel free to ask!|
| **Template configuration** | `HRSAPSuccessFactorsHCMGetManagerCompanyCode` |
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerCompanyCode` | 
| **Filter** | Filters on personIdExternal using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to false. `isContingentWorker` is to ensure only employees data is retrieved |
| **Values queried** | <li> `DisplayName`:  Directs current preferred name<li> `UserId`: Directs userId, which is used in upsert to match data <li> `CompanyCode`: Directs company code as an ID value <li> `CompanyName`: Directs company code as a name linked to ID value |

**Configuration**:

```json
{ 
  "scenario": "ManagerReadCompanyCode", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}'", 
  "requestEntities": [ 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "CompanyName", 
      "valuePath": "jobInfoNav/companyNav/name", 
      "labelPath": "" 
    }, 
    { 
      "key": "CompanyCode", 
      "valuePath": "jobInfoNav/company", 
      "labelPath": "EmpJob/company" 
    } 
  ], 
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [{ "permStringValue": "$_jobInfo_company_read" }] 
    } 
  ] 
} 
```

#### Get specific employee/direct report company code 

This configuration is used when a directs name is filled with the manager’s prompt. It includes a filter expression that filters on the different name fields trying to match it to what the manager included in the prompt:

| Get specific company code | Description| 
| --- | ---| 
| **Template configuration** | `HRSAPSuccessFactorsHCMGetManagerEmpNameCompanyCode ` |
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerEmpNameCompanyCode ` |
| **Filter**  | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to false. `isContingentWorker` is used to ensure only employees data is retrieved. Additionally, the expression filters on `firstName`, `lastName`, and `displayName` using the slot filled name from manager’s query |
| **Values queried** | <li> `DisplayName`: Directs current preferred name <li>`UserId`: Directs userId, which is used in upsert to match data <li>`CompanyCode`: Directs company code as an ID value | 
| **CompanyName** | Directs company code as a name linked to ID value. |

**Configuration**:
```json
{ 
    "scenario": "ManagerReadEmpNameCompanyCode", 
    "rootEntity": "EmpEmployment", 
    "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}' and (substringof(tolower('{name}'), tolower(userNav/firstName)) or substringof(tolower('{name}'), tolower(userNav/lastName)) or substringof(tolower('{name}'), tolower(userNav/displayName)))", 
    "requestEntities": [{ 
            "key": "UserId", 
            "valuePath": "userNav/userId", 
            "labelPath": "User/userId" 
        }, { 
            "key": "DisplayName", 
            "valuePath": "userNav/displayName", 
            "labelPath": "User/displayName" 
        }, { 
            "key": "CompanyName", 
            "valuePath": "jobInfoNav/companyNav/name", 
            "labelPath": "" 
        }, { 
            "key": "CompanyCode", 
            "valuePath": "jobInfoNav/company", 
            "labelPath": "EmpJob/company" 
        } 
    ], 
    "permissionsMetadata": [], 
    "rolePermissions": [{ 
            "roleId": "115", 
            "permissions": [{ 
                    "permStringValue": "$_jobInfo_company_read" 
                } 
            ] 
        } 
    ] 
}
```

### Cost Center

|Cost Center | Details |
|-----------|--------|
| **Description** | Retrieves the manager’s directs current company code and displays it. A Manager can also include direct and job title in the prompt. |
|**Prompts** | <li>Show cost center of all my direct reports<li>Show me my team's Cost center data<li>What cost centers are assigned to my reports?<li>What are my team's cost centers?<li>Show cost center of `[EmployeeName]` <li>What cost center is assigned to `[EmployeeName]` |
|**Response** | Here are the cost centers for your direct reports: <li>Manuela Torres: 2000-4200 (Contoso UK Production) <li> Gerardo Palacios: 2000-4200 (Contoso UK Production)<li>Xiang	Tao: 2000-2200 (Contoso UK HR)<BR> If you need any further assistance, feel free to ask!| 
| **Template configuration** | `HRSAPSuccessFactorsHCMGetManagerCostCenter` | 
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerCostCenter` |
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to `false`. `isContingentWorker` is to ensure only employees data are retrieved. |
| **Values queried** | <li>`DisplayName`: Directs current preferred name<li>`UserId`: Directs userId, which is used in upsert to match data <li> `CostCenterCode`: Directs cost center code as an ID value <li>`CostCenterName`: Directs cost center as a name linked to ID value. |

**Configuration**: 
 ```json
 { 
  "scenario": "ManagerReadCostCenter", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}'", 
  "requestEntities": [ 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "CostCenterCode", 
      "valuePath": "jobInfoNav/costCenter", 
      "labelPath": "EmpJob/costCenter" 
    }, 
    { 
      "key": "CostCenterName", 
      "valuePath": "jobInfoNav/costCenterNav/name", 
      "labelPath": "" 
    } 
  ],  
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [{ "permStringValue": "$_jobInfo_cost-center_read" }] 
    } 
  ] 
} 
```

#### Get specific employee/directs cost center
This configuration is used when a directs name is filled with the manager’s prompt. It includes a filter expression that filters on the different name fields trying to match it to what the manager included in the prompt.

| Get specific cost center | Description| 
| --- | ---| 
| **Template configuration** |`HRSAPSuccessFactorsHCMGetManagerEmpNameCostCenter`| 
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerEmpNameCostCenter`|
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to false. `isContingentWorker` is used to ensure only employees data are retrieved. Additionally, the expression filters on `firstName`, `lastName`, and `displayName` using the slot filled name from manager’s query. |
| **Values queried** | <li>`DisplayName`: Directs current preferred name <li>`UserId`: Directs userId, which is used in upsert to match data <li>`CostCenterCode`: Directs cost center code as an ID value <li>`CostCenterName`: Directs cost center as a name linked to ID value |

**Configuration**:
```json
{ 
  "scenario": "ManagerReadEmpNameCostCenter", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}' and (substringof(tolower('{name}'), tolower(userNav/firstName)) or substringof(tolower('{name}'), tolower(userNav/lastName)) or substringof(tolower('{name}'), tolower(userNav/displayName)))", 
  "requestEntities": [ 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "CostCenterCode", 
      "valuePath": "jobInfoNav/costCenter", 
      "labelPath": "EmpJob/costCenter" 
    }, 
    { 
      "key": "CostCenterName", 
      "valuePath": "jobInfoNav/costCenterNav/name", 
      "labelPath": "" 
    } 
  ], 
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [{ "permStringValue": "$_jobInfo_cost-center_read" }] 
    } 
  ] 
} 
```
### Job Information 

|Job Information | Details |
|---|---|
| **Description** | Retrieves and displays the manager’s directs job title, job code, job function, and job function type. A manager can also include a direct and job title in the prompt. |
| **Prompts** | <li>Show me job info for all my direct reports? <li>What is the job function type of my entire team? <li>Give me Job information for my direct reports? <li>What are the job titles of my direct reports? <li>What are my direct report job functions? <li>Get job data for `[EmployeeName]` <li>What is the job title of `[EmployeeName]`?|
| **Response** | Here's the job information for your direct reports: <BR>**Manuela	Torres**: <li>**Job Title**: Software Engineer II<li> **Job Code**: 50071001<li> **Job Function Type**: DL<li> **Job Function**: 50070986 <BR><BR> **Gerardo Palacios**: <li>**Job Title**: Software Engineer III <li>**Job Code**: 50071001 <li>**Job Function Type**: DL <li>**Job Function**: 50070986<BR><BR>**Xiang	Tao**: <li>**Job Title**: CTO <li>**Job Code**: 50070999 <li>**Job Function Type**: MT <li>**Job Function**: 50070905<BR> If you need any further assistance, feel free to ask!|
| **Template configuration** | `HRSAPSuccessFactorsHCMGetManagerJobInfo` | 
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerJobInfo` | 
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to `false`. `isContingentWorker` is to ensure only employees data are retrieved.  |
| **Values queried** | <li>`DisplayName`: Directs current preferred name<li>`UserId`: Directs userId, which is used in upsert to match data<li>`JobTitle`: Directs job title<li>`JobCode`: Directs job code/positionNumber<li>`JobFunctionType`: Directs job function type<li>`JobFunction`: Directs job function |

**Configuration**:
```json
{ 
  "scenario": "ManagerReadJobInfo", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}'", 
  "requestEntities": [ 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "JobTitle", 
      "valuePath": "jobInfoNav/jobTitle", 
      "labelPath": "User/jobTitle" 
    }, 
    { 
      "key": "JobCode", 
      "valuePath": "jobInfoNav/jobCode", 
      "labelPath": "User/jobCode" 
    }, 
    { 
      "key": "JobFunctionType", 
      "valuePath": "jobInfoNav/jobCodeNav/jobFunctionNav/jobFunctionType", 
      "labelPath": "FOJobFunction/jobFunctionType" 
    }, 
    { 
      "key": "jobFunction", 
      "valuePath": "jobInfoNav/jobCodeNav/jobFunction", 
      "labelPath": "FOJobCode/jobFunction" 
    } 
  ], 
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [ 
        { 
          "permStringValue": "$_jobInfo_job-title_read" 
        }, 
        { 
          "permStringValue": "$_jobInfo_job-code_read" 
        } 
      ] 
    } 
  ] 
} 
```

##### Get specific employee/directs job information 

This configuration is used when a directs name is filled with the manager’s prompt. It includes a filter expression that filters on the different name fields trying to match it to what the manager included in the prompt 

|Specific job Information | Details |
|---|---|
| **Template configuration** | `RSAPSuccessFactorsHCMGetManagerEmpNameJobInfo` |
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerEmpNameJobInfo` | 
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to `false`. `isContingentWorker` is used to ensure only employees data are retrieved. Additionally, the expression filters on `firstName`, `lastName`, and `displayName` using the slot filled name from manager’s query.|  
| **Values queried** | <li>`DisplayName`: Directs current preferred name <li>`UserId`: Directs userId, which is used in upsert to match data <li>`JobTitle`: Directs job title <li> `JobCode`: Directs job code/positionNumber <li>`JobFunctionType`: Directs job function type <li>`JobFunction`: Directs job function |

**Configuration**: 
```json
{ 
  "scenario": "ManagerReadEmpNameJobInfo", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}' and (substringof(tolower('{name}'), tolower(userNav/firstName)) or substringof(tolower('{name}'), tolower(userNav/lastName)) or substringof(tolower('{name}'), tolower(userNav/displayName)))", 
  "requestEntities": [ 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "JobTitle", 
      "valuePath": "jobInfoNav/jobTitle", 
      "labelPath": "User/jobTitle" 
    }, 
    { 
      "key": "JobCode", 
      "valuePath": "jobInfoNav/jobCode", 
      "labelPath": "User/jobCode" 
    }, 
    { 
      "key": "JobFunction", 
      "valuePath": "jobInfoNav/jobCodeNav/jobFunction", 
      "labelPath": "FOJobCode/jobFunction" 
    }, 
    { 
      "key": "JobFunctionType", 
      "valuePath": "jobInfoNav/jobCodeNav/jobFunctionNav/jobFunctionType", 
      "labelPath": "FOJobFunction/jobFunctionType" 
    } 
  ], 
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [ 
        { "permStringValue": "$_jobInfo_job-title_read" }, 
        { "permStringValue": "$_jobInfo_job-code_read" } 
      ] 
    } 
  ] 
} 
```

### Service Anniversary

|Service Anniversary | Details |
|---|---|
| **Description** | Retrieves the manager’s directs hire date, calculates the service anniversary using the duration global variable and displays it. A manager can also include direct and job title in prompt. |
| **Prompts** | <li>When are the service anniversaries of all my direct reports? <li>What are the service anniversaries of my entire team? <li>Show me service anniversaries of my direct reports? <li>What is `[EmployeeName]`'s next service anniversary assuming service anniversary duration is `[Duration]` years. <li>When is `[EmployeeName]`'s `[Duration]` year service anniversary? <li>What is `[EmployeeName]`'s Start/Hire Date? <li>When is `[EmployeeName]`'s service anniversary? <li>Do any of my direct have a service anniversary next month? |
|**Formula** | `If(DateDiff(Today(), DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)), TimeUnit.Years)) < 0, DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)) + Topic.Duration, TimeUnit.Years), DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)), TimeUnit.Years))` <BR><BR> This PowerFX formula calculates the next service anniversary date for an employee based on their hire date and a specified duration. The formula follows these steps: <BR> <BR>1. `DateValue(userNav.hireDate)` <BR>Converts the employee's hire date to a date value <BR><BR>2. `Year(Today()) - Year(DateValue(userNav.hireDate))`<BR>Calculates the number of years between the current year and the year of the employee's hire date <BR><BR>3. `DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)), TimeUnit.Years)`<BR>Adds the calculated number of years to the hired date to determine the next anniversary date <BR><BR>4. `DateDiff(Today(), DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)), TimeUnit.Years)) < 0` <BR>Checks if the calculated anniversary date is in the past <BR><BR>5. `If(DateDiff(Today(), DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)), TimeUnit.Years)) < 0 ` <BR>If the next anniversary date is in the past, it calculates the anniversary date for the next year by adding the specified duration `(Topic.Duration)` to the hire date.<BR><BR>6. `DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)) + Topic.Duration, TimeUnit.Years)`Calculates the next anniversary date for the following year. <BR><BR>7. `DateAdd(DateValue(userNav.hireDate), Year(Today()) - Year(DateValue(userNav.hireDate)), TimeUnit.Years)`<BR>If the anniversary date isn't in the past, it returns the calculated anniversary date for the current year |
| **Response** | Here are the service anniversaries for your direct reports: <BR>**Manuela	Torres**: <li>**Hire date**: 2014-01-01 <li>**Upcoming service anniversary date**: 2025-12-31<li>**Upcoming milestone**: 12 years  <BR><BR> **Gerardo Palacios**: <li>**Hire date**: 2014-01-01 <li>**Upcoming service anniversary date**: 2025-12-31<li>**Upcoming milestone**: 12 years<BR><BR>**Xiang	Tao**: <li>**Hire date**: 2014-01-01 <li>**Upcoming service anniversary date**: 2025-12-31<li>**Upcoming milestone**: 12 years<BR> If you need any further assistance, feel free to ask!|
| **Template configuration** | `HRSAPSuccessFactorsHCMGetManagerServiceAnniversary`| 
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerServiceAnniversary` | 
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to false. `isContingentWorker` is to ensure only employees data are retrieved. | 
| **Values queried** | <li>`DisplayName`: Directs current preferred name <li>`UserId`: Directs userId, which is used in upsert to match data <li>`hireDate`: Directs hire date| 

**Configuration**:
```json
{ 
  "scenario": "ManagerReadServiceAnniversary", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}'", 
  "requestEntities": [ 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "hireDate", 
      "valuePath": "userNav/hireDate", 
      "labelPath": "" 
    } 
  ], 
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [ 
        { "permStringValue": "$_employmentInfo_originalStartDate_read" } 
      ] 
    } 
  ] 
} 
```

#### Get specific employee/directs service anniversary 

This configuration is used when a directs name is filled with the manager’s prompt. It includes a filter expression that filters on the different name fields trying to match it to what the manager included in the prompt 

|Specific service anniversary | Details |
|---|---|
| **Template configuration** | `HRSAPSuccessFactorsHCMGetManagerEmpNameServiceAnniversary`| 
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetManagerServiceAnniversary` | 
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to `false`. `isContingentWorker` is used to ensure only employee data is retrieved. Additionally, the expression filters on `firstName`, `lastName`, and `displayName` using the slot filled name from manager’s query |
| **Values queried** | <li>`DisplayName`: Directs current preferred name <li>`UserId`: Directs userId, which is used in upsert to match data <li>`hireDate`: Directs hire date |

#### Configuration 
```json
{ 
  "scenario": "ManagerReadEmpNameServiceAnniversary", 
  "rootEntity": "EmpEmployment", 
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}' and (substringof(tolower('{name}'), tolower(userNav/firstName)) or substringof(tolower('{name}'), tolower(userNav/lastName)) or substringof(tolower('{name}'), tolower(userNav/displayName)))", 
  "requestEntities": [ 
    { 
      "key": "UserId", 
      "valuePath": "userNav/userId", 
      "labelPath": "User/userId" 
    }, 
    { 
      "key": "DisplayName", 
      "valuePath": "userNav/displayName", 
      "labelPath": "User/displayName" 
    }, 
    { 
      "key": "hireDate", 
      "valuePath": "userNav/hireDate", 
      "labelPath": "" 
    } 
  ], 
  "permissionsMetadata": [], 
  "rolePermissions": [ 
    { 
      "roleId": "115", 
      "permissions": [ 
        { "permStringValue": "$_employmentInfo_originalStartDate_read" } 
      ] 
    } 
  ] 
} 
```
## SAP Successfactor manager write scenarios 
Manager *write* topics are described as follows: 

### 1. Get direct report data
Get manager’s direct report data and picklist data if necessary, using `SuccessFactors System Get Common Execution`, which requires the following inputs: 

**FilterParams**: The following example is for a user data request, but picklist data request follow the same rules for prepping the filterParams. 

Example format used in Topic:  

```json
"{""personIdExternalVal"": """ & Global.ESS_UserContext_Employee_Id & """,""userIdVal"": """ & Global.ESS_UserContext_User_Id & """}" 
```

Snippet of template configuration:

```json
{ 
  ... 
  "filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'", 
  ... 
} 
```

The keys present in `filterParam` must match what is expected in the Template configuration. In the examples above, `personIdExternalVal` would be used as a key to insert `Global.ESS_UserContext_Employee_Id` into the filter expression. 

**ScenarioName**: Configuration name, which is used by Dataverse call to get scenario configuration. 

**userIdentifier**: User ID 

`SuccessFactors System Get Common Execution` then returns a `ModelResponse` and `LabelResponse`, which are parsed for the user's data and stored in variables. 

### 2. Confirm information 
Present the manager directs current information asking for their confirmation to update or cancel to trigger the respective flow using either inline messaging or with an adaptive card. 

### 3. Submit
If the manager submits their update,  data is collected and used to call the `SuccessFactors System Update Common Execution`. This flow will `UPSERT` user data in `SuccessFactors` using the `OData` connector. `SuccessFactors System Update Common Execution` expects the following inputs: 

**TargetUserId**: User ID 
**var_requestParam**: An array of objects. Example format used in Topic:
 
```JSON
"[{""key"":""personIdExternalVal"", ""value"":"""&Global.ESS_UserContext_Employee_Id&"""},         {""key"":""countryVal"", ""value"":"""&First(Topic.var_parsedModel).country&"""},{""key"":""startDateVal"", ""value"":"""&DateDiff(Date(1970, 1, 1), First(Topic.var_parsedModel).startDate, TimeUnit.Seconds) * 1000&"""},{""key"":""genericString1Val"", ""value"":"""&Topic.id_raceAndEthnicity&"""}]" 
```
 
Snippet from Template configuration: 

```JSON
{ 
    "__metadata": { 
        "uri": "PerGlobalInfoUSA" 
    },   
    "personIdExternal": "personIdExternalVal", 
    "country": "countryVal", 
    "startDate": "/Date(startDateVal)/", 
    "genericString1": "genericString1Val", 
 } 
```

The keys present in `var_requestParam` must match what is expected in the Template configuration. In the examples above, `personIdExternalVal` is used as a key to insert `Global.ESS_UserContext_Employee_Id` into the request body. 

**var_scenarioName**: Configuration name, which is used by Dataverse call to get scenario configuration. 

If `SuccessFactors System Update Common Execution` succeeds, then copilot responds that the update was successful. If the update fails, the user gets a failure message. 

#### Customizations  

Customizations to the Template configuration generally require these changes: 

**Adding fields to Get Config**:  
After adding field to template configuration, it must update the `modelResponse` parsing node schema.

:::image type="content" source="media/parse-value.png" alt-text="Screenshot of the parse value field." lightbox="media/parse-value.png":::

:::image type="content" source="media/edit-schema.png" alt-text="Screenshot of the Edit schema definition window." lightbox="media/edit-schema.png":::

:::image type="content" source="media/adaptive-cards-fields.png" alt-text="A screenshot of a JSON with a highlighted LookUp function." lightbox="media/adaptive-cards-fields.png":::

The adaptive card “label” property is set by the value stored in the parsed label variable. The “value” property is set using the `var_veteranInfo` variable, which stores the parsed user data.

If another input type to be added to the adaptive card to collect data for another field, then use the following input control code:

```json
{
type: “Input.ChoiceSet”,
placeholder: “No Selection”,
id: “id_veteran”,
label: Lookup(Topic.var_parsedLabel, key=”genericNumber1”).value,
value: First(Topic.var_veteranInfo).genericNumber1,
choices: Topic.var_veteranPicklist
}
```

After which, update the output binding schema with the string given in `id` property.  In the previous example, `id` = `id_veteran` therefore the output binding schema must have a variable with the same name set with the correct data type, as shown:
```
kind: Record
properties:
  actionSubmitId: String
  id_challenged_veteran: String
  id_special_disabled_veteran: String
  id_veteran: String
 ```

:::image type="content" source="media/output-binding-schema.png" alt-text="Screenshot of the Edit the output binding schema." lightbox="media/output-binding-schema.png":::

##### Adding fields to update 

After adding the new field to update configuration, it must be updated with the `var_requestParam` to include added field and the values to send to update with.
Refer to the built-in `“write”` scenarios for further guidance to extend scenarios.

**Authorization**:

- Authorization is done using the `permissionsMetadata/rolePermission` that is part of the Template configuration. The `permissionsMetadata` and `User Id` are used to create the query string for `OData Connector in SuccessFactors Check User Permissions flow`. If `SuccessFactors Check User Permissions flow` doesn't find `permissionsMetadata` it runs `roleBased Permissions flow` using role permission and user roles variable.
- It's important to include `permissionMetadata` or `rolePermission` in template configuration file as there's no other authorization check if both of those fields are missing.

#### Cost Center

|Cost center | Details |
|---|---|
|**Description** |Retrieves the manager’s directs current cost center, displays it, and then prompts manager to select a direct and input their new cost center with a start date. Manager can also include direct and job title in prompt.|
|**Prompts** |<li>Update cost center for `[EmployeeName]`<li>I want to update `[EmployeeName]`'s cost center?<li>I'd like to update a team member's cost center to `[id_costCenter]`<li>Update `[EmployeeName]`'s cost center to `[id_costCenter]`<li>Update cost center for my team|


|Specific cost center | Details |
|---|---|
| **Description** |	Retrieves the manager’s directs current cost center, displays it, and then prompts manager to select a direct and input their new cost center with a start date. Manager can also include direct and job title in prompt, and it will be slot filled |
| **Prompts** | <li>Update cost center for `[EmployeeName]` <li>I want to update `[EmployeeName]`'s cost center?<li>I'd like to update a team member's cost center to `[id_costCenter]`<li>Update `[EmployeeName]`'s cost center to [id_costCenter]<li>Update cost center for my team. |
| **Adaptive card**  | :::image type="content" source="media/adaptive-card.png" alt-text="A screenshot of an adaptive card in a chat experience." lightbox="media/adaptive-card.png"::: |

##### Get configurations – Cost center
Retrieve the existing cost center is the first step in the flow.

|Get configurations|Description|
|---|---|
| **Template configuration** | 	`HRSAPSuccessFactorsHCMGetManagerCostCenter`|
| **Scenario name**	| `sdyn_HRSAPSuccessFactorsHCMGetManagerCostCenter`|
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to `false`. `isContingentWorker` is used to ensure only employees data is retrieved.|
|**Values queried**| <li>`DisplayName`: Directs current preferred name<li>`UserId`: Directs userId, which is used in upsert to match data<li>`CostCenterCode`: Directs cost center as an ID value<li>`CostCenterName`: Directs Cost center as a name linked to ID value<li>`Company`: Directs company code used to validate cost center submitted by manager.|

**Configuration**:
```json
	
{
  "scenario": "ManagerReadCostCenter",
  "rootEntity": "EmpEmployment",
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}'",
  "requestEntities": [
    {
      "key": "UserId",
      "valuePath": "userNav/userId",
      "labelPath": "User/userId"
    },
    {
      "key": "DisplayName",
      "valuePath": "userNav/displayName",
      "labelPath": "User/displayName"
    },
    {
      "key": "CostCenterCode",
      "valuePath": "jobInfoNav/costCenter",
      "labelPath": "EmpJob/costCenter"
    },
    {
      "key": "CostCenterName",
      "valuePath": "jobInfoNav/costCenterNav/name",
      "labelPath": ""
    },
{
      "key": "Company",
      "valuePath": "jobInfoNav/company",
      "labelPath": "EmpJob/company"
    }
  ], 
  "permissionsMetadata": [],
  "rolePermissions": [
    {
      "roleId": "115",
      "permissions": [{ "permStringValue": "$_jobInfo_cost-center_read" }]
    }
  ]
}
```

#### Validate cost center
This configuration is used to validate the manager’s entered cost center. After the manager submits the adaptive card, this configuration is used with the Get Common Orchestrator to query for the cost center and see if it exists under the company code the manager is in.

|Validate cost center | Description |
| --- | ---|
|**Template configuration** | `HRSAPSuccessFactorsHCMEmployeeValidateCostCenter`|
|**Scenario name**	|`msdyn_HRSAPSuccessFactorsHCMEmployeeValidateCostCenter`|
|**Filter** | Filters on cost center code (`externalCode`) using `costCentervalue` and company code (`cust_LegalEntity/externalCode`) |
|**Values queried** |<li>`CostCenterCode`: Cost center as an ID value <li> `CostCenterName`: Cost center as a name linked to ID value |

**Configuration**:	
```json


{
  "scenario": "ValidateCostCenter",
  "rootEntity": "FOCostCenter",
  "filter": "externalCode eq '{costCenterValue}' and cust_LegalEntity/externalCode eq '{companyCodeValue}'",
  "requestEntities": [
    {
      "key": "costCenterCode",
      "valuePath": "externalCode",
      "labelPath": ""
    },
    {
      "key": "costCenterName",
      "valuePath": "name",
      "labelPath": ""
    }
  ], 
  "permissionsMetadata": [],
  "rolePermissions": []
}
```

#### Update cost center
Updating the contact email

|Validate cost center | Description |
| --- | ---|
| **Template configuration** | `HRSAPSuccessFactorsHCMManagerUpdateCostCenter` |
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMManagerUpdateCostCenter` |
| **Request Body**|	<li>`userId`: User ID of the direct that’s being updated<li>`startDate`: Start date of when the change should take effect<li>`costCenter`: New cost center ID input by manager. |

**Configuration**	
```json

{
        "scenario": "UpdateCostCenter",
        "requestBody": '{
            "__metadata": {
                "uri": "EmpJob"
            },
            "userId": "userIdVal",
            "startDate": "/Date(startDateVal)/",
            "costCenter": "costCenterVal"
        }',
        "permissionsMetadata": [{
                "permType": "DATA_MODEL",
                "permLongValue": -1,
                "permStringValue": "$_eventReason_DATACOST_write"
            }
        ],
        "rolePermissions": []
    }
```

#### Job Title
|Job Title | Description |
| --- | ---|
|**Description** | Retrieves the managers directs current job titles, displays it, and then prompts manager to select a direct and input their new title with a start date. Manager can also include direct and job title in prompt.|
|**Prompts** | <li>I want to change the job title for `[EmployeeName]`<li>Update `[EmployeeName]`'s job title to `[newJobTitle]`<li>Can I change the job title of my team member?<li>I'd like to change `[EmployeeName]`'s job title<li>Update job title for my direct reports<li>Change job title of my team member to `[newJobTitle]`?|
|**Adaptive Card** | :::image type="content" source="media/adaptive-card.png" alt-text="A screenshot of an adaptive card in a chat experience." lightbox="media/adaptive-card.png"::: |
|

#### Get configurations – Job information
Retrieving the existing job information is the first step in the flow

|Get configurations | Description |
| --- | ---|
|**Template configuration** | `HRSAPSuccessFactorsHCMGetManagerJobInfo`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMGetManagerJobInfo`|
|**Filter**	| Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`, `userId` using `ESS_UserContext_User_Id`, and `isContingentWorker` set to `false`. `isContingentWorker` is used to ensure only employees data is retrieved. |
|**Values queried** | <li>`DisplayName`: Directs current preferred name<li>`UserId`: Directs `userId` which is used in upsert to match data.<li>`JobTitle`: Directs job title<li>`JobCode`: Not used in this Topic but is queried because the template configuration Manager Read Job Info is reused here<li>`JobFunctionType`: Not used in this topic but is queried because the template configuration Manager Read Job Info is reused here<li>`JobFunction`: Not used in this topic but is queried because the template configuration Manager Read Job Info is reused here|

**Configuration**:
```json

	{
  "scenario": "ManagerReadJobInfo",
  "rootEntity": "EmpEmployment",
  "filter": "isContingentWorker eq {isContingentWorkerValue} and userNav/manager/empInfo/personIdExternal eq '{personIdExternalVal}' and userNav/manager/empInfo/userId eq '{userIdVal}'",
  "requestEntities": [
    {
      "key": "DisplayName",
      "valuePath": "userNav/displayName",
      "labelPath": "User/displayName"
    },
    {
      "key": "UserId",
      "valuePath": "userNav/userId",
      "labelPath": "User/userId"
    },
    {
      "key": "JobTitle",
      "valuePath": "jobInfoNav/jobTitle",
      "labelPath": "User/jobTitle"
    },
    {
      "key": "JobCode",
      "valuePath": "jobInfoNav/jobCode",
      "labelPath": "User/jobCode"
    },
    {
      "key": "JobFunctionType",
      "valuePath": "jobInfoNav/jobCodeNav/jobFunctionNav/jobFunctionType",
      "labelPath": "FOJobFunction/jobFunctionType"
    },
    {
      "key": "jobFunction",
      "valuePath": "jobInfoNav/jobCodeNav/jobFunction",
      "labelPath": "FOJobCode/jobFunction"
    }
  ],
  "permissionsMetadata": [],
  "rolePermissions": [
    {
      "roleId": "115",
      "permissions": [
        {
          "permStringValue": "$_jobInfo_job-title_read"
        },
        {
          "permStringValue": "$_jobInfo_job-code_read"
        }
      ]
    }
  ]
}
```

#### Update job title
Updating the job title

|Job Title | Description |
| --- | ---|
|**Template configuration** |`HRSAPSuccessFactorsHCMManagerUpdateJobTitle`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeUpdatePreferredName` |
|**Request Body** | <li>`userId`: User ID of direct that’s being updated<li>`startDate`: Start date of when the change should be effective gathered from manager<li>`jobTitle`: New job title gathered from manager|

##### Configuration	

```json{
        "scenario": "UpdateJobTitle",
        "requestBody": '{
            "__metadata": {
                "uri": "EmpJob"
            },
            "userId": "userIdVal",
            "startDate": "/Date(startDateVal)/",
            "jobTitle": "jobTitleVal"
        }',
        "permissionsMetadata": [{
                "permType": "DATA_MODEL",
                "permLongValue": -1,
                "permStringValue": "$_eventReason_JOBTITLE_write"
            }
        ],
        "rolePermissions": []
}
```

