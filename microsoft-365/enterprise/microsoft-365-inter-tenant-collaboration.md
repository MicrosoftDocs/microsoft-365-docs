---
title: "Microsoft 365 inter-tenant collaboration"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 11/08/2018
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection:
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

This article describes several ways to collaborate between two Microsoft 365 tenants. It is intended for Microsoft 365 Administrators.
  
Suppose that two organizations, Fabrikam and Contoso, each have a Microsoft 365 for business tenant and they want to work together on several projects; some of which run for a limited time and some of which are ongoing. How can Fabrikam and Contoso enable their people and teams to collaborate more effectively across their different Microsoft 365 tenants in a secure manner? Microsoft 365, in conjunction with Azure Active Directory B2B collaboration, provides several options. This article describes several key scenarios that Fabrikam and Contoso can consider.
  
Microsoft 365 inter-tenant collaboration options include using a central location for files and conversations, sharing calendars, using IM, audio/video calls for communication, and securing access to resources and applications. Use the following tables to select solutions and learn more.
  
## Exchange Online collaboration options

|**Sharing goal**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Share calendars with another Microsoft 365 organization  <br/> |Administrators can set up different levels of calendar access in Exchange Online to allow businesses to collaborate with other businesses and to let users share the schedules (free/busy information) with others  <br/> |[Sharing in Exchange Online](https://technet.microsoft.com/library/jj916670%28v=exchg.150%29.aspx) <br/> [Organization relationships in Exchange Online](https://technet.microsoft.com/library/jj916658%28v=exchg.150%29.aspx) <br/> [Create an organization relationship in Exchange Online](https://technet.microsoft.com/library/jj916671%28v=exchg.150%29.aspx) <br/> [Modify and organization relationship in Exchange Online](https://technet.microsoft.com/library/jj916659%28v=exchg.150%29.aspx) <br/> [Remove an organization relationship in Exchange Online](https://technet.microsoft.com/library/jj916657%28v=exchg.150%29.aspx) <br/> [Share calendars with external users](https://support.office.com/article/fb00dd4e-2d5f-4e8d-8ff4-94b2cf002bdd) <br/> |
|Control how users share their calendars with people outside your organization  <br/> |Administrators apply sharing policies to users mailboxes to control who it can be shared with and the level of access granted  <br/> |[Sharing policies in Exchange Online](https://technet.microsoft.com/library/jj916673%28v=exchg.150%29.aspx) <br/> [Create a sharing policy in Exchange Online](https://technet.microsoft.com/library/jj916676%28v=exchg.150%29.aspx) <br/> [Apply a sharing policy to mailboxes in Exchange Online](https://technet.microsoft.com/library/jj916672%28v=exchg.150%29.aspx) <br/> [Modify, disable, or remove a sharing policy in Exchange Online](https://technet.microsoft.com/library/jj916674%28v=exchg.150%29.aspx) <br/> |
|Configure secure email channels and control mail flow with partner organizations  <br/> |Administrators create connectors to apply security to mail exchanges with a partner organization or service provider. The connectors enforce encryption via transport layer security (TLS) as well as allowing restrictions on domain names or IP address ranges your partners send email from.  <br/> |[How Exchange Online uses TLS to secure email connections](https://technet.microsoft.com/library/mt163898.aspx) <br/> [Configure mail flow using connectors](https://technet.microsoft.com/library/ms.exch.eac.connectorselection%28v=exchg.150%29.aspx) <br/> [Remote domains in Exchange Online](https://technet.microsoft.com/library/jj966211%28v=exchg.150%29.aspx) <br/> [Set up connector for secure mail flow with a partner organization](https://technet.microsoft.com/library/dn751021%28v=exchg.150%29.aspx) <br/> [Mail flow best practices for Exchange Online (overview)](https://technet.microsoft.com/library/0e6cd9d5-ad3e-418a-8ea9-3bf33332c491%28v=exchg.150%29) <br/> |
   
## SharePoint Online and OneDrive for Business collaboration options

|**Sharing goals**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Share sites and documents with external users  <br/> |Administrators configure sharing at the tenant, or site collection level for Microsoft account authenticated, work or school account authenticated or guest accounts  <br/> |[Manage external sharing for your SharePoint Online environment](https://support.office.com/article/Manage-external-sharing-for-your-SharePoint-Online-environment-C8A462EB-0723-4B0B-8D0A-70FEAFE4BE85?ui=en-US&amp;rs=en-US&amp;ad=US) <br/> [Restrict sharing of SharePoint and OneDrive content by domain](https://docs.microsoft.com/sharepoint/restricted-domains-sharing) <br/> [Use SharePoint Online as a business-to-business (B2B) extranet solution](https://support.office.com/article/7b087413-165a-4e94-8871-4393e0b9c037) <br/> |
|Tracking and controlling external sharing for end users  <br/> |OneDrive for Business file owners and SharePoint Online end users configure site and document sharing and establish notifications to track sharing  <br/> |[Configure notifications for external sharing for OneDrive for Business](https://support.office.com/article/Configure-notifications-for-external-sharing-for-OneDrive-for-Business-b640c693-f170-4227-b8c1-b0a7e0fa876b) <br/> [Share SharePoint files or folders](https://support.office.com/article/1fe37332-0f9a-4719-970e-d2578da4941c) <br/> |
   
## Skype for Business collaboration options

|**Sharing goal**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Skype for Business Online - IM, calls, and presence with other Skype for Business users  <br/> |Administrators can enable their Skype for Business Online users to IM, make audio/video calls, and see presence with users in another Microsoft 365 tenant.  <br/> |[Allow users to contact external Skype for Business users](https://support.office.com/article/b414873a-0059-4cd5-aea1-e5d0857dbc94) <br/> |
|Skype for Business Online - IM, calls, and presence with Skype (consumer) users  <br/> |Administrators can enable their Skype for Business Online users to IM, make calls, and see presence with Skype (consumer) users.  <br/> |[Let Skype for Business users add Skype contacts](https://support.office.com/article/08666236-1894-42ae-8846-e49232bbc460) <br/> |
   
## Azure AD B2B Collaboration options

|**Sharing goal**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Azure AD B2B collaboration - Content sharing by adding external users to a group in an organization's directory  <br/> |A global admin for one Microsoft 365 tenant can invite people in another Microsoft 365 tenant to join their directory, add those external users to a group, and grant access to content, such as SharePoint sites and libraries for the group.  <br/> |[What is Azure AD B2B collaboration preview?](https://docs.microsoft.com/azure/active-directory/active-directory-b2b-what-is-azure-ad-b2b) <br/> [Azure AD B2B: New updates make cross-business collab easy](https://blogs.technet.microsoft.com/enterprisemobility/2017/02/01/azure-ad-b2b-new-updates-make-cross-business-collab-easy/) <br/> [External sharing and Azure Active Directory B2B collaboration](https://docs.microsoft.com/azure/active-directory/active-directory-b2b-o365-external-user) <br/> [Azure Active Directory B2B collaboration API and customization](https://docs.microsoft.com/azure/active-directory/active-directory-b2b-api) <br/> [Azure AD and Identity Show: Azure AD B2B Collaboration (Business to Business](https://channel9.msdn.com/Series/Azure-AD-Identity/AzureADB2B) <br/> |
   
## Microsoft 365 collaboration options

|**Sharing goal**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Microsoft 365 Groups - Email, calendar, OneNote, and shared files in a central place  <br/> |Groups are supported in Business Essentials, Business Premium, Education, and the Enterprise E1, E3, and E5 plans. People in one Microsoft 365 tenant can create a group and invite people in another Microsoft 365 tenant as guest users. Applies to Dynamics CRM as well.  <br/> |[Learn about Microsoft 365 groups](https://support.office.com/article/b565caa1-5c40-40ef-9915-60fdb2d97fa2) <br/> [Guest access in Microsoft 365 Groups](https://support.office.com/article/bfc7a840-868f-4fd6-a390-f347bf51aff6) <br/> [Deploy Microsoft 365 Groups](https://technet.microsoft.com/library/dn896591.aspx) <br/> |
   
## Yammer collaboration options

|**Sharing goal**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Yammer - Collaboration through an enterprise social medium  <br/> |Unless the ability to create external groups is disabled by a Yammer admin, users can create external groups to collaborate in Yammer through conversations, the ability to like and follow posts, share files, and chat online.  <br/> |[Create and manage external groups in Yammer](https://support.office.com/article/9ccd15ce-0efc-4dc1-81bc-4a424ab6f92a) <br/> |
   
## Teams collaboration options

|**Sharing goal﻿**|**Administrative action﻿**|**How-to information﻿**|
|:-----|:-----|:-----|
|Collaborate in Teams with users external to the organization  <br/> |A global admin for the inviting Microsoft 365 tenant needs to enable external collaboration in Teams. Global admins and team owners will now be able to invite anyone with an email address to collaborate in Teams.  <br/> Admins can also manage and edit Guests already present in their tenant.  <br/> |[Authorize Guest Access](https://docs.microsoft.com/microsoftteams/teams-dependencies) <br/> [Turn Guest Access On or Off in Teams](https://docs.microsoft.com/microsoftteams/set-up-guests) <br/> [Use PowerShell to control Guest Access](https://docs.microsoft.com/microsoftteams/guest-access-powershell) <br/> [Guest Access Checklist](https://docs.microsoft.com/microsoftteams/guest-access-checklist) <br/> [View Guest Users](https://docs.microsoft.com/microsoftteams/view-guests) <br/> [Edit guest user information](https://docs.microsoft.com/microsoftteams/edit-guests-information) <br/> |
|Team owners can invite and manage how guests collaborate within their teams.  <br/> |Team owners have additional controls on what the guests can do within their teams.  <br/> |[Add Guests](https://support.office.com/article/teams-and-channels-df38ae23-8f85-46d3-b071-cb11b9de5499?ui=en-US&amp;rs=en-US&amp;ad=US#bkmk_addingguests&amp;ID0EAABAAA=Add_guests) <br/> [Add a guest to a team](https://docs.microsoft.com/microsoftteams/add-guests) <br/> [Manage Guest Access in Teams](https://docs.microsoft.com/microsoftteams/manage-guests) <br/> [See who's on a Team or in a Channel](https://support.office.com/article/see-who-s-on-a-team-or-in-a-channel-5c6be9be-9c45-4a0f-a1a0-f332b23cb6b7?ui=en-US&amp;rs=en-US&amp;ad=US) <br/> |
|Guests from other tenants can view contents in Teams and collaborate with other members  <br/> |None.  <br/> |[The guest access experience](https://docs.microsoft.com/microsoftteams/guest-experience) <br/> |

## Power BI collaboration options

|**Sharing goal**|**Administrative action**|**How-to information**|
|:-----|:-----|:-----|
|Power BI enables external guest users to consume content shared to them through links. This enables users in the organization to distribute content in a secure way across organizations.<br/> | The Power BI Admin can control whether users can invite external users to view content within the organization. <br/> |[Distribute Power BI content to external guest users with Azure AD B2B](https://docs.microsoft.com/power-bi/service-admin-azure-ad-b2b) <br/> |
 
## Points to be aware of about Microsoft 365 inter-tenant collaboration

### Sharing of user accounts, licenses, subscriptions, and storage

Each organization maintains its own user accounts, identities, security groups, subscriptions, licenses, and storage. People use the collaboration features in Microsoft 365 together with sharing policies and security settings to provide access to needed information while maintaining control of company assets.
  
- **User accounts:** Accounts cannot be shared and accounts cannot be duplicated between the tenants or partitions in the on-premises Active Directory Directory Services. 
    
- **Licenses &amp; subscriptions:** In Microsoft 365, licenses from licensing plans (also called SKUs or Microsoft 365 plans) give users access to the Microsoft 365 services that are defined for those plans. 
    
- **Storage:** In Microsoft 365 plans, software boundaries and limits for SharePoint Online are managed separately from mailbox storage limits. Mailbox storage limits are set up and managed by using Exchange Online.﻿ In both scenarios storage can't be shared cross tenants. 
    
### Can we share domain namespaces across Microsoft 365 tenants?

No. Vanity domains, such as fabrikam.com or tailspintoys.com, can only be associated and used with one tenant at the time. Each tenant must have its own namespace; UPN, SMTP and SIP namespaces cannot be shared across tenants.
  
### What about hybrid components and Microsoft 365 inter-tenant collaboration?

On-premises hybrid components, such as an Exchange organization and Azure AD Connect, cannot be split across multiple tenants.
  

