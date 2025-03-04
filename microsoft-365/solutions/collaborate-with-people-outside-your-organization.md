---
title: "Collaborating with people outside your organization"
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 10/28/2024
audience: ITPro
ms.topic: solution-overview
ms.service: o365-solutions
ms.collection: 
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.custom: 
- seo-marvel-apr2020
- seo-marvel-jun2020
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to configure Microsoft 365 apps like Teams, OneDrive, and SharePoint for collaboration with people outside your organization.
---

# Collaborating with people outside your organization

The external sharing capabilities in Microsoft 365 provide an opportunity for people in your organization to collaborate with partners, vendors, customers, and others who don't have an account in your directory. You can share entire teams, channels, or sites with people outside your organization, or just individual files.

Collaborating with people outside your organization consists of these major components:

- **Enable sharing** - Configure the sharing controls across Microsoft Entra ID, Teams, Microsoft 365 Groups, and SharePoint to allow the level of sharing that you want for your organization.
- **Configure organizational relationships** - If you are using shared channels or cross-cloud meetings or guests, you must configure cross-tenant access settings in Microsoft Entra ID to allow access for each organization you want to collaborate with. (These organizations must also configure organizational relationships with your tenant.)
- **Enable additional security** - While the basic sharing features can be configured to require people outside your organization to authenticate, Microsoft 365 provides many additional security and compliance features to help you protect your data and maintain your governance policies while sharing externally.

Read [Set up secure collaboration with Microsoft 365 and Microsoft Teams](/microsoft-365/solutions/setup-secure-collaboration-with-teams) to learn how external sharing ties in with the overall Microsoft 365 collaboration guidance.

## Enable sharing

By default, sharing with people outside your organization using guest access or anonymous access is enabled, but shared channels and cross-cloud scenarios must be enabled by configuring organizational relationships in Microsoft Entra ID. Most guest sharing scenarios work without further configuration. To confirm the settings for a scenario that you're using, or enable a new one, choose from the following options:

- [Collaborate on documents](collaborate-on-documents.md) - Learn how to configure Microsoft 365 to allow sharing and collaboration with people outside your organization (both guests and unauthenticated users) on files and folders.
- [Collaborate in a site](collaborate-in-site.md) - Learn how to configure Microsoft 365 to enable sharing SharePoint sites with guests.
- [Collaborate as a team](collaborate-as-team.md) - Learn how to configure Microsoft 365 to enable guest collaboration in Teams.
- [Collaborate with external participants in a channel](/microsoft-365/solutions/collaborate-teams-direct-connect) - Learn how to collaborate with people outside the organization in a shared channel.
- [Collaborate with guests from other Microsoft 365 cloud environments](collaborate-guests-cross-cloud.md) - Learn how to collaborate with people in other Microsoft 365 cloud environments, such as commercial or government environments.

For a comprehensive look at the guest sharing settings available across Microsoft 365, see [Microsoft 365 guest sharing settings reference](microsoft-365-guest-settings.md).

## Enable additional security

Once you've enabled the scenario that you want to use for sharing with people outside your organization, consider additional safeguards to help protect your content from accidental or intentional inappropriate sharing.

- [Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md) - Learn about best practices for sharing with unauthenticated users.
- [Limit accidental exposure](share-limit-accidental-exposure.md) - Learn how to reduce the chances of accidentally sharing sensitive content with people outside your organization.
- [Create a secure guest sharing environment](create-secure-guest-sharing-environment.md) - Learn about the tools provided in Microsoft 365 to help ensure that sharing with people outside your organization is done in a safe and secure manner and meets your governance requirements.

## Collaborate with partner companies

When you're working on a large project that involves guests from another organization, consider shared channels. Because shared channels do not use guest accounts, the users in the other organization can access the shared channel directly without having to log into your organization separately.

If you have an ongoing vendor relationship in which guests are often changing, you can use entitlement management in Microsoft Entra ID to simplify guest management and allow the partner company to share in that responsibility. See [Create a B2B extranet with managed guests](b2b-extranet.md) for details.

## Limit sharing

If some of the sharing features in Microsoft 365 conflict with your governance policies, see [Limit sharing in Microsoft 365](microsoft-365-limit-sharing.md) to learn about options for limiting sharing.

## Related topics

[Intro to file collaboration in Microsoft 365](/sharepoint/intro-to-file-collaboration)

[Meet with people in other Microsoft 365 cloud environments](/microsoftteams/cross-cloud-meetings)

[Plan file collaboration in SharePoint with Microsoft 365](/sharepoint/deploy-file-collaboration)
