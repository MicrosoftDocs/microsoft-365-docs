---
title: "Step 15: Azure AD Identity Protection"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand and configure Azure AD Identity Protection.
---

# Step 15: Azure AD Identity Protection

![This step is optional and applies only to the E5 version of Microsoft 365 Enterprise](./media/banners/Banner-Optional-E5Only.png)

Credential compromise, the determination of a user account’s name and password, is an attacker’s most popular way to gain access to your organization’s cloud services and data. As protections have increased, so has the sophistication of attackers. As soon as an attacker gains access to even normal user accounts that have no administrator privileges, it is relatively easy for them to access important company resources by moving laterally through your accounts and groups, and subsequently, to your most valuable data.

With Azure AD Identity Protection, you can:

|||
|:---------|:---------|
|Determine and address potential vulnerabilities in your organization’s identities|Azure AD uses machine learning to detect anomalies and suspicious activity such as sign-ins and post-sign-in activities. Using this data, Identity Protection generates reports and alerts that enable you to evaluate the detected issues and take appropriate actions.|
|Detect suspicious actions that are related to your organization’s identities and respond to them automatically|You can configure risk-based policies that automatically respond to detected issues when a specified risk level has been reached. These policies, in addition to other conditional access controls provided by Azure Active Directory and EMS, can either automatically block or take corrective actions, including password resets and requiring multi-factor authentication for subsequent sign-ins.|
|Investigate suspicious incidents and resolve them with administrative actions|You can investigate risk events using information pertaining to the security incident. Basic workflows are available to track investigations and initiate remediation actions, such as password reset.|

See [more information about Azure AD Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection).

See the [steps to enable Azure AD Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection-enable).

The results of this step are that you have enabled Azure AD Identity protection and you are using it to:

- Address potential identity vulnerabilities.
- Detect possible credential compromise attempts.
- Investigate and address ongoing suspicious identity incidents.

As an interim checkpoint, you can see the [exit criteria](identity-exit-criteria.md#crit-identity-step15) corresponding to this step.

## Next step

[Step 16: Azure AD Application Proxy](identity-azure-ad-application-proxy.md)

