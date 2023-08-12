---
title: "Configure teams with baseline protection"
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 05/01/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: high
search.appverid:
- MET150
ms.collection: 
- highpri
- Tier1
- Ent_O365
- Strat_O365_Enterprise
- m365solution-3tiersprotection
- m365solution-securecollab
ms.custom:
- Ent_Solutions
- admindeeplinkTEAMS
- admindeeplinkSPO
recommendations: false
description: "Learn how to deploy teams with a baseline level of protection."
---

# Configure teams with baseline protection

In this article, we look at how to deploy teams with a baseline level of protection. This level allows users a wide range of options for collaboration while enhancing permissions management and providing basic protection against oversharing. Recommended protections for this level include identity and device access policies and protection against malware. Additionally, you can apply conditional access policies and data loss protections as needed.

## Initial protections

As a first step, we recommend that you configure basic identity and device-access policies. See [Policy recommendations for securing Teams chats, groups, and files](../security/office-365-security/teams-access-policies.md) for details.

We also recommend turning on basic Defender for Office 365 features to guard against malware in documents, attachments, and links. We recommend turning on each of the options in the following table.

|Option|Information|
|:------|:-----------|
|Safe Attachments for SPO, OneDrive and Teams|[Safe Attachments](../security/office-365-security/safe-attachments-about.md) <p> [Defender for Office 365 - SharePoint, OneDrive, and Microsoft Teams](../security/office-365-security/safe-attachments-for-spo-odfb-teams-about.md)|
|Safe Documents|[Safe Documents in Microsoft Defender for Office 365](../security/office-365-security/safe-documents-in-e5-plus-security-about.md)|
|Safe Links for Teams|[Office 365 Safe Links in Teams](../security/office-365-security/safe-links-about.md) <p> [Safe Links](../security/office-365-security/safe-links-about.md)|

## Teams guest sharing

In each of the tiers, we have the option of sharing with people outside your organization. For the sensitive and highly sensitive tiers, we will have the option to turn guest sharing off at the team level by using sensitivity labels. But the organization-level guest sharing setting must be turned on for guest sharing to work at all in Teams.

![Screenshot of Teams guest access toggle.](../media/teams-guest-access-toggle-on.png)

To set Teams guest access settings

1. Log in to the Microsoft 365 admin center at [https://admin.microsoft.com](https://admin.microsoft.com).
2. In the left navigation, click **Show all**.
3. Under **Admin centers**, click **Teams**.
4. In the Teams admin center, in the left navigation, expand **Org-wide settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2173122" target="_blank">**Guest access**</a>.
5. Ensure that **Allow guest access in Teams** is set to **On**.
6. Make any desired changes to the additional guest settings, and then click **Save**.

> [!NOTE]
> It may take up to twenty-four hours for the Teams guest setting to become active after you turn it on.

Guest sharing is turned on by default for Office 365 groups and SharePoint, however if you have previously changed any of the guest sharing settings for your organization, we recommend that you review [Collaborate with guests in a team](./collaborate-as-team.md) to ensure that guest sharing will be available in Teams.

## Site and file sharing

To reduce the risk of accidentally sharing files or folders with people outside your organization, we recommend changing the default sharing link for SharePoint to *Only people in your organization*. (If users need to share externally, and you have enabled guest sharing, they can still change the link type when they share.)

To change the default sharing link

1. Open the SharePoint admin center, under **Policies**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing**</a>.
1. Under **File and folder links**, select **Only people in your organization**.
1. Select **Save**.

For the best guest sharing experience, we also recommend that you enable [SharePoint and OneDrive integration with Azure AD B2B](/sharepoint/sharepoint-azureb2b-integration-preview).

## Create a team

Additional configuration for the baseline level of protection is done in the SharePoint site associated with a team. [Create a public or private team](https://support.office.com/article/174adf5f-846b-4780-b765-de1a0a737e2b) before proceeding to the next section.

## Site sharing settings

By default, members of a SharePoint site can invite others to the site. When a site is part of a team, team members are included as site members. However, people added directly to the site don't have access to the rest of the team. For this reason, we recommend managing permissions exclusively through the team.

To help with permissions management, we recommend configuring the associated site to only allow owners to share the site by itself. This simplifies permissions management and helps prevent access by people without a team owner's knowledge. Do this for each team that requires baseline protection.

To update the site sharing settings
1. In the tool bar for the team, click **Files**.
2. Click **Open in SharePoint**.
3. In the tool bar of the SharePoint site, click the settings icon, and then click **Site permissions**.
4. In the **Site permissions** pane, under **Site sharing**, click **Change how members can share**.
5. Under **Sharing permissions**, choose **Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**, and then click **Save**.

## Additional protections

Microsoft 365 offers additional methods for securing your content. Consider if the following options would help improve security for your organization.

- Have guests agree to a [terms of use](/azure/active-directory/conditional-access/terms-of-use).
- Configure a [session timeout policy](/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime) for guests.
- Create [sensitive information types](../compliance/sensitive-information-type-learn-about.md) and use [data loss protection](../compliance/dlp-learn-about-dlp.md) to set policies around accessing sensitive information.

## See Also

[Manage meeting policies in Teams](/microsoftteams/meeting-policies-in-teams)

[Get started with insider risk management](../compliance/insider-risk-management-configure.md)
