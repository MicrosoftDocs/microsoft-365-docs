---
title: "View your apps"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
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

Microsoft Application Protection and Governance (MAPG) allows you to quickly gain deep insights into the Microsoft 365 apps in your tenant. For example, you can see:

- A list of all OAuth-enabled Microsoft 365 apps in the tenant, together with relevant app metadata and usage data. 
- App details with deeper insights and information by selecting an app in the list.

## Getting a list of all the apps in your tenant

For a summary of apps in your tenant, go to **Microsoft 365 Compliance Center > App protection & governance > Apps**.

![The MAPG app summary page in the Microsoft 365 Compliance Center](..\media\manage-app-protection-governance\mapg-cc-apps.png)

You will see a list of apps and this information:

- App Name
- Publisher
- App Certification

  Indicates whether the app is compatible with Microsoft technologies, compliant with cloud app security best practices, and supported by Microsoft.

- Last Modified
- Date Installed
- Permission Privilege
- Number of Users
- Data Access

  The sum of the app’s data upload and download in the tenant over the last day, along with the change over the prior day.

The app list is sorted by **Last Modified** by default. To sort the list by another category, select the category name.

You can also select **Search** to search for an app by name.

## Getting detailed information on an app

For detailed information on a specific app in your tenant, go to **Microsoft 365 Compliance Center > App protection & governance > Apps page > *app name***.

![The MAPG app details pane in the Microsoft 365 Compliance Center](..\media\manage-app-protection-governance\mapg-cc-apps-app.png)

The app details pane provides additional information on these tabs:

| Tab name | Description |
|:-------|:-----|
| Details | See additional data on the app such as the date first consented and the App ID. |
| Usage | See the data accessed by the app in the tenant, plot the data usage, and filter by High Value Entity (HVE) users to show usage by [priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts). |
| Users | See a list of users who are using the app, whether they are a priority account, and the amount of data downloaded and uploaded. |
| Permissions | See a summary of the permissions granted to and used by the app, the list of specific permissions, and their status and usage level. |
|||

There is also a **Disable App** control to disable the use of the selected app, but requires these [administrator roles](manage-app-protection-governance.md#administrator-roles):

- Compliance Administrator
- Global Administrator
- Security Administrator
- Security Operator

## Next step

[Determine your overall app compliance posture](mapg-visibility-insights-compliance-posture.md).
