---
title: Set up secure collaboration with Microsoft 365
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-collaboration
- m365solution-securecollab
- m365solution-overview
ms.custom: 
- M365solutions
- seo-marvel-jun2020
f1.keywords: NOCSH
description: Learn how to set up secure content collaboration in Teams to protect your data based on its sensitivity.
---

# Set up secure collaboration with Microsoft 365 and Microsoft Teams

Being able to easily share information with the right people while preventing oversharing is key to an organization's success. This includes being able to share sensitive data safely with only those who should have access to it. Depending on the project, this might include sharing sensitive data with people outside your organization.

This collaboration solution guidance includes two components to help you:
- Deploy Microsoft Teams with the right level of protection for each project
- Configure external sharing with appropriate security settings for each project

![Deploy Teams with appropriate protection and configure external sharing with appropriate security settings](..\media\solutions-architecture-center\secure-collaboration-overview.png)

If versatile and easy-to-use content collaboration tools aren't available, users will often collaborate by emailing documents. This is a tedious and error-prone method of collaboration, and can increase the risk of inappropriate sharing of information. If people find sharing information too difficult, they could revert to using consumer products that are not governed by IT. This can pose an even greater risk.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWxMmL?autoplay=false]

With Microsoft 365, you can deploy Teams with a variety of configurations that help:

- Protect your intellectual property
- Enable easy collaboration
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

![Risk scale from low (released brochure) to high (sensitive business data)](../media/solutions-architecture-center/SecureCollaboration-SensitivityAndBusinessImpactofSharing-fromVisio.png)

For all the scenarios noted above, you can use teams in Microsoft Teams to store, share, and collaborate on the information. 

To configure secure collaboration, you use these Microsoft 365 capabilities and features.

| Product or component | Capability or feature | Licensing |
|:-------|:-----|:-------|
| Microsoft Defender for Office 365	| Safe Attachments for SPO, OneDrive and Teams; Safe Documents; Safe Links for Teams	| Microsoft 365 E1, E3 and E5 |
| SharePoint	| Site and file sharing policies, Site sharing permissions, Sharing links, Access requests, Site guest sharing settings	| Microsoft 365 E1, E3 and E5 |
| Microsoft Teams	| Guest access, private teams, private channels	| Microsoft 365 E1, E3 and E5 |
| Microsoft 365 Compliance	| Sensitivity labels	| Microsoft 365 E3 and E5 |

### Collaboration governance

Microsoft 365 provides many options for governing your collaboration solution. We recommend you use this deployment content alongside the [collaboration governance content](collaboration-governance-overview.md) to create the best collaboration solution for your organization.

### Using Teams for all kinds of data

To manage access to information with different sensitivities, we've developed [three different tiers of protection for Teams](configure-teams-three-tiers-protection.md). You can customize any of these tiers to better address the needs or your business. 

![Graphic of three levels of protection for Teams](../media/solutions-architecture-center/Teams-tiers-of-protection-1.png)


These tiers - *baseline*, *sensitive*, and *highly sensitive* - gradually increase the protections that help prevent oversharing and potential information leakage, as shown in the following table.

|-|**Baseline tier**|**Sensitive tier**|**Highly sensitive tier**|
|:--|:-----------|:------------|:-------------------|
|Public or private team|Either|Private|Private|
|Unauthenticated sharing|Blocked|Blocked|Blocked|
|File sharing|Allowed|Allowed|Only team owners can share.|
|Team membership|Anyone can join public teams.<br>Team owner approval required to join private teams.|Team owner approval required to join.|Team owner approval required to join.|
|Document encryption|||Available with sensitivity label|
|Guest sharing|Allowed|Can be allowed or blocked|Can be allowed or blocked|
|Unmanaged devices|No restriction|Web-only access|Blocked|

Configuring these tiers involves:

- Configuring settings in Teams for guest access and private channels
- Configuring settings in a team's associated SharePoint site for internal and guest sharing, access requests, and sharing links
- For the *sensitive* and *highly sensitive* tiers, configuring sensitivity labels to classify the teams, and control guest sharing and access from unmanaged devices
- For the *highly sensitive* tier, configuring a sensitivity label to encrypt the documents to which it is applied

