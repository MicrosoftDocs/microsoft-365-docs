---
title: Create reports for your Workday integration
f1.keywords:
- NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/3/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
description: "Learn how to create the reports for your Workday integration with the Employee Self-Service agent."
---

# Create reports for your Workday integration

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

The ESS agent for Workday requires a few user context attributes including **Employee ID**, **First Name**, **Last Name**, **Is Manager**, and more to be passed to execute a scenario. These attributes are retrieved from the user mapping with matching usernames from both Microsoft Entra and Workday.

For SOAP API set, the following custom report should be created and exposed as a web service (Reports as a Service) to retrieve these attributes:

1. **Create calculated fields**

The following calculated fields should be created at the report level (see definition in the next section) and not as global calculated fields to avoid any accidental notifications by admins:

- ISO 2 Country Code
- Level of Employee
- Worker Type
- CF LRV Sup Org Ref ID

**Abbreviations in the table**

CLRV= Calculation Lookup related value
Add.= additional info

|Field name |Business object |CLRV Lookup field |CLRV Related business object |CLRV return value |add. Category |add. Authorized usage |
|----------------------------|----------------|---------------------------|--------|-------------|--------------|--------------|
|CF – ISO 2 Country Code LRV |Worker          |Location Address - Country/Region |Country/Region |Alpha-2 Code |Uncategorized |Default areas |
|CF – EE Level LRV |Worker |Supervisory Organization - Primary Position |Supervisory Organization |Organization on Level from Top |Uncategorized |Default Areas |
|CF – LRV Worker Type        |Workday Account |Worker                     |Worker  |Worker Type  |              |              |
|CF LRV Sup Org Ref ID       |Worker |Manager's Default Supervisory Organization |Supervisory Organization |Reference ID |  |  |

## Workday User Context Custom Report

This report is used for retrieving the required user context attributes from Workday. Refer to the tables to create a custom report following each of the tables as different configuration sections in the Workday custom report.

**View Custom Report: WD User Context - COLUMNS**

|Report Name                  |WD User Context      |
|-----------------------------|---------------------|
|Report Name                  |WD User Context      |
|Report Type                  |Advanced             |
|Data Source                  |All Workday Accounts |
|Data Source Type             |Standard             |
|Primary Business Object      |Workday Account      |
|Report Definition Usages     |0                    |
|Saved Filter Usages          |0                    |
|Data Source Description      |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description            |                     |
|Passes Report Column Toggles |                     |

**Columns**

|Business Object |Field                            |Column Heading Override XML Alias |Format |Options |
|----------------|---------------------------------|----------------------------------|-------|--------|
|Worker          | Preferred Name - First Name     |First_Name                        |       |        |
|Worker          |Preferred Name - Last Name       |Last_Name                         |       |        |
|Worker          |Email - Primary Work             |Work_Email                        |       |        |
|Workday Account |User Name                        |User_Name                         |       |        |
|Worker          |Employee ID                      |Employee_ID                       |       |        |
|Worker          |CF - ISO 2 Country Code LRV      |Country_Code                      |       |        |
|Worker          |Company - ID                     |Company_Code                      |       |        |
|Worker          |Is Manager                       |Is_Manager                        |       |        |
|Worker          |Is People Manager (with prompts) |Is_People_Manager                 |       |        |
|Worker          |CF - EE Level LRV                |Level                             |       |        |
|Workday Account |Display Language                 |Display_Language                  |       |        |
|Workday Account |Locale                           |Locale                            |       |        |
|Worker          |CF LRV Sup Org Ref ID            |Mgr_Sup_Org_Id                    |       |        |

**Group Column Headings**

|Business Object |Group Column Heading XML Alias |
|----------------|-------------------------------|
|Worker          |Worker_group                   |

## Workday User Context Custom Report - SORT

**View Custom Report: WD User Context**

|Report Name                                        |WD User Context       |
|---------------------------------------------------|----------------------|
|Report Type                                        |Advanced.             |
|Data Source                                        |All Workday Accounts. |
|Data Source Type                                   |Standard.             |
|Primary Business Object                            |Workday Account.      |
|Report Definition Usages                           |0.                    |
|Saved Filter Usages                                |0.                    |
|**Additional Info**                                |                      |
|Data Source Description                            |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.       |
|Brief Description                                  |                      |
|Passes Report Column Toggles                       |                      |
|**Sort**                                           |                      |
|Specify how the results should be sorted           |                      |
|**Sort and Group**                                 |                      |
|Sort by first accessible column (see next section) |                      |

**Columns**

|Field |Sort Direction |Display Headers |Summarize Detail Rows |Display Subtotals |Group Name Override |
|------|---------------|----------------|----------------------|------------------|--------------------|
|**Grouping and Totaling Options**           |  |  |  |  |  |
|Enable Outlining based on Grouping          |  |  |  |  |  |
|Include Group Name in Headers and Subtotals |  |  |  |  |  |
|Include "Total" label in Subtotals          |  |  |  |  |  |
|Display Grand Totals                        |  |  |  |  |  |

