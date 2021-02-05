---
title: "View your apps"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "View your apps."
---

# View your apps

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

>[!Note]
>REVIEWERS: This content is in progress and not ready for review.
>

To see the MAPG dashboard, go to [https://compliance.microsoft.com/m365appprotection](https://compliance.microsoft.com/m365appprotection).


With MAPG, you can quickly gain deep insights on the M365 apps in your tenant. 

- You can see a list of all OAuth-enabled M365 apps in the tenant, together with relevant app metadata and usage data. 
- You can see app details with deeper insights and information by clicking an app in the list:  

## Key tasks

- Admins can gain deep insights on M365 apps in their environment


### Getting a list of all the apps in your tenant

For a summary of apps in your tenant, go to **Microsoft 365 Compliance Center > App protection & governance > All apps**.

You will see a list of apps and this information:

- App Name
- Publisher
- App Certification: Whether the app is compatible with Microsoft technologies, compliant with cloud app security best practices, and supported by Microsoft.
- Last Modified
- Date Installed
- Permission Privilege
- Number of Users
- Data Access: The sum of the app’s data upload and download in the tenant over the last day, along with the change over the prior day.

You can also search by app name with a search box in the upper right of the **All Apps** page.

### Getting detailed information on an app

For detailed information on a specific app in your tenant, go to **Microsoft 365 Compliance Center > App protection & governance > All apps page > *app name***.

The app details pane provides additional information in these tabs:

- Details
- Usage 
- Users 
- Permissions

On the **Details** tab, see additional data on the app such as the date first consented and the App ID.

There is also a **Disable App** control to disable the use of the selected app, but requires these roles:

- Compliance Administrator
- Global Administrator
- Security Administrator
- Security Operator

On the **Usage** tab, you can see the data accessed by the app in the tenant, plot the data usage, and filter by High Value Entity (HVE) usersto show usage by accounts designated a priority account.

On the **Users** tab, a list of users who are using the app, whether they are a [priority user](https://docs.microsoft.com/en-us/microsoft-365/admin/setup/priority-accounts?view=o365-worldwide), and the amount of data downloaded and uploaded.

On the **Permissions** tab, see a summary of the permissions granted to and used by the app, the list of specific permissions and their status and usage level.

## Next step

[Manage the metadata of an app](mapg-visibility-insights-app-metadata.md).