Start with the baseline tier, and then add teams that use the *sensitive* and *highly sensitive* tiers as needed to help protect the information in your organization. See these resources to get started:

- [Configure teams with baseline protection](configure-teams-baseline-protection.md)
- [Configure teams with protection for sensitive data](configure-teams-sensitive-protection.md)
- [Configure teams with protection for highly sensitive data](configure-teams-highly-sensitive-protection.md)

If you have a highly sensitive project that requires additional protection from sharing even within your organization, you can configure a team that uses its own sensitivity label to encrypt files so that only team members can read them. See [Configure a team with security isolation](secure-teams-security-isolation.md) for details.

### Sharing with people outside your organization

You may need to [share information of any sensitivity with people outside your organization](collaborate-with-people-outside-your-organization.md). This could range from sharing a single document with a single person to collaborating on a major project with a large partner organization or freelancers from around the world. In Microsoft 365, this range of external sharing can be done easily and with the appropriate safeguards to help protect your sensitive information.

These resources will help you get started with setting up your environment for collaborating with people outside your organization:

- [Collaborate on documents](collaborate-on-documents.md) for sharing individual files of folders.
- [Collaborate in a site](collaborate-in-site.md) for collaborating with guests in a SharePoint site.
- [Collaborate as a team](collaborate-as-team.md) for collaborating with guests in a team.

Depending on the sensitivity of the information being shared, you can add safeguards to help prevent oversharing. These resources will help you set up the protections that you need for your organization:

- [Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)
- [Limit accidental exposure to files when sharing with people outside your organization](share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)

If you have a major project with a partner organization, you can use Azure Entitlement Management to manage the guests from that organization in a team that you set up for the project. See [Create a B2B extranet with managed guests](b2b-extranet.md) for details.



## Training for administrators

These training modules from Microsoft Learn can help you learn the collaboration, governance, and identity features in Teams and SharePoint.

#### Teams

|Training:|Manage team collaboration with Microsoft Teams|
|:---|:---|
|![Teams collaboration training icon](../media/manage-team-collaboration-with-microsoft-teams.svg)|Manage team collaboration with Microsoft Teams introduces you to the features and capabilities of Microsoft Teams, the central hub for team collaboration in Microsoft 365. You’ll learn how you can use Teams to facilitate teamwork and communication within your organization, both on and off premises, on a wide range of devices—from desktops to tablets to phones—while taking advantage of all the rich functionality of Office 365 applications. You’ll gain an understanding of how Teams provides a comprehensive and flexible environment for collaboration across applications and devices. This learning path can help you prepare for the Microsoft 365 Certified: Teams Administrator Associate certification.<br><br>2 hr 17 min - Learning Path - 5 Modules|

> [!div class="nextstepaction"]
> [Start >](/learn/modules/m365-teams-collab-prepare-deployment/introduction/)

#### SharePoint

|Training:|Collaborate with SharePoint in Microsoft 365|
|:---|:---|
|![SharePoint training icon](../media/collaborate-with-sharepoint-in-microsoft-365.svg)|Manage shared content with Microsoft SharePoint introduces you to the features and capabilities of SharePoint, and how it works with Microsoft 365. You'll learn about the different types of SharePoint sites, including hub sites, as well as information protection, reporting, and monitoring. You'll also learn how to use SharePoint file and folder sharing to optimize collaboration, how to share files externally, and how to manage SharePoint sites in the SharePoint admin center. This learning path can help you prepare for the Microsoft 365 Certified: Teamwork Administrator Associate certification.<br><br>1 hr 14 min - Learning Path - 4 Modules|

> [!div class="nextstepaction"]
> [Start >](/learn/modules/m365-teams-sharepoint-plan-sharepoint/introduction/)

#### Information protection

