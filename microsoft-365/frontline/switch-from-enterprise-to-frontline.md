---
title: Changing from a Microsoft 365 E plan to a Microsoft 365 F plan
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn about the things to consider and how to prepare if you're switching some of your users from a Microsoft 365 E plan to a Microsoft 365 F plan. 
ms.localizationpriority: high
ms.collection:  
  - M365-collaboration
  - Teams_ITAdmin_FLW
  - m365-frontline
  - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 06/27/2024
---

# Changing from a Microsoft 365 E plan to a Microsoft 365 F plan

If you're considering switching some of your users from a Microsoft 365 E plan to a Microsoft 365 [F3](https://www.microsoft.com/microsoft-365/enterprise/frontline-plans-and-pricing) or [F1](https://www.microsoft.com/microsoft-365/enterprise/frontline-plans-and-pricing) plan, this article provides guidance to help you prepare your organization for the change. Changing from an E plan to an F plan affects the services and features users have access to.

E plans are meant for information workers (employees who typically work at a desk) and F plans are meant for frontline workers (employees who are on the go, often on mobile devices, and work directly with customers or the general public). Each plan may continue to evolve over time to become more tailored for information workers and frontline workers respectively. To learn more, see [Understand frontline worker user types and licensing](flw-licensing-options.md).

You'll get an overview of what to expect when users are switched to an F plan, how to prepare for the change, and what to do after switching plans to transition the frontline workers in your organization.

## Understand the key differences between E and F plans

Start by getting familiar with the service and feature differences between the plans.

Some key differences include:

- F plans don't include Microsoft 365 desktop apps.
- F plans are limited to devices with integrated screens smaller than 10.9 inches on Microsoft 365 for mobile apps.
- F plans with Teams [pin frontline worker apps](pin-teams-apps-based-on-license.md) like Viva Connections as a home experience, Walkie Talkie, Shifts, Planner, and Approvals by default in Teams.

In this section, we provide more information about these key differences and highlight some other differences to pay attention to. Keep in mind that this isn't a comprehensive list. To learn more:

