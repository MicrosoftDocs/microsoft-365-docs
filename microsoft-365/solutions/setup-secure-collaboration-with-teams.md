---
title: Set up secure file and document sharing and collaboration with Teams in Microsoft 365
ms.author: jtremper
author: jacktremper
manager: pamgreen
ms.date: 12/04/2023
ms.audience: ITPro
ms.topic: solution-overview
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection:
- highpri
- Tier1
- M365-collaboration
- m365solution-securecollab
- m365solution-overview
ms.custom:
- M365solutions
- seo-marvel-jun2020
f1.keywords: NOCSH
recommendations: false
description: Learn best practices to set up secure file collaboration and sharing in Teams to protect your data based on its sensitivity.
---

# Set up secure file sharing and collaboration with Microsoft Teams

Being able to easily share files and documents with the right people while preventing oversharing is key to an organization's success. This includes being able to share confidential or other sensitive data safely with only those who should have access to it. Depending on the project, this might include sharing sensitive data with people outside your organization.

This guidance includes components to help you:

- Deploy Teams with the right level of protection for each project
- Configure external sharing with appropriate security settings for each project

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=22bcbb04-69a4-4dac-8f48-a0511cbcb384]

If versatile and easy-to-use file collaboration tools aren't available, users will often collaborate by emailing documents. This is a tedious and error-prone method of collaboration, and can increase the risk of inappropriate sharing of information. If people find sharing files too difficult, they could revert to using consumer products that aren't governed by IT. This can pose an even greater risk.

With Microsoft 365, you can deploy Teams with various configurations that help:

- Protect your intellectual property
- Enable easy collaboration with documents and other files
- Create a balance between security and usability that increases user satisfaction and reduces the risk of shadow IT

Most organizations have a variety of information, with varying degrees of sensitivity and varying degrees of business impact if the information is inappropriately shared. Depending on the sensitivity of a given piece of information, you may want to allow sharing with:

- Anyone (unauthenticated)
- People inside the organization
- Specific people inside the organization
- Specific people inside and outside the organization

Information such as marketing brochures are meant for sharing broadly outside the organization. Information such as cafeteria menus aren't meant for external sharing, but would have no business impact if they were shared externally. These types of information need little or no protection.

Those same marketing brochures, while under development, might only be shared inside the organization. In this case, the default sharing settings in Teams may be sufficient.

Information about a new product that is under development might be considered sensitive, even within the organization. A greater degree of protection might be appropriate in this case. You could restrict access to this information to members of a specific team, for example. Depending on the project, you may need to collaborate with people outside your organization, such as a vendor or partner organization.

Information that is critical to your organization's success, or has stringent security or compliance requirements might require even greater levels of protection.

![Risk scale from low (released brochure) to high (sensitive business data).](../media/solutions-architecture-center/SecureCollaboration-SensitivityAndBusinessImpactofSharing-fromVisio.png)

For all the scenarios noted above, you can use Teams to store, share, and collaborate on the information.

To configure secure collaboration, use these Microsoft 365 capabilities and features:

|Product or component|Capability or feature|Licensing|
|---|---|---|
|Microsoft Defender for Office 365|Safe Attachments for SharePoint, OneDrive and Microsoft Teams; Safe Documents; Safe Links for Teams|Microsoft 365 E1, E3 and E5|
|SharePoint|Site and file sharing policies, Site sharing permissions, Sharing links, Access requests, Site guest sharing settings|Microsoft 365 E1, E3 and E5|
|Microsoft Teams|Guest access, private teams, private channels, shared channels|Microsoft 365 E3 and E5 with a Microsoft Teams Enterprise license|
|Microsoft Purview|Sensitivity labels|Microsoft 365 E3 and E5|
|Microsoft Syntex - SharePoint Advanced Management|Site access restrictions, conditional access policies for sites, default sensitivity labels for libraries|Microsoft Syntex - SharePoint Advanced Management|

## Collaboration governance framework for Teams and Microsoft 365