|Training:|Protect enterprise information with Microsoft 365|
|:---|:---|
|![Teams info protection training icon](../media/protect-enterprise-information-microsoft-365.svg)|Protecting and securing your organization's information is more challenging than ever. The Protect enterprise information with Microsoft 365 learning path discusses how to protect your sensitive information from accidental oversharing or misuse, how to discover and classify data, how to protect it with sensitivity labels, and how to both monitor and analyze your sensitive information to protect against its loss. This learning path can help you prepare for the Microsoft 365 Certified: Security Administrator Associate and Microsoft 365 Certified: Enterprise Administration Expert certifications..<br><br>1 hr - Learning Path - 5 Modules|

> [!div class="nextstepaction"]
> [Start >](/learn/modules/m365-security-info-overview/introduction/)

#### Identity and access

|Training:|Protect identity and access with Azure Active Directory|
|:---|:---|
|![Identity and access training icon](../media/protect-identity-and-access-with-microsoft-365.svg)|The Identity and Access learning path covers the latest identity and access technologies, tools for strengthening authentication, and guidance on identity protection within your organization. Microsoft access and identity technologies enable you to secure your organization’s identity, whether it is on-premises or in the cloud, and empower your users to work securely from any location. This learning path can help you prepare for the Microsoft 365 Certified: Security Administrator Associate and Microsoft 365 Certified: Enterprise Administration Expert certifications.<br><br>2 hr 52 min - Learning Path - 6 Modules|

> [!div class="nextstepaction"]
> [Start >](/learn/modules/m365-identity-overview/introduction/)

## Training for end users

These training modules can help your users use Teams, groups, and SharePoint for collaboration in Microsoft 365.

|Teams|SharePoint|
|:---|:---|
|![Set up and customize your team training icon](../media/set-up-customize-team-training.png)<br>**[Set up and customize your team](https://support.microsoft.com/office/702a2977-e662-4038-bef5-bdf8ee47b17b)**|![SharePoint share and sync training icon](../media/sharepoint-share-sync-training.png)<br>**[Share and sync](https://support.microsoft.com/office/98cb2ff2-c27e-42ea-b055-c2d895f8a5de)**|
|![Teams upload and find files training icon](../media/smc-teams-upload-find-files-training.png)<br>**[Upload and find files](https://support.microsoft.com/office/57b669db-678e-424e-b0a0-15d19215cb12)**||
|![Collaborate in teams and channels icon](../media/teams-collaborate-channels-training.png)<br>**[Collaborate in teams and channels](https://support.microsoft.com/office/c3d63c10-77d5-4204-a566-53ddcf723b46)**||

## Illustrations

These illustrations will help you understand how groups and teams interact with other services in Microsoft 365 and what governance and compliance features are available to help you manage these services in your organization.

### Groups in Microsoft 365 for IT Architects
What IT architects need to know about groups in Microsoft 365

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for groups infographic](../downloads/msft-m365-groups-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) <br/> [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-groups.vsdx) <br> Updated June 2019|These illustrations detail the different types of groups, how these are created and managed, and a few governance recommendations.|

### Microsoft Teams and related productivity services in Microsoft 365 for IT architects
The logical architecture of productivity services in Microsoft 365, leading with Microsoft Teams.

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Teams logical architecture poster](../downloads/msft-teams-logical-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-teams-logical-architecture.pdf) <br/> [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-teams-logical-architecture.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-teams-logical-architecture.vsdx)  <br>Updated April 2019   |Microsoft provides a suite of productivity services that work together to provide collaboration experiences with data governance, security, and compliance capabilities. <br/> <br/>This series of illustrations provides a view into the logical architecture of productivity services for enterprise architects, leading with Microsoft Teams.|

## Deploy the secure collaboration solution

When you're ready to deploy this solution, continue with these steps:
1. Configure the [three different tiers of protection for Teams](configure-teams-three-tiers-protection.md).
2. Configure settings for [sharing information of any sensitivity with people outside your organization](collaborate-with-people-outside-your-organization.md).

## See also

[Microsoft 365 security documentation](../security/index.yml)

[Microsoft 365 compliance documentation](../compliance/index.yml)

[Welcome to Microsoft Teams](/MicrosoftTeams/Teams-overview)
