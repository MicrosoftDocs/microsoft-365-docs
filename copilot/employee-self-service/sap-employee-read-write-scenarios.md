---
title: SAP SuccessFactors Employee read & write scenarios with Employee Self-Service
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
description: Learn about SAP SuccessFactors employee read and write scenarios for Employee Self-Service agent.
appliesto:
- ✅ Microsoft 365 Copilot
---
# SAP SuccessFactors employee read and write scenarios

## SAP SuccessFactors employee read scenarios

Each of the Read topic has its own prompts, configurations, and so on, but the actual execution of SAP SuccessFactors is encapsulated in the **SuccessFactors System Get Common Execution** topic expecting the following inputs:

- **Filter parameters**: Generally passing *Employee ID* and *User ID* for filtering query for Employee Read topics.
- **ScenarioName**: Config Name, which is used by Dataverse call to get scenario configuration.
- **userIdentifier**: User ID.

A common orchestrator then returns a ModelResponse and LabelResponse, which the Large Language Model (LLM) then parses using the following instructions to generate an answer for the user:

- Extract the input from the following response (map the Label response *value* as key in model response attribute then provide model value).
- Provide the response to the user in a human readable form.
- Format the response properly to make it clean and readable.
- Use only data values from the variable named `successfactorsModelResponse` and use the variable named `successfactorsLabelResponse` for labeling the data.
- **Response example:**
  - Label Response:`key`:`company`,`value`:`company`
  - Model Response: `company`:`12345`
  - Example Output: Your company is 12345 (Contoso Germany)

The "Get Employee ID" and "Get Service Anniversary" topics are exceptions to this common execution method, which is further explained in their respective sections.

Authorization for all the topics is as follows:

- Authorization is done using the *permissionsMetadata* part of the starter configuration. The *permissionsMetadata* and *User ID* are used to create the query string for OData connector in *SuccessFactors Check User Permissions* flow.
- You should include *permissionMetadata* or *rolePermission* in the starter config file, as there's no other authorization check if both of those fields are missing.

### Get Base Compensation

|Get Base Compensation |Details |
|----------------------|--------|
|**Description**       | Returns the users' compensation data, such as compensation ratio and salary. |
|**Prompts**           | <li>>How much can I expect to earn annually, what is my salary? <li>Show me only my base salary details |
|**Scenario name**     |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetBaseCompensationAndCompaRatio`.  |
|**Filter**            | Filters on *personIdExternal* using *ESS _UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id*<p>Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'"`. |
|**Values queried**    | CompaRatio <br> Currency <br> AnnualBaseSalary. |

**Configuration:**

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetBaseCompensationAndCompaRatio", 
    "rootEntity": "EmpEmployment", 
    "filter": "personIdExternal eq '{personIdExternalVal}' and userId eq 
'{userIdVal}'", 
    "requestEntities": [ 
        { 
            "key": "CompaRatio", 
            "valuePath": "compInfoNav/empCompensationCalculatedNav/compaRatio", 
            "labelPath": "EmpCompensationCalculated/compaRatio" 
        }, 
        { 
            "key": "Currency", 
            "valuePath": "compInfoNav/empCompensationCalculatedNav/currency", 
            "labelPath": "EmpCompensationCalculated/currency" 
        }, 
        { 
            "key": "AnnualBaseSalary", 
            "valuePath": 
"compInfoNav/empCompensationCalculatedNav/yearlyBaseSalary", 
            "labelPath": "EmpCompensationCalculated/yearlyBaseSalary" 
        } 
    ], 
    "permissionsMetadata": [ 
        { 
            "permType": "DATA_MODEL", 
            "permLongValue": -1, 
            "permStringValue": "$_payCompGroup_AnnualizedSalary_read" 
        } 
    ] 
} 
```

### Get Company Code 

|Get Company Code   |Details |
|-------------------|--------|
|**Description**    | Returns users' company code information. |
|**Prompts**        | <li>What is my company code? <li> Get employee view on company code. <li>Display my company code <li>Give me my company code, what is my company code? <li>Show me only my company code details. |
|**Scenario name**  |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetCompanyCode`. |
|**Filter** | Filters on *personIdExternal* using *ESS_UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id* <p>Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq'{userIdVal}'"`. |
|**Values queried** | CompanyCode. <br> CompanyName (*No label is retrieved for company name as it is*). |

**Configuration**:

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetCompanyCode", 
"rootEntity": "EmpEmployment", 
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'", 
"requestEntities": [ 
{ 
"key": "CompanyCode", 
"valuePath": "jobInfoNav/company", 
"labelPath": "EmpJob/company" 
}, 
{ 
"key": "CompanyName", 
"valuePath": "jobInfoNav/companyNav/name", 
"labelPath": "" 
} 
], 
"permissionsMetadata": [ 
{ 
"permType": "DATA_MODEL", 
"permLongValue": -1, 
"permStringValue": "$_jobInfo_company_read" 
} 
] 
} 
```

### Get Cost Center

|Get Cost Center    |Details |
|-------------------|--------|
|**Description**    |Returns users' current cost center. |
|**Prompts** |<li>What is my Cost Center?<li>Can you show me the cost center I'm assigned to?<li>Can you show me my cost center?<li>Show me only my cost center details. |
|**Scenario name**  |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetCostCenter`. |
|**Filter** |Filters on *personIdExternal* using *ESS_UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id*<p> Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'"`. |
|**Values queried** |CostCenterCode. <br>CostCenterName (*CostCenterName label isn't retrieved as it isn't necessary for topic*). |

**Configuration**:

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetCostCenter", 
"rootEntity": "EmpEmployment", 
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'", 
"requestEntities": [ 
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
"permissionsMetadata": [ 
{ 
"permType": "DATA_MODEL", 
"permLongValue": -1, 
"permStringValue": "$_jobInfo_cost-center_read" 
} 
] 
} 
```

### Get Hire Date

|Get Hire Data      |Details |
|-------------------|--------|
|**Description**    |Returns the users' hire date. |
|**Prompts**        |<li>When is my original start date? <li>Get my hire date. <li>Get my start date. <li>Show me only my hire date details. |
|**Scenario name**  |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetHireDate`. |
|**Filter**  |Filters on *personIdExternal* using *ESS_UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id*<p>Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq'{userIdVal}'"`. |
|**Values queried** | HireDate. |

