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

>[!Note]
>REVIEWERS: This content is in progress and not ready for review.
>

Microsoft Application Protection and Governance (MAPG) allows you to quickly gain deep insights on the M365 apps in your tenant.

- You can see a list of all OAuth-enabled M365 apps in the tenant, together with relevant app metadata and usage data. 
- You can see app details with deeper insights and information by clicking an app in the list.

## Getting a list of all the apps in your tenant

For a summary of apps in your tenant, go to **Microsoft 365 Compliance Center > App protection & governance > All apps**.

\[Placeholder for MAPG All apps page screenshot]

You will see a list of apps and this information:

- App Name
- Publisher
- App Certification

  Indicates whether the app is compatible with Microsoft technologies, compliant with cloud app security best practices, and supported by Microsoft.

- Last Modified
- Date Installed
- Permission Privilege
- Number of Users
- Data Access: The sum of the app’s data upload and download in the tenant over the last day, along with the change over the prior day.

You can also search by app name with a search box of the **All Apps** page.

## Getting detailed information on an app

For detailed information on a specific app in your tenant, go to **Microsoft 365 Compliance Center > App protection & governance > All apps page > *app name***.

The app details pane provides additional information in these tabs:

| Tab name | Description |
|:-------|:-----|
| Details | See additional data on the app such as the date first consented and the App ID. |
| Usage | See the data accessed by the app in the tenant, plot the data usage, and filter by High Value Entity (HVE) users to show usage by [priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts). |
| Users | See a list of users who are using the app, whether they are a priority account, and the amount of data downloaded and uploaded. |
| Permissions | See a summary of the permissions granted to and used by the app, the list of specific permissions, and their status and usage level. |
|||

There is also a **Disable App** control to disable the use of the selected app, but requires these roles:

- Compliance Administrator
- Global Administrator
- Security Administrator
- Security Operator

## Next step

[Determine your overall app compliance posture](mapg-visibility-insights-compliance-posture.md).
