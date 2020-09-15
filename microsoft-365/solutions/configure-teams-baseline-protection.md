---
title: "Configure teams with baseline protection"
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- m365solution-3tiersprotection
- m365solution-securecollab
ms.custom:
- Ent_Solutions
description: "Learn how to deploy teams with a baseline level of protection."
---

# Configure teams with baseline protection

In this article, we look at how to deploy teams with a baseline level of protection. This level allows users a wide range of options for collaboration while enhancing permissions management and providing basic protection against oversharing. Recommended protections for this level include identity and device access policies and protection against malware. Additionally, you can apply conditional access policies and data loss protections as needed.

## Initial protections

As a first step, we recommend that you configure basic identity and device-access policies. See [Policy recommendations for securing Teams chats, groups, and files](https://docs.microsoft.com/microsoft-365/enterprise/teams-access-policies) for details.

We also recommend turning on basic Advanced Threat Protection features to guard against malware in documents, attachments, and links. We recommend turning on each of the options in the following table.

|Option|Information|
|:------|:-----------|
|ATP Safe Attachments for SPO, OneDrive and Teams|[Office 365 ATP Safe Attachments](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-attachments)<br>[Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-for-spo-odb-and-teams)|
|ATP Safe Documents|[Safe Documents in Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/safe-docs)|
|ATP Safe Links for Teams|[Office 365 Safe Links in Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links-for-teams)<br>[Office 365 ATP Safe Links](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links)|

## Teams guest sharing

In each of the tiers, we have the option of sharing with people outside your organization. For the sensitive and highly sensitive tiers, we will have the option to turn guest sharing off at the team level by using sensitivity labels. But the organization-level guest sharing setting must be turned on for guest sharing to work at all in Teams.

![Screenshot of Teams guest access toggle](../media/teams-guest-access-toggle-on.png)

To set Teams guest access settings

1. Log in to the Microsoft 365 admin center at [https://admin.microsoft.com](https://admin.microsoft.com).
2. In the left navigation, click **Show all**.
3. Under **Admin centers**, click **Teams**.
4. In the Teams admin center, in the left navigation, expand **Org-wide settings** and click **Guest access**.
5. Ensure that **Allow guest access in Teams** is set to **On**.
6. Make any desired changes to the additional guest settings, and then click **Save**.

> [!NOTE]
> It may take up to twenty-four hours for the Teams guest setting to become active after you turn it on.

Guest sharing is turned on by default for Office 365 groups and SharePoint, however if you have previously changed any of the guest sharing settings for your organization, we recommend that you review [Collaborate with guests in a team](https://docs.microsoft.com/microsoft-365/solutions/collaborate-as-team) to ensure that guest sharing will be available in Teams.

## Site and file sharing

To reduce the risk of accidentally sharing files or folders with people outside your organization, we recommend changing the default sharing link for SharePoint to *Only people in your organization*. (If users need to share externally, and you have enabled guest sharing, they can still change the link type when they share.)

To change the default sharing link
1. Open the [SharePoint admin center](https://admin.microsoft.com/sharepoint).
2. Under **Policies**, click **Sharing**.
3. Under **File and folder links**, select **Only people in your organization**.
4. Click **Save**.

For the best guest sharing experience, we also recommend that you enable [SharePoint and OneDrive integration with Azure AD B2B](https://docs.microsoft.com/sharepoint/sharepoint-azureb2b-integration-preview).

## Create a team

Additional configuration for the baseline level of protection is done in the SharePoint site associated with a team. [Create a public or private team](https://support.office.com/article/174adf5f-846b-4780-b765-de1a0a737e2b) before proceeding to the next section.

## Site sharing settings

By default, members of a SharePoint site can invite others to the site. When a site is part of a team, team members are included as site members. However, people added directly to the site don't have access to the rest of the team. For this reason, we recommend managing permissions exclusively through the team.

To help with permissions management, we recommend configuring the associated site to only allow owners to share the site by itself. This simplifies permissions management and helps prevent access by people without a team owner's knowledge. Do this for each team that requires baseline protection.

To update the site sharing settings
1. In the tool bar for the team, click **Files**.
2. Click **Open in SharePoint**.
3. In the tool bar of the SharePoint site, click the settings icon, and then click **Site permissions**.
4. In the **Site permissions** pane, under **Sharing settings**, click **Change sharing settings**.
5. Under **Sharing permissions**, choose **Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**, and then click **Save**.

## Additional protections

Microsoft 365 offers additional methods for securing your content. Consider if the following options would help improve security for your organization.

- Have your guest users agree to a [terms of use](https://docs.microsoft.com/azure/active-directory/conditional-access/terms-of-use).
- Configure a [session timeout policy](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime) for guests.
- Create [sensitive information types](https://docs.microsoft.com/microsoft-365/compliance/custom-sensitive-info-types) and use [data loss protection](https://docs.microsoft.com/microsoft-365/compliance/data-loss-prevention-policies) to set policies around accessing sensitive information.

## See Also

[Manage meeting policies in Teams](https://docs.microsoft.com/microsoftteams/meeting-policies-in-teams)

[Get started with insider risk management](https://docs.microsoft.com/microsoft-365/compliance/insider-risk-management-configure)
