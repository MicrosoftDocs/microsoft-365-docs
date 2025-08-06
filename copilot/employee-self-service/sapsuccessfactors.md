---
title: Integrate SAP SuccessFactors with your Employee Self-Service deployment
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/3/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about integrating SAP SuccessFactors in the deployment process for the Employee Self-Service agent.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Integrate SAP SuccessFactors with your Employee Self-Service deployment

> [!NOTE]
> The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

> [!IMPORTANT]
> You need to complete the steps to deploy the Employee Self-Service (ESS) agent before you can configure this supplemental extension pack.

The Employee Self-Service agent is built on Copilot and uses AI to provide relevant information to employees and take actions on their HR data. If your organization uses a human resource management system, the ESS agent requires access to that system to function most effectively.

## Functional synopsis

The ESS agent acts as a front-end for consuming information from SAP SuccessFactors. The following items are the scenarios currently supported by ESS agent for SAP SuccessFactors integration:

- [Get Base Compensation](#get-base-compensation)
- [Get Company Code](#get-company-code)
- [Get Cost Center](#get-cost-center)
- [Get Hire Date](#get-hire-date)
- [Get Service Anniversary](#get-service-anniversary)
- [Get Employee ID](#get-employee-id)
- [Get Job Info](#get-job-info)
- [Get Position Number](#get-position-number)

## Technical synopsis

:::image type="content" source="media/agent-and-success-factors-integration.png" alt-text="Diagram of the high-level components comprising overall solution for ESS agent and SuccessFactors integration." lightbox="media/agent-and-success-factors-integration.png":::

The diagram outlines the high-level components comprising overall solution for the ESS agent and SuccessFactors integration. There are different activities to be performed as part of initial deployment and for an ongoing operation. As the solution involves multiple technologies, you should spend some time initially understanding the various components and bring in the right stakeholders to set up an environment to deploy and test the ESS agent.

> [!NOTE]
> SuccessFactors integration is currently based on OData V2.0, but the latest supported version is V4.0. Microsoft Entra ID using SuccessFactors is still a prerelease version and is subject to change.

## Prerequisites

- [Setup SAP OData connector](/power-platform/sap/connect/sap-odata-connector)
- Admin access to SAP SuccessFactors (SF)
- Admin access within the Azure portal

You can refer to the ESS agent deployment guide for subscription requirements for the ESS agent.

### Deployment role requirements

|**Roles/Persona** |**Description** |**Activities performed** |**Configuration Areas** |
|------------------|----------------|-------------------------|------------------------|
|**SAP SF Administrator** |User performing administrative tasks. |1. Create an OAuth 2.0 client application in SuccessFactors.  <br>2. Upload the SAML certificate to OAuth 2.0 client application within SuccessFactors (SF). <br>3. Determine the API server where SF is hosted. <br>4. Confirm that maker account mapped in SAP SuccessFactors has OData API access. |SAP SuccessFactors |
|**Application Administrator (or) Cloud Application Administrator (or) Application Owner** |User configuring single sign-on (SSO) integration. |1. Establish a Microsoft Enterprise application. <br>2. Configure SAML settings within the Enterprise application. <br>3. Obtain the Enterprise application's SAML certificate. <br>4. Establish trust. |Azure Admin portal |
|**Environment Maker** |User customizing the ESS agent. |1. Install and configure SAP SF extension pack. <br>2. Manage SAP SF topics. <br>3. Setup User Context. |Microsoft Copilot Studio |
|**InfoSec/IT Infra/Change Control Board** |User committee responsible for security infrastructure changes. |Configure IT platform services such as network and firewall rules. |Network firewall policies |

### Infra set up for 3P ISV integration

Most enterprise organizations secure their 3P HCMs/Knowledge Sources from external networks, as the line of business must protect sensitive information about employees, organizations, knowledge assets, and so on.

When you need to integrate these enterprise systems into ESS agent to use it as a source for providing relevant information to the end users, these systems should be accessible to the Power Platform environment hosting these ESS agents.

These systems must be configured with allowlists for the source IP addresses from where the ESS agent is hosted and executed, that is, Power Platform environment. For more information, see [Power Platform URLs and IP address ranges - Power Platform](/power-platform/admin/online-requirements).

For more information on 3P ISV connectors, see [Managed connectors outbound IP addresses](/connectors/common/outbound-ip-addresses#power-platform).

For SAP SuccessFactors (SF) integration, as the ESS agent uses OData v2.0, you need to work with InfoSec to allowlist Power Platform connectors to communicate with this endpoint. If any extra data security requirements need to be met, especially for OData exchange, work with your security specialists to harden the security for data in-transit.

### Set up SSO for SAP SuccessFactors with Microsoft Entra

The following diagram is a high-level overview of the OAuth authentication process in SAP SuccessFactors:

:::image type="content" source="media/agent-authentication-process.png" alt-text="Diagram of high-level overview of the OAuth authentication process in SAP SuccessFactors." lightbox="media/agent-authentication-process.png":::

You can ignore this step if SSO is already established for SAP SuccessFactors with Microsoft Entra.

#### Parameters for SuccessFactors connection

- **SuccessFactors Token API**
- **SuccessFactors Client ID**
- **App Resource URI** (`format: api://<App-ID>`)
- **SuccessFactors OData Base URI**
- **Company ID** - Represents the specific SuccessFactors environment for sign in.

#### Key configuration notes

- **User mapping**: Ensure that the Unique User Identifier claim of the Microsoft Entra ID user aligns precisely with the **user alias** in SuccessFactors (*one-to-one matching*).
- **User access control**: Only users or groups listed in the Enterprise application are allowed to authenticate SuccessFactors.
- **Resource URI**: Found in the Enterprise app settings under *Expose an API* as the application ID URI.
- **Company ID**: Based on the enabled SuccessFactors modules.

#### High-level overview

1. [Establish a *Microsoft Enterprise application*.](#create-a-microsoft-entra-id-enterprise-application).
2. [Create an *OAuth 2.0 Client Application* in SuccessFactors.](#create-an-oauth-20-client-application-in-successfactors).
3. [Configure *SAML* settings within the Enterprise application.](#configure-enterprise-application).
4. Obtain the Enterprise application's *SAML Certificate*.
5. Upload the SAML certificate to your OAuth 2.0 client application within SuccessFactors.
6. [Establish trust](#configure-successfactors-to-trust-microsoft-entra-id).

### Create a Microsoft Entra ID Enterprise application

1. Open the Azure portal and go to **Microsoft Entra ID** > **Enterprise applications**.
2. Select **New application**.
3. Search for and select **SAP SuccessFactors**.
4. Assign a name for the application and select **Create**.
5. Go to **Single sign-on** and select **SAML**.
6. Follow specific guidelines in the **SuccessFactors SSO Configuration Guide**.
7. Configure the following settings:
   1. **Identifier (Entity ID)**: Set to `api://<Enterprise App ID>` (for example, `api://33135bc6be6a-4cdc-9c96-af918e367425`).
     > [!NOTE]
     > We recommend you use the SF instance URL `https://<sfinstance>.successfactors.com`.

   2. **Reply URL**: Used in the SAML token as the Recipient field (for example, `https://<apiserver>/oauth/token`).

     > [!NOTE]
     > The claims process must have the information of which API server and where SF instance is hosted, for example if the SF instance is hosted in one of the API servers `api68sales.successfactors.com`, then the URL should be `https://api68sales.successfactors/oauth/token`.
     > For more information on the SF documentation to determine the API server, see [List of SAP SuccessFactors API Servers](https://help.sap.com/docs/successfactors-platform/sap-successfactors-api-reference-guide-odata-v2/list-of-sap-successfactors-api-servers).

   3. **Sign-On URL**: Advisable to set as `https://<your-sfurl>/sf/start?company=<CompanyID>&logonMethod=SSO`.
     > [!NOTE]
     > If the SF instance for Contoso Corporation is "Contoso" and the company ID is "CNTPART000100," the URL look like: `<https://contoso.successfactors.com/sf/start?company=CNTPART000100&loginMethod=SSO`.

8. Edit the attributes and claims section. You must come to this section only after completing the creation of OAUTH 2.0 Client application in SuccessFactors.
    1. Add a claim for "api_key" with the value of the API key from SuccessFactors.
    2. Update the *Unique User Identifier* claim to match the unique ID for each SuccessFactors user.

     > [!NOTE]
     > Choose the correct name identifier format based on the user mapping between Microsoft Entra and SAP SuccessFactors. For example, if "Employee ID" is used as a sign in user ID for SAP SuccessFactors, then the mapping of source attribute should be the correct attribute from Microsoft Entra. Since this identifier is just an Employee ID without any email format, the **Name identifier format** should be set as **Unspecified**.

9. Download the **Certificate (Base64 format)** from this application. This information is required for completing the next step of creating an OAuth 2.0 client application in SuccessFactors. A certificate can be downloaded without completing the previous step. However, complete the OAuth 2.0 Client application setup in SuccessFactors to obtain the "api_key" required for the previous step.
10. Assign users and groups. Add all the users and/or groups required to access SAP SF via the ESS agent under **Users and groups** section within Enterprise application's configuration for SAP SuccessFactors created in Microsoft Entra.

### Create an OAuth 2.0 client application in SuccessFactors

1. Sign-in to the **SuccessFactors Web UI** with an admin account.
2. Go to **Manage OAuth2 Client Applications**.
3. Select **Register Client Application**.
4. Fill out the required fields:
    1. **Company:** Autopopulated.
    2. **Application Name:** Any descriptive name.
    3. **Description:** Any descriptive text.
    4. **Application URL:** Can be any random URL.
    5. **X.509 Certificate:** Copy/paste the certificate downloaded from step 9 in the previous section.
     > [!NOTE]
     > The certificate file needs to be renamed as a text file to open in a text editor. Then, copy/paste the crypted characters without including the header and footer lines.

5. Select **Save**. The new client application now has an **API Key** that serves as *Client ID* in SAML2 session flow and can be used in the connection and Enterprise app configuration.

### Configure Enterprise application

1. In the Azure portal, go to **App registrations** and select **SAP SuccessFactors** application created in the previous section.
2. Under **Expose an API**, locate **Resource URI** (Application ID URI).
3. Select **Add a client application**.
4. Enter the Client ID for SAP OData: `6bee4d13-fd19-43de-b82c-4b6401d174c3`.
5. Select the existing scope from the **Authorized scopes** checklist.
6. Select **Add application**.
7. Navigate to Enterprise instance and add the users who need access to SF OData API.

### Configure SuccessFactors to trust Microsoft Entra ID

1. Sign-in to the SuccessFactors web UI with an admin account.
2. Go to **Manage OAuth2 Client Applications**.
3. Select the client application created earlier.
4. Update the certificate to the one downloaded from Microsoft Entra ID and paste only the certificate body content without the header and footer.

### Test the connection

1. Open **Power Automate** in your browser.
2. Create a new flow (manual trigger type).
3. Add an **SAP OData** action.
4. Select **Microsoft Entra ID using SuccessFactors** as the connection.
5. Fill in the required parameters gathered earlier.
6. Choose an **Entity** from the dropdown to test.
7. Save your flow.
8. Run the flow to test the connection.
9. Verify the run history for successful authentication and data retrieval.

For more information on setting up SSO for SAP SuccessFactors with Microsoft Entra, see [Set up Microsoft Entra ID using SuccessFactors](/power-platform/sap/connect/entra-id-using-successfactors).

### Install SuccessFactors extension pack for ESS agent

The ESS agent is designed to have separate extension packs for each third party ISV, like SuccessFactors. Hence, these extension packs must be installed before starting any configurations or customizations.

These steps are required to install and enable the SuccessFactors extension pack:

1. **Entitlement**
   Work with your ESS agent private preview product managers for the entitlement process. Once the entitlement process is complete for your tenant, the SuccessFactors extension pack shows up under **Customize** section of ESS agent.

   > [!NOTE]
   > Entitlement process is a preview workaround until the extension pack installation is streamlined in Microsoft Copilot Studio.

2. Install the extension.
   1. Open the ESS agent in Copilot Studio.
   2. Navigate to **Settings**.
   3. Select **Customize** from the left navigation under the Settings.
   4. Select **Employee Self Service HR SuccessFactors** and select **Install**.
   5. When prompted, update the connections as described by clicking "..." buttons on the right-hand side for each connection.
   6. The first connection is the user account, which should be automatically signed in.
   7. The second connection is for the OData API, which requires the following parameters to be configured.

**Parameters to configure:**

| **Authentication Type**  | **Microsoft Entra ID using SuccessFactors (Preview)** |
| ------------------------------ | ------------------------------------------------------------------------------------- |
| **SuccessFactors token URL**   | SuccessFactors OAuth token endpoint URL  (format: `https://<api-server>/oauth/token`) |
| **Service Provider Client Id** | SuccessFactors OAuth2 Client ID – the api_key |
| **OData Base URI**| Base URI for the OData service `https://<api server>/odata/v2` |
| **Microsoft Entra Resource URI** or **(Application ID URI)** | Identifier used in Microsoft Entra ID to identify the target resource. <br> Application ID URI configured in the *[Create Enterprise application](#create-a-microsoft-entra-id-enterprise-application)* section. |
|**Company ID** |Company ID|

> [!NOTE]
> SAP SF OData connector uses maker connection, which is the SF API user credentials, in all flows to establish connection.

### Set up SuccessFactors extension pack for ESS agent

The SuccessFactors extension pack requires few initial setups for the agent flows and templates. The following sections walk you through the process for configuring the required components.

### Setup User Context

This step is required to set the user context for the ESS agent that primarily does the user mapping for Microsoft Entra and pass it on to SAP SuccessFactors.

1. Open the ESS agent in Copilot Studio.
2. Go to **Topics**.
3. Select **\[Admin\] – User Context – Setup**.
4. In the canvas, select **...More** and select **</> Open code editor**
5. Replace the existing code with the following code snippet:

   ```YAML
   kind: AdaptiveDialog 
   beginDialog: 
   kind: OnRedirect 
   id: main 
   priority: 0 
   actions: - kind: SetVariable 
   id: setVariable_9CWZSL 
   variable: Global.ESS_UserContext_UPN 
   value: =First(Split(System.User.PrincipalName,"@")).Value - kind: BeginDialog 
   id: mRTRN3 
   dialog: 
   msdyn_copilotforemployeeselfservice.topic.SuccessFactorsSystemContextInitializer 
   ```

   > [!NOTE]
   > The highlighted section in the code transforms username from the logged in user's principal name to SAP SuccessFactors user ID. Use this information based on your environment setup between Microsoft Entra and SAP SuccessFactors. Currently the agent supports only User Principal Name (UPN) as a key identifier, if there are other attributes to be used as key identifier then a custom logic should be implemented to get the correct username for SAP SuccessFactors.
6. Select **Save** for changes.

### Set up Templates

ESS agent comes with few predefined templates that are being used for each topic. These templates are shipped with the default data attribute paths, if there are custom entities and paths being used in SAP SuccessFactors, then these templates must be customized to match the SAP SuccessFactors entities.

To set up templates, follow these steps:

1. Open ESS agent in Copilot Studio.
2. Select **Settings** in the top right corner of agent ribbon.
3. Select **Customize** from the agent settings left navigation pane.
4. Select **Employee Self Service HR SuccessFactors** extension pack.
5. Select **Open** from the dialog popup.
6. Select **Manage** in the Configuration section.
7. All the template configurations available are listed in the Power Apps, so select each of the "Get" templates to configure the right entities and paths. The following code is an example of the "Get" configuration template:

   ```json
   { 
   "scenario": 
   "HRSAPSuccessFactorsHCMEmployeeGetBaseCompensationAndCompaRatio",//Scenario name 
   [OPTIONAL] 
   "rootEntity": "EmpEmployment",//Entity to be queried 
   "filter": "personIdExternal eq '{personIdExternalVal}' and userId eq 
   '{userIdVal}'",//Filter Expression to filter data more on this format
   SAP integration for ESS agent 
   NDA Private Preview Customers ONLY 
   Microsoft Corporation © 
   Deployment Guide v0.1 
   Page 13 of 44 
   SAP integration for ESS agent Deployment Guide v0.1 Page 14 of 44 
   NDA Private Preview Customers ONLY 
   Microsoft Corporation © 
       "requestEntities": [  //Request entites an array of object that should be queried 
   from root entity 
           { 
               "key": "CompaRatio",//Key Value 
               "valuePath": "compInfoNav/empCompensationCalculatedNav/compaRatio",//Path 
   from root entity for value 
               "labelPath": "EmpCompensationCalculated/compaRatio"//Path from label 
   $metadata to get label value 
           }, 
       ], 
       "permissionsMetadata": [  //Permission Metadata more on this data in the permisson loop 
           { 
               "permType": "DATA_MODEL",  //Permision Type SF code value 
               "permLongValue": -1,   
               "permStringValue": "$_payCompGroup_AnnualizedSalary_read"  //Permission 
   string SF code value 
           } 
       ]
    }
   ```

The highlighted **filter** parameter keys must match with what is expected in the Template configuration. In the following example, *personIdExternalVal* would be used as a key to insert *Global.ESS.UserContext.Employee_Id* into the filter expression.

**Example format used in Topic:**

_`"{""personIdExternalVal"": """ & Global.ESS_UserContext_Employee_Id & """,""userIdVal"": """ & Global.ESS_UserContext_User_Id & """}"`

**Snippet of the template configuration:**

```json
{
"filter": "personIdExternal eq '{personIdExternalVal}' and userId eq '{userIdVal}'", }
```

## Permissions and Role based permissions configuration

There are two permissions configurations that can be used. The permissions flow always use permissions metadata unless **RoleBased** permissions are provided in the config to choose it over permissions metadata.

### Permissions config

The Permissions flow calls the OData connector with *CheckUserPermission* as its relative path and *permissionMetadata* in the config as the queryString. OData connector then returns a true or false value dictating if the user has permission or not to the "Get" flow.

```json
{ 
.. 
  "permissionsMetadata": [ 
    { 
      "permType": "DATA_MODEL",  //Permision Type SF code value 
"permLongValue": -1,   
"permStringValue": "$_payCompGroup_AnnualizedSalary_read"  //Permission string SF code 
value 
} 
] 
.. 
}
```

:::image type="content" source="media/agent-authentication-flow.png" alt-text="Diagram that shows Permissions flow." lightbox="media/agent-authentication-flow.png":::

### Role based permissions config

Role based permissions use the *roleId* provided in the config to check against *UserRoles* variable that is part of the user context. The flow queries *RBPRole* with *roleId* given in configuration, which returns all the *permissionStringValues* linked to the *roleId*. Then it matches the *permStringValue* in the config to what the OData connector returned. Manager scenarios are required to use RBP role because we check if the manager has permissions for multiple users at the same time and therefore using *PermissionsMetadata* would be slower. In this case, we can check that the user has 115 role, which gives them permission to make changes for directs. The maker must create the Role ID if the current SF implementation doesn't have it.

```json
{ 
.. 
"rolePermissions": [ 
{ 
"roleId": "115", //Role ID code from SF to query for 
"permissions": [ 
{ "permStringValue": "$_employmentInfo_originalStartDate_read" } //Permission string to 
check for in role id 
] 
} 
] 
.. 
} 
```

:::image type="content" source="media/agent-authentication-flow-context.png" alt-text="Diagram that shows the Role based permissions." lightbox="media/agent-authentication-flow-context.png":::

## User Context flow – High-level logic

1. Setting a variable with the filter parameters, which in this case is the alias of the user the context is retrieved for.
2. Next split into parallel calls to reduce time:
    1. The left side retrieves the user context config in the first Dataverse call. The second Dataverse call retrieves the filter and request entities, which we query for in the OData connector at the end. After the left side is complete, the flow retrieves all the requested entities from the config for the user.
    2. The right side retrieves the config to check if user *isManager* in the first Dataverse call. The second Dataverse call flow retrieves the filter and request entities to query for. With that config, the flow queries for directs under the user and retrieves necessary information such as in this case *userId* of directs.
3. If the SF call for user data doesn't return anything, we terminate the flow and respond to copilot user not found.
4. We split into parallel calls to check if the user has multiple records on the left.
5. The left side checks if there are multiple records and then runs a child flow that gets the active user ID and updates the context. Then the flow makes an OData call to get the user's roles by their user ID.
6. The right-side checks for open positions if the user is a manager and *IsManagerCheckVacantPositions* is set to "True". It makes Dataverse calls to get the necessary configs to make the SF OData request and then updates the *IsManager* variable.
7. Finally, the flow composes an object with all the required user context fields and returns it to Copilot Studio (CPS).

## Read flow – High-level logic

**Input variables required:**

- **loggedInUserId:** alias
- **scenarioName:** Config Name, example:`msdyn_HRSAPSuccessFactorsHCMEmployeeGetNationalId`
- **userLocale:** en_US
- **targetUserId:** alias
- **filter:** {"personIdExternalVal": "123456"}
- **userRoles:** \["123", "345"\]

:::image type="content" source="media/agent-authentication-flow-scenario.png" alt-text="Diagram that shows the Read flow." lightbox="media/agent-authentication-flow-scenario.png":::

1. The flow retrieves the config using the *scenarioName* variable and in parallel prepares the filter query.
2. The flow retrieves the data and label entities from the config using Dataverse plugin.
3. The flow calls a child flow to check permissions by passing the *userRoles*, alias, and config.
4. If the permission flow returns *false*, then the flow terminates and responds to Copilot that user doesn't have permissions.

   :::image type="content" source="media/agent-authentication-flow-condition.png" alt-text="Diagram that shows the Read Flow termination." lightbox="media/agent-authentication-flow-condition.png":::

5. The flow then, in parallel, makes OData calls for the entity data and the labels.
6. To get the labels first, the flow checks if there are any labels to query in the config, and then prepares the needed variables.

   :::image type="content" source="media/agent-authentication-flow-query.png" alt-text="Diagram that shows flow checks if there are any labels to query in the config." lightbox="media/agent-authentication-flow-query.png":::

7. The flow queries the SF OData metadata entity using the values collected earlier from the config. Due to the response being metadata, the flow does some manipulation to get the data into key value pairs.

    :::image type="content" source="media/agent-authentication-flow-variable.png" alt-text="Diagram that shows Query SF OData Metadata entity." lightbox="media/agent-authentication-flow-variable.png":::

8. Lastly it returns three variables, such as *labelResponse*, *modelResponse*, and *isSucceeded*.

## Employee Read scenarios – configuration

The topics shipped with the ESS agent preview are limited only for "Read" scenarios. The "Update" scenarios aren't supported yet, even thought they're available for the current version of agent.

Each of the Read topic has its own prompts, configurations, and so on, but the actual execution of SAP SuccessFactors is encapsulated in the **SuccessFactors System Get Common Execution** topic expecting the following inputs:

- **Filter parameters**: Generally passing *Employee ID* and *User ID* for filtering query for Employee Read topics.
- **ScenarioName**: Config Name, which is used by Dataverse call to get scenario configuration.
- **userIdentifier**: User ID.

A common orchestrator then returns a ModelResponse and LabelResponse, which the LLM then parses using the following instructions to generate an answer for the user:

- Extract the input from the following response (map the Label response *value* as key in model response attribute then provide model value).
- Provide the response to the user in a human readable form.
- Format the response properly to make it clean and readable.
- Use only data values from the variable named "successfactorsModelResponse" and use the variable named "successfactorsLabelResponse" for labeling the data.
- **Response example:**
  - Label Response:"key":"company","value":"company"
  - Model Response: "company":"12345"
  - Example Output: Your company is 12345 (Contoso Germany)

The "Get Employee ID" and "Get Service Anniversary" topics are exceptions to this common execution method, which is further explained in their respective sections.

Authorization for all the topics is as follows:

- Authorization is done using the *permissionsMetadata* part of the Template configuration. The *permissionsMetadata* and *User ID* are used to create the query string for OData connector in *SuccessFactors Check User Permissions* flow.
- You should include *permissionMetadata* or *rolePermission* in the Template config file, as there's no other authorization check if both of those fields are missing.

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
|**Description** |This topic performs a calculated functionality using the "HireDate" value with some PowerFx functions as follows:<p>**Years worked**<p><li>`RoundDown(DateDiff(Topic.startDate, Now(), TimeUnit.Years), 0)` <br>This formula calculates the number of complete years the employee worked. It finds the difference between current date and employee's start date and then rounds down to the nearest whole number<li>`DateDiff(Topic.startDate, Now(), TimeUnit.Years)` <br>This part of the formula calculates the difference in years between the employee's start date (`Topic.startDate`) and the current date (\`Now()\`).<li>`RoundDown(..., 0)` <br>This function takes the result of DateDiff and rounds it down to the nearest whole number. The 0 indicates the number of decimal places to round to, which in this case is zero, meaning it returns an integer value representing the complete years worked. <p>**Service Anniversary Intervals in Years** <p><li>`RoundDown(Topic.yearsWorked / Topic.serviceAnniversaryDuration, 0)` <br>Calculates how many complete intervals of the service anniversary duration the employee worked. It divides the total years worked by the service anniversary duration and rounds down to the nearest whole number. <p>**Upcoming Service Anniversary Count** <li>`Topic.serviceAnniversaryDuration \* (Topic.serviceAnniversaryIntervalsInYears + 1)` <br>This formula calculates the upcoming service anniversary count by multiplying the service anniversary duration by one more than the complete intervals already worked.<p>**Calculated Service Anniversary Date** <br>`DateAdd(Topic.startDate, Topic.serviceAnniversaryDuration \*(RoundDown(Topic.yearsWorked / Topic.serviceAnniversaryDuration, 0) + 1), TimeUnit.Years)`<p><li>`RoundDown(Topic.yearsWorked / Topic.serviceAnniversaryDuration, 0)` <br>This part of the formula calculates how many complete intervals of the service anniversary duration the employee worked. It divides the total years worked by the service anniversary duration and rounding down to the nearest whole number.<li>`Topic.serviceAnniversaryDuration \* (RoundDown(Topic.yearsWorked /Topic.serviceAnniversaryDuration, 0) + 1)` <br>This part of the formula calculates the total service anniversary intervals (plus one) to be added to the start date.<li>`DateAdd(Topic.startDate, ..., TimeUnit.Years)`<br>Finally, this function adds the calculated intervals to the start date to determine the upcoming service anniversary date. |
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
|**Description** |Reads *ESS_UsetContext_Employee_Id* and returns it to the user. There's no config required for this topic. |
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

## Troubleshooting

### SAP SF Single Sign-on issues with Microsoft Entra 

**Pre-requisites for troubleshooting:**

- Client tool for testing and managing APIs like Postman, Bruno, and so on.
- Access to [https://samltool.io](https://samltool.io).
- Basic knowledge in how the authentication flow works especially with SAML.

Use the API client tool for testing, validating, and confirming the assertion being generated and passed to SF. For more instructions, see [3462403 - SuccessFactors OData API: OAuth 2.0 Authentication](https://userapps.support.sap.com/sap/support/knowledge/en/3462403).

The following highlighted items are the critical pieces of information to be validated as part of claims authentication:

1. `<NameID Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">` - Ensure that the correct NameID format is used for user mapping between Microsoft Entra and SAP SF.
2. `<Attribute Name="api_key">` - Ensure that the claims token has the correct *api_key* from SAP SF OAuth 2.0 client application created.

## Related articles

- [SAP SuccessFactors API Reference Guide](https://help.sap.com/doc/2d1d6fcc4eae4db8b9bbd3103baee1c7/2411/HXMSuiteODataAPIRefGuideV4.pdf)
- [SAP OData Connector Reference](/connectors/sapodata/)
- [Set up Microsoft Entra ID using SuccessFactors (Preview)](/power-platform/sap/connect/entra-id-using-successfactors)
- [Get started with the SAP OData connector](/power-platform/sap/connect/sap-odata-connector)