**Configuration**:

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetHireDate", 
"rootEntity": "EmpEmployment", 
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq 
'{userIdVal}'", 
"requestEntities": [ 
{ 
"key": "HireDate", 
"valuePath": "originalStartDate", 
"labelPath": "EmpEmployment/originalStartDate" 
} 
], 
"permissionsMetadata": [ 
{ 
"permType": "DATA_MODEL", 
"permLongValue": -1, 
"permStringValue": "$_employmentInfo_seniorityDate_read" 
} 
] 
} 
```

### Get Service Anniversary

|Get Service Anniversary |Details |
|------------------------|--------|
|**Description** |This topic performs a calculated functionality using the "HireDate" value with some PowerFx functions as follows:<p>**Years worked**<p><li>`RoundDown(DateDiff(Topic.startDate, Now(), TimeUnit.Years), 0)` <br>This formula calculates the number of complete years the employee worked. It finds the difference between current date and employee's start date and then rounds down to the nearest whole number<li>`DateDiff(Topic.startDate, Now(), TimeUnit.Years)` <br>This part of the formula calculates the difference in years between the employee's start date (`Topic.startDate`) and the current date (\`Now()\`).<li>`RoundDown(..., 0)` <br>This function takes the result of DateDiff and rounds it down to the nearest whole number. The `0` value indicates the number of decimal places to round to, which in this case is zero, meaning it returns an integer value representing the complete years worked. <p>**Service Anniversary Intervals in Years** <p><li>`RoundDown(Topic.yearsWorked / Topic.serviceAnniversaryDuration, 0)` <br>Calculates how many complete intervals of the service anniversary duration the employee worked. It divides the total years worked by the service anniversary duration and rounds down to the nearest whole number. <p>**Upcoming Service Anniversary Count** <li>`Topic.serviceAnniversaryDuration \* (Topic.serviceAnniversaryIntervalsInYears + 1)` <br>This formula calculates the upcoming service anniversary count by multiplying the service anniversary duration by one more than the complete intervals already worked.<p>**Calculated Service Anniversary Date** <br>`DateAdd(Topic.startDate, Topic.serviceAnniversaryDuration \*(RoundDown(Topic.yearsWorked / Topic.serviceAnniversaryDuration, 0) + 1), TimeUnit.Years)`<p><li>`RoundDown(Topic.yearsWorked / Topic.serviceAnniversaryDuration, 0)` <br>This part of the formula calculates how many complete intervals of the service anniversary duration the employee worked. It divides the total years worked by the service anniversary duration and rounding down to the nearest whole number.<li>`Topic.serviceAnniversaryDuration \* (RoundDown(Topic.yearsWorked /Topic.serviceAnniversaryDuration, 0) + 1)` <br>This part of the formula calculates the total service anniversary intervals (plus one) to be added to the start date.<li>`DateAdd(Topic.startDate, ..., TimeUnit.Years)`<br>Finally, this function adds the calculated intervals to the start date to determine the upcoming service anniversary date. |
|**Prompts**  |<li>When is my next service anniversary?<li>Next anniversary<li>Service anniversary<li>Show my service anniversary date <li>What is my service anniversary date? |
|**Scenario name**  |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetHireDate` |
|**Filter** |Filters on *personIdExternal* using *ESS_UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id*<p>Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'"`|
|**Values queried** |HireDate |

**Configuration**:

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetHireDate", 
"rootEntity": "EmpEmployment", 
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq 
'{userIdVal}'", 
"requestEntities": [ 
{ 
"key": "HireDate", 
"valuePath": "originalStartDate", 
"labelPath": "EmpEmployment/originalStartDate" 
} 
], 
"permissionsMetadata": [ 
{ 
"permType": "DATA_MODEL", 
"permLongValue": -1, 
"permStringValue": "$_employmentInfo_seniorityDate_read" 
} 
] 
} 
```

### Get Employee ID

|Get Employee ID |Details |
|----------------|--------|
|**Description** |Reads *ESS_UserContext_Employee_Id* and returns it to the user. There's no config required for this topic. |
|**Prompts**     |<li>What is my employee ID?<li>Show my employee ID?<li>What is my employee number? |

### Get Job Info

|Get Job Info       |Details |
|-------------------|--------|
|**Description**    | Returns job information to the user, including Job Code, Job Title, Job Function, and Job Function Type. |
|**Prompts**        | <li>What is my job code? <li>What is a job code? <li>What is my role? <li>What is my job info? <li>What is my job title? <li>Show me only my job details. |
|**Scenario name**  |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetJobInfo`. |
|**Filter**| Filters on *personIdExternal* using *ESS_UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id*<p>Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'"`. |
|**Values queried** | JobCode<br>JobTitle<br>JobFunction<br>JobFunctionType. |

