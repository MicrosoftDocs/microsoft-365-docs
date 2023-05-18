---
title: "Microsoft 365 inter-tenant collaboration"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: Admin
ms.topic: overview
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-collaboration
- M365-subscription-management
- SPO_Content
search.appverid:
- MET150
- MOE150
ms.assetid: eb45fd8b-1d5d-4b0c-9c5a-479dbb176e7d
f1.keywords:
- NOCSH
description: Learn how Microsoft 365 collaboration works across tenants and organizations, allowing different organizations to work together securely.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 inter-tenant collaboration

Suppose that two organizations, Fabrikam and Contoso, each have a Microsoft 365 for business tenant and they want to work together on several projects; some of which run for a limited time and some of which are ongoing. How can Fabrikam and Contoso enable their people and teams to collaborate more effectively across their different Microsoft 365 tenants in a secure manner? Microsoft 365, in conjunction with Azure Active Directory (Azure AD) B2B collaboration, provides several options. This article describes several key scenarios that Fabrikam and Contoso can consider.

Microsoft 365 inter-tenant collaboration options include using a central location for files and conversations, sharing calendars, using IM, audio/video calls for communication, and securing access to resources and applications. Use the following tables to select solutions and learn more.

## Exchange Online collaboration options

| Sharing goal | Administrative action | How-to information |
|:-----|:-----|:-----|
|Share calendars with another Microsoft 365 organization |Administrators can set up different levels of calendar access in Exchange Online to allow businesses to collaborate with other businesses and to let users share the schedules (free/busy information) with others. | <ul><li>[Sharing](/exchange/sharing/sharing) </li><li> [Organization relationships](/exchange/sharing/organization-relationships/organization-relationships) </li><li> [Create an organization relationship](/exchange/sharing/organization-relationships/create-an-organization-relationship) </li><li> [Modify an organization relationship](/exchange/sharing/organization-relationships/modify-an-organization-relationship) </li><li> [Remove an organization relationship](/exchange/sharing/organization-relationships/remove-an-organization-relationship) </li><li> [Share calendars with external users](https://support.office.com/article/fb00dd4e-2d5f-4e8d-8ff4-94b2cf002bdd) </li></ul> |
|Control how users share their calendars with people outside your organization | Administrators apply sharing policies to users mailboxes to control who it can be shared with and the level of access granted |  <ul><li> [Sharing policies](/exchange/sharing/sharing-policies/sharing-policies) </li><li> [Create a sharing policy](/exchange/sharing/sharing-policies/create-a-sharing-policy) </li><li> [Apply a sharing policy to mailboxes](/exchange/sharing/sharing-policies/apply-a-sharing-policy) </li><li> [Modify, disable, or remove a sharing policy](/exchange/sharing/sharing-policies/modify-a-sharing-policy) </li></ul> |
|Configure secure email channels and control mail flow with partner organizations | Administrators create connectors to apply security to mail exchanges with a partner organization or service provider. The connectors enforce encryption via transport layer security (TLS) as well as allowing restrictions on domain names or IP address ranges your partners send email from. |  <ul><li> [How Exchange Online uses TLS to secure email connections](../compliance/exchange-online-uses-tls-to-secure-email-connections.md) </li><li> [Configure mail flow using connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow) </li><li> [Remote domains](/exchange/mail-flow-best-practices/remote-domains/remote-domains) </li><li> [Set up connector for secure mail flow with a partner organization](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-for-secure-mail-flow-with-a-partner) </li><li> [Mail flow best practices (overview)](/exchange/mail-flow-best-practices/mail-flow-best-practices) </li></ul> |

## SharePoint Online and OneDrive for Business collaboration options

| Sharing goals | Administrative action | How-to information |
|:-----|:-----|:-----|
|Share sites and documents with external users | Administrators configure sharing at the tenant, or site collection level for Microsoft account authenticated, work or school account authenticated or guest accounts |  <ul><li> [Manage external sharing for your SharePoint Online environment](https://support.office.com/article/Manage-external-sharing-for-your-SharePoint-Online-environment-C8A462EB-0723-4B0B-8D0A-70FEAFE4BE85?ui=en-US&amp;rs=en-US&amp;ad=US) </li><li> [Restrict sharing of SharePoint and OneDrive content by domain](/sharepoint/restricted-domains-sharing) </li><li> [Use SharePoint Online as a business-to-business (B2B) extranet solution](https://support.office.com/article/7b087413-165a-4e94-8871-4393e0b9c037) </li></ul> |
|Tracking and controlling external sharing for end users | OneDrive for Business file owners and SharePoint Online end users configure site and document sharing and establish notifications to track sharing |  <ul><li> [Configure notifications for external sharing for OneDrive for Business](https://support.office.com/article/Configure-notifications-for-external-sharing-for-OneDrive-for-Business-b640c693-f170-4227-b8c1-b0a7e0fa876b) </li><li> [Share SharePoint files or folders](https://support.office.com/article/1fe37332-0f9a-4719-970e-d2578da4941c) </li></ul> |

## Skype for Business collaboration options

| Sharing goal | Administrative action | How-to information |
|:-----|:-----|:-----|
|Skype for Business Online - IM, calls, and presence with other Skype for Business users | Administrators can enable their Skype for Business Online users to IM, make audio/video calls, and see presence with users in another Microsoft 365 tenant. | [Allow users to contact external Skype for Business users](https://support.office.com/article/b414873a-0059-4cd5-aea1-e5d0857dbc94)|
|Skype for Business Online - IM, calls, and presence with Skype (consumer) users | Administrators can enable their Skype for Business Online users to IM, make calls, and see presence with Skype (consumer) users. | [Let Skype for Business users add Skype contacts](https://support.office.com/article/08666236-1894-42ae-8846-e49232bbc460)|

## Azure AD B2B Collaboration options

| Sharing goal | Administrative action | How-to information |
|:-----|:-----|:-----|
|Azure AD B2B collaboration - Content sharing by adding external users to a group in an organization's directory | A **Azure AD DC admin**, **Security Admin**, **User Admin**, **Cloud Application Admin**, or **Global admin** for one Microsoft 365 tenant can invite people in another Microsoft 365 tenant to join their directory, add those external users to a group, and grant access to content, such as SharePoint sites and libraries for the group. |  <ul><li> [What is Azure AD B2B collaboration preview?](/azure/active-directory/active-directory-b2b-what-is-azure-ad-b2b) </li><li> [Azure AD B2B: New updates make cross-business collab easy](https://blogs.technet.microsoft.com/enterprisemobility/2017/02/01/azure-ad-b2b-new-updates-make-cross-business-collab-easy/) </li><li> [External sharing and Azure Active Directory B2B collaboration](/azure/active-directory/external-identities/external-collaboration-settings-configure) </li><li> [Azure Active Directory B2B collaboration API and customization](/azure/active-directory/active-directory-b2b-api) </li><li> [Azure AD and Identity Show: Azure AD B2B Collaboration (Business to Business](/azure/active-directory/external-identities/user-properties) </li></ul> |

## Microsoft 365 collaboration options

| Sharing goal | Administrative action | How-to information |
|:-----|:-----|:-----|
|Microsoft 365 Groups - Email, calendar, OneNote, and shared files in a central place | Groups are supported in Business Essentials, Business Premium, Education, and the Enterprise E1, E3, and E5 plans. People in one Microsoft 365 tenant can create a group and invite people in another Microsoft 365 tenant as guest users. Applies to Dynamics CRM as well. |  <ul><li> [Learn about Microsoft 365 groups](https://support.office.com/article/b565caa1-5c40-40ef-9915-60fdb2d97fa2) </li><li> [Guest access in Microsoft 365 Groups](https://support.office.com/article/bfc7a840-868f-4fd6-a390-f347bf51aff6) </li><li> [Deploy Microsoft 365 Groups](/previous-versions/dynamicscrm-2016/administering-dynamics-365/dn896591(v=crm.8)) </li></ul> |

## Viva Engage collaboration options

| Sharing goal | Administrative action | How-to information |
|:-----|:-----|:-----|
|Viva Engage - Collaboration through an enterprise social medium | Unless the ability to create external groups is disabled by a Viva Engage admin, users can create external groups to collaborate in Viva Engage through conversations, the ability to like and follow posts, share files, and chat online. | [Create and manage external groups in Viva Engage](https://support.office.com/article/9ccd15ce-0efc-4dc1-81bc-4a424ab6f92a)|

## Teams collaboration options

|Sharing goal|Administrative action|How-to information|
|:-----|:-----|:-----|
|Collaborate in Teams with users external to the organization | A **User Admin**, or **Global admin** for the inviting Microsoft 365 tenant needs to enable external collaboration in Teams. Global admins and team owners will now be able to invite anyone with an email address to collaborate in Teams.  <br/> Admins can also manage and edit Guests already present in their tenant. |  <ul><li> [Authorize Guest Access](/microsoftteams/teams-dependencies) </li><li> [Turn Guest Access On or Off in Teams](/microsoftteams/set-up-guests) </li><li> [Use PowerShell to control Guest Access](/microsoftteams/guest-access-powershell) </li><li> [Guest Access Checklist](/microsoftteams/guest-access-checklist) </li><li> [View Guest Users](/microsoftteams/view-guests) </li><li> [Edit guest user information](/microsoftteams/edit-guests-information) </li></ul> |
|Team owners can invite and manage how guests collaborate within their teams.  |Team owners have additional controls on what the guests can do within their teams. |  <ul><li> [Add Guests](https://support.office.com/article/teams-and-channels-df38ae23-8f85-46d3-b071-cb11b9de5499?ui=en-US&amp;rs=en-US&amp;ad=US#bkmk_addingguests&amp;ID0EAABAAA=Add_guests) </li><li> [Add a guest to a team](/microsoftteams/add-guests) </li><li> [Manage Guest Access in Teams](/microsoftteams/manage-guests) </li><li> [See who's on a Team or in a Channel](https://support.office.com/article/see-who-s-on-a-team-or-in-a-channel-5c6be9be-9c45-4a0f-a1a0-f332b23cb6b7?ui=en-US&amp;rs=en-US&amp;ad=US) </li></ul> |
|Guests from other tenants can view contents in Teams and collaborate with other members | None. | [The guest access experience](/microsoftteams/guest-experience)|

## Power BI collaboration options

| Sharing goal | Administrative action | How-to information |
|:-----|:-----|:-----|
|Power BI enables external guest users to consume content shared to them through links. This enables users in the organization to distribute content in a secure way across organizations.<br/> | The Power BI Admin can control whether users can invite external users to view content within the organization.| [Distribute Power BI content to external guest users with Azure AD B2B](/power-bi/service-admin-azure-ad-b2b) |

## Points to be aware of about Microsoft 365 inter-tenant collaboration

### Sharing of user accounts, licenses, subscriptions, and storage

Each organization maintains its own user accounts, identities, security groups, subscriptions, licenses, and storage. People use the collaboration features in Microsoft 365 together with sharing policies and security settings to provide access to needed information while maintaining control of company assets.

- **User accounts:** Accounts cannot be shared or duplicated between the tenants or partitions in the on-premises Active Directory Domain Services.

- **Licenses &amp; subscriptions:** In Microsoft 365, licenses from licensing plans (also called SKUs or Microsoft 365 plans) give users access to the Microsoft 365 services that are defined for those plans.

- **Storage:** In Microsoft 365 licensing plans, software boundaries and limits for SharePoint Online are managed separately from mailbox storage limits. Mailbox storage limits are set up and managed by using Exchange Online. In both scenarios, storage can't be shared across tenants.

### Can we share domain namespaces across Microsoft 365 tenants?

No. Organization domain names, such as fabrikam.com or tailspintoys.com, can only be associated and used with a single Microsoft 365 tenant. Each tenant must have its own namespace. UPN, SMTP, and SIP namespaces cannot be shared across tenants.

### What about hybrid components and Microsoft 365 inter-tenant collaboration?

On-premises hybrid components, such as an Exchange organization and Azure AD Connect, cannot be split across multiple tenants.