## Workday User Context Custom Report - FILTER

**View Custom Report: WD User Context**

|Report Name                  |WD User Context      |
|-----------------------------|---------------------|
|Report Type                  |Advanced             |
|Data Source                  |All Workday Accounts |
|Data Source Type             |Standard             |
|Primary Business Object      |Workday Account      |
|Report Definition Usages     |0                    |
|Saved Filter Usages          |0                    |
|**Additional Info**          |                     |
|Data Source Description      |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description            |                     |
|Passes Report Column Toggles |                     |
|**Filter**                   |                     |
|**Filter on instances**      |                     |

**Filter conditions for filtering on instances**

|And/Or |( |Fieled |Operator |Comparison Type |Comparison Value | ) |Indexed |
|-------|--|-----|-----------|----------------|-----------------|---|---------|
|And |  |User Name  |equal to |Prompt the user for the value |Default Prompt |  |  |
|And |  |CF LRV worker type |in the selection list |value specified in this filter | employee |  |  |

**Condition as Text:** User Name equal to from user input And CF LRV Worker Type in the selection list Employee

|Filter on Aggregations |          &nbsp;     |         &nbsp;      |   &nbsp;   |   &nbsp;   |     &nbsp;    |       &nbsp;      | &nbsp; |
|-----------------------|------------------------|---------------------|------|---------|----------------|------------------|--|
|**Filter condition for filtering on aggregated values** |  |          |      |         |                |                  |  |
|And/Or                 |(                       |Aggregation function |Field |Operator |Comparison type |Comparison value  |) |

## Workday User Context Custom Report - SUB-FILTER

**View Custom Report: WD User Context**

|Report Name                  |WD User Context        |
|-----------------------------|-----------------------|
|Report Type                  |Advanced               |
|Data Source                  |All Workday Accounts   |
|Data Source Type             |Standard               |
|Primary Business Object      |Workday Account        |
|Report definition usages     |                       |
|Saved filter usages          |                       |
|**Additional info**          |                       |
|**Data Source Description**  |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.       |
|Brief Description            |                       |
|Passes Report Column Toggles |                       |

## Workday User Context Custom Report - PROMPTS

|Report Name                        |WD User Context              |
|-----------------------------------|-----------------------------|
|Report Type                        |Advanced                     |
|Data Source                        |All Workday Accounts         |
|Data Source Type                   |Standard                     |
|Primary Business Object            |Workday Account              |
|Report Definition Usages           |0                            |
|Saved Filter Usages                |0                            |
|**Additional Info**                |                             |
|Data Source Description            |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.          |
|Brief Description                  |                             |
|Passes Report Column Toggles       |                             |
|**Prompts**                        |                             |
|Specify the prompt defaults to use |                             |
|**Prompt instructions**            |                             |
|Instructions                       |                             |
|**Runtime data prompts**           |                             |
|Effective date                     |Use date and time at runtime |
|Entry date                         |Use date and time at runtime |
|Display prompt values in subtitle  |Yes                          |

**Prompt Defaults**

|Field |Prompt qualifier |Label for prompt |label for prompt XML alias |Default type |Default value |Required |Don't prompt at runtime |Don't include in subtitle |
|------|-----------------|-----------------|---------------------------|-------------|--------------|---------|---------------|-----------------------------------|
|User Name |Default prompt |  |User_Name |No default value |  |Yes |  |  |
|Employee Type | |  |Employee_Type |No default value |  |  |Yes |  |
|Non-Employee Type | |  |Employee_Type |No default value |  |  |Yes |  |
|Include managers of employees |  |  |Include_managers_of_employees |Specialty default value |Yes |  |Yes |  |
|Include managers of nonemployees |  |  |Include_managers_of_non_employees |No default value |  |  |Yes |  |
|Include managers of unfilled positions only |  |  |Include_managers_of_unfilled_positions_only |No default value |  |  |Yes |  |

## Workday User Context Custom Report - OUTPUT