**Configuration**:

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetJobInfo", 
"rootEntity": "EmpEmployment", 
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq 
'{userIdVal}'", 
"requestEntities": [ 
        { 
            "key": "JobCode", 
            "valuePath": "jobInfoNav/jobCodeNav/name", 
            "labelPath": "EmpJob/jobCode" 
        }, 
        { 
            "key": "JobTitle", 
            "valuePath": "jobInfoNav/jobTitle", 
            "labelPath": "EmpJob/jobTitle" 
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
    "permissionsMetadata": [ 
        { 
            "permType": "DATA_MODEL", 
            "permLongValue": -1, 
            "permStringValue": "$_jobInfo_job-code_read" 
        } 
    ] 
} 
```

### Get Position Number

|Get Position Number |Details |
|--------------------|--------|
|**Description**     |Returns position number acquired from SuccessFactors. |
|**Prompts**         |<li>What is my position ID? <li> Get my position number. <li> Show me only my position details.  |
|**Scenario name**   |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetPositionNumber`. |
|**Filter**          |Filters on *personIdExternal* using *ESS_UserContext_Employee_Id* and *user ID* using *ESS_UserContext_User_Id*<p>Expression: `"personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'"`. |
|**Values queried**  |JobCode. |

**Configuration**:

```json
{ 
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetPositionNumber", 
"rootEntity": "EmpEmployment", 
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}' 
and tolower(jobInfoNav/positionNav/effectiveStatus) eq 'a'", 
"requestEntities": [ 
{ 
"key": "JobCode", 
"valuePath": "jobInfoNav/position", 
"labelPath": "EmpJob/position" 
} 
], 
"permissionsMetadata": [ 
{ 
"permType": "DATA_MODEL", 
"permLongValue": -1, 
"permStringValue": "$_jobInfo_position_read" 
} 
] 
} 
```

## SAP SuccessFactors employee write scenarios

Employee **write** topics logic is as follows:

### 1. Get user data
Get user data and Picklist data (if necessary) by using `SuccessFactors System Get Common Execution`, which expects the following inputs: 

**FilterParams**: The following example shows a user data request, but picklist data request follow the same rules for prepping the filterParams. 

Example format used in Topic:  

```json
"{""personIdExternalVal"": """ & Global.ESS_UserContext_Employee_Id & """,""userIdVal"": """ & Global.ESS_UserContext_User_Id & """}" 
```
Snippet of Template configuration: 

```json
{ 
  ... 
  "filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'", 
  ... 
} 
```
 
The keys present in the `filterParam` must match what is expected in the Template configuration. In the examples above `personIdExternalVal` would be used as a key to insert `Global.ESS_UserContext_Employee_Id` into the filter expression. 

**ScenarioName**: Configuration name, which is used by the Dataverse call to get scenario configuration 
**userIdentifier**: `User Id` 

`SuccessFactors System Get Common Execution` then returns a `ModelResponse` and `LabelResponse`, which are parsed for the user's data, and then stored in variables. 

### 2. Confirm information

Present the user their current information asking for their confirmation to update or cancel to trigger the respective flow using either inline messaging or with an adaptive card. 

### 3. Submit update

If the user submits their update, then data is collected and used to call the `SuccessFactors System Update Common Execution`. This flow will `UPSERT` user data in SuccessFactors using the **OData** connector. `SuccessFactors System Update Common Execution` requires the following inputs: 

- `TargetUserId`: User ID 
- `var_requestParam`: An array of objects 

Example Format used in Topic: 

```json
"[{""key"":""personIdExternalVal"", ""value"":"""&Global.ESS_UserContext_Employee_Id&"""},         {""key"":""countryVal"", ""value"":"""&First(Topic.var_parsedModel).country&"""},{""key"":""startDateVal"", ""value"":"""&DateDiff(Date(1970, 1, 1), First(Topic.var_parsedModel).startDate, TimeUnit.Seconds) * 1000&"""},{""key"":""genericString1Val"", ""value"":"""&Topic.id_raceAndEthnicity&"""}]" 
```
 
Snippet from Template configuration 

```json
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

The keys present in the `var_requestParam` must match what is expected in the Template configuration. In the previous examples `personIdExternalVal` would be used as a key to insert `Global.ESS_UserContext_Employee_Id` into the request body. 

- `var_scenarioName`: Configuration name, which is used by Dataverse call to get scenario configuration. 

### 4. Success or fail notification to user

If `SuccessFactors System Update Common Execution` succeeds, then Copilot responds to a user that their update succeeded. If the operation fails, the user gets a failure message. 

### Multi-country/region configurations 

To accommodate support for multiple country/regions and their respective entities, distinct configurations are established tailored to each scenario. These configurations adhere to the established naming convention, with the addition of `_<CountryCode>` appended at the end. This differentiation serves not only to distinguish between configurations but also to ensure retrieval of the appropriate configuration from the topics. Within the topic, the correct configuration is identified by appending `UserContext_Country_Code` to the standard configuration name.

For example: `Concatenate("msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateRaceAndEthnicity_", Global.ESS_UserContext_Country_Code)`

For all Write configurations, ensure that `requestBody` is a string by including single quotes outside the brackets. This is the expected data type for query flow.

### Customizations  

Customizations to the Template configuration will generally require these changes: 

#### 1. Adding fields to Get Config:  

:::image type="content" source="media/employee-parse-value.png" alt-text="Screenshot of the parse value field with var_veteranInfo." lightbox="media/employee-parse-value.png":::

:::image type="content" source="media/employee-edit-schema.png" alt-text="Screenshot of the Edit schema window that's highlighted NewField value" lightbox="media/employee-edit-schema.png":::

#### 2.	Adding fields to Adaptive card: 
After adding fields to get schema, they can be accessed in the adaptive card design formula:

:::image type="content" source="media/employee-adaptive-cards-fields.png" alt-text="Screenshot of the adaptive card fields" lightbox="media/employee-adaptive-cards-fields.png":::

The adaptive card `label` property is set by the value stored in the pared `label` variable and the `value` property is set using the `var_veteranInfo` variable, which stores the parsed user data.

If another input type needs to be added to the adaptive card to collect data for another field, then use the following input control code:

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

After updating the code, you must update the output binding schema with the string given in `id` property.  In the previous example, `id` = `id_veteran`. Therefore, the output binding schema must have a variable with the same name set with the correct data type. For example:

```
kind: Record
properties:
  actionSubmitId: String
  id_challenged_veteran: String
  id_special_disabled_veteran: String
  id_veteran: String
```

 :::image type="content" source="media/employee-edit-output-binding-schema.png" alt-text="Screenshot of the employee output binding schema window" lightbox="media/employee-edit-output-binding-schema.png":::

#### 3. Adding fields to update

After adding the new field to update configuration, it must be updated with the `var_requestParam` to include added field and the values to send to update with.

Refer to the built-in “write” scenarios for further guidance to extend other scenarios.

**Authorization**

- Authorization is done using the `permissionsMetadata`/`rolePermission` that is part of the Template configuration. The `permissionsMetadata` and User ID are used to create the query string for OData Connector in `SuccessFactors Check User Permissions flow`. If `SuccessFactors Check User Permissions flow` doesn't find `permissionsMetadata` it runs roleBased Permissions flow using role permission and user roles variable

- It's important to include permissionMetadata or rolePermission in template configuration file as there's no other authorization check if both of those fields are missing.
 
### Veteran Info
| Veteran info | Description |
| --- | --- |
| Description |	Retrieves the employee’s current veteran information and presents it in an adaptive card, which the employee can edit and submit to update their veteran info|
|Validations & Errors|If employee’s `Country_Code` does not exist in `SuccessFactors_VeteranInfo_Countries` environment variable then Topic won't run and instead return a "Sorry, this capability isn't available in `<ESS_UserContext_Country_Code>` at this moment." message|
|Prompts|<li>Can I update my Veteran status?<li>Is there a process to update my military/veteran status?<li>Do I have to provide my military/veteran details?|
|Adaptive Card | There are two adaptive cards for each support country/region, which are picked using a switch statement based on the employees `ESS_SuccessFactors_UserContext_Country_Code`  :::image type="content" source="media/employee-adaptive-card-condition-options.png" alt-text="Screenshot of the adaptive condition options" lightbox="media/employee-adaptive-card-condition-options.png"::: | 

#### Get configurations
There are differences between where the data is stored between country/region. You must have a two template configurations. These configurations differ in:
- `RootEntity`
- `RequestEntities`
 
| Configuration | Description |
| --- | --- |
| **Template configuration** | `HRSAPSuccessFactorsHCMEmployeeGetVeteranInfo_USA` |
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeGetVeteranInfo_USA` |
| **Filter**| Filters on `personIdExternal` using `ESS_UserContext_Employee_Id` and `userId` using `ESS_UserContext_User_Id`|
| **Values queried**|<li>`Country`: necessary to make the `upsert` call for the employee. `PerGlobalInfoUSA` expects this value in the `requestbody`. This value needs to be fetched and included in the `update_parameters`<li>`StartDate`: `StartDate` is necessary to make the upsert call for the employee. When making an `upsert` call to `PerGlobalInfoUSA`, request body expects the `startDate` saved in the data in epoch format. The `starteDate` is fetched and included in the `update_parameters`<li>`Veteran`: Employee’s veteran status as a yes/no value.<li>`ChallengedVeteran`: Employee’s challenged veteran designation as a yes/no value.<li>`SpecialDisabledVeteran`: Employee’s special veteran who has a disability designation as a yes/no value.|

**Configuration**
```json
	{
  "scenario": "VeteranInformation",
  "rootEntity": "PerGlobalInfoUSA",
  "filter": "personIdExternal eq {personIdExternalVal} and personNav/employmentNav/userId eq '{userIdVal}'",
  "requestEntities": [
    {
      "key": "Country",
      "valuePath": "country",
      "labelPath": ""
    },    
    {
      "key": "StartDate",
      "valuePath": "startDate",
      "labelPath": ""
    },
    {
      "key": "Veteran",
      "valuePath": "genericNumber1",
      "labelPath": "PerGlobalInfoUSA/genericNumber1"
    },
    {
      "key": "ChallengedVeteran",
      "valuePath": "genericNumber2",
      "labelPath": "PerGlobalInfoUSA/genericNumber2"
    },
    {
      "key": "SpecialDisabledVeteran ",
      "valuePath": "genericNumber6",
      "labelPath": "PerGlobalInfoUSA/genericNumber6"
    }
  ], 
  "permissionsMetadata": [],
  "rolePermissions": []
}
```

| Configuration | Description |
| --- | --- |
| **Template configuration** | `HRSAPSuccessFactorsHCMEmployeeGetVeteranInfo_GBR`|
| **Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeGetVeteranInfo_GBR` |
| **Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id` and `userId` using `ESS_UserContext_User_Id` |
| **Values queried**| <li>`Country`: Required to make the `upsert` call for the employee. `PerGlobalInfoGBR` expects this value in the `requestbody`. This value needs to be fetched and included in the update_parameters. <li>`StartDate`: Required to make the `upsert` call for the employee. When making an `upsert` call to `PerGlobalInfoGBR` request body expects the `startDate` saved in epoch format. The `starteDate` value is fetched and included in the `update_parameters`<li>`Veteran`: Employee’s veteran status as `MILITARYSTATUS_GBR` picklist values|

**Configuration**:

```json
	{
  "scenario": "VeteranInformation",
  "rootEntity": "PerGlobalInfoGBR",
  "filter": "personIdExternal eq {personIdExternalVal} and personNav/employmentNav/userId eq '{userIdVal}'",
  "requestEntities": [
{
      "key": "Country",
      "valuePath": "country",
      "labelPath": ""
    },    
{
      "key": "StartDate",
      "valuePath": "startDate",
      "labelPath": ""
    },
{
      "key": "Veteran",
      "valuePath": "genericNumber1",
      "labelPath": "PerGlobalInfoGBR/genericNumber1"
    }
  ], 
  "permissionsMetadata": [],
  "rolePermissions": []
}
```
#### Picklist Configuration
There are differences between where the data is stored between countries therefore it’s required to have two template configurations. These configurations differ in:
- `RootEntity`
- `RequestEntities`

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeGetPicklistVeteranInfo_USA`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetPicklistVeteranInfo_USA`|
|**Filter** |Filters for `picklistId` `'yesNo'` and locale, which is `ESS_UserContext_Locale`|
|**Values queried** |<li>`optionId`: Value used for data corresponding to label name. <li>`Label`: Human readable name|

**Configuration**	
```json
{
    "scenario": "VeteranInfo_USA",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'yesNo' and locale eq '{localeValue}'",
    "requestEntities": [
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeGetPicklistVeteranInfo_GBR`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeGetPicklistVeteranInfo_GBR` |
|**Filter** | Filters for `picklistId` `'MILITARYSTATUS_GBR'` and locale, which is `ESS_UserContext_Locale`|
|**Values queried** | <li>`optionId`: Value used for data corresponding to label name<li>`Label`: Human readable name |

**Configuration**:
```json

	{
    "scenario": "MilitaryStatus_GBR",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'MILITARYSTATUS_GBR' and locale eq '{localeValue}'",
    "requestEntities": [
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
    "rolePermissions": []
}
```

#### Write Configuration
The difference between countries/regions in these write configurations are the uri/RootEntity and number of fields being different, such as GBR configuration doesn't have `genericNumber2` & `genericNumber6` as they are not used.

| Configuration | Description |
| --- | --- |
|**Template configuration**	|`HRSAPSuccessFactorsHCMEmployeeUpdateVeteranInfo_USA`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateVeteranInfo_USA` |
|**Request Body** | <li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`Country`: Required to make the `upsert` call for the employee. `PerGlobalInfoUSA` expects this value in the `requestbody`. Therefore it's fetched and included in the update_parameters<li>`StartDate`: Necessary to make the `upsert` call for the employee. When making an `upsert` call to `PerGlobalInfoUSA` request body expects the `startDate` that is saved in the data in epoch format. Therefore, `startDate` is fetched and included it in `update_parameters`.<li>`genericNumber1`: Veteran status value input option collected from employee<li>`genericNumber2`: Challenged veteran value input option collected from employee<li>`genericNumber6`: Special veteran who has disabilities input option value collected from employee|

**Configuration**:
```json
	{
    "scenario": "UpdateVeteranInformation",
    "requestBody": '{
        "__metadata": {
            "uri": "PerGlobalInfoUSA"
        },  
        "personIdExternal": "personIdExternalVal",
        "country": "countryVal",
        "startDate": "/Date(startDateVal)/",
        "genericNumber1": "genericNumber1Val",
        "genericNumber2": "genericNumber2Val",
        "genericNumber6": "genericNumber6Val",
    }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```

| Configuration | Description |
| --- | --- |
|**Template configuration**	|`HRSAPSuccessFactorsHCMEmployeeUpdateVeteranInfo_GBR`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateVeteranInfo_GBR` |
|**Request Body** | <li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`Country`: Necessary to make the `upsert` call for the employee. `PerGlobalInfoGBR` expects this value in the `requestbody`. This value is fetched and included in the update_parameters<li>`StartDate`: `StartDate` is necessary to make the `upsert` call for the employee. When making an upsert call to `PerGlobalInfoGBR`, request body expects the `startDate` saved in epoch format. `startDate` is fetched and included in the update_parameters<li>`genericNumber1`: Veteran status value collected from user|

**Configuration**	
```
{
    "scenario": "UpdateVeteranInformation",
    "requestBody": '{
        "__metadata": {
            "uri": "PerGlobalInfoGBR"
        },
        "personIdExternal": "personIdExternalVal",
        "country": "countryVal",
        "startDate": "/Date(startDateVal)/",
        "genericNumber1": "genericNumber1Val"
    }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```

**Customizations**
Adding an additional country/region requires the following:
1.	Add all the respective template configurations
2.	If new country/region has different fields or collects a different data type, then input the text and add a new condition for the new country/region. Then, set up the adaptive card as required for country/region and any other requirements.

### Race & Ethnicity

| Race & Ethnicity | Description |
| --- | --- |
|**Description** | Retrieves the employee’s current ethnicity information and presents it in an adaptive card, which the employee can edit and submit to update their information.|
|**Validations & Errors**| If user's `Country_Code` does not exist in the `SuccessFactors_RaceAndEthnicity_Countries` environment variable, then Topic won't run and instead return "Sorry, this capability isn't available in `<ESS_UserContext_Country_Code>` at this moment." |
|**Prompts**| <li>I want to update my Race/ethnicity information<li>How to update my Race/ethnicity information<li>What is the process to update my Race/ ethnicity information?|
|**Adaptive card**|Although race & ethnicity topic support two countries/regions, the fields for both country/regions are the same. It isn't required to have multiple adaptive cards. As more countries/regions are added, a switch statement is added to the flow when a new country/region with different fields needs to be supported.|

#### Get configurations
There are differences between where the data is stored between countries/regions. Therefore, two template configurations are required. These configurations differ in:
- `RootEntity`

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeGetRaceAndEthnicity_USA`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeGetRaceAndEthnicity_USA`|
|**Filter**|Filters on `personIdExternal` using `ESS_UserContext_Employee_Id` and `userId` using `ESS_UserContext_User_Id`|
|**Values queried**|<li>`Country`: Required to make the `upsert` call for the employee. `PerGlobalInfoUSA` expects this value in the `requestbody`. This value is fetched and included in the `update_parameters`.<li>`StartDate`: Required to make the `upsert` call for the employee. When making an `upsert` call to `PerGlobalInfoUSA`, request body expects the `startDate` saved in epoch format. `startDate` is fetched and included in the `update_parameters`<li>`EthnicGroup`: Employee’s ethnic group as an `ETHNIC-GROUP_USA` picklist value|

**Configuration**
```JSON
	{
  "scenario": "RaceAndEthnicity",
  "rootEntity": "PerGlobalInfoUSA",
  "filter": "personIdExternal eq {personIdExternalVal} and personNav/employmentNav/userId eq '{userIdVal}'",
  "requestEntities": [
    {
      "key": "EthnicGroup",
      "valuePath": "genericString1",
      "labelPath": "PerGlobalInfoUSA/genericString1"
    },
{
      "key": "Country",
      "valuePath": "country",
      "labelPath": ""
    },
{
      "key": "startDate",
      "valuePath": "startDate",
      "labelPath": ""
    }
  ], 
  "permissionsMetadata": [],
  "rolePermissions": []
}
```
| Configuration | Description |
| --- | --- |
|**Template configuration** | `HRSAPSuccessFactorsHCMEmployeeGetRaceAndEthnicity_GBR`
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeGetRaceAndEthnicity_GBR`|
|**Filter** | Filters on `personIdExternal` using `ESS_UserContext_Employee_Id` and `userId` using `ESS_UserContext_User_Id`|
|**Values queried** | <li>`Country`: Required to make the `upsert` call for the employee. `PerGlobalInfoGBR` expects country in the `requestbody` therefore it’s fetched and included in the `update_parameters`.<li>`StartDate`: Required to make the `upsert` call for the employee. When making an `upsert` call to `PerGlobalInfoGBR` request body expects the `startDate` saved in epoch format. Therefore, `startDate` is fetched and included in the update_parameters<li>`EthnicGroup`: Employee’s ethnic group as an `ETHNICGROUP_GBR picklist` value |

**Configuration**	
```json

{
  "scenario": "RaceAndEthnicity",
  "rootEntity": "PerGlobalInfoGBR",
  "filter": "personIdExternal eq {personIdExternalVal} and personNav/employmentNav/userId eq '{userIdVal}'",
  "requestEntities": [
    {
      "key": "EthnicGroup",
      "valuePath": "genericString1",
      "labelPath": "PerGlobalInfoGBR/genericString1"
    },
{
      "key": "Country",
      "valuePath": "country",
      "labelPath": ""
    },
{
      "key": "startDate",
      "valuePath": "startDate",
      "labelPath": ""
    }
  ], 
  "permissionsMetadata": [],
  "rolePermissions": []
}
```

##### Picklist Configuration
The only difference between countries in picklist config is the `picklistId` each is pointing to.

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMGetPicklistRaceAndEthnicity_USA`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMGetPicklistRaceAndEthnicity_USA`|
|**Filter** | Filters for `picklistId` `'ETHNIC-GROUP_USA'` and `locale` which is `ESS_UserContext_Locale`|
|**Values queried** | <li>`optionId`: Value used for data corresponding to label name.<li>`Label`: Human readable name|

**Configuration**	
```json

{
    "scenario": "RaceAndEthnicity_USA",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'ETHNIC-GROUP_USA' and locale eq '{localeValue}'",
    "requestEntities": [
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

**Picklist configuration in Race & Ethnicity** 
| Configuration | Description |
| --- | --- |
|**Template configuration** | `HRSAPSuccessFactorsHCMGetPicklistRaceAndEthnicity_GBR`|
|**Scenario name**|	`msdyn_HRSAPSuccessFactorsHCMGetPicklistRaceAndEthnicity_GBR`|
|**Filter** | Filters for `picklistId 'ETHNICGROUP_GBR'` and `locale` which is `ESS_UserContext_Locale |
|**Values queried**|<li>`optionId`: Value used for data corresponding to label name<li>`Label`: Human readable name|

**Configuration**
```json
	{
    "scenario": "RaceAndEthnicity_GBR",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'ETHNICGROUP_GBR' and locale eq '{localeValue}'",
    "requestEntities": [
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

#### Write Configuration
The difference between countries in these `write` configurations is:
- `RootEntity`

| Configuration | Description |
| --- | --- |
|**Template configuration** | `HRSAPSuccessFactorsHCMEmployeeUpdateRaceAndEthnicity_USA`|
**Scenario name** | 	`msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateRaceAndEthnicity_USA`|
|**Request Body** |<li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`Country`: Required to make the `upsert` call for the employee.<li>`PerGlobalInfoUSA` expects this value in the `requestbody` therefore this value is fetched and included in the `update_parameters`<li>`StartDate`:`StartDate` is required to make the `upsert` call for the employee. When making an `upsert` call to `PerGlobalInfoUSA` request body expects `startDate` saved in epoch format. Therefore, this value is fetched and included in `update_parameters`.<li>`genericString1`: Ethnic group value collected from employee|

**Configuration**:
```json
	{
    "scenario": "UpdateRaceAndEthnicity",
    "requestBody": '{
        "__metadata": {
            "uri": "PerGlobalInfoUSA"
        },
        "personIdExternal": "personIdExternalVal",
        "country": "countryVal",
        "startDate": "/Date(startDateVal)/",
        "genericString1": "genericString1Val"
    }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```
| Configuration | Description |
| --- | --- |
|**Template configuration** | `HRSAPSuccessFactorsHCMEmployeeUpdateRaceAndEthnicity_GBR`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateRaceAndEthnicity_GBR`|
|**Request Body** | <li>`personIdExternal`: ESS_UserContext_Employee_Id`<li>`Country`: This value is necessary to make the `upsert` call for the employee. `PerGlobalInfoGBR` expects this value in the `requestbody`. This value is fetched and included in `update_parameters`<li>`StartDate`: `StartDate` is necessary to make the `upsert` call for the employee. When making an `upsert` call to `PerGlobalInfoGBR` request body expects the `startDate` saved in epoch format.  `startDate` is fetched and included in the update_parameters<li>`genericString1`: Ethnic group value collected from employee|

**Configuration**
```json


	{
    "scenario": "UpdateRaceAndEthnicity",
    "requestBody": '{
        "__metadata": {
            "uri": "PerGlobalInfoGBR"
        },
        "personIdExternal": "personIdExternalVal",
        "country": "countryVal",
        "startDate": "/Date(startDateVal)/",
        "genericString1": "genericString1Val"
    }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```

**Customizations**
Adding an additional country/region requires the following:

1. Adding all the respective template configurations
2. If the new country/region has different fields or collects a different data type, then input the text and add a new condition for the new country/region. Then, set up the adaptive card as required for country and any other requirements

### Emergency Contact

| Race & Ethnicity | Description |
| --- | --- |
|**Description** |Retrieves the employee’s current emergency contacts, presents them to employees, and asks if they would like to update or add an emergency contact. Depending on their answer they are presented with an adaptive card to either update a current contact or a blank card for them to add a contact|
|**Prompts**|<li>Update my current/existing emergency contact<li>My emergency contact has changed; can I update it in the system?<li>How/where can I update my emergency contact?<li>I want to add new emergency contact<li>Add my emergency contact|
|**Adaptive card**|Two kinds of adaptive cards are used in the following examples:<li>Update emergency contact<li>Add emergency contact<BR>**Initial message**<BR>:::image type="content" source="media/employee-update-emergency-contact1.png" alt-text="Screenshot of a prompt and response asking to update emergency contact information." lightbox="media/employee-update-emergency-contact1.png"::: <BR>**Update emergency contact**<BR>:::image type="content" source="media/employee-update-emergency-contact2.png" alt-text="Screenshot of an emergency contact picker list." lightbox="media/employee-update-emergency-contact2.png"::: <BR>**Add emergency contact**<BR>:::image type="content" source="media/employee-add-emergency-contact.png" alt-text="Screenshot of how an employee can pick an emergency contact from a picker list." lightbox="media/employee-add-emergency-contact.png":::|

#### Get configurations – emergency contact and pick list for relationship type
Retrieving the existing emergency contact information along with relationship type is the first step in the flow
| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeGetEmergencyContact`|
|**Scenario name**|	`msdyn_HRSAPSuccessFactorsHCMEmployeeGetEmergencyContact`|
|**Filter**|Filters on `personIdExternal` using `ESS_UserContext_Employee_Id` and if `emergencyContactNav/primaryFlag` is equal to 'Y'|
|**Values queried**|<li>`name`: Emergency Contact name. No Label is necessary, so it is not fetched<li>`phone`: Emergency Contact phone number. No Label is necessary, so it is not fetched. <li>`relationship`: Relationship type of emergency contact. Values come from `relation` picklist Id. No Label is necessary, so it is not fetched<li>`primaryFlag`: Boolean value for if emergency contact is primary contact. No label is necessary, so it is not fetched|

**Configuration**:

```json
	{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetEmergencyContact",
    "rootEntity": "PerPerson",
    "filter": "emergencyContactNav/primaryFlag eq 'Y' and personIdExternal eq '{personIdExternalVal}'",
    "requestEntities": [
        {
            "key": "name",
            "valuePath": "emergencyContactNav/name",
            "labelPath": ""
        },
        {
            "key": "phone",
            "valuePath": "emergencyContactNav/phone",
            "labelPath": ""
        },
        {
            "key": "relationship",
            "valuePath": "emergencyContactNav/relationship",
            "labelPath": ""
        }, 
        {
            "key": "primaryFlag",
            "valuePath": "emergencyContactNav/primaryFlag",
            "labelPath": ""
        }
    ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMGetPicklistRelationshipType`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMGetPicklistRelationshipType`|
|**Filter** | Filters on `picklistId` in `relation` and `locale` which is `ESS_UserContext_Locale` |
|**Values queried** | <li>`optionId`: Value used for data corresponding to label name<li>`Label`: Human readable name|

Configuration
```json
	{
    "scenario": "HRSAPSuccessFactorsHCMGetPicklistRelationshipType",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'relation' and locale eq '{localeValue}'",
    "requestEntities": [ 
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

##### Update emergency contact

Updating the emergency contact information
| Configuration | Description |
| --- | --- |
|**Template configuration**|`HRSAPSuccessFactorsHCMEmployeeUpdateEmergencyContact`|
|**Scenario name** | `msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateEmergencyContact`|
|**Request Body** |<li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`relationship`: Relationship value of emergency contact<li>`name`:Emergency contact name collected from employee<li>`primaryFlag`: PrimaryFlag value from get call is automatically used here unless a new contact is added or else its false. If a first contact is being added, then it is automatically primary.<li>`phone`: Emergency contact phone number collected from employee|

**Configuration**
```json

	{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeUpdateEmergencyContact",
    "requestBody": '{
        "__metadata": {
            "uri": "PerEmergencyContacts"
        },
        "personIdExternal": "personIdExternalVal",
        "relationship": "relationshipVal",
        "name":"nameVal",
        "primaryFlag":"primaryFlagVal",
        "phone":"phoneVal"
    }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```

##### Delete existing emergency contact

Update emergency contact flow has an extra configuration which deletes an existing emergency contact for the employee.  This configuration is used exclusively when an employee updates name of one of their current emergency contacts which must delete the current entry and add a new one with the change.

| Configuration | Description |
| --- | --- |
|**Template configuration** | `HRSAPSuccessFactorsHCMEmployeeDeleteEmergencyContact` |
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMEmployeeDeleteEmergencyContact` |
|**Request Body**|<li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`relationship`: relationship value of emergency contact<li>`name`: Emergency contact name collected from employee<li>`primaryFlag`:`PrimaryFlag` value from get call is automatically used here unless a new contact is added or else its false. If a first contact is being added, then it is automatically primary<li>`phone`:Emergency contact phone number collected from employee|

**Configuration**:
```json

	{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeUpdateEmergencyContact",
    "requestBody": '{
        "__metadata": {
            "uri": "PerEmergencyContacts"
        },
        "operation": "operationVal",
        "personIdExternal": "personIdExternalVal",
        "relationship": "relationshipVal",
        "name":"nameVal",
        "primaryFlag":"primaryFlagVal",
        "phone":"phoneVal"
    }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```
### Phone

| Phone | Description |
| --- | --- |
|**Description** | Retrieves the employee’s phone data, presents them to the employee, and asks if they would like to update or add a phone number. Depending on their answer they are presented with an adaptive card to either update a current contact or a blank card for them to add a phone number|
|**Prompts** | <li>Update my current/existing emergency contact<li>My emergency contact has changed; can I update it in the system?<li>How/where can I update my emergency contact?<li>I want to add new emergency contact<li>Add my emergency contact|
| Adaptive card| Two kinds of adaptive cards can be used to change an employee's phone information: <li>Update phone<li>Add phone<BR> The following screenshot shows an example of an adaptive card to add a phone number. <BR>:::image type="content" source="media/employee-add-phone.png" alt-text="Screenshot of an adaptive card adding a phone number." lightbox="media/employee-add-phone.png":::|

#### Get configurations – existing phone numbers and pick list for phone number type option
Retrieving the existing phone numbers along with phone number type is the first step in the flow.

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeGetContactPhone`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetContactPhone`|
|**Filter**|Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`|
|**Values queried** |<li>`areaCode`: Area code section of phone number<li>`phoneNumber`: All numbers after the area code in a phone number. Also defined as Prefix + line number<li>`countryCode`: Country code designation of phone.Example: 1 for US<li>`phoneType`: Phone type values come from `ecPhoneType` `picklist Id`<li>`isPrimary`: Boolean flag for whether the Phone is primary or not|

**Configuration**
```json
	{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetContactPhone",
    "rootEntity": "PerPerson",
    "filter": "personIdExternal eq '{personIdExternalVal}'",
    "requestEntities": [
        {
            "key": "areaCode",
            "valuePath": "phoneNav/areaCode",
            "labelPath": "PerPhone/areaCode"
        },
        {
            "key": "phoneNumber",
            "valuePath": "phoneNav/phoneNumber",
            "labelPath": "PerPhone/phoneNumber"
        },
        {
            "key": "countryCode",
            "valuePath": "phoneNav/countryCode",
            "labelPath": "PerPhone/countryCode"
        },
        {
            "key": "phoneType",
            "valuePath": "phoneNav/phoneType",
            "labelPath": "PerPhone/phoneType"
        },
        {
            "key": "isPrimary",
            "valuePath": "phoneNav/isPrimary",
            "labelPath": "PerPhone/isPrimary"
        }
    ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

#### Get picklist for phone types
Getting the list of phone number type options like Cell, Work, etc.

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMGetPicklistPhoneType`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMGetPicklistPhoneType`|
|**Filter** |Filters on `picklistId` in `ecPhoneType` and `locale` which is `ESS_UserContext_Locale`|
|**Values queried** | <li>`optionId`: Value used for data corresponding to label name<li>`Label`: Human readable name|


**Configuration**

```json
	{
    "scenario": "HRSAPSuccessFactorsHCMGetPicklistPhoneType",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'ecPhoneType' and locale eq '{localeValue}' ",
    "requestEntities": [
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

#### Update contact phone
Update the contact phone number.

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeUpdateContactPhone`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateContactPhone` |
|**Request Body** |<li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`CountryCode`: Country code input from employee<li>`areaCode`:Area code input from employee<li>`phoneNumber`: Phone number input from employee<li>`isPrimary`:`isPrimary` value from get call is automatically used here unless a new contact is added or else it is false. If a first contact is being added, then it is automatically primary.<li>`phoneType`: Phone number type value input from employee|

**Configuration**
```json
	{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeUpdateContactPhone",
    "requestBody": '{
      "__metadata": {
        "uri": "PerPhone"
        },
      "personIdExternal": "personIdExternalVal",
      "countryCode": "countryCodeVal",
      "areaCode": "areaCodeNav",
      "phoneNumber": "phoneNumberVal",
      "isPrimary": isPrimaryVal,
      "phoneType": "phoneTypeVal"
      }',
    "permissionsMetadata": [],
    "rolePermissions": []
}
```


### Email

| Email | Description |
| --- | --- |
|**Description** |Retrieves the employee’s current email address, displays it, and then prompts employee to submit a new email address|
|**Prompts**|<li>I want to update my personal email<li>update my personal email to `[email_addressTobeUpdated]`<li>Update my email<li>I'd like to update my email|

#### Get configurations – contact email
Retrieving the existing contact email is the first step in the flow

| Configuration | Description |
| --- | --- |
|**Template configuration** |`HRSAPSuccessFactorsHCMEmployeeGetContactEmail`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMEmployeeGetContactEmail`|
|**Filter**|Filters on `personIdExternal` using `ESS_UserContext_Employee_Id` and email type using picklist `emailType` value for Personal|
|**Values queried**|<li>`emailAddress`: Employee’s current email address<li>`emailType`: Types of Email values from picklist id 'ecEmailType'.<li>`isPrimary`: Boolean flag for if Email is primary|

**Configuration**	
```json
{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeGetContactEmail",
    "rootEntity": "PerEmail",
    "filter": "emailType eq '{emailTypeVal}' and personIdExternal eq '{personIdExternalVal}'",
    "requestEntities": [
        {
            "key": "emailAddress",
            "valuePath": "emailAddress",
            "labelPath": "PerEmail/emailAddress"
        },
        {
            "key": "isPrimary",
            "valuePath": "isPrimary",
            "labelPath": ""
        },
        {
            "key": "emailType",
            "valuePath": "emailType",
            "labelPath": ""
        }
    ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

#### Get picklist for email types
Getting the list of email type options

| Configuration | Description |
| --- | --- |
|**Template configuration**|`HRSAPSuccessFactorsHCMGetPicklistEmailType`|
|**Scenario name** |`msdyn_HRSAPSuccessFactorsHCMGetPicklistEmailType`|
|**Filter**|Filters on `picklistId` in `ecEmailType` and locale which is `ESS_UserContext_Locale` and picklistOption/externalCode eq 'P'|
|**Values queried**|<li>`optionId`: Value used for data corresponding to label name<li>`Label`: Human readable name|

**Configuration**
```json
	{
    "scenario": "HRSAPSuccessFactorsHCMGetPicklistEmailType",
    "rootEntity": "PicklistLabel",
    "filter": "picklistOption/picklist/picklistId eq 'ecEmailType' and locale eq '{localeValue}' and picklistOption/externalCode eq 'P'",
    "requestEntities": [ 
                {
            "key": "optionId",
            "valuePath": "optionId",
            "labelPath": ""
        },
        {
            "key": "externalCode",
            "valuePath": "picklistOption/externalCode",
            "labelPath": ""
        }, 
        {
            "key": "label",
            "valuePath": "label",
            "labelPath": ""
        }
        ],
    "permissionsMetadata": [],
        "rolePermissions": []
}
```

#### Update contact email
Updating the contact email

| Configuration | Description |
| --- | --- |
|**Template configuration**|`HRSAPSuccessFactorsHCMEmployeeUpdateContactEmail`|
|**Scenario name**|`msdyn_HRSAPSuccessFactorsHCMEmployeeUpdateContactEmail`|
|**Request Body**|<li>`personIdExternal`:`ESS_UserContext_Employee_Id`<li>`emailAddress`: New email address input from employee<li>emailType: Always set to 'Personal' from `emailType` picklist<li>`isPrimary`: Always set to true value. No support for updating emails that are not primary|

**Configuration**	
```json
{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeUpdateContactEmail",
    "requestBody": '{
        "__metadata": {
            "uri": "PerEmail"
        },
        "personIdExternal": "personIdExternalVal",
        "emailAddress": "emailAddressVal",
        "emailType":"emailTypeVal",
        "isPrimary": isPrimaryVal
    }',
    "validationRules": "",
    "permissionsMetadata": [],
    "rolePermissions": []
}
```

### Preferred Name

| Preferred Name | Description |
| --- | --- |
|**Description** | Retrieves the employees current preferred name, displays it, and then prompts employee to submit a new name. Employee can also include name in prompt.|
|**Prompts**|<li>Update my preferred name<li>Change my preferred name<li>Change my preferred name to`[new_preferred_name]`<li>I'd like to update my preferred name to `[new_preferred_name]`|

#### Get configurations – preferred name
Retrieving the existing preferred name is the first step in the flow

| Configuration | Description |
| --- | --- |
|**Template configuration**|`HRSAPSuccessFactorsHCMEmployeeGetPreferredName`|
|**Scenario name**|`msdyn_HRSAPSuccessFactorsHCMEmployeeGetPreferredName`|
|**Filter**	| Filters on `personIdExternal` using `ESS_UserContext_Employee_Id`|
|**Values queried** |<li>`preferredName`: Employee’s current preferred name|

**Configuration**
```json
{
  "scenario": "HRSAPSuccessFactorsHCMEmployeeGetPreferredName",
  "rootEntity": "PerPerson",
  "filter": "personIdExternal eq '{personIdExternalVal}'",
  "requestEntities": [
    {
      "key": "preferredName",
      "valuePath": "personalInfoNav/preferredName",
      "labelPath": "PerPersonal/preferredName"
    }
  ],
  "permissionsMetadata": [],
  "rolePermissions": []
}
```

#### Update preferred name
Updating the preferred name
| Configuration | Description |
| --- | --- |
|**Template configuration**|`HRSAPSuccessFactorsHCMEmployeeUpdatePreferredName`|
|**Scenario name**|`msdyn_HRSAPSuccessFactorsHCMEmployeeUpdatePreferredName`|
|**Request Body**|<li>`personIdExternal`: `ESS_UserContext_Employee_Id`<li>`preferredName`: New preferred name input from employee|

**Configuration**
```json
	{
    "scenario": "HRSAPSuccessFactorsHCMEmployeeUpdatePreferredName",
    "requestBody": '{
        "__metadata": {
            "uri": "PerPersonal"
        },
        "personIdExternal": "personIdExternalVal",
                "startDate":"/Date(startDateVal)/",
        "preferredName": "preferredNameVal"
    }',
    "validationRules": "",
    "permissionsMetadata": [],
    "rolePermissions": []
}
```
