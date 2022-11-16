---
title: Create custom roles in Microsoft 365 Defender role-based access control (RBAC)
description: Create custom Microsoft 365 Defender Security portal role-based access control (RBAC)
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

# Create custom roles in Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

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
