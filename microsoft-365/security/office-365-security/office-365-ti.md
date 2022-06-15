---
title: Threat investigation & response capabilities - Microsoft Defender for Office 365 Plan 2
f1.keywords:
  - NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 12/09/2019
audience: Admin
ms.topic: overview

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 32405da5-bee1-4a4b-82e5-8399df94c512
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
  - seo-marvel-apr2020
description: Learn about threat investigation and response capabilities in Microsoft Defender for Office 365 Plan.
ms.technology: mdo
ms.prod: m365-security
---

# Threat investigation and response

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies To**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

Threat investigation and response capabilities in [Microsoft Defender for Office 365](defender-for-office-365.md) help security analysts and administrators protect their organization's Microsoft 365 for business users by:

- Making it easy to identify, monitor, and understand cyberattacks.
- Helping to quickly address threats in Exchange Online, SharePoint Online, OneDrive for Business and Microsoft Teams.
- Providing insights and knowledge to help security operations prevent cyberattacks against their organization.
- Employing [automated investigation and response in Office 365](automated-investigation-response-office.md) for critical email-based threats.

Threat investigation and response capabilities provide insights into threats and related response actions that are available in the Microsoft 365 Defender portal. These insights can help your organization's security team protect users from email- or file-based attacks. The capabilities help monitor signals and gather data from multiple sources, such as user activity, authentication, email, compromised PCs, and security incidents. Business decision makers and your security operations team can use this information to understand and respond to threats against your organization and protect your intellectual property.

## Get acquainted with threat investigation and response tools

Threat investigation and response capabilities in the Microsoft 365 Defender portal at <https://security.microsoft.com> are a set of tools and response workflows that include:

