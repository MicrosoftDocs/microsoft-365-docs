---
title: Integrate ServiceNow HRSD and ITSM with your Employee Self-Service deployment
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 07/15/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about integrating ServiceNow HRSD and ITSM in the deployment process for the Employee Self-Service agent.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Integrate ServiceNow HRSD and ITSM with your Employee Self-Service deployment

> [!NOTE]
> The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

> [!IMPORTANT]
> You need to complete the steps to deploy the Employee Self-Service (ESS) agent before you can configure this supplemental extension pack.

The Employee Self-Service agent is built on Copilot and uses AI to provide relevant information to employees and take actions on their HR data. If your organization uses a human resource management system, the ESS agent requires access to that system to function most effectively.

## Functional synopsis

ESS Agent acts as a front-end for consuming information from ServiceNow HRSD and ITSM using the Power Platform connector. The following items are the capabilities enabled for this integration:

- Create an HR case
- Get case details
- Get case updates
- Get user cases
- Get ticket status
- Get ticket details
- Get ticket list
- Create ticket
- Update ticket

## Technical synopsis

:::image type="content" source="media/agent-service-now-integration.png" alt-text="Diagram the high-level components comprising overall solution for ESS agent and ServiceNow HRSD integration." lightbox="media/agent-service-now-integration.png":::

The previous diagram outlines the high-level components comprising overall solution for ESS agent and ServiceNow HRSD integration. There are different activities to be performed as a part of initial deployment and for an ongoing operation. As the solution involves multiple technologies, it's better to spend some time initially in understanding the various components. When you're ready, you can bring in the right stakeholders to set up an environment to deploy and test ESS Agent.

## Known issues and limitations

These steps are the known issues and limitations of the Power Platform connector for ServiceNow:

- When using the Create Record action, you can't specify the full record description. The field value is ignored due to ServiceNow REST API limitations.
- The Get Records action might return an "Invalid Table" or other error in Power Apps. For Power Apps implementations the suggested workaround is to use the Get Records action in Power Automate and pass the data back to Power Apps.

