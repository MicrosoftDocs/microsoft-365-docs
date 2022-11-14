---
title: Manage role-based access control (RBAC) with Microsoft 365 Defender
description: Manage permissions and access to Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: 
ms.topic:
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# Manage role-based access control (RBAC) with Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Using the Microsoft 365 Defender Security portal role-based access control (RBAC), lets you manage user privileges within a single system, cross Defender products, that ensures higher productivity and efficient access control.

## The Microsoft 365 Defender RBAC model, supports the following Defender workloads

| Workload name | Description | Status |
|:-------|:-----|:-------|
|Microsoft Defender for Endpoint | Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page. | Public preview |
| Microsoft Defender for Office 365 | Support for all scenarios that were controlled by <strong>Exchange Online Protection roles</strong> (EOP), configured in the Office 365 Security &amp; Compliance Center (protection.office.com)| Public preview|
| Microsoft for Identity | Full support for all identity data and actions. Note that Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. [Learn more](https://go.microsoft.com/fwlink/?linkid=2202729)| Public preview|
| Microsoft for CloudApps |Not supported| On the roadmap |

>[!Note]
> Scenarios controlled by **Exchange Online** roles (EXO) are not changed and will still be managed in [https://admin.exchange.microsoft.com](https://admin.exchange.microsoft.com/). Adding those scenarios to the Microsoft 365 Defender RBAC is part of the roadmap.

All permissions listed within the Microsoft 365 Defender RBAC model align with previous individual RBAC models and ensure backward compatibility. This product enables easy migration of existing roles from previous individual RBAC models.

Please refer to the tables presented in this document to view permissions mapping: [Map of individual RBAC permissions to the Microsoft 365 Defender RBAC permissions](#map-permissions-to-1)


## Before you begin

- **Opt-in mode** - Microsoft 365 Defender RBAC is available in an “opt-in” mode. That means no change is enforced on existing individual RBAC roles within your workloads. You can explore the new model, to create your new custom roles or to migrate existing roles and only when you are ready, you can explicitly activate any of your workloads to be enforced by Microsoft 365 Defender RBAC model. More information about activating Microsoft 365 Defender RBAC you can read here.

- Before using Microsoft 365 Defender RBAC, it's important that you read this document and understand the different permissions that can grant access to your users as the consequences of activating it.

- **First login** – At first access to Permissions and roles area in Microsoft 365 Defender portal, you must be granted with Global Administrator or Security Administrator global role in Azure Active Directory. This will enable you access and the ability to create custom roles. You can create a role that will grant access to create and manage roles and permissions without the need of Azure Active Directory global roles.  
More information about creating a role which will authorize users creating and managing roles and permissions you can read here.

- **Respecting Azure Active Directory global roles** - The Microsoft 365 Defender RBAC model enables creating flexible and granular roles, granting as narrow privileges as needed. It enables replacing the use, for most experiences, of Azure Active Directory global roles (i.e. Global Admin, Security Admin). However, Microsoft 365 Defender security portal will continue to respect Azure Active Directory global roles side by side while activating Microsoft 365 Defender RBAC model with some or all of your workloads.

## Create Microsoft 365 Defender RBAC custom roles

For the first role creation, user must be granted with Global Administrator or Security Administrator in Azure Active Directory. Any user which will be granted in Microsoft 365 Defender RBAC with the “Authorization” manage permission will have access to create and manage roles and permissions. For more information on Authorization permission learn here.

Use the new custom role creation wizard to create each role.

1. Sign into the Microsoft 365 Defender portal at <u>security.microsoft.com
2. In the navigation pane, scroll down and select **Permissions**
<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image1.png" style="width:6.5in;height:3.96875in" />Expand **Microsoft 365 Defender**, and then select **Roles**.

3. Click the **Create a custom role** button to create roles.
<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image2.png" style="width:6.5in;height:1.50417in" />

4. **Set up the basics**: Give the new role name and description and then click **Next**.
<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image3.png" style="width:6.5in;height:2.55139in" />

6.  **Choose Permissions:**

    1.  Choose the permissions this role should have. Permissions are organized in three different groups to help you find the permissions you need:

-   **Security operations**: Permissions for roles that manage day-to-day operations and respond to incidents and advisories.

-   **Security posture**: Permissions for roles that manage and perform threats and vulnerability.

-   **Configuration**: Permissions for roles that modify the portal configurations such as security settings, system settings, authorization, and Microsoft endpoint management.

> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image4.png" style="width:6.49989in;height:1.97072in" />

1.  Select each of the permissions groups to view more information about the permissions in that group. You can either create general roles with all permissions in a certain group or choose specific permissions according to the role’s purpose:

-   **Read-only for all permissions** – assigns all read permissions in this group, ***including new read permissions that may be added in the future***.

-   **Read and manage for all permissions** – assigns all permissions in this group, ***including all permissions that may be added in the future***.

-   **Choose custom permissions** – to assign the role with specific permissions from the offered list. By choosing this option if new permissions are added later, you will need to re-assign your roles with them as needed.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image5.png" style="width:6.15768in;height:4.22222in" />

7.  **Assign permissions to data sources & users**

> Now that you decide what this role can do, you’ll need to choose who in your org will be assigned to this role and which data sources they can manage. Click the **Add assignment** button.

-   **Assignment name**

-   **Data sources** – at this stage you can choose if the users in this assignment will have access to the chosen permissions across all the available products, or only to specific products. For example, if you created a role with ‘Security operations - read only permission’, you can have one team be assigned with this role across Defender for

> Endpoint, Defender for Office 365 and Defender for Identity and have access to all alerts from these sources. And you can create another assignment to the same role and have another team in your org have access to only Endpoint alerts from Defender for Endpoint.
>
> *Note: In Microsoft 365 Defender RBAC, you can create as many assignments as needed under the same role with same permissions. This enables maintaining the minimum number of roles with different type of permissions.*

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image6.png" style="width:2.85903in;height:2.79722in" /><img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image7.png" style="width:2.85955in;height:2.79739in" />

-   **Assigned users and groups** – you can assign the role to either Azure AD user groups or individual users in your organization.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image8.png" style="width:2.80499in;height:3.59549in" />

> *Note: By choosing the ‘**All**’ option in the data source drop down list, all supported data sources within Microsoft 365 Defender RBAC and any future data sources that will be added to Microsoft 365 Defender RBAC will be automatically assigned to this role.*  
>   
> *Note: Data sources that are not supported within Microsoft 365 Defender RBAC are still configurated through the designated service. For example, Microsoft defender for cloud permissions and role model is still configurated through the Microsoft Defender for CloudApps portal*. 

8.  **Review and finish**

> Review the settings for the role. If you need to make more changes, you can do it from this page. Once completed, then click **Submit**.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image9.png" style="width:6.5in;height:4.98194in" />

# \[Chapter 3\]

## 

## Import roles (migrate) to Microsoft 365 Defender RBAC from individual RBAC models 

You can import existing roles that are maintained as part of the individual products (for example, Microsoft Defender for Endpoint) to the Microsoft 365 Defender RBAC model.

Importing roles will migrate existing data (permissions, assignments) and will maintain full parity with the Microsoft 365 Defender RBAC model.

*Note: the Microsoft 365 Defender RBAC model is more granular than the individual RBAC models. Once roles migrated, you will be able modifying imported roles and change level of permissions as needed.*

1.  In **Permissions and roles,** click **Import roles.**

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image10.png" style="width:6.5in;height:1.4375in" />

2.  Choose the individual products from where you want to import your roles and click **Next**.  

> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image11.png" style="width:6.5in;height:1.66042in" />

3.  You can choose all roles or select a few roles from the list. You can always repeat the import action and choose other roles that were not selected. 

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image12.png" style="width:6.5in;height:1.57639in" />

4.  Review the roles to make sure you have selected all the roles you want to import and then click Submit.

>  

5.  A confirmation message is displayed. Click **Done**.  

> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image13.png" style="width:6.5in;height:1.4125in" />

 

Imported roles appear in the **Permissions and roles** list together with any custom roles you might have created. All imported roles will be marked as **Imported** until they are edited. 

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image14.png" style="width:6.78989in;height:1.92308in" /> <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image13.png" style="width:6.5in;height:1.4125in" />

*Note: You can import roles as frequently as required. After you edit an imported role, that changes will not affect the original role where it was imported from. You can always delete the role which was imported to Microsoft 365 Defender RBAC and re-import it if needed. By importing the same role twice, if not deleted first, you will create a duplicate role.*

 

 

**  
**

# \[Chapter 4\]

## 

## Edit and Delete roles 

You can edit and delete roles that were created as custom roles or roles that were imported from different workloads. 

#### Edit Roles 

1.  Select the role you want to edit and click **Edit** or click the Action menu next to the role name and select **Edit.**

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image15.png" style="width:6.5in;height:1.82361in" />

2.  After editing an imported role, data and the changes made in Microsoft 365 Defender RBAC will not be reflected to the individual RBAC model. You will be able seeing the original role definition only there.

 

 

#### Delete Roles 

1.  Select the role you want to delete and then click **Delete** **roles** or click the Action menu and select **Delete role**.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image16.png" style="width:6.5in;height:1.82361in" />

2.  Review the selected roles to be deleted and then click **Delete**.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image17.png" style="width:2.34722in;height:1.54167in" /> 

 

3.  After deleting an imported role, that role will not be deleted from the individual RBAC model. If needed, you can import it again to the Microsoft 365 Defender RBAC list of roles.

4.  If the workload is active, by removing the role all assigned permission to users will be deleted. 

# \[Chapter 5\]

## 

## Activate the Microsoft 365 Defender RBAC

As mentioned here, Microsoft 365 Defender RBAC is released in an “opt-in” mode. To allow the Microsoft 365 Defender RBAC model to control access permissions, you must explicitly activate it.

### When you activate the Microsoft 365 Defender RBAC model, any existing roles that you managed in Defender for Endpoint, Defender for Identity, or Defender for Office 365 (Exchange Online Protection), will no longer be active. All access to these workloads in the Microsoft 365 Defender portal will be controlled by the Microsoft 365 Defender RBAC model.

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image18.png" style="width:6.80916in;height:1.2207in" />*Note: For Defender for Office 365 customers, the Microsoft 365 Defender RBAC model does not impact the Office 365 Security & Compliance center (protection.office.com), or the Microsoft Compliance center (compliance.microsoft.com).*

<img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image19.png" style="width:2.56489in;height:2.64696in" />

If needed, you can deactivate Microsoft 365 Defender RBAC and revert to the individual RBAC roles from Defender for Endpoint, Defender for Identity, and Defender for Office 365 (Exchange Online Protection).

To control the Microsoft 365 Defender RBAC activation status, use the **Workload settings** link in the upper right corner of the Microsoft 365 Defender RBAC page or go to the Microsoft 365 Defender settings page.

Roles that were created, as well as roles that were imported and then edited, are valid only when Microsoft 365 Defender RBAC is active. These roles will not be duplicated into the individual RBAC list of roles. If you revert to the previous model, all roles that were created and edited within Microsoft 365 Defender RBAC will not be effective, and the status will change to inactive until you activate Microsoft 365 Defender RBAC again.

## 

## 

<span id="_Map_permissions_to_1" class="anchor"></span>

# \[Chapter 6\]

## 

## Microsoft 365 Defender RBAC – custom permissions detailing

 

## <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image20.png" style="width:2.46087in;height:3.40286in" />Security operations – Security data

| **Permission name**    | **Description**                                                                                                                         | **Level** |
|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Security data basic    | View info about incidents, alerts, investigations, advanced hunting (MDE), devices, submissions, evaluation lab, and reports.           | Read      |
| Alerts                 | Manage alerts, start automated investigations, run scans, collect investigation packages, and manage device tags.                       | Manage    |
| Response               | Take response actions on a device, approve or dismiss pending remediation actions, and manage blocked and allowed lists for automation. | Manage    |
| Basic live response    | Initiate a live response session, download files, and perform read-only actions on devices remotely.                                    | Manage    |
| Advanced live response | Create live response sessions and perform advanced actions, including uploading files and running scripts on devices remotely.          | Manage    |
| Email quarantine       | View and release email from quarantine.                                                                                                 | Manage    |
| Email advanced actions | Move or Delete email to the junk email folder, deleted items or inbox, including soft and hard delete of email.                         | Manage    |

## 

## Security operations – Raw data (Email & collaboration)

| **Permission name**   | **Description**                                                                                                                     | **Level** |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Email message headers | View email and collaboration data in a hunting scenarios, including advanced hunting, threat explorer, campaigns, and email entity. | Read      |
| Email content         | View and download email content and attachments.                                                                                    | Read      |

## <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image21.png" style="width:2.46042in;height:3.402in" />Security posture – Posture management

| **Permission name**          | **Description**                                                                                                                                                                          | **Level** |
|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Vulnerability management     | View threat and vulnerability management data for the following: software and software inventory, weaknesses, missing KBs, advanced hunting, security baselines assessment, and devices. | Read      |
| Exception handling           | Create security recommendation exceptions and manage active exceptions in threat and vulnerability management.                                                                           | Manage    |
| Remediation handling         | Create remediation tickets, submit new requests, and manage remediation activities in threat and vulnerability management.                                                               | Manage    |
| Application handling         | Manage vulnerable applications and software, including blocking and unblocking them in threat and vulnerability management.                                                              | Manage    |
| Security baseline assessment | Create and manage profiles so you can assess if your devices comply to security industry baselines.                                                                                      | Manage    |

## <img src="C:\GitHub\microsoft-365-docs-pr\microsoft-365\security\defender\media\image22.png" style="width:2.46035in;height:3.40191in" />Configuration

| **Permission name** | **Description**                                                                 | **Level**     |
|---------------------|---------------------------------------------------------------------------------|---------------|
| Authorization       | View or manage device groups, and custom and built-in roles.                    | Read / Manage |
| Security settings   | View or manage general security settings for the Microsoft 365 Defender portal. | Read / Manage |
| System settings     | View or manage general systems settings for the Microsoft 365 Defender portal.  | Read / Manage |

# \[Chapter 7\]

## 

## Map permissions to the Microsoft 365 Defender RBAC permissions 

 

To assist you in verifying parity between individual RBAC role definitions and your new Microsoft 365 Defender RBAC roles, we’ve created a mapping table for each product. 

## Map Defender for Endpoint permissions to the Microsoft 365 Defender RBAC permissions 

<table>
<thead>
<tr class="header">
<th><strong>Defender for Endpoint permission</strong> </th>
<th><strong>Microsoft 365 Defender RBAC permission</strong> </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>View data - Security operations </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>View data - Threat and vulnerability management </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Alerts investigation </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data\alerts\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Active remediation actions - Security operations </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Active remediation actions - Threat and vulnerability management - Exception handling </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\exception handling\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Active remediation actions - Threat and vulnerability management - Remediation handling </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\remediation handling\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Active remediation actions - Threat and vulnerability management - Application handling </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\application handling\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Threat and vulnerability management – Manage security baselines assessment profiles</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security posture\threat and vulnerability management\Security baselines assessment\manage</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Live response capabilities - basic </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\basic live response\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Live response capabilities - advanced </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\advanced live response\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Manage security settings in the Security Center </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\security setting\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Manage portal system settings </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\system setting\manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Manage endpoint security settings in Microsoft Endpoint Manager* </p>
</blockquote></td>
<td><blockquote>
<p>Not supported</p>
</blockquote></td>
</tr>
</tbody>
</table>

\* <u>Note</u>: for granting this permission, please access the Microsoft endpoint management portal

## Map Defender for Office 365 (Exchange Online Protection) roles to the Microsoft 365 Defender RBAC permissions

<table>
<thead>
<tr class="header">
<th><strong>Defender for Office (EOP) role group</strong> </th>
<th><strong>Microsoft 365 Defender RBAC permissions</strong> </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Security Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Global Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ read only </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Security Admin </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ read only </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Organization Management </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email advanced actions\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>View-Only Recipients </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Preview </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ User email content\ read </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Search and Purge </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data\ Email advanced actions\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>View-Only Manage Alerts </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Manage Alerts </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>View-only Audit Logs </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Audit Logs </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Quarantine </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Role Management </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\ Authorization\ manage </p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

## Map Microsoft Defender for Identity permissions to the Microsoft 365 Defender RBAC permissions

## 

<table>
<thead>
<tr class="header">
<th> <strong>Defender for Identity permission</strong>  </th>
<th><strong>Unified RBAC permission</strong>  </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>MDI Admin</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Configuration\ security setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \manage</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \manage</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\authorization\manage Configuration\authorization\read</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>MDI User</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data\read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \manage</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>MDI Viewer</p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data\read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ system setting \read</p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ security setting \read</p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

*Note: Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. Learn more [here](https://go.microsoft.com/fwlink/?linkid=2202729)*

## Azure Active Directory Global roles access 

Users assigned with Azure AD global roles might also have access to the Microsoft 365 Defender portal. 

Use this table to learn about the permissions assigned by default to each global Azure AD role. Only the Azure AD roles listed below grant access to any Defender for Endpoint, Defender for Office 365, Defender for Identity and Microsoft 365 Defender data or experiences.

<table>
<tbody>
<tr class="odd">
<td><strong>AAD role</strong> </td>
<td><p><strong>Microsoft 365 Defender RBAC permissions </strong> </p>
<p><strong>Defender for Endpoint scope </strong> </p></td>
<td><strong>Microsoft 365 Defender RBAC permissions – Defender for Office 365 scope</strong> </td>
</tr>
<tr class="even">
<td><blockquote>
<p>Global Administrator </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\exception handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\remediation handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\application handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\basic live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\advanced live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\security setting\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\system setting\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\manage security settings in Endpoint manager </p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email advanced actions\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security settings\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Security Administrator </p>
</blockquote></td>
<td><blockquote>
<p>Same permissions as for the Global administrator  </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ Email quarantine\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security settings\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Global Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage  </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\ Authorization\ read only Configuration\System settings\ read only  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Security Reader </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read  </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ read only </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security setting\ read only </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Security Operator </p>
</blockquote></td>
<td><ul>
<li><blockquote>
<p>Security operations\security data basics\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\vulnerability management\read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\security data\alerts\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\exception handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security posture\threat and vulnerability management\remediation handling\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\basic live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\advanced live response\manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\security setting\manage </p>
</blockquote></li>
</ul></td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\response\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ Email &amp; collaboration raw data\ Email messages headers\ read </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\System settings\ manage </p>
</blockquote></li>
<li><blockquote>
<p>Configuration\Security settings\ manage </p>
</blockquote></li>
</ul>
<p> </p></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Compliance Administrator </p>
</blockquote></td>
<td>- </td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Compliance Data Administrator </p>
</blockquote></td>
<td>- </td>
<td><ul>
<li><blockquote>
<p>Security operations\ security data basics\ read only</p>
</blockquote></li>
<li><blockquote>
<p>Security operations\ security data\ alerts\ manage </p>
</blockquote></li>
</ul></td>
</tr>
</tbody>
</table>

By activating the Microsoft 365 Defender RBAC model, users with Security Reader and Global Reader roles will have access to Defender for Endpoint data. 