|Report Name                                  |WD User Context      |
|---------------------------------------------|---------------------|
|Report Type                                  |Advanced             |
|Data Source                                  |All Workday Accounts |
|Data Source Type                             |Standard             |
|Primary Business Object                      |Workday Account      |
|Report Definition Usages                     |0                    |
|Saved Filter Usages                          |0                    |
|**Additional Info**                          |                     |
|Data Source Description                      |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description                            |                     |
|Passes Report Column Toggles                 |                     |
|**Output**                                   |                     |
|Specify output options for the report        |                     |
|**Output type**                              |                     |
|Output type                                  |Table                |
|**Chart options**                            |                     |
|**Primary axis**                             |                     |
|Chart type                                   |                     |
|**Secondary axis**                           |                     |
|Add secondary axis                           |                     |
|Secondary vertical axis chart type           |                     |
|Categories (for label)                       |                     |
|Series (for legent)                          |                     |
|Horizontal axis                              |                     |
|Metrics to include                           |                     |
|**Top n values**                             |                     |
|Top n values                                 |                     |
|Sum remaining values                         |                     |
|**Target line**                              |                     |
|None                                         |Yes                  |
|Display one target line for all groups       |                     |
|Display multiple target lines for each group |                     |
|Target line label                            |                     |
|**Vertical axist scale**                     |                     |
|**Primary axis scale**                       |                     |
|**Minimum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Increment value**                          |                     |
|Automatically scale                          |Yes                  |
|**Maximum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Horizontal axis scale**                    |                     |
|**Minimum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Increment value**                          |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Maximum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Advanced**                                 |                     |
|Horizontal axis title                        |                     |
|Vertical axis title                          |                     |
|Secondary vertical axis title                |                     |
|Options                                      |                     |
|**Gauge options**                            |                     |
|Metered value                                |                     |
|Metered value label override                 |                     |
|Gauge range                                  |                     |
|**Worklet options**                          |                     |
|Enable as worklet                            |                     |
|Available on                                 |                     |
|Maximum number of rows                       |                     |
|Maximize report options                      |                     |
|Display this worklet when maximized          |                     |
|Run a different report when maximized        |                     |
|Refresh data                                 |                     |
|Worklet icon                                 |                     |
|Options                                      |                     |
|**Help text**                                |                     |
|More info                                    |                     |

## Workday User Context Custom Report - SHARE

**View Custom Report: WD User Context**

|Report Name                                       |WD User Context      |
|--------------------------------------------------|---------------------|
|Report Type                                       |Advanced             |
|Data Source                                       |All Workday Accounts |
|Data Source Type                                  |Standard             |
|Primary Business Object                           |Workday Account      |
|Report Definition Usages                          |                     |
|Saved Filter Usages                               |                     |
|**Additional Info**                               |                     |
|Data Source Description                           |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description                                 |                     |
|Passes Report Column Toggles                      |                     |
|**Share**                                         |                     |
|Specify sharing options for the report definition |                     |
|Report definition sharing options                 |                     |
|Don't share report definition                     |                     |
|Share with all authorized users                   |                     |
|Share with specific authorized groups and users   |Yes                  |
|Authorized groups                                 |                     |
|Authorized users                                  |                     |
|Report owned by                                   |Generic user         |

## Workday User Context Custom Report - ADVANCED

|Report Name                             |WD User Context                        |
|----------------------------------------|---------------------------------------|
|Report Type                             |Advanced                               |
|Data Source                             |All Workday Accounts                   |
|Data Source Type                        |Standard                               |
|Primary Business Object                 |Workday Account                        |
|Report Definition Usages                |                                       |
|Saved Filter Usages                     |                                       |
|**Additional Info**                     |                                       |
|Data Source Description                 |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.                         |
|Brief Description                       |                                       |
|Passes Report Column Toggles            |                                       |
|**Advanced**                            |                                       |
|Specify advanced options for the report |                                       |
|**Report performance**                  |                                       |
|Optimized for performance               |                                       |
|Background only                         |                                       |
|**View options**                        |                                       |
|Freeze first column                     |                                       |
|Enable preferred currency               |                                       |
|Enable save parameters                  |                                       |
|Exclude execution link from search      |                                       |
|**Web services options**                |                                       |
|A save and reopen is required to see and modify the web service aliases if they aren't shown |  |
|Enable as a web service                 |Yes                                    |
|Web service API version                 |v43.0                                  |
|Namespace                               |urn:com.workday.report/WD_User_Context |
|**Worksheets**                          |                                       |
|Enable for worksheets                   |                                       |
|**Prism**                               |                                       |
|Enable for prism                        |                                       |
|**Temporary report**                    |                                       |
|Temporary report                        |                                       |
|Date report definition will be deleted  |                                       |

The report name can be anything but rest of the definition including column sequences, xml alias, and so on, should be kept intact to have the report return the exact same response expected by the ESS Agent.

This report takes **Username** as an input and returns the following responses:

- First Name
- Last Name
- Work_Email
- User_Name
- Employee_ID
- Country_Code
- Company_Code
- Is_Manager
- Is_People_Manager
- Level
- Display_Language
- Locale
- Mgr_Sup_Org_Id

>[!NOTE]
>The ownership of this custom report should be transferred to the generic user "ISU_WQL_COPILOT" that you created in task 3.
>This report is configured to get only employee details and doesn't return external staff or nonemployees.
