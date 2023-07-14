---
title: Plan for multi-tenant orgs in Microsoft 365 (Preview)
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 07/30/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn about multi-tenant orgs in Microsoft 365.
---

# Plan for multi-tenant orgs in Microsoft 365 (Preview)

If your organization manages multiple Microsoft 365 tenants, you can set up a multi-tenant organization in Microsoft 365 to facilitate collaboration and resource access between tenants.


Multi-tenant organizations use [cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration). If you already have an organizational relationship configured in Azure AD with a tenant that you're adding to a multi-tenant organization, check the B2B collaboration settings to ensure the appropriate users and apps are allowed.



Note: As part of the setup, to maximize the benefits of collaboration for users in a multitenant org environment, it is necessary to have a full mesh user synchronization, where users from all tenants are synced over. Without full mesh user sync, the user experience can become bifurcated, leading to limitations in multitenant org collaboration effectiveness.



## The new Microsoft Teams desktop client

[The new Microsoft Teams desktop client](/microsoftteams/new-teams-desktop-admin)

The new Teams client now supports collaboration in multitenant organizations. Users can now easily search for coworkers in other tenants, engage in single chat threads with users from different tenants, receive notifications, join meetings and calls, and multitask seamlessly. These capabilities are designed to improve the overall user experience and collaboration experience between users across the multitenant.

How to install the new Teams Client
 
To control which users can see the toggle, use the Teams admin setting UseNewTeamsClient under the TeamsUpdateManagement policy.

[Deploy the new Teams using policies](/microsoftteams/new-teams-deploy-using-policies)

## Trusted organizations in external access

[Manage external meetings and chat with people and organizations using Microsoft identities](/microsoftteams/trusted-organizations-external-meetings-chat)


 
Please refer to the above references for additional information.
3.	External Access Settings (Teams Admin Center)
Additionally, it is required to enable the External Access policy in Teams Admin Center for tenants that are part of the multitenant org.  If External Access is not allowed between participating tenants, user collaboration across the multitenant may be limited.


## Shared channels in multi-tenant orgs

[Shared channels in Microsoft Teams](/microsoftteams/shared-channels)

[Collaborate with external participants in a shared channel](/microsoft-365/solutions/collaborate-teams-direct-connect)

4.	Enabling Teams Shared Channel 
MTO users can collaborate with other users within a Teams shared channels. Sharing channels with people outside your organization, including MTO users, also requires to configure cross-tenant access settings in Entra. 
This article provides guidance on how to setup a Teams shared channel. Shared channels in Microsoft Teams - Microsoft Teams | Microsoft Learn.

MTO Formation Scenarios
The following are scenarios required to form the MTO by admins.
Create multitenant org 	A multitenant org org admin owner defines in Azure Active Directory a relationship among tenants as part of the multitenant org org
Add a tenant to the multitenant org	A multitenant org org admin owner can add a new tenant in Azure Active Directory to a multitenant org org
Join a multitenant org	A participating tenant admins can join a new tenant in Azure Active Directory to a multitenant org org
Leave a multitenant org	A participating tenant admins can leave in Azure Active Directory the multitenant org org
Multitenant org user sync	User sync across the multitenant org. Please refer to this article for more details

Teams scenarios
The following are user collaboration scenarios.
People & Search	Search for any multitenant org user by name (either partial or full name)
People search returns single result and establish chat with org user’s home tenant identity
Multitenant org profile view	Multitenant org user profile will show org name, email address, and initials avatars
Multitenant org users will be represented with “External” tag
Multitasking	Side-by-side multitasking across tenants
Cross tenant chat notifications (for enabled tenants)
Chat & Call	New Chats and Calls use real identities
Existing Chats with B2B identities show a banner
Meetings	Access to in-meeting content
Multitenant org Management	Users will be able to collaborate with other users in the tenants that are part of the multitenant org.  (see detailed description below)

Synced Users
In such cases, when users are synced as B2B/members to facilitate the MTO formation, users in the Classic Teams Client will now be able to collaborate with the synced users.
Firstly, the synced users from the MTO become searchable within the Classic Teams Client. This means that users who have been synced as B2B members will now appear in search results within the Classic Teams Client.
Secondly, non-synced users in the Classic Teams Client will be able to collaborate with these synced users. For instance, let's consider the example of Alice (alice@contoso1) who has been synced to the Contoso2 tenant. In this scenario, Bob (bob@contoso2) from the Contoso2 tenant will be able to search for Alice by her name and collaboration with her.
In a search of synced users in the Classic Teams, the result could vary as follows:
•	If Alice and Bob have never collaborated before, Bob will be able to find Alice in the search results.
Note: the example below shows a search by partial name yielding a result of Alice as B2B/Member with labels (such as “Guest”).
 
•	If Alice and Bob had previously collaborated using External Access, Bob's search yields two results for Alice.
 


Known Limitations
Note that the following are the known Teams client multitenant known issues. Please refer also to the New Teams client list of known issues.
No.	Category	Scenario/Issue	Notes
1	Scoped clients	Not all Teams clients will be available at public preview time. 	Teams on the web, MacOS, Microsoft Teams Rooms (MTR), and VDI/AVD will be supported in future time.
2	Scenario	A tenant that is part of a multitenant and the user has two or more accounts in that tenant, the account selection logic may not work properly for scenarios such as joining meetings, automatically activating the tenant, or using channel links.	A fix is underway. Availability is TBD
3	Scenario	Mobile only.
The ability to grant or revoke a tenant to receive notifications from other tenants and to switch between tenants is not supported.	Use the desktop client to enable or disable a tenant so user can receive cross-tenant notifications and able to tenant switch

Frequently Asked Questions
No.	Question	Answer
1	Why is a full mesh user sync required?	A full mesh network offers the best user experience for all users in a multitenant org environment. With partial user synchronization, not all users may have access to the new capabilities, which could compromise the effectiveness of multitenant org collaboration and result in differences in user experience
2	Will Teams shared channel support multitenant org collaboration?	No change to shared channel (B2B identities such as member or guest are not supported in shared channels).
Adding users to shared channels is supported by searching for them using their full email address provided cross tenant access settings have been configured.
3	What is a ‘multitenant org user’?
	To facilitate collaboration between multiple organizations, we leverage AAD Business-to-Business (AAD B2B) capabilities without the need to create a new user type. This allows users from external tenants to be represented in the system as in-tenant members, without any new labels or designations. By using this approach, we can seamlessly connect users from different organizations and foster more efficient and effective collaboration across boundaries
4	Why is enabling External Access between tenants in the multitenant org is required?	Enabling multitenant collaboration leverages the user’s identity in their home tenant as well as in the other multitenant.  Enabling External Access supports scenarios such as chats and calls. For cases when external access is not configured correctly, chat and calls with users from multitenant org will fail.
5	What is the plan to support multitenant org with footprint in different clouds?	We are currently focused on releasing our initial support for multitenant in commercial cloud. 