- [Explorer](#explorer)
- [Incidents](#incidents)
- [Attack simulation training](attack-simulation-training.md)
- [Automated investigation and response](automated-investigation-response-office.md)

### Explorer

Use [Explorer (and real-time detections)](threat-explorer.md) to analyze threats, see the volume of attacks over time, and analyze data by threat families, attacker infrastructure, and more. Explorer (also referred to as Threat Explorer) is the starting place for any security analyst's investigation workflow.

:::image type="content" source="../../media/7a7cecee-17f0-4134-bcb8-7cee3f3c3890.png" alt-text="The Threat explorer page" lightbox="../../media/7a7cecee-17f0-4134-bcb8-7cee3f3c3890.png":::

To view and use this report in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorer>.

## Office 365 Threat Intelligence connection

This feature is only available if you have an active Office 365 E5 subscription or the Threat Intelligence add-on. For more information, see the Office 365 Enterprise E5 product page.

When you turn on this feature, you'll be able to incorporate data from Microsoft Defender for Office 365 into Microsoft 365 Defender to conduct a comprehensive security investigation across Office 365 mailboxes and Windows devices.

> [!NOTE]
> You'll need to have the appropriate license to enable this feature.

To receive contextual device integration in Office 365 Threat Intelligence, you'll need to enable the Defender for Endpoint settings in the Security & Compliance dashboard.

### Incidents

Use the Incidents list (this is also called Investigations) to see a list of in flight security incidents. Incidents are used to track threats such as suspicious email messages, and to conduct further investigation and remediation.

:::image type="content" source="../../media/acadd4c7-d2de-4146-aeb8-90cfad805a9c.png" alt-text="The list of current Threat Incidents in Office 365" lightbox="../../media/acadd4c7-d2de-4146-aeb8-90cfad805a9c.png":::

To view the list of current incidents for your organization in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Incidents & alerts** \> **Incidents**. Or, to go directly to the **Incidents** page, use <https://security.microsoft.com/incidents>.

:::image type="content" source="../../media/e0f46454-fa38-40f0-a120-b595614d1d22.png" alt-text="The Review page in the Security & Compliance Center" lightbox="../../media/e0f46454-fa38-40f0-a120-b595614d1d22.png":::

### Attack simulation training

Use Attack simulation training to set up and run realistic cyberattacks in your organization, and identify vulnerable people before a real cyberattack affects your business. To learn more, see [Simulate a phishing attack](attack-simulation-training.md).

To view and use this feature in the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** > **Attack simulation training**. Or, to go directly to the **Attack simulation training** page, use <https://security.microsoft.com/attacksimulator?viewid=overview>.

### Automated investigation and response

Use automated investigation and response (AIR) capabilities to save time and effort correlating content, devices, and people at risk from threats in your organization. AIR processes can begin whenever certain alerts are triggered, or when started by your security operations team. To learn more, see [automated investigation and response in Office 365](automated-investigation-response-office.md).

## Threat intelligence widgets

As part of the Microsoft Defender for Office 365 Plan 2 offering, security analysts can review details about a known threat. This is useful to determine whether there are additional preventative measures/steps that can be taken to keep users safe.

:::image type="content" source="../../media/11e7d40d-139b-4c56-8d52-c091c8654151.png" alt-text="The Security trends pane showing information about recent threats" lightbox="../../media/11e7d40d-139b-4c56-8d52-c091c8654151.png":::

## How do we get these capabilities?

Microsoft 365 threat investigation and response capabilities are included in Microsoft Defender for Office 365 Plan 2, which is included in Enterprise E5 or as an add-on to certain subscriptions. To learn more, see [Defender for Office 365 Plan 1 and Plan 2](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2).

## Required roles and permissions

Microsoft Defender for Office 365 uses role-based access control. Permissions are assigned through certain roles in Azure Active Directory, the Microsoft 365 admin center, or the Microsoft 365 Defender portal.

> [!TIP]
> Although some roles, such as Security Administrator, can be assigned in the Microsoft 365 Defender portal, consider using either the Microsoft 365 admin center or Azure Active Directory instead. For information about roles, role groups, and permissions, see the following resources:
>
> - [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md)
> - [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference)

|Activity|Roles and permissions|
|---|---|
|Use the Threat & Vulnerability Management dashboard (or the new [Security dashboard](security-dashboard.md) <p> View information about recent or current threats|One of the following: <ul><li>**Global Administrator**</li><li>**Security Administrator**</li><li>**Security Reader**</li></ul> <p> These roles can be assigned in either Azure Active Directory (<https://portal.azure.com>) or the Microsoft 365 admin center (<https://admin.microsoft.com>).|
|Use [Explorer (and real-time detections)](threat-explorer.md) to analyze threats|One of the following: <ul><li>**Global Administrator**</li><li>**Security Administrator**</li><li>**Security Reader**</li></ul> <p> These roles can be assigned in either Azure Active Directory (<https://portal.azure.com>) or the Microsoft 365 admin center (<https://admin.microsoft.com>).|
|View Incidents (also referred to as Investigations) <p> Add email messages to an incident|One of the following: <ul><li>**Global Administrator**</li><li>**Security Administrator**</li><li>**Security Reader**</li></ul> <p> These roles can be assigned in either Azure Active Directory (<https://portal.azure.com>) or the Microsoft 365 admin center (<https://admin.microsoft.com>).|
|Trigger email actions in an incident <p> Find and delete suspicious email messages|One of the following: <ul><li>**Global Administrator**</li><li>**Security Administrator** plus the **Search and Purge** role</li></ul> <p> The **Global Administrator** and **Security Administrator** roles can be assigned in either Azure Active Directory (<https://portal.azure.com>) or the Microsoft 365 admin center (<https://admin.microsoft.com>). <p> The **Search and Purge** role must be assigned in the **Email & collaboration roles** in the Microsoft 36 Defender portal (<https://security.microsoft.com>).|
|Integrate Microsoft Defender for Office 365 Plan 2 with Microsoft Defender for Endpoint <p> Integrate Microsoft Defender for Office 365 Plan 2 with a SIEM server|Either the **Global Administrator** or the **Security Administrator** role assigned in either Azure Active Directory (<https://portal.azure.com>) or the Microsoft 365 admin center (<https://admin.microsoft.com>). <p> --- **plus** --- <p> An appropriate role assigned in additional applications (such as [Microsoft Defender Security Center](/windows/security/threat-protection/microsoft-defender-atp/user-roles) or your SIEM server).|

## Next steps

- [Learn about Threat Trackers - New and Noteworthy](threat-trackers.md)
- [Find and investigate malicious email that was delivered (Office 365 Threat Investigation and Response)](investigate-malicious-email-that-was-delivered.md)
- [Integrate Office 365 Threat Investigation and Response with Microsoft Defender for Endpoint](integrate-office-365-ti-with-mde.md)
- [Simulate a phishing attack](attack-simulation-training.md)