For detailed documentation about the connector, see [ServiceNow - Connectors](/connectors/service-now/#known-issues-and-limitations).

## Prerequisites

- ServiceNow HRSD / ITSM instance
- Microsoft 365 Tenant
- ESS Agent is installed

Refer to the ESS Agent deployment guide for installation of the agent and subscription requirements required for the ESS Agent itself.

### Deployment role requirements

|Roles/Persona                                         |Description |Activities performed |Configuration Areas |
|------------------------------------------------------|------------|---------------------|--------------------|
|**ServiceNow Administrator**                          |A user who can perform administrative tasks |Create a service account and assign a role to provide read access to specific table records |ServiceNow |
|**ServiceNow Security Administrator**                 |A user who can configure OAuth |Create OAuth Application Registry – *if using OAuth for ServiceNow connector* |ServiceNow |
|**Application Developer** (*minimum privileged role*) |A user who can register an application |Create an App registration - *if using Microsoft Entra OAuth for ServiceNow connector* |Microsoft 365 admin center |
|**Environment Maker**                                 |A user who can customize ESS Agent |Configure and Customize the ESS Agent |Microsoft Copilot Studio |

## ServiceNow configuration

This section outlines the tasks an administrator needs to configure in ServiceNow. ServiceNow integration supports several types of authentications:

- Basic authentication
- Microsoft Entra ID OAuth using certificates
- Microsoft Entra ID User sign in
- User Oauth2

> [!NOTE]
> For all security related tasks in ServiceNow, the logged in user with `admin` or `security_admin` role must elevate their access using "Elevate role" option from the profile menu in the top right of navigation bar.

> [!TIP]
> Without elevating access, the new security objects can't be created. If **New** button in the top right of configuration pane is missing, then the role isn't elevated to "`security_admin`".

### Basic authentication

This method of authentication involves a ServiceNow username and password to authenticate API requests. This method is simple to use and is primarily suggested for testing purposes, as it offers lower security compared to other authentication methods.

### Microsoft Entra ID OAuth using Certificate

This authentication uses app tokens, allowing a registered Microsoft Entra ID application to access ServiceNow with a token specifying the ServiceNow Microsoft Entra ID app as the resource.

#### Task 1: Register an application in Microsoft Entra ID for OIDC integration with ServiceNow

[Learn how to register an app in Microsoft Entra ID.](/entra/identity-platform/quickstart-register-app)

1. Sign into the Microsoft Entra admin center as a Global Administrator or Cloud App Administrator.
2. Go to **Applications** then **App registrations**.
3. Select **New registration.**
4. In the new registration form, fill in the following fields:
   - **Name:** Any name that represents the purpose of app registration
   - **Redirect URL:** Not needed
5. Choose **Register** to complete the creation of the new app registration.
6. Select **Token configuration** then **Add optional claim** for adding claims setting.
7. Select **Token type** as **Access** and choose the following claims:
   - *aud* - for audience validation
   - *email* - addressable email for user
   - *upn* - an identifier for the user
8. Select **Add** to complete adding the claims.
9. If it's the first time OpenId Connect being setup using claims like email, upn, there's a confirmation screen to turn on the Microsoft Graph permissions. If you see the confirmation, check the box, and then select **Add**.

This flow completes the Microsoft Entra piece of configuration.

#### Task 2: Register OIDC provider in ServiceNow

1. Sign in to the ServiceNow instance that needs to be integrated with ESS Agent.
2. Elevate access permissions using **Elevate role**. Refer to the section **Error! Reference source not found.** – only the first part and not the tasks.
3. Select **All** in the top navigation bar.
4. Search for "OAuth" in the search box within dropdown navigation menu.
5. Select **System OAuth à Application Registry** from the search results (if you don't see this option, you don't have sufficient privileges).
6. Select **New** in the configuration section pane.
7. Select **Configure an OIDC provider to verify ID tokens**.
8. Fill in the following information for the new application registry:

   |Configuration |Description |
   |--------------|------------|
   |Name |a meaningful name to identify that this OIDC provider was created for ESS Agent |
   |Client ID |The client ID of Microsoft Entra Application created in Task 1 above |
   |Client secret |This value isn't used; can be any value |
   |OAuth OIDC provider configuration |Add a new OIDC provider configuration by selecting the search icon and choosing **New** in the search popup. Fill in the fields as follows:</br> **OIDC Provider:** A name that represents the Microsoft Entra tenant from task 1 above.</br> **OIDC Metadata URL:** `login.microsoftonline.com/<tenant ID>/.well-known/openid-configuration`</br> Replace < tenant ID > with the Microsoft Entra tenant ID from task 1 above.</br> **OIDC Configuration Cache Life Span:** 120</br> **Application:** Global</br> **User Claim:** oid</br> **User Field:** User ID</br> **Enable JTI claim verification:** disabled</br> Select **Submit** and update the OIDC Entity form. |

#### Task 3: Register an Application in Microsoft Entra ID for connector usage

This application plays the role of a user with elevated permissions in the ServiceNow instance.

1. Sign into the Microsoft Entra admin center as a Global Administrator or Cloud App Administrator.
2. Go to **Applications** > **App registrations**.
3. Select **New registration**.
4. In the new registration form, fill in the following fields:
   - **Name:** any name that represents the purpose of app registration.
   - **Redirect URI:** Not needed.
5. Select **Register** to complete the creation of new app registration.
6. Select **Certificates and secrets** then upload the `.cer` file of the certificate. If there's an SNI certificate, just add `trustedCertificateSubjects` in the manifest of the application with the relevant `authorityId` and `subjectName`.

#### Task 4: Create a System User in ServiceNow

In this task, you add a user to the Application created in task 3, earlier in this article.

1. Go to **User Administration** > **Users** to create a new user.
2. For **User ID**, use the object ID of the service principal of the application that was created in the previous task.
3. Check **Web service access only**.

### Microsoft Entra ID OAuth User sign in

The user-token based authentication where the end user can sign into Microsoft Entra ID using the ServiceNow connector, and get an access token with scope for the ServiceNow representative Microsoft Entra ID app.

Perform tasks 1 and 2 from the previous sections for Microsoft Entra ID OAuth using Certificate.

In task 1, you add the application using the ServiceNow connector to the permission scope with Client ID = `c26b24aa-7874-4e06-ad55-7d06b1f79b63`.

In task 2, you update the user claim to upn or any other custom claim property from the token in ServiceNow. The user field should match the ServiceNow system user table field containing the upn or user ID.

### Using OAuth2 authentication - Create an OAuth Application Registry

1. Sign in to the ServiceNow instance that needs to be integrated with ESS Agent.
2. Elevate access permissions using **Elevate role**.
3. Select **All** in the top navigation bar.
4. Search for **OAuth** in the search box within dropdown navigation menu.
5. Select **System OAuth → Application Registry** from the search results (if you don't see this option, you don't have sufficient privileges).
6. Select **New** button in the top right corner of the configuration section pane.
7. Select **Create an OAuth API endpoint for external clients**.
8. Fill in the following information for the new application registry:

   | Configuration | Description |
   |---------|---------|
   | **Name** | a meaningful name to identify that this application registry is created for ESS Agent |
   | **Client ID** | autogenerated code <br><div class="alert">**Note**</br>This value is used in Microsoft 365 Copilot Connector configuration, if no Advanced Scripting is used. |
   | **Client Secret** | leave it blank to automatically generate a string <br><div class="alert">**Note**</br>This value is used in Microsoft 365 Copilot Connector configuration, if no Advanced Scripting is used. |
   | **Redirect URL** | a required callback URL that the authorization server redirects to </br>For Microsoft 365 Enterprise:</br>`https://gcs.office.com/v1.0/admin/oauth/callback`</br>For Microsoft 365 Government:</br>`https://gcsgcc.office.com/v1.0/admin/oauth/callback` Refer to the note after this table for more information.|
   | **Logo URL** | A URL that contains the image for the application logo |
   | **Active** | Set to active |
   | **Refresh token lifespan** | The number of seconds that a refresh token is valid. </br>By default, refresh tokens expire in 100 days (8,640,000 seconds). Recommended value is 31,536,000 (one year) |
   | **Access token lifespan** | The number of seconds that an access token is valid.</br> Recommended value is 43,200 (12 hours) |
   | **Application** | Global |
   | **Accessible from** | All application scopes |
   | **Client Type** | Integration as a Service |

   > [!NOTE]
   > For the Redirect URL, use the actual callback URL from the sign-in popup window during connection configuration by following these steps:
   >    
   > 1. When the URL redirection fails with the error **Invalid redirect_uri**, copy complete URL from the authorization popup window and paste it into an app, such as Notepad.
   >     
   > 2. Extract the `redirect_uri parameter`. Here's an example: `redirect_uri=https%3a%2f%2ftip1-shared.consent.azure-apim.net%2fredirect`.
   > 
   > 3. After decoding the URL, by replacing `%3a` with `:` and `%2f` with `/`, update the Redirect URL field.

9. Select **Submit** or **Update** button to save the changes.

### Install ServiceNow HRSD extension pack

ESS Agent is designed to have separate extension packs for third-party ISVs like ServiceNow. As a result, these extension packs must be installed first before starting any configurations or customizations.

The following steps are required to install and enable the ServiceNow HRSD extension pack:

1. **Entitlement**:

   Work with your ESS Agent private preview product managers for the entitlement process. Once the entitlement process is complete for your tenant, the ServiceNow HRSD extension pack shows up under "Customize" section of ESS Agent.

   > [!NOTE]
   > "Entitlement" process is a preview workaround until the extension pack installation is streamlined in Microsoft Copilot Studio.

2. **Open the ESS Agent in Copilot Studio**:

   1. Open the ESS Agent in Copilot Studio.
   2. Navigate to **Settings**.   
   3. Select **Customize** from the left navigation under **Settings**.
   4. Select **Employee Self-Service Agent in Microsoft 365 Copilot – ServiceNow HR Service Delivery** and select **Install**.
   5. When prompted, update the connections as described by selecting " ..." or **sign in** buttons on the right hand side for ServiceNow connection.
   6. Use the following parameters to complete the configuration (**if using OAuth2**):

      | Feature                 | Description |
      |-------------------------|-------------|
      | **Authentication Type** | Use Oauth2 |
      | **Instance Name**       | The instance name used to identify the ServiceNow Site URl <br>For example:</br>**contoso** – *don't use the full url or domain name like contoso.service-now.com* |
      | **Client Id**           | Client ID created in Task 1 |
      | **Client Secret**       | Client ID created in Task 1 |

   7. ServiceNow asks for sign-in again. Use the same account used previously for ServiceNow configuration.
   8. Confirm the consent by selecting **Allow**.
   9. The **Microsoft Dataverse** connection is the user account that should be automatically signed in, if not, select **Sign in**.

### Install ServiceNow ITSM extension pack

ESS Agent is designed to have separate extension packs for each third party ISVs like ServiceNow, and so on. As a result, these extension packs must be installed before starting any configurations or customizations.

These steps are required to install and enable the ServiceNow HRSD extension pack:

1. **Entitlement**:

   Work with your ESS Agent private preview product managers for the entitlement process. Once the entitlement process is complete for your tenant, the ServiceNow HRSD extension pack shows up under "Customize" section of ESS Agent.

   > [!NOTE]
   > "Entitlement" process is a preview workaround until the extension pack installation is streamlined in Microsoft Copilot Studio.

2. **Install the extension**:
   1. Open the ESS Agent in Copilot Studio.   
   2. Navigate to **Settings**.   
   3. Select **Customize** from the left navigation under **Settings**.
   4. Select **Employee Self-Service Agent in Microsoft 365 Copilot – ServiceNow IT Service Management** and select **Install**.
   5. When prompted, update the connections as described by selecting " ..." or **sign in** buttons on the right hand side for ServiceNow connection.
   6. Use the following parameters to complete the configuration (if using OAuth2):

      | Feature | Description |
      |---------|---------|
      | **Authentication Type** | Use Oauth2 |
      | **Instance Name** | The instance name used to identify the ServiceNow Site URl <br>For example:</br>**contoso** – *don't use the full url or domain name like contoso.service-now.com* |
      | **Client Id** | Client ID created in Task 1 |
      | **Client Secret** | Client ID created in Task 1 |

   7. ServiceNow asks for sign-in again. Use the same account used previously for ServiceNow configuration.
   8. Confirm the consent by selecting **Allow**.

## ServiceNow - HRSD

### Topics

The following Topics are available from the ServiceNow HRSD extension pack:

|Serial number |Topics |Description |
|--------------|-------|------------|
| 1  | **ServiceNow HRSD Create Case** | Creating an HR case in ServiceNow. |
| 2  | **ServiceNow HRSD System Create Case** | This topic isn't an editable topic. Create case calls this topic for further processing. |
| 3  | **ServiceNow HRSD Get Case Details** | Gets latest created case details. |
| 4  | **ServiceNow HRSD System Get Case Details** | This topic isn't an editable topic. Get case details calls this topic for further processing. |
| 5  | **ServiceNow HRSD Get Case Updates** | Get case update details in text format.</br> Not as detailed as case details. |
| 6  | **ServiceNow HRSD Get User Cases** | List of user cases |
| 7  | **ServiceNow HRSD System Get Cases List** | This topic isn't an editable topic. Get user cases calls this topic for further processing. |
| 8  | **ServiceNow HRSD System Get Metadata Cached** |  |
| 9  | **ServiceNow HRSD System Common Execution** |  |
| 10 | **ServiceNow HRSD System Case Details Cache Lookup** |  |
| 11 | **ServiceNow HRSD System Graceful Exit**  |  |

### Flows

The following Flows are available from the ServiceNow HRSD extension pack:

|Serial number |Flow                                                    |
|--------------|--------------------------------------------------------|
| 1            | **ServiceNow HRSD Common Create Record**               |
| 2            | **ServiceNow HRSD Common Get Record**                  |
| 3            | **ServiceNow HRSD Common List Records**                |
| 4            | **ServiceNow HRSD Common Orchestrator**                |
| 5            | **ServiceNow HRSD Common Update Record**               |
| 6            | **ServiceNow HRSD Create Case**                        |
| 7            | **ServiceNow HRSD Get Case Details**                   |
| 8            | **ServiceNow HRSD Get Cases List**                     |
| 9            | **ServiceNow HRSD Get HR Services with COEs for User** |

## ServiceNow - ITSM

### Topics

The following Topics are available from the ServiceNow ITSM extension pack:

|Topic                                  |Description |
|---------------------------------------|------------|
|**ServiceNow ITSM Create Ticket**      |This topic takes user input like description, severity, and so on. and sends these details to the corresponding system topic. Successful creation generates another adaptive card with ticket details. |
|**ServiceNow ITSM Get User Tickets**   |This topic fetches the active or closed tickets, and does a quick check on a global variable, which we're using as cache for this data. |
|**ServiceNow ITSM Get Ticket Details** |This topic acquires the *sysID* and passes it down to corresponding system topic. |
|**ServiceNow ITSM Update Ticket** | This topic gets the *sysID* and other necessary input required for the update call. Also validates if the user has necessary permission to update that ticket. |
|**ServiceNow ITSM Get Ticket Updates** |This topic retrieves the latest update of IT support tickets for the user. It fetches the list of tickets and then provides the update related to the latest one. |

### Modify template configurations

For any required modifications to the backend ServiceNow Incident APIs, the template configurations for each scenario can be adjusted in coordination with updates to the frontend topics.

To access the template configurations:

1. Navigate to the overview tab within the ESS Agent and scroll down to the ***Customize*** tab.
2. Select the installed customization titled ***Employee Self Service IT Helpdesk ServiceNow ITSM***.
3. This action redirects you to the installed customization details page, where you can view all the Topics and Flows included in the customization package. Additionally, there's a ***Configuration*** option at the top with a manage button.
4. By selecting the manage button, you're directed to the Dataverse Template Configurations table, which lists all available template configurations.
5. Select the specific scenario template configuration. It opens the actual value in the Dynamics 365 webpage in a new tab, which can edit the JSON as needed and save your changes.

### Capabilities for the ServiceNow extension pack

Based on the SNOW connector and public APIs, the Service NOW extension pack includes several capabilities. **The initial version focuses on Incident Management**. Specifically, it offers Create, Read, and Update (CRU) functionalities for managing ServiceNow incidents.

#### Get Ticket Status

This function allows users to retrieve the latest status of a ticket using ServiceNow APIs, enabling seamless integration with existing IT workflows. When users access real-time ticket status information, they can efficiently track the progress of reported issues.

#### Get Ticket Details

The Get Ticket Details feature lets users retrieve comprehensive information about a specific ticket within the ServiceNow platform. This functionality provides user details for attributes like the ticket number, short description, full description, and current state. By providing these details, users can gain a complete understanding of the ticket's context and status, allowing more effective communication and issue resolution.

#### Get Ticket List

The Get Ticket List feature lets users retrieve a history of user tickets. This functionality provides essential details about each ticket, like its unique number, a brief description, the status, and the date of the last update.

#### Create Ticket

Provides user the ability to create a ticket for IT helpdesk support. Post-Private Preview, users can add attachments to the ticket, letting them provide more context for easier resolution.

#### Update Ticket

The Update Ticket feature allows users to modify existing helpdesk tickets by adding comments and attributes. This functionality is crucial for maintaining clear and concise communication between users and support agents, ultimately enhancing the resolution process.

Post-Private Preview, users can add attachments to the ticket, letting them provide more context for easier resolution.

### ServiceNow ITSM template configurations

These JSON configurations are intended for the ServiceNow APIs within the backend. These configurations facilitate the linkage between input and output variables from and to the bot. Each scenario has a corresponding JSON configuration, enabling extension pack users to adjust the parameters utilized in the APIs without altering anything in the backend workflows. The way the backend interacts with bot topics regarding input and output variables is defined within these configurations.

The template configurations reside within a custom Dataverse table, created through the ESS base package upon installation in an environment. Extension packs contribute extra rows to this table, each containing a stringified JSON configuration for a specific scenario. These configurations are retrieved at runtime using the Dataverse connectors within Power Automate flows.

### Understanding configurations naming

- **Scenario**: The name of the scenario used as the identifier of the operation. This item is the primary key for the template configuration and shouldn't be changed.
- **FilterCriteria**: This criterion is used to filter the ServiceNow table by applying the "Operator" on a specific "FieldName". "VariableName" refers to the name of the variable passed from the bot topics containing the actual value. If this variable isn't mandatory, the bot author may choose not to send it.
- **SortCriteria**: Used to sort the list of records from a ServiceNow Table on "FieldName" by "Operator".
- **Limit**: Maximum number of records to return.
- **Offset**: Starting record index for which to begin retrieving records.
- **DisplaySystemReferences**: Flag that indicates the type of data returned, either the actual values from the DB or the display values of the fields.
- **ExcludeReferenceLinks**: Flag that indicates whether to exclude Table API links for reference fields.
- **OutputFieldMapping**: Used to model the ServiceNow Table API output to JSON understood by the bot. Corresponding "FieldName" is mapped to "OutputName".
- **UserParameters (InputFieldMapping)**: Values of the fields that need to be passed from the user via the bot to the backend flows. Used when creating and updating.
- **GlobalParameters (InputFieldMapping)**: Global values that are consistently passed to the API with each call. Includes essential values such as AssignmentGroup, which remain unchanged in every case.

## References

- [ServiceNow - Connectors](/connectors/service-now/#actions)
- [External ID Token Authentication (OIDC) for Rest APIs - Support and Troubleshooting](https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0720547)
- [ServiceNow Catalog Microsoft 365 Copilot connector | Microsoft Learn](/microsoftsearch/servicenow-catalog-connector#3-authentication-type)

For ServiceNow Knowledge documentation, refer to the following link, which requires ServiceNow logins:

- [Table API](https://www.servicenow.com/docs/bundle/xanadu-api-reference/page/integrate/inbound-rest/concept/c_TableAPI.html)