Microsoft 365 provides many options for governing your collaboration solution. We recommend you use this deployment content alongside the [collaboration governance content](collaboration-governance-overview.md) to create the best collaboration solution for your organization.

## Securing Teams for sensitive and highly sensitive data

To manage access to information with different sensitivities, we've developed [three different tiers of protection for Teams](configure-teams-three-tiers-protection.md). You can customize any of these tiers to better address the needs or your business.

![Graphic of three levels of protection for Teams.](../media/solutions-architecture-center/Teams-tiers-of-protection-1.png)

These tiers - *baseline*, *sensitive*, and *highly sensitive* - gradually increase the protections that help prevent oversharing and potential information leakage, as shown in the following table.

|-|Baseline tier|Sensitive tier|Highly sensitive tier|
|---|---|---|---|
|Public or private team|Either|Private|Private|
|Unauthenticated sharing|Allowed|Blocked|Blocked|
|File sharing|Allowed|Allowed|Limited to people in the team.|
|Team membership|Anyone can join public teams.<br>Team owner approval required to join private teams.|Team owner approval required to join.|Team owner approval required to join.|
|Document encryption|||Available with sensitivity label|
|Guest sharing|Allowed|Can be allowed or blocked|Can be allowed or blocked|
|Unmanaged devices|No restriction|Web-only access|Blocked|

Configuring these tiers involves:

- Configuring settings in Teams for guest access and private and shared channels
- Configuring settings in a team's associated SharePoint site for internal and guest sharing, site access, and sharing links
- For the *sensitive* and *highly sensitive* tiers, configuring sensitivity labels to classify the teams, and control guest sharing and access from unmanaged devices
- For the *highly sensitive* tier, configuring a sensitivity label to encrypt the documents to which it's applied

Start with the baseline tier, and then add teams that use the *sensitive* and *highly sensitive* tiers as needed to help protect the information in your organization. See these resources to get started:

- [Configure teams with baseline protection](configure-teams-baseline-protection.md)
- [Configure teams with protection for sensitive data](configure-teams-sensitive-protection.md)
- [Configure teams with protection for highly sensitive data](configure-teams-highly-sensitive-protection.md)

## Sharing with people outside your organization

You may need to [share information of any sensitivity with people outside your organization](collaborate-with-people-outside-your-organization.md). This could range from sharing a single document with a single person to collaborating on a major project with a large partner organization or freelancers from around the world. In Microsoft 365, this range of external sharing can be done easily and with the appropriate safeguards to help protect your sensitive information.

Read these articles to help you get started with setting up your environment for collaborating with people outside your organization:

- [Collaborate on documents](collaborate-on-documents.md) for sharing individual files of folders.
- [Collaborate in a site](collaborate-in-site.md) for collaborating with guests in a SharePoint site.
- [Collaborate as a team](collaborate-as-team.md) for collaborating with guests in a team.
- [Collaborate with external participants in a channel](/microsoft-365/solutions/collaborate-teams-direct-connect) for collaborating with people outside the organization in a shared channel.

Depending on the sensitivity of the information being shared, you can add safeguards to help prevent oversharing. Read these articles to help you set up the protections that you need for your organization:

- [Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)
- [Limit accidental exposure to files when sharing with people outside your organization](share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)

If you have a major project with a partner organization, you can use either [shared channels](/microsoft-365/solutions/collaborate-teams-direct-connect) or [Azure Entitlement Management](b2b-extranet.md) to manage the people outside your organization who you need to collaborate with.

## Training for administrators

These training modules from Microsoft Learn can help you learn the collaboration, governance, and identity features in Teams and SharePoint.

### Teams

- [MS-700 Prepare the environment for a Microsoft Teams deployment](/training/paths/prepare-environment-for-microsoft-teams-deployment/)
- [MS-700 Get started with managing Microsoft Teams](/training/paths/get-started-managing-microsoft-teams/)
- [MS-700 Manage chat, teams, channels, and apps in Microsoft Teams](/training/paths/manage-chat-teams-channels-apps-microsoft-teams/)

