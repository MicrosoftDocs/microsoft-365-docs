---
title: "What's new in the Microsoft 365 admin center?"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection:
  - M365-subscription-management
  - Adm_O365
  - Adm_TOC
search.appverid:
  - MET150
  - MOE150
  - FRP150
description: "The Microsoft 365 admin center - learn about the features that were added this month."
ms.custom: 
- MACDashWhatsNew
- AdminSurgePortfolio
---

# What's new in the Microsoft 365 admin center

::: moniker range="o365-21vianet"

> [!NOTE]
> Some of the information in this article might not apply to Office 365 operated by 21Vianet.

::: moniker-end

We're continuously adding new features to [the Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/business-video/admin-center-overview), fixing issues we learn about, and making changes based on your feedback. Take a look below to see what's available for you today. Some features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, [try adding yourself to targeted release](manage/release-options-in-office-365.md).

And if you'd like to know what's new with other Microsoft cloud services:

- [What's new in Azure Active Directory](/azure/active-directory/fundamentals/whats-new)
- [What's new in the Exchange admin center](/Exchange/whats-new)
- [What's new in Microsoft Intune](/mem/intune/fundamentals/whats-new)
- [What's new in the Microsoft 365 compliance center](/Office365/SecurityCompliance/whats-new)
- [What's new in Microsoft 365 Defender](../security/mtp/whats-new.md)
- [What's new in the SharePoint admin center](/sharepoint/what-s-new-in-admin-center)
- [Office updates](/OfficeUpdates/)
- [How to check Windows release health](https://docs.microsoft.com/windows/deployment/update/check-release-health)

## April 2021

### Admin mobile app

### Manage licenses and bills from the Admin mobile app

- You can now view all available and assigned licenses for your subscriptions. You can also assign or un-assign licenses to users, and add or remove licenses.
- You can now view detailed invoices in the app.
- These updates are available on both [Android](https://go.microsoft.com/fwlink/p/?linkid=2159786) and [iOS](https://go.microsoft.com/fwlink/p/?linkid=2159787) devices.

:::image type="content" source="../media/assign-license-mobile-app2.png" alt-text="Screenshot: Admin mobile app assign license page":::
:::image type="content" source="../media/license-screen-mobile-app2.png" alt-text="Screenshot: Admin mobile app screen with users and their licenses":::
:::image type="content" source="../media/invoice-summary-mobile-app.png" alt-text="Screenshot: Admin mobile app invoice summary page":::

### Updated Message center feed in the Admin mobile app

- You now have a more flexible reading experience of the Message center feed. You now have the ability to filter messages based on service or tags and mark messages as favorite. Bulk actions for marking messages as read, unread or archived has also been added.
- These updates are available on both [Android](https://go.microsoft.com/fwlink/p/?linkid=2159786) and [iOS](https://go.microsoft.com/fwlink/p/?linkid=2159787) devices.

:::image type="content" source="../media/mc-feed-mobile-app.png" alt-text="Screenshot: Admin mobile app Message center feed page":::

## Ignite 2021 (March)

Welcome to Microsoft Ignite. We hope you were able to attend some of one of our sessions: [Microsoft Ignite 2021](https://myignite.microsoft.com/sessions). Here's a few of the things we talked about at Ignite.
> [!NOTE]
> Not all features are going to be available to everyone right away. If you aren't seeing the new features, [join Targeted Release](manage/release-options-in-office-365.md).

### Message center

We’ve revamped the Message center to help you discover relevant messages and added a more flexible reading experience. We've added a new **Service** column to help you scan which Service a message applies to and filter messages by Service and other metadata. You can favorite a message to mark it for follow up, choose which columns appear in the message list, and navigate between messages with the back and next buttons. We've also improved the process to make it easier to give feedback on Message center posts.

:::image type="content" source="../media/message-center.png" alt-text="Screenshot: Message center home page showing inbox and messages":::

To learn more about the new features, check out [Message center](manage/message-center.md).

### What's new features

We've made improvements to how you view the "What's new" features for users in the Office apps. You can now see the rich content in the Whats' new pane that your users can see. You can also learn more about the feature before you decide to let your users know about the feature. For more info, check out [Manage which Office‎ features appear in What's New](manage/show-hide-new-features.md).

:::image type="content" source="../media/power-bi-whats-new2.png" alt-text="Screenshot: Office apps what's new page showing improvements to Power BI":::

## Ignite 2020 (August & September)

Welcome to Microsoft Ignite - our first online-only Ignite. We hope to see you in one of our sessions: [Microsoft Ignite 2020 Session Catalog](https://myignite.microsoft.com/sessions). Here's just a few of the things we'll be talking about at Ignite.
> [!NOTE]
> Not all features are going to be available to everyone right away. If you aren't seeing the new features, [join Targeted Release](manage/release-options-in-office-365.md).

### Multi-tenant management

We've developed a set of features for multi-tenant admins like you to get your job done faster and more efficiently. For more information, see [Manage multiple tenants](multi-tenant/manage.md).

- **Your tenants**: Quickly switch between the tenants you manage.
- **All tenants**: A new page where you can quickly see the health of all your tenants' services, any open service requests, your products and billing, recommended setup tasks, and the number of users in that tenant.
- **Setup**: The multi-tenant Setup page gives you a list view of the Setup page, but organized for many tenants. You can see which features aren't turned on, which tasks are complete for all tenants, tasks that tenants still need to complete. This view will help you keep track of feature adoption and to make sure the recommended security setup tasks are always done.
- **Service health**: The service health view shows you if any incidents or advisories are affecting the tenants. It will even tell you how many of your managed tenants are affected. Just select an incident to get more information on the overview tab, then switch over to the Tenants affected tab to drill down and support that tenant.
- **Cross-tenant mailbox migrations** is a new service, now in public preview, that lets you move mailboxes between tenants without the need to offboard and then onboard mailboxes. 
- **Cross-tenant domain sharing**: Soon, you can join a private preview for capabilities that allow you to share a domain across multiple tenants. For example, if Contoso acquires Wingtip Toys, Contoso can share the domain with Wingtip Toys so that people in both tenants can use "contoso.com" as their email addresses.

![Service health page for multi-tenant with an incident selected and the Tenants affected tab open. The navigation menu has All tenants, Setup, and Service health as the only options.](../media/MAC-WN-MTinServiceHealth.png)

### Monitor your most important accounts

You can monitor and track failed or delayed email messages sent to your users who have a high business impact, like your CEO. You track priority accounts by adding users to your priority accounts list in the Microsoft 365 admin center. Add executives, leaders, managers, or other users who have access to sensitive or high priority information.

Priority accounts are only available to organizations that meet both of the following requirements:

- Office 365 E3 or Microsoft 365 E3, or Office 365 E5 or Microsoft 365 E5.
- At least 10,000 licenses and at least 50 monthly active Exchange Online users.

![Setup page for the feature: Monitor your most important accounts](../media/MAC-WN-PriorityAccounts.png)

There are two ways to get started:

- Go to **Users**, and then in the three dots (more actions) menu select **Manage priority accounts** to add users to the list.
- Go to **Setup**, find the setup task **Monitor your most important accounts**, and then select **Get started**.

For more info on priority accounts, check out [Monitoring priority accounts](./setup/priority-accounts.md).

### Search faster and get better results from any page

We've started rolling out a new Search experience for the admin center, and we can't wait for you to try it out.
![Search box has moved to the banner region. Alt+S to search from any page.](../media/MAC-WN-GlobalSearch.png)

- The Search box moved to the header area where it says "Microsoft 365 admin center" so you now search from any page, not just the Home page. We've even got a shortcut: **Alt+S**.
- Search is smarter and will give you better results, even faster. Try typing "2fa" to get started.
- Search results are organized by the type of item or action you can take.
  - **Users**: Select the user's name and you can edit that user right there. If you select the three dots (more actions) menu next to their name, you can reset their password. You can search by display name, last name, first name, username or primary email address, and email aliases. But to get an exact match, search by primary email address or username.
  - **Groups**: Edit the group from any page, add members, assign owners.
  - **Actions**: Similar to how you can search for a user and then reset their password, you can also search "reset password" from any page and then reset one or more passwords for users.
  - **Navigation**: Results under Navigation can quickly help you get to a page in the admin center quickly. For example, searching "roles" will take you to the Roles page for Azure AD roles.
  - **Settings**: Search for any setting related to your organization, the services you subscribe to, and security and privacy settings. 
  - **Domains**: You can find quick links to your domains, and then the link will take you to that domain's Overview and health page.
  - **Documentation**: If we can't find a result for you, we'll try to find some documentation to help. It takes a little longer for the curated list of articles to find a match, so wait a second to let Search find the results. 
  - **Feedback**: Didn't find what you were looking for? Send us feedback from Search. We will add searching functionality for more pages and more features across the admin center.

### Microsoft 365 admin mobile app

The [Microsoft 365 admin mobile app](https://www.microsoft.com/microsoft-365/business/manage-office-365-admin-app), which is included with your subscription, lets you manage Microsoft 365 from your mobile device so you can get away from your desk to do every day tasks. In fact, there are over 90 features in the app--and we just added a few more:

- **Support for Microsoft Intune's Mobile Application Management and Conditional Access policies**: You can now use your personal device to manage Microsoft 365 even if your org has turned on Intune's Mobile Application Management and conditional access policies.
- **Message center notifications**: Turn on message center notifications at **Settings** > **Notifications** if you wish to be alerted about new message center posts. Through notifications, we want to ensure you stay informed about important information and events across your tenant.
- **Billing alerts**: You can also turn on billing notifications at **Settings** > **Notifications** if you want to get billing notifications on your device if a subscription is about to expire.
- **Dark mode**: Welcome to the dark side of the mobile app. This was one of our most requested features. Go to **Settings** > **Themes** to turn it on.
- **Report an issue**: You can now report an issue in the app or view issues reported by other admins. Visit **Service health** to check it out.

![The Health page in Microsoft 365 admin app with notifications for message center, service health, billing alerts.](../media/MAC-WN-AdminMobileApp.png)

### Usage recommendations for small and medium businesses

Small and medium businesses might get a recommendation on the **Home** page if some of the people in the org aren't actively using Teams, OneDrive, or Office apps. When you view the recommendation, you can quickly email Microsoft training to inactive users to help them get started with the app and to make sure you are getting the full value from your subscriptions.

### Remote work collection

In October, we'll be adding a remote work collection to help small business owners and their staff get online and working remotely.  **Remote work essentials** setup is a curated list of all features Microsoft recommends to securely enable remote work and to collaborate effectively. In a couple of weeks, you can try it out in **Setup** > **Remote work essentials**.

![Remote work essentials page in Setup with 7 tasks not started.](../media/MAC-WN-RemoteWork.png)

For more information about how to securely allow remote work and a handy web address that's easy to remember and share, go to [aka.ms/remote-business](https://aka.ms/remote-business).

### Need help? moving to more admin centers

We're continuously looking at and updating the content and tools to keep up with changes in the product. We now have many more self-serve diagnostic tools to help you resolve issues quickly and efficiently. Here are a few that were recently added:

- Change your Exchange Web Service throttling policy
- Checking status of Teams provisioning and validation to specific users
- Fix DKIM setup issues
- Diagnose Intune user enrollment errors

And we are rolling out the new and improved support experience you already see in the Microsoft 365 admin center to some of the other admin centers. Teams Admin Center and Security and Compliance Admin Centers already have this new experience. And soon, **Exchange admin center**, **SharePoint admin center**, and **Office.com** will be updated along with this new help experience for admins.

### Manage changes with Microsoft Planner

In May, we announced that you'll soon be able to sync Message center posts to Microsoft Planner and now it's available for everyone to use.  You can now create tasks from messages, assign them, and track them to completion. The first time, you select **Planner syncing** you'll need to connect to the appropriate plan.

![Message center page with 'planner syncing' highlighted in the command bar next to the preferences button.](../media/MAC-WN-MCPlannerSync.png)

To learn more about it, check out this article and video to see how it works: [Track your message center posts in Planner](/Office365/Planner/track-message-center-tasks-planner)

### Documentation, Training, and Videos

- Brand new and just in time for Microsoft Ignite--[The Virtual Hub](https://adoption.microsoft.com/virtual-hub/). Deep dive into technical training for IT pros and developers. Quickly find around 20 new videos as part of #SIDETRACKED, the name of the Ignite admin track this year.
- [What's new with Microsoft 365](https://www.youtube.com/watch?v=OVjb2lGJ4GU&t=2s) video series: This month, we cover new features available in Whiteboard for Teams and on the web, how to automate user provisioning to Azure AD, new Power Automate triggers and actions in Teams, and more. And stay tuned for next month, where we'll have a recap of all the great things happening at Ignite!
- We did a redesign of the [Microsoft 365 documentation](/microsoft-365) page that focuses on solutions first. We'll highlight new solutions as they become available on this page, so keep an eye out.

![New landing page for Microsoft 365 solutions documentation with solutions like "Empower remote workers".](../media/MAC-WN-M365Docspage.png)

## July 2020

### Getting ready for Ignite 2020

As we're moving into Ignite season at Microsoft, we're not releasing as many features so that we have a lot to talk about during our sessions.

The next update to this article will be on opening day of our first online-only Ignite. And this year, it is free to attend! Check it out, get signed up: [Microsoft Ignite 2020](https://www.microsoft.com/ignite).

### Your products

There has been a lot of work done in the subscriptions management to make the page faster to load, faster to find what you're looking for, and to meet the web accessibility standards ([WCAG 2.1 guidelines](http://www.w3.org/TR/WCAG21/)).

- **Table redesign**: The table was redesigned so that you can group similar subscriptions. Go to **Billing** > **Your products**.
- **Product details**: Get more details than ever about your subscriptions by selecting the product in the list.
- **Do it all from here**: And you don't have to go to jump around several pages to manage one product. For example, if you need to cancel a subscription, the panel will open to do the action right there.

![Your Products page with the Cancel Subscription panel open.](../media/MAC-WN-SubscrDetails.png)

### Domains

Domain management can be complicated, and we've released a new feature to make that easier. Go to Settings > Domains and then select a domain to get more information about your domain and the domain's health.

:::image type="content" source="../media/MAC-WN-DomainDNS.PNG" alt-text="Domains details page for contoso.com":::

### Docs, training, and videos (July 2020)

[What's new with Microsoft 365](https://youtu.be/m1Nu8WJgCDY) video series: This month, we cover the new Yammer experience for web and mobile, how to integrate the Yammer Communities app for Microsoft Teams, new policy packages to support Firstline Workers and managers, and more.

## June 2020

### Keeping up with Office What's New management

A few months ago, we added a setting that lets you manage the What's New messages that show up in a user's Office apps. This month, we released a new Home page card that will help you act quickly and keep track of the **What's New** messages that you want shown to the users in your organization.

### Docs, training, and videos (June)

- [Getting started with Teams](../business-video/get-started-teams-small-business.md)

## May 2020

### New update channel for Office

On May 12, we announced the availability of a new update channel for Office:  Monthly Enterprise Channel. This update channel provides your users with new Office features once a month, on the second Tuesday of the month.

If you allow your users to self-install Office from the portal, you can select Monthly Enterprise Channel for them. To do this, sign in to the Microsoft 365 admin center and go to **Show all** >**Settings** > **Org settings** > **Services** > **Office software download settings**. If you select **Once a month (Monthly Enterprise Channel)**, then any new self-installs of Office will be configured to use Monthly Enterprise Channel.

In conjunction with the release of Monthly Enterprise Channel, we’re also revising the names of the existing update channels. For example, Monthly Channel is being renamed to Current Channel. The new names take effect on June 9, 2020.

For more information, see [Changes to update channels for Microsoft 365 Apps](/DeployOffice/update-channels-changes).

### New admin roles

We've added some new Azure Active Directory admin roles to the Microsoft 365 admin center.

- Hybrid identity admin role gives users permission to manage cloud provisioning and authentication services.
- Network admin role lets users manage network locations and review network insights for Microsoft 365 Software as a Service apps.
- Printer admin role grants permission to manage all aspects of printers and printer connections.
- Printer technician is a subset of the Printer admin role where those users can register and unregister printers, and update printer status.
To find out more about these roles, see [About admin roles](./add-users/about-admin-roles.md).

### Export groups list

We've heard from a lot of admins that they need to share information about groups and their usage to people who don't have access to the admin centers. You can now export the Groups list to a CSV file for auditing purposes, which means you can throw out that old PowerShell script. To try it out, go to **Groups** > **Groups**, and then select **Export groups** from the command bar.

### Microsoft 365 solution and architecture center

Just this month, we released a new site on [https://docs.microsoft.com]() called the [Microsoft 365 solution and architecture center](../solutions/index.yml), which brings together the technical guidance you need to understand, plan, and implement integrated Microsoft 365 solutions for secure and compliant collaboration. In this center, you'll find:

- Foundational solution guidance
- Workload solutions and scenario guidance
- Solution and architecture illustrations (The posters!!!)
- Industry specific guidance
- Enterprise architecture design principals

### Docs, training, and videos (May)

- **What's new in Microsoft 365 video series**: This month, we cover the new support experience in the Teams admin and Security and Compliance Centers, Planner integration with the Message Center, and the new 3x3 video layout in Microsoft Teams. 
- The [Microsoft 365 admin center help](./index.yml) hub page was updated to help you find what you need more quickly. And if you go look at that page right now, we've added a card to inform you of important updates and changes.

## April 2020

### Intune roles management

[April 2020](#april-2020)

Well, we did it! We've taken the second step towards a unified roles experience and you can now manage Intune roles in the Microsoft 365 admin center. You can also leverage features such as the ability to search for roles and view role permissions. This means you don’t need two separate tools to manage roles for Microsoft 365 and Intune. When you sign into the Microsoft 365 admin center, you’ll see that there are two pivots on the Roles page, one for Azure AD and one for Intune.

![Roles page with the Intune pivot selected](../media/MAC-WN-IntuneRoles.png)

### Sync Message Center posts to Planner

Starting in May, admins who are in Targeted release will start seeing the "Planner syncing" button in the message center. You can now track messages that need action, select the type of messages you'd like to track, assign messages to track as tasks, and tag messages for later attention.

[Join Targeted Release](manage/release-options-in-office-365.md) to get started!

### "Need help?" launched in Teams admin center & Security and Compliance centers

The Teams admin center, Security center, and Compliance center are now using the same "Need help?" feature that the Microsoft 365 admin center uses for finding help and contacting support. We've received a lot of feedback from admins that you wanted the same level of help and support and we're happy to bring that to you. Try it out and give us your feedback!

#### Need chat?

Our support agents have been working from home while still taking customer cases and limitations on internet bandwidth while working from home can impact customer call quality. In order to continue supporting you, we have launched live chat support option for commercial customers in the Microsoft 365 admin center.

While creating a service request, you'll now see chat as an option, in addition to phone and email. Select chat as a preferred channel of communication and create the request. Once you've created the  request, you can start the chat when you are ready to chat with Microsoft agents.

### Teams updates

With the increased usage of Teams, we've added a few features to help you manage them.

- A new recommendation card on the admin center Home page shows which users have not actively used Teams for 30 days. You can send those users a training email to get them started using Teams.
- **Bring people together with teams**: Go to **Setup** to see a new page to help you turn on Teams for licensed users and allow guest access, so you can work with external customers in Teams.
- A Microsoft Teams card is now pinned by default to your Home page. It shows whether Teams is turned on, and if guest access is allowed. It also allows you to check the setup status for newly licensed Teams users, and check if network issues might be impacting Teams users.
- Finally, Teams is now a step in the initial set up flow if you purchased a license that includes Teams.

### Productivity score

Productivity Score gives insights about how people use Microsoft cloud services and the technology experiences that support them. The score reflects your organization’s performance against employee and technology experience measures and compares your score with organizations like yours. This month, we are introducing the following new concepts to the preview experience:

- Trend view of primary insights on home page and category detail pages
-Endpoint Analytics and Network Connectivity categories added to Technology Experience
- Relevant Technology Experience insight shown in Employee Experience categories
- New Communications category as part of Employee Experience
- User details with organizational metadata in Employee Experience categories

If you'd like to learn more, check out the blog: [Measure and improve the Microsoft 365 experience with Microsoft Productivity Score](https://techcommunity.microsoft.com/t5/microsoft-365-blog/measure-and-improve-the-microsoft-365-experience-with-microsoft/ba-p/1348618). Productivity score is currently in private preview. [Join the Productivity score private preview](https://aka.ms/productivityscorepreview) to get started.

### Groups updates

We've got two updates for Groups this month:

- You can now edit email addresses for Office 365 groups (Also known as Groups in Outlook, and soon to be known as Microsoft 365 groups).
- We've heard your feedback and we've added clearer error messaging for why you can't convert a group to a Microsoft Team.

### Docs, videos, and training (April)

**What's new in Microsoft 365 video series**: This month, we cover tips and resources to help small businesses transition to remote work including how to roll out Microsoft Teams, remote work training resources to stay connected with clients and partners, and the new Microsoft 365 Business Voice plan. [What's New in Microsoft 365](https://go.microsoft.com/fwlink/p/?linkid=2118096)

#### For your users

- [Schedule a meeting](../business-video/schedule-guest-meeting.md)
- [Join a Teams meeting](https://support.microsoft.com/office/078e9868-f1aa-4414-8bb9-ee88e9236ee4)
- [Create an org-wide team](../business-video/org-wide-team.md)
- [Create a Team with guests](../business-video/team-with-guests.md)
- [Join a Team as a guest](../business-video/join-team-guest.md)
- [Create a group email address](../business-video/group-email.md)

#### For admins and business owners

- [Empower your small business with remote work](https://support.microsoft.com/office/9b91a85a-39b4-40a6-a590-0f9bea0ba8e6)
- [Running a remote small business](../business-video/sign-up.md)
- [Sign up for Microsoft Business Basic](../business-video/sign-up.md)
- [Setting up two-factor sign-in](../business-video/sign-up.md)

## March 2020

### Featured Feedback Fix: Improve "add user" reliability for licensing

We received a lot of feedback from admins about the how hard it is to assign licenses when adding users. We've made the first update to this fix and we've migrated to a more reliable behind-the-scenes service to process those requests. And if something goes wrong, you'll now get an error message that lets you to try again.

![Add user confirmation page with the error.](../media/MAC-WN-ImprovedLicensing.png)

### Microsoft Teams home page card

With the uptick in Teams usage, some orgs will get a pinned dashboard card that makes turning Teams on more discoverable. The card also has links to training and docs to help your org transition to remote work. Just go to the **Home** page to see the new card.

![Microsoft Teams home page card](../media/MAC-WN-TeamsCard.PNG)

### Customize your organization's SharePoint mobile app theme

Using the Microsoft 365 admin center, you can now customize your organization's theme in SharePoint mobile app for iOS and SharePoint mobile app for Android. This feature conveniently provides a mobile intranet app experience that can match your SharePoint Online for employees on the go. Theme customization includes your logo image, navigation bar color, text and icon colors, and accent colors, making for easy recognition.

![Diagram mapping the admin center settings to the mobile app.](../media/MAC-WN-CustThemeSP.png)

### Improvements to the "Add a group" wizard

When admins created a new group - and made it a Team at they same time, they could assign owners who don't have a license that includes Teams. And that created some headaches. We've updated the wizard flow to verify that owners have a Teams license and if they don't the option to turn the group into a Team is disabled.

### Microsoft 365 offerings for small and medium businesses

We know that this is an announcement for next month, but we want to make sure you're prepared.

Starting on April 21, we're making changes related to our Office 365 subscriptions for small and medium businesses – and to Office 365 ProPlus. These products will now use the Microsoft 365 brand.

The new product names go into effect on April 21, 2020. This is a change to the product name only, and there are no pricing or feature changes at this time.

|Current name |New name  |
|---------|---------|
|Office 365 Business Essentials     |   Microsoft 365 Business Basic      |
|Office 365 Business Premium     |    Microsoft 365 Business Standard     |
|Microsoft 365 Business     |    Microsoft 365 Business Premium     |
|Office 365 Business     |    Microsoft 365 Apps for business       |
|Office 365 ProPlus    |   Microsoft 365 apps for enterprise      |

### Videos, training, and docs

[What's New in Microsoft 365 web series](https://go.microsoft.com/fwlink/p/?linkid=2118096): In this month's episode, we highlight the 3-year anniversary of Microsoft Teams and cover new features including improved audio quality in online meetings, Targeted Communications for firstline managers with the Shifts app, Teams and Skype consumer interoperability, and more.

## February 2020

### Featured Feedback Fix: Multi-organization switcher

We received a lot of feedback from partners and admins about the challenges of managing multiple Microsoft cloud orgs. One of our first multi-org management features is the **Organization switcher**, which lets you change between the orgs that you manage in just 2 clicks.
> [!TIP]
> You don't have to do anything to make the organization switcher appear as long as you are the Partner of record for at least one organization.

1. In the Microsoft 365 admin center, select the org name.
![Screen capture: top of the Home page showing organization profile name with the switcher icon.](../media/MAC-Organization-switcher.png)

2. In the organization switcher, select the org you want to manage.
![Screen capture: My organizations tenant switcher with Consolidated Messenger tenant highlighted](../media/MAC-OrgSwitcherSelected.png)

That's literally it!!!

### Groups

A couple of changes in the groups area this month:

- **Sort by group name**: You can sort the groups list alphabetically, by selecting the **Group name** column.
- **Restore deleted Microsoft 365 groups**: You don't have to go to the Exchange admin center anymore to restore  deleted Microsoft 365 groups. Go to **Microsoft 365 admin center** \> **Groups** \> **Deleted groups** \> (select a group from the list) \> **Restore group**. It'll restore the group back to the **Groups** list and restore the group's email, conversations, notebook, files, and calendar.

### Videos, training, and docs (February)

- **What's new in Microsoft 365 video series**: This month, we're focused on custom search capabilities for SharePoint Online, the Office "What's New" management feature that lets you show or hide specific features from end-users via the in-app help pane, the latest security and compliance updates in Yammer, and more. Here's the latest episode: [What's New in Microsoft 365](https://go.microsoft.com/fwlink/p/?linkid=2118096)

- **Docs move**: We combined the Office 365 admin web articles with the Microsoft 365 content and you might've noticed the new URL. For example, this article used to be hosted at: **docs.microsoft.com/Office365/Admin/whats-new-in-preview**, but the URL is now: **docs.microsoft.com/microsoft-365/admin/whats-new-in-preview**. If you've bookmarked pages, you should update your links; however, content links will be redirected to the new content repo.