- See [Modern work plan comparison](https://go.microsoft.com/fwlink/p/?linkid=2139145) for a detailed comparison of what's included in E and F plans.
- See [service availability](/office365/servicedescriptions/office-365-platform-service-description/office-365-plan-options#service-availability-within-each-microsoft-365-and-office-365-plan) and [feature availability across plans](/office365/servicedescriptions/office-365-platform-service-description/office-365-platform-service-description#feature-availability-across-some-plans) for a list of service and feature availability across E and F plans.

### Microsoft 365 apps

Desktop client apps aren't included in F3 and F1 plans. Your frontline workers can use Microsoft 365 for the web and Microsoft 365 mobile apps to get things done. Keep in mind that F3 users have full access to documents in Microsoft 365 for the web and mobile apps and F1 users have read-only access.

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Desktop client apps (Word, Excel, PowerPoint, OneNote, Outlook, Access, Publisher)|Yes|No|No|No|No|
|Microsoft 365 for the web |Yes|Yes|Yes|Read-only|Read-only|
|Microsoft 365 for mobile |Yes|Yes<sup>1</sup>|Yes<sup>1</sup>|Read-only|Read-only|
|Visio for the web|Yes|Yes|Yes|Read-only|Read-only|

<sup>1</sup>Limited to devices with integrated screens less than 10.9 inches.

#### Microsoft 365 for the web

With Microsoft 365 for the web, your frontline workers use a web browser to open Word, Excel, OneNote, and PowerPoint files.

Here's some differences to be aware when using Microsoft 365 for the web. For a detailed feature comparison between Microsoft 365 for the web and desktop apps, see the [service description](/office365/servicedescriptions/office-online-service-description/office-online-service-description).

|Service or feature|Some differences |Learn more|
|---------|---------|---------|
|**Word for the web**|<ul><li> Can open and edit macro-enabled documents (.docm) and templates (.dotm) but macros don't run.</li><li>Can open but not edit Information Rights Management (IRM)-protected documents.</li></ul>|<ul><li>[Word for the web service description](/office365/servicedescriptions/office-online-service-description/word-online)</li><li>[Word Features Comparison: Web vs Desktop](https://support.microsoft.com/office/differences-between-using-a-document-in-the-browser-and-in-word-3e863ce3-e82c-4211-8f97-5b33c36c55f8)</li></ul>|
|**Excel for the web**|<ul><li>Can open and edit macro-enabled workbooks (.xlsm) but macros don't run.</li><li>[File size limitations](https://support.microsoft.com/office/file-size-limits-for-workbooks-in-sharepoint-9e5bc6f8-018f-415a-b890-5452687b325e)<ul><li>To view or interact with a workbook stored in SharePoint Online, the workbook must be less than 100 MB.</li><li>To open a workbook that's attached to an email message in Outlook on the web, the workbook must be less than 10 MB.</li></ul></ul>|<ul><li>[Excel for the web service description](/office365/servicedescriptions/office-online-service-description/excel-online)</li><li>[Differences between using a workbook in the browser and in Excel](https://support.microsoft.com/office/differences-between-using-a-workbook-in-the-browser-and-in-excel-f0dc28ed-b85d-4e1d-be6d-5878005db3b6)</li><li>Most Excel functions work in a browser as they do in Excel. For a list of exceptions, see [Functions in Excel and in Excel for the web](https://support.microsoft.com/office/differences-between-using-a-workbook-in-the-browser-and-in-excel-f0dc28ed-b85d-4e1d-be6d-5878005db3b6#__functions).</li></ul>|
|**OneNote for the web**|<ul><li>Search is limited to the current section.</li><li>Zoom in and out isn't available. Instead, users can use their browser's zoom feature.</li></ul>|<ul><li>[OneNote for the web service description](/office365/servicedescriptions/office-online-service-description/onenote-online)</li><li>[Differences between using a notebook in the browser and in OneNote](https://support.microsoft.com/office/differences-between-using-a-notebook-in-the-browser-and-in-onenote-a3d1fc13-ac74-456b-b391-b633a62aa83f)</li></ul>|
|**PowerPoint for the web**|<ul><li>Can open files up to 2 GB.</li><li>Can open and edit macro-enabled presentations (.pptm, .potm, .ppam, .potx, .ppsm) but macros don't run.</li></ul>|<ul><li>[PowerPoint for the web service description](/office365/servicedescriptions/office-online-service-description/powerpoint-online)</li><li>[How certain features behave in web-based PowerPoint](https://support.microsoft.com/office/how-certain-features-behave-in-web-based-powerpoint-a931f0c8-1305-4428-8f7c-9cfa00ef28c5)</li></ul>|

#### Microsoft 365 for mobile

Your frontline workers can get Word, Excel, and PowerPoint on their mobile devices in two ways:

- Install the Microsoft 365 mobile app that combines Word, Excel, and PowerPoint.
- Install individual mobile apps for Word, Excel, PowerPoint, and OneNote.

To learn more, see [Install and set up Microsoft 365 apps on Android](https://support.microsoft.com/office/install-and-set-up-office-on-an-android-cafe9d6f-8b0c-4b03-b20a-12438a82a22d) and [Install and set up Microsoft 365 apps on an iPhone or iPad](https://support.microsoft.com/office/install-and-set-up-office-on-an-iphone-or-ipad-9df6d10c-7281-4671-8666-6ca8e339b628).

For more information about the features that are available in Microsoft 365 apps on mobile devices, see [What you can do in Microsoft 365 apps on mobile devices with a Microsoft 365 subscription](https://support.microsoft.com/office/what-you-can-do-in-the-microsoft-365-apps-on-mobile-devices-with-a-microsoft-365-subscription-9ef8b63a-05fd-4f9c-bac5-29da046833ea).

#### Email

F3 users have a 2 GB mailbox that they can access through Outlook on the web. For a feature comparison between Outlook on the web and the Outlook desktop app, see [Compare Outlook for PC, Outlook on the web, and Outlook for iOS & Android](https://support.microsoft.com/office/compare-outlook-for-pc-outlook-on-the-web-and-outlook-for-ios-android-b26a7bf5-0ac7-48ba-97af-984e0645dde5).

F1 users don't have mailbox rights. Although a mailbox is provisioned for users through the Exchange Kiosk plan, they aren't entitled to use it. We recommend that you [disable Outlook on the web](/exchange/recipients-in-exchange-online/manage-user-mailboxes/enable-or-disable-outlook-web-app) for F1 users.

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Exchange Online mailbox|Yes (100 GB mailbox)|Yes (2 GB mailbox)|Yes (2 GB mailbox)|No<sup>1</sup>|No<sup>1</sup>|
|Outlook desktop app|Yes|No|No|No|No|
|Archive mailbox|Yes|No|No|No|No|
|Delegate access|Yes|No|No|No|No|

<sup>1</sup>F1 includes the Exchange Kiosk plan to enable Teams calendar only and doesn't include mailbox rights.

To learn more, see [Exchange Online service description](/office365/servicedescriptions/exchange-online-service-description/exchange-online-service-description).

#### Teams

F3 and F1 plans with Teams include the Teams desktop app, mobile app, and web app for frontline worker communication and collaboration. With an F3 or F1 plan that includes Teams, your frontline workers have access to Teams features including meetings, chat, channels, content, and apps. However, they won't be able to use Teams Phone capabilities without the purchase of an additional add-on.

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Town hall|Available by adding Teams Enterprise or Teams EEA|No|No|No|No|
|Webinars|Available by adding Teams Enterprise or Teams EEA|No|No|No|No|
|Teams Phone Standard| E3: No</br>E5: Available by adding Teams Enterprise or Teams EEA|No|No|No|No|
|Teams Phone Standard for Frontline Workers|N/A|Can be added|N/A|Can be added|N/A|

#### SharePoint

F3 and F1 users can collaborate on documents and access organization-wide resources such as training materials stored in SharePoint. Keep in mind that F3 and F1 plans don't include site mailboxes or personal sites.

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Site mailbox|Yes|No|No|No|No|
|Personal site|Yes|No|No|No|No|

To learn more about SharePoint limits by plan, see [SharePoint limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits).

#### OneDrive

F3 and F1 users have 2 GB of OneDrive storage to store and share files. To learn more, see [OneDrive service description](/office365/servicedescriptions/onedrive-for-business-service-description).

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|OneDrive|1+ TB storage<sup>1</sup>|2 GB storage|2 GB storage|2 GB storage|2 GB storage|

<sup>1</sup>Up to 5 TB of initial OneDrive storage per user based on the [default quota](/sharepoint/set-default-storage-space) for the tenant. More storage can be requested. Subscriptions for fewer than five users receive 1 TB of OneDrive storage that can't be expanded.

#### Content services

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Microsoft Forms|Yes<sup>1</sup>|Yes<sup>1</sup>|Yes<sup>1</sup>|No|No|

<sup>1</sup>Licensed users can create, share, and manage forms. A license isn't needed to complete or respond to a form.

#### Project and task management

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Microsoft Planner|Yes|Yes|Yes|Yes|Yes|
|Microsoft To Do|Yes|Yes|Yes|No|No|

#### Microsoft Viva

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Viva Connections – dashboard, feed, resources, and Teams app|Available by adding Teams Enterprise or Teams EEA|Yes|No|Yes|No|
|Viva Engage – communities, conversations, and storyline|Yes|Yes|Yes|Yes|Yes|
|Viva Learning in Teams|Available by adding Teams Enterprise or Teams EEA|Yes|No|Yes|No|
|Viva Insights app in Teams|Available by adding Teams Enterprise or Teams EEA|Yes<sup>1</sup>|No|Yes<sup>1</sup>|No|

<sup>1</sup>Limited to Reflect, Headspace, Send Praise, Virtual Commute, Microsoft To Do (F3 only).

#### Automation, app building, and chatbots

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Power Apps for Microsoft 365|Yes|Yes|Yes|No|No|
|Power Automate for Microsoft 365|Yes|Yes|Yes|No|No|
|Copilot Studio for Teams|Available by adding Teams Enterprise or Teams EEA|Yes|No|No|No|
|Dataverse for Teams|Available by adding Teams Enterprise or Teams EEA|Yes|No|No|No|

#### Windows

|Service or feature|Microsoft 365 E3/E5 (no Teams)|Microsoft 365 F3 (with Teams)|Microsoft 365 F3 (no Teams)|Microsoft 365 F1 (with Teams)|Microsoft 365 F1 (no Teams)|
|---------|---------|---------|---------|---------|---------|
|Windows 11 Enterprise|Yes|Yes<sup>1</sup>|Yes<sup>1</sup>|No|No|

<sup>1</sup>Virtualized Desktop Infrastructure (VDI) only for licensed users of a shared device with a Qualifying Operating System (except for Azure Virtual Desktop).

## What to expect

The following table lists important things to consider and recommended actions to take during the change process. Use this information to help you identify what to do before the switch and what to plan for after the switch is completed.

We'll be referring to this table in later sections of this article.

|Service or feature |Before the switch|After the switch|
|---------|---------|---------|
|Microsoft 365 apps| <ul><li>Identify files that are stored on users' local computers and help users move them to their OneDrive.</li><li>Keep in mind that desktop apps will go into reduced functionality mode after changing to an F plan. Be prepared to uninstall the desktop apps after the switch.</li></ul>| Users:</br> <ul><li>Sign in to [microsoft365.com](https://www.microsoft365.com/) to access Microsoft 365 for the web.</li><li>[Install and use Microsoft 365 mobile apps](https://support.microsoft.com/office/set-up-office-apps-and-email-on-a-mobile-device-7dabb6cb-0046-40b6-81fe-767e0b1f014f) (if not already).</li><li>Users can also directly collaborate on documents from SharePoint document libraries, OneDrive, Teams, and Viva Engage.</li></ul>Admins:<ul><li>Uninstall desktop apps from users' computers.</li></ul>      |
|Email, Exchange, Outlook|<ul><li>Identify user mailboxes over 2 GB by using the [Get-MailboxStatistics](/powershell/module/exchange/get-mailboxstatistics?view=exchange-ps&preserve-view=true) Exchange PowerShell cmdlet, and then reduce mailbox size, as needed. To learn more, see [Mailbox storage limits in Outlook on the web](https://support.microsoft.com/office/mailbox-storage-limits-in-outlook-on-the-web-f170fe90-b859-4034-bcda-e186fc6a26f5).</li><li>If users have an archive mailbox:</li><ul><li>Move archive mailbox content back to the user's mailbox.</li><li>Check for any archive policies that might automatically move email based on the age of messages by using the [Get-EXOMailbox](/powershell/module/exchange/get-exomailbox?view=exchange-ps&preserve-view=true) Exchange Online PowerShell cmdlet.</li></ul> <li>Identify site mailbox access and usage.</li><li>Outlook desktop app, data, and configuration:</li><ul><li>Identify users and computers that are using Outlook data (.pst) files.</li><li>Identify and document existing Outlook client-only rules.</li><li>Export email signatures.</li></ul></ul>|Users:</br><ul><li>Sign in to [microsoft365.com](https://www.microsoft365.com/) to access Outlook on the web.</li><li>[Set up email on mobile devices](https://support.microsoft.com/office/set-up-office-apps-and-email-on-a-mobile-device-7dabb6cb-0046-40b6-81fe-767e0b1f014f) (if not already).</li><li>Check and update mail signatures.</li><li>Check and update mailbox rules.</li></ul>Admins:<ul><li> [Disable Outlook on the web](/exchange/recipients-in-exchange-online/manage-user-mailboxes/enable-or-disable-outlook-web-app) for F1 users and ask them not to access the mailbox through any other methods.</li></ul>|
|Teams | <ul><li>Identify usage of town halls and webinars.</li><li>Identify users who have Teams Phone enabled. If users are using this feature, they might not be the appropriate set of users to transition to an F plan. To continue using Teams Phone functionality, purchase and assign [Teams Phone Standard for Frontline Workers licenses](/microsoftteams/teams-add-on-licensing/microsoft-teams-add-on-licensing#purchase-the-teams-phone-standard-for-frontline-workers-license) for appropriate F plan users.</li></ul>      ||
|OneDrive | <ul><li>Identify users who are using more than or close to 2 GB of storage. (OneDrive will become read-only for users who are over the 2 GB limit after the switch to an F plan.)</li><li>Help users reduce the number of files stored in OneDrive and the overall amount of storage used.</li><li>Make sure all files are fully synchronized from users' computers to OneDrive.</li></ul>| |

## Prepare to switch plans

### Create a change management strategy

An optimal change management strategy includes how you'll communicate with, train, and support your users before and after you switch them to an F plan. For example, here are a few things to consider:

- How will users be aware of the switch?
- How will users learn to navigate the differences in services and features? The switch to an F plan might need an increased effort in training as it requires a change in behavior.
- How will users get help and support?

When building your strategy, consider communication and training preferences. To help ensure a successful transition, tailor your messaging, training, and support to the specific needs of your frontline workforce and company culture.

Here's some ideas to help plan your strategy.

|Communication|Training|Support|
|---------|---------|---------|
|<ul><li>Email</li><li>Department or store managers</li><li>Champions</li><li>Teams and channels</li><li>Viva Engage communities</li></ul> |<ul><li>Microsoft online help, training, and video resources</li><li>In-house training</li></ul>|<ul><li>In-house helpdesk</li><li>Self-serve intranet site</li><li>Microsoft online help, training, and video resources</li><li>Floor walkers and champions</li></ul>         |

You might also want to check out these adoption resources to help you engage and train your users:

- [Microsoft 365 – Microsoft Adoption](https://adoption.microsoft.com/microsoft-365/)
- [Teams for frontline workers – Microsoft Adoption](https://adoption.microsoft.com/microsoft-teams/frontline-workers/)

### Back up or prepare data

Identify and back up or prepare data that users want to keep. Follow the guidance in the [What to expect](#what-to-expect) section earlier in this article and complete the recommended actions in the **Before the switch** column of the table for each of the following components:

- Microsoft 365 apps
- Email, Exchange, Outlook
- Teams
- OneDrive

For more information, see [Back up data before changing plans](/microsoft-365/commerce/subscriptions/move-users-different-subscription#back-up-data-before-changing-microsoft-365-for-business-plans).

## Switch users to a Microsoft 365 F plan

You can use the Microsoft 365 admin center to manually change plans or a scripted approach through PowerShell cmdlets. Whichever method you choose, it's important to complete the license change assignment in one operation. In other words, remove an existing E license and replace it by assigning an F license in the same operation.

Avoid removing an existing license for a user and then reassigning a new one at a later point in time. Doing this can affect a user's data. To learn more, see [What happens to a user's data when you remove their license?](../admin/manage/assign-licenses-to-users.md#what-happens-to-a-users-data-when-you-remove-their-license).

For step-by-step guidance on how to change plans in the Microsoft admin center, see [Change plans manually](/microsoft-365/commerce/subscriptions/upgrade-to-different-plan#change-plans-manually).

## What to do after switching plans

Follow the guidance in the [What to expect](#what-to-expect) section earlier in this article and complete the recommended actions in the **After the switch** column of the table for each of the following components:

- Microsoft 365 apps
- Email, Exchange, Outlook
- Teams
- OneDrive

Communicate to your users that the change is completed and let them know how to get help as defined in your change management strategy. You might want to include links to [help and learning resources](#user-setup-help-and-learning-resources) to support them in the transition.

## User setup, help, and learning resources

Here are some links to set up, help, and learning resources that you can share with your frontline workforce for training and support.

|App|Links |
|---------|---------|
|Microsoft 365 for the web|<ul><li>[Microsoft 365 for the web training](https://support.microsoft.com/office/office-for-the-web-training-e315b031-2bd5-40a1-99ca-264ebf2c8f96)</li><li>[Microsoft 365 for the web Quick Starts](https://support.microsoft.com/office/microsoft-365-quick-starts-25f909da-3e76-443d-94f4-6cdf7dedc51e?#ID0EBBH=Web)</li></ul>|
|Outlook on the web|<ul><li>[Get to know Outlook on the web](https://support.microsoft.com/office/get-to-know-outlook-on-the-web-3f1a229b-0d60-438f-b515-dd7a28026bc1)</li><li>[Get help with Outlook on the web](https://support.microsoft.com/office/get-help-with-outlook-on-the-web-cf659288-35cc-4c6c-8c75-e8e4317fda11)</li><li>[Outlook on the web videos](https://support.microsoft.com/office/learn-more-about-outlook-on-the-web-adbacbab-fe59-4259-a550-6cb7f85f19ec)</li></ul>|
|Microsoft 365 for mobile|Setup:</br><ul><li>[Set up Microsoft 365 apps and email on Android](https://support.microsoft.com/office/set-up-office-apps-and-email-on-android-6ef2ebf2-fc2d-474a-be4a-5a801365c87f)</li><li>[Set up Microsoft 365 apps and email on iOS devices](https://support.microsoft.com/office/set-up-the-office-app-and-outlook-on-ios-devices-0402b37e-49c4-4419-a030-f34c2013041f)</li></ul>Microsoft 365 mobile app help:<ul><li>[Microsoft 365 mobile app for Android](https://support.microsoft.com/office/microsoft-office-app-for-android-0383d031-a1c6-46c9-b734-53cd1d22765b)</li><li>[Microsoft 365 mobile app for iOS](https://support.microsoft.com/office/microsoft-office-app-for-ios-c8880c05-883a-46b6-ad32-9bffa31228d0)</li></ul>Individual mobile app help:<ul><li>[Word for Android Phones](https://support.microsoft.com/office/word-for-android-phones-help-764afb31-ad50-4645-8f51-820ecf731d8f), [Word for Android tablets](https://support.microsoft.com/office/word-for-android-tablets-help-8a0dcd56-fb32-4e0d-95d8-997c066125c8),[Word for iPhone](https://support.microsoft.com/office/word-for-iphone-help-d41a5299-f6fa-4cca-b529-46a8069c5796), [Word for iPad](https://support.microsoft.com/office/word-for-ipad-help-6567cf2a-c949-4213-912d-f7a14f6264c5)</li><li>[Excel for Android Phones](https://support.microsoft.com/office/excel-for-android-phones-help-f818cb37-bfac-485d-8480-363b3da40596), [Excel for Android Tablets](https://support.microsoft.com/office/excel-for-android-tablets-help-5f089a58-dfa5-4cdb-b93b-55deb638a469), [Excel for iPhone](https://support.microsoft.com/office/excel-for-iphone-help-b367819b-05b4-4a56-ab1c-678da62e1fd3), [Excel for iPad](https://support.microsoft.com/office/excel-for-ipad-help-6b5dc2e1-a8e4-48e6-bb69-cb9a3964bc91)</li><li>[PowerPoint for Android Phones](https://support.microsoft.com/office/powerpoint-for-android-phones-help-f6714e00-0ee2-48d1-bd3d-e1997565861f), [PowerPoint for Android Tablets](https://support.microsoft.com/office/powerpoint-for-android-tablets-help-2ada1d22-3784-4943-bc47-9d1ede42875c), [PowerPoint for iPhone](https://support.microsoft.com/office/powerpoint-for-iphone-help-754fcb37-783b-4e8a-afca-edb900221b8b), [PowerPoint for iPad](https://support.microsoft.com/office/powerpoint-for-ipad-help-b75ce3bb-03e3-46df-a792-647573fef84a)</li><li>[OneNote for Android](https://support.microsoft.com/office/microsoft-onenote-for-android-46b4b49d-2bef-4746-9c30-6abb5e20b688), [OneNote for iPhone](https://support.microsoft.com/office/microsoft-onenote-for-iphone-b93a0ea8-1285-4d31-a7c5-86a849731902), [OneNote for iPad](https://support.microsoft.com/office/microsoft-onenote-help-ipad-f44e5bcd-5203-4553-9de4-0c56e6500825)</li></ul>
|Teams|<ul><li>[Teams video training](https://support.microsoft.com/office/microsoft-teams-video-training-4f108e54-240b-4351-8084-b1089f0d21d7)</li><li>[Teams Help & Learning](https://support.microsoft.com/teams)</li></ul>|