### Identity and access

- [Manage identity and access in Microsoft Entra ID](/training/paths/manage-identity-and-access/)
- [Manage identities and governance for Azure administrators](/training/paths/azure-administrator-manage-identities-governance/)

## Training for end users

These training modules can help your users use Teams, groups, and SharePoint for collaboration in Microsoft 365.

|Teams|SharePoint|
|---|---|
|![Create a team with templates training icon.](../media/set-up-customize-team-training.png)<br>**[Create a team with templates](https://support.microsoft.com/office/702a2977-e662-4038-bef5-bdf8ee47b17b)**|![Create and share files in a library training icon](../media/sharepoint-share-sync-training.png)<br>**[Create and share files in a library](https://support.microsoft.com/office/98cb2ff2-c27e-42ea-b055-c2d895f8a5de)**|
|![Teams upload and share files training icon.](../media/smc-teams-upload-find-files-training.png)<br>**[Upload and share files](https://support.microsoft.com/office/57b669db-678e-424e-b0a0-15d19215cb12)**||
|![Collaborate in teams and channels icon.](../media/teams-collaborate-channels-training.png)<br>**[Collaborate in teams and channels](https://support.microsoft.com/office/c3d63c10-77d5-4204-a566-53ddcf723b46)**||

## Illustrations

These illustrations show how groups and teams interact with other services in Microsoft 365 and what governance and compliance features are available to help you manage these services in your organization.

### Groups in Microsoft 365 for IT Architects

What IT architects need to know about groups in Microsoft 365

|**Item**|**Description**|
|---|---|
|[![Thumb image for groups infographic.](../downloads/msft-m365-groups-architecture-thumb.png)](https://download.microsoft.com/download/6/3/0/6309218f-a169-4f2d-af4c-2fe49e30ba17/msft-m365-groups.pdf) <br/> [PDF](https://download.microsoft.com/download/6/3/0/6309218f-a169-4f2d-af4c-2fe49e30ba17/msft-m365-groups.pdf) \|[Visio](https://download.microsoft.com/download/6/3/0/6309218f-a169-4f2d-af4c-2fe49e30ba17/msft-m365-groups.vsdx) <br> Updated August 2023|These illustrations detail the different types of groups, how these are created and managed, and a few governance recommendations.|

### Microsoft Teams and related productivity services in Microsoft 365 for IT architects

The logical architecture of productivity services in Microsoft 365, leading with Microsoft Teams.

|**Item**|**Description**|
|---|---|
|[![Thumb image for Teams logical architecture poster.](../downloads/msft-teams-logical-architecture-thumb.png)](https://download.microsoft.com/download/8/c/2/8c2d4d29-a6dd-4d98-92e9-be496f1681df/msft-m365-teams-logical-architecture.pdf) <br/> [PDF](https://download.microsoft.com/download/8/c/2/8c2d4d29-a6dd-4d98-92e9-be496f1681df/msft-m365-teams-logical-architecture.pdf) \|[Visio](https://download.microsoft.com/download/e/2/c/e2cbb5c3-df64-45b2-b367-75b99c914c49/msft-m365-teams-logical-architecture.vsdx)  <br>Updated September 2023|Microsoft provides a suite of productivity services that work together to provide collaboration experiences with data governance, security, and compliance capabilities. <p>This series of illustrations provides a view into the logical architecture of productivity services for enterprise architects, leading with Microsoft Teams.|

## Next steps

When you're ready to set up a secure collaboration environment, follow these steps:

1. Configure the [three different tiers of protection for Teams](configure-teams-three-tiers-protection.md).
1. Configure settings for [sharing information of any sensitivity with people outside your organization](collaborate-with-people-outside-your-organization.md).

## See also

[Microsoft 365 security documentation](../security/index.yml)

[Microsoft Purview documentation](../compliance/index.yml)

[Welcome to Microsoft Teams](/MicrosoftTeams/Teams-overview)
