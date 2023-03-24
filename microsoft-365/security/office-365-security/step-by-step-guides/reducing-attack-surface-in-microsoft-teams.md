---
title: Reduce the attack surface for Microsoft Teams
description: Configuration which can be used to reduce the attack surface in Microsoft Teams, including enabling Microsoft Defender for Office 365.
search.product: 
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTBen
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 01/05/2023
---

# Reduce the attack surface for Microsoft Teams

Microsoft Teams is a widely used collaboration tool, where many users are now spending their time. Attackers know this and are pivoting. Below are a set of steps you can perform to reduce the attack surface in Teams and help keep your organization more secure.

> [!IMPORTANT]
> There is a balance to strike between security and productivity, and not all these steps may be relevant for your organizational risk profile.

## What you'll need

- Microsoft Teams
- Microsoft Defender for Office 365 Plan 1 (for some features)
- Sufficient permissions (Teams administrator / security administrator)
- 5-10 minutes to perform the steps below.

> [!NOTE]
> Not all these options will be available for government specific clouds such as Microsoft 365 GCC.

## Turn on Microsoft Defender for Office 365 in Teams

If licensed for Microsoft Defender for Office 365 (free 90-day evaluation available at aka.ms/trymdo) you can ensure seamless protection from zero-day malware and time of click protection within Microsoft Teams.

[Learn More (SafeLinks)](/microsoft-365/security/office-365-security/safe-links#safe-links-settings-for-microsoft-teams) & [Learn More (Safe Attachments)](/microsoft-365/security/office-365-security/turn-on-mdo-for-spo-odb-and-teams) (Detailed Documentation)

1. **Login** to the security center's safe attachments configuration page at <https://security.microsoft.com/safeattachmentv2>.
2. Press **Global settings**.
3. Ensure **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** is set to on.
4. Navigate to the security center's Safe links configuration page at: <https://security.microsoft.com/safelinksv2>.
5. If you have multiple policies, you will need to complete this step for each policy (excluding built-in, standard and strict preset policies).
6. **Select** a policy, a flyout will appear on the left-hand side.
7. Press **Edit protection settings**.
8. Ensure **Safe Links checks a list of known, malicious links when users click links in Microsoft Teams** is checked.
9. Press **Save**.

## Restricting channel email messages to approved domains

An attacker could email channels directly if they discover the channel email address. The best practice is to have this only setup for known trusted domains rather than open to all (default).

1. **Login** to the Teams admin center at: <https://admin.teams.microsoft.com/>.
2. On the left-hand navigation, expand **Teams** and then choose **Teams settings**.
3. Under the **Email integration** heading, choose to allow or disallow users to send emails to a channel email address by toggling **Users can send emails to a channel email address**.
4. If you have allowed users to send emails to a channel email address in the previous step, enter the specific domains you wish to accept mail from in the **Accept channel email from these SMTP domains** box. (for example, an alert provider, or trusted supplier).
5. Press **Save** at the bottom of the page.

## Managing third party storage options

Users can store their files in potentially unsupported 3rd party storage providers. If you do not use these providers, you can disable this setting to reduce data leakage risk.

1. **Login** to the Teams admin center at: <https://admin.teams.microsoft.com/>.
2. On the left-hand navigation, expand **Teams** and then choose **Teams settings**.
3. Under the **Files** heading, choose which storage providers you want to be available for use within the files tab.
4. Press **Save** at the bottom of the page.

## Disabling Third-party & custom apps

Applications are a very useful part of Microsoft teams, but it is recommended to maintain a list of allowed apps rather than allowing all apps by default.

1. **Login** to the Teams admin center at: <https://admin.teams.microsoft.com/>.
2. On the left-hand navigation, expand **Teams apps** and then choose **Permission Policies**.
3. If you have custom permission policies, you will need to do these steps for each of them if appropriate, otherwise select **Global (Org-wide default)**.
4. Select the appropriate settings for your organization, a recommended starting point is:
   - Microsoft apps – set to **Allow all apps** (default).
   - Third-party apps – set to **Allow specific apps and block all others** (if you already have 3rd party apps to then select for allowing) otherwise select **Block all apps**.
   - Custom apps – set to **Allow specific apps and block all others** (if you already have custom apps to then select for allowing) otherwise select **Block all apps**.
5. Press **Save**.
6. You'll need to change this setting for each policy (if you have multiple).

## Configure meeting settings

You can reduce the attack surface by ensuring people outside your organization cannot request access to control presenter's screens and require dial in and all external people to be authenticated & admitted from a meeting lobby.
[Learn more](/microsoftteams/meeting-policies-participants-and-guests) (detailed documentation).

1. **Login** to the Teams admin center at: <https://admin.teams.microsoft.com/>.
2. On the left-hand navigation, expand **Meetings** and then choose **Meeting Policies**.
3. If you have assigned any custom or built-in policies to users, you will need to do these steps for each of them if appropriate, otherwise select **Global (Org-wide default)**.
4. Under the **Content sharing** heading, ensure **External participants can give or request control** is set to **off**.
5. Under the **Participants & guests** heading, ensure **Automatically admit people** is set to **Invited users only**.
6. Ensure **Dial-in users can bypass the lobby** is set to **off**.
7. Ensure **Let anonymous people join a meeting** is set to **off**.
8. Set **Chat in meetings** to **"Turn it on for everyone but anonymous users"**.
9. Press **Save**.
10. You'll need to change this setting for each policy.

## Configure meeting settings (Restrict presenters)

You can reduce the risk of unwanted or inappropriate content being shared during meetings by restricting who can present to Organizers (everyone is allowed to present by default).

1. **Login** to the Teams admin center at: <https://admin.teams.microsoft.com/>.
2. On the left-hand navigation, expand **Meetings** and then choose **Meeting Policies**.
3. If you have assigned any custom or built-in policies to users, you will need to do these steps for each of them if appropriate, otherwise select **Global (Org-wide default)**.
4. Under the **Participants & guests** heading, toggle who can present in meetings to **Organizers, but users can override.**
5. Press **Save**.
6. You'll need to change this setting for each policy.

## Disable open federation

Open federation allows your users to communicate externally in Microsoft teams, allowing external organizations to start a conversation with your users and vice versa, which is useful for collaboration, but also for attackers to directly communicate with your organization if they know a victims email address.
[Learn more](/microsoftteams/manage-external-access) (detailed documentation)

1. **Login** to the Teams admin center at: <https://admin.teams.microsoft.com/>.
2. On the left-hand navigation, expand **Users** and then choose **External access**.
3. Under the **Teams and Skype for Business users in external organizations** heading, select the **Choose which external domains your users have access to** dropdown and set this to **Allow only specific external domains**.
4. Enter any external domains users should be able to communicate with by pressing **Allow domains,** using the flyout, and pressing **Done** when finished.
5. Press **Save**.

## Learn More

Consider configuring access policies to implement Zero Trust identity and device access policies to protect Microsoft Teams chats, groups, and content such as files and calendars.

Learn more about teams access policies: [Recommended Teams policies - Microsoft 365 for enterprise - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/teams-access-policies)

Security in Microsoft Teams:[Overview of security and compliance - Microsoft Teams | Microsoft Docs](/microsoftteams/security-compliance-overview)
