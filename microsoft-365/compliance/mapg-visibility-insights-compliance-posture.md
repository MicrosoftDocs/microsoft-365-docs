---
title: "Determine your app compliance posture"
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
description: "Determine your app compliance posture."
---

# Determine your app compliance posture

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Microsoft app governance allows you to quickly assess the compliance posture of the third-party apps and their access to data in your Microsoft 365 tenant from the app governance Overview page in the [Microsoft 365 Compliance Center](https://compliance.microsoft.com/m365appprotection).

![The App Governance overview page in the Microsoft 365 Compliance Center](..\media\manage-app-protection-governance\mapg-cc-overview.png)

>[!Note]
> Your sign-in account must have one of [these roles](manage-app-protection-governance.md#administrator-roles) to view any app governance data.
>

From this page, you can see:

- For apps:

  - How many are in your tenant
  - How many might be overprivileged
  - How many are high privilege

  From this information, you can determine the level of risk to your organization by overprivileged and high privilege apps.

- For alerts:

  - How many alerts your tenant has
  - How many are based on app governance detections (**Threat alerts**)
  - How many are based on app policies you have in place (**Policy alerts**)
  - The 10 latest alerts

  From this information, you can determine how quickly alerts are being generated and the relative number of detected and policy-based alerts.

- For data and resources access:

  - The application API data access in the last 90 days
  - The usage of the top resources in the last 90 days

  From this information, you can determine if there are anomalous spikes in access to the data in your Microsoft 365 tenant.
