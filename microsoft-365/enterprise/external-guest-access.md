---
title: "Overview of external access in Microsoft 365"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.service: o365-solutions
f1.keywords:
- NOCSH
ms.custom: 
ms.collection: 
- SPO_Content
ms.localizationpriority: medium
description: "Learn about how people outside your organization can access your Microsoft 365 subscription."
---

# Overview of external access in Microsoft 365

There are _____ ways people from outside your organization can access your Microsoft 365 resources:

- As a guest in a Microsoft Teams team or a Microsoft 365 group
- As a guest in a SharePoint site
- As a guest with a sharing link to a file or folder
- As a participant in a 1:1 or group chat
- As a participant in a Teams shared channel
- As an anonymous participant in a Teams meeting
- By using an anonymous sharing link to a file or folder

Collaboration Methods used in Microsoft Teams from Users Outside Your Organization 

Guest access, external access, anonymous meeting join, and shared channels are the four primary mechanisms for external collaboration in Microsoft Teams. They each address different scenarios, and they can all be enabled simultaneously to achieve different types of collaboration within Teams. 

Guest Access 
What is it? Guest access allows you to invite people from outside your organization to join one or multiple teams. With guest access, you can provide access to teams, documents in channels, resources, chats, and applications to people outside your organization, while maintaining control over your corporate data. 

When would I use it? Use guest access to add a person from outside your organization to a team, where they can chat, call, meet, and collaborate on files. For the teams that a guest is a member of, a guest can be given nearly all the same Teams capabilities as an internal team member. Guests are added to your organization's Azure Active Directory as B2B guest users and must sign in to Teams using their guest account. This means that they may have to sign out of their own organization to sign in to your organization. Guests do not require a license for most features of collaboration. 

 

Documentation: 

Guest access in Microsoft Teams - Microsoft Teams | Microsoft Docs 

External Access 

What is it? External access is a way for your users and Teams users from outside your organization to find, call, chat, and set up meetings with each other in Teams. You may allow or block specified domains, or allow all domains for external access. You can also use external access to communicate with people from other organizations who are still using Skype for Business (online and on-premises) and Skype. 

When would I use it? If you just want to find, call, chat, and set up meetings with people in other organizations, use external access. External access is ideal if you don’t need users outside of your organization to join Teams. If you want people from other organizations to have access to your teams and channels, use guest access instead 

Documentation: 

Manage external access (federation) - Microsoft Teams | Microsoft Docs 

 

Anonymous Join for Meetings 

What is it? A user who is not signed-in to Teams (and therefore hasn't been authenticated) is considered to be an anonymous user. These users  haven’t logged in with their Microsoft or organization’s account.  If the anonymous join setting is enabled in your tenant, anonymous users can only join a meeting using a meeting link that has been shared with them (such as a link in the meeting invitation). They will be prompted to enter a display name of their choosing when joining the meeting anonymously. 

You can control anonymous users' ability to join meetings either at your organization level through Meeting Settings, or per meeting organizer through Meeting Policy settings. 

When would I use it?  If you must block guest and/or external access, but still want users from outside of your organization to join meetings, then you may consider using anonymous join. Enabling anonymous join makes it easy for anyone to join a meeting as long as they have the meeting link. This eases the reliance on guest access requirements (enabling guest access in Azure AD and ensuring that the guest user accepts the invitaiton) and external access requirements (that the other organization has external access enabled, too). However, it is not possible to verify the identity of anonymous users during or after the meeting. 

Documentation: Manage meeting settings - Microsoft Teams | Microsoft Docs 

 Join a meeting without a Teams account (microsoft.com) 

Teams Connect Shared Channels 

What is it? Shared channels are a new channel type, in addition to the existing standard and private channel types. Shared channels enable users to collaborate seamlessly with internal and external users who are not in the team. Only the users who are owners or members of the shared channel can access the channel. While guests (people with Azure Active Directory guest accounts in your organization.) can't be added to a shared channel, you can invite people outside your organization to participate in a shared channel by using Azure AD B2B direct connect. 

When would I use it? You might want to use a shared channel if you want to collaborate with a group of people who are all members of different teams or people from outside of your organization. Shared channels work well if you only want people to have access to a specific channel within a team, but not the other channels. In addition, external users can access the channel right from their Teams account without having to switch organizations, which makes collaboration easier than the alternative guest scenario. External collaboration for shared channels is off by default. 

Documentation: 

Shared channels in Microsoft Teams (Preview) - Microsoft Teams | Microsoft Docs 

 

 