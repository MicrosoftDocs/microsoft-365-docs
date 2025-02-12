---
title: "Organizational messages in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 11/18/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
search.appverid:
- MET150
- MOE150
description: "Learn how to send messages to your organization in Microsoft 365 using organizational messages in the Microsoft 365 admin center."
---

# Organizational messages in the Microsoft 365 admin center

As an admin, you can now connect with your organization through customized messages using organizational messages, available in the Microsoft 365 admin center under **Reports**. This feature allows you to create and manage messages, and review delivery reports, all from a central location. Organizational Messages enhance in-product experiences, supporting remote and hybrid work scenarios, such as providing educational materials for employees, information on Microsoft 365 service or license availability, and updates on organizational initiatives. Use the power of organizational messages in the Microsoft 365 admin center to streamline your outreach within Microsoft products.

To get started, go to [organizational messages in the Microsoft 365 admin center](https://aka.ms/organizationalmessagesportal).

>[!NOTE]
> As of November 19, 2024, Organizational Messages in the Microsoft 365 admin center is now in general availability.

## What can I do with organizational messages?

Organizational messages’ centralized experience within Microsoft 365 admin center includes the following features and capabilities:

- Create messages from scratch (for example, free text entry)

- Use or edit premade template messages from Microsoft

- Send messages to Windows 10/11 and Microsoft 365 app locations, such as Windows Spotlight and Teams teaching popover (or coachmark)

- Save draft messages

- Reject or Approve customized messages

- Add images or icons to messages

- Specify custom destination URLs

- Configure delivery schedules and parameters for messages, including via urgent messages configuration

- Assign targeting via Microsoft Entra user groups and advanced targeting options, such as [Group Level Aggregate-based targeting](/microsoft-365/admin/adoption/group-level-aggregates)

- Manage messages created in Microsoft 365 admin center and other portals, including [Usage reports](/microsoft-365/admin/activity-reports/microsoft-365-copilot-organizational-messages)

- Review message performance with time series data

## Setup requirements

Before working with organizational messages, make sure your team satisfies the following requirements:

- **Tenant** see [Setting tenant policies](#setting-tenant-policies).

- **Authors** anyone in your organization who wants to create messages must have one of these following admin roles assigned to them within Microsoft 365 admin center:

  - [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator)

  - [Organizational Messages Writer](/azure/active-directory/roles/permissions-reference#organizational-messages-writer)

- **Approvers** anyone in your organization who is designated a responsible party for approving customized messages must have one of these following admin roles assigned to them within Microsoft 365 admin center:

  - [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator)

  - [Organizational Messages Approver](/entra/identity/role-based-access-control/permissions-reference#organizational-messages-approver)

- **Message recipients** anyone in your organization who might receive messages from your authors must have access to the Microsoft products to which the messages are configured to be delivered. (End users aren't required to have any Microsoft Entra roles to receive organizational messages.)

  - For example, any message configured to be delivered to a Windows channel, like Windows Spotlight, requires that recipients use **Windows 11 Enterprise**.

> [!IMPORTANT]
> During our preview period, Organizational messages preview experiences weren't restricted based on the licenses held by participating tenants, authors, approvers, or message recipients. However, now that the product is in general availability, some organizational messages experiences are restricted to particular Microsoft licenses. To learn more, see [Advanced features](#advanced-features).

## Get started

:::image type="content" source="../../media/OM-LandingPage_annotated.png" alt-text="Screenshot showing the organizational messages landing page in the Microsoft 365 admin center with numbered annotations." lightbox="../../media/OM-LandingPage_annotated.png":::

There are three basic experiences to familiarize yourself with within the organizational messages centralized experience:

1. **Manage** – Where you and your team can see most of your organizational messages created in various portals, including Usage reports and Copilot advanced deployment guide within the Microsoft 365 admin center. Your team can also execute various functions on each message, view details, and conduct approval flows in the 'Manage' area.

2. **Create a message** – The wizard where anyone with the above-described Organizational Messages Writer Microsoft Entra role can go to create either fully customized or templatized messages.

3. **Review activity** – Where your admins can go to see the performance activity of messages that are or have been delivering to your users.

## Manage

You can review and control the messages from anyone in their organization using the main landing experience. Operations that admins can affect within the 'Manage' experience include:

- Filtering based on message status (such as Active), location (such as Windows Spotlight), or objective (such as Adoption); filtering using search on message name.

- Reviewing existing message details (such as language, targeting, among others).

- Understanding aggregate performance data per message.

- Cancelling, deleting, approving, copying messages.

### How to continue creating a draft message (Modify)

If you have the Organizational Messages Writer Microsoft Entra role as described previously, you can edit or otherwise complete a saved ‘draft’ message in your tenant. To do so:

1. Filter Status to **Draft**.

2. Select the message name of the message you want to edit.

3. In the message details panel, select **Modify**.

4. This takes you directly into the creation wizard where you can continue the creation of this draft message.

### How to approve or reject a ‘pending approval’ message

If you have the Organizational Messages Approver Microsoft Entra role as described previously, you can review and approve or reject messages from your colleagues that are in the ‘pending approval’ state. To approve or reject a ‘pending approval’ message:

1. Filter Status to **Pending approval**.

2. Select the message name of the message you want to review.

3. In the message details panel, read through all of the content provided by the author.

4. If you believe this message is appropriate for delivering to users in your tenant, you can optionally add a comment and select **Approve**.

5. However, if you believe the message is not ready or appropriate for delivering to your tenant’s users, you must add a comment in the text field and select **Reject**.

### How to overcome a rejected message (Withdraw)

If you have the Organizational Messages Writer Microsoft Entra role as described previously, you can overcome a rejection from the approvers in your tenant. To do so:

1. Filter status to **Rejected**.

2. On the message name of the rejected message you want to overcome, select **Withdraw**.

3. This sets the state of the rejected message to **Draft**.

4. From there, you can go to the message details panel, select **Modify**.

5. This takes you directly into the creation wizard where you can continue the creation of this draft message, once again sending for approval to return the message to approvers for review.

> [!NOTE]
>
> - Fully customized messages require an approver to ‘approve’ any message before it's delivered to your users. However, selecting a premade message won't require any approval from your organization before it can be delivered to end users.
> - Approvers can't approve or reject a message that they personally created.
> - ‘Rejecting’ a message marks the message state as 'Rejected', requiring an author to ‘Withdraw’ the message and then ‘Modify’ the new draft.
> - Messages that aren't reviewed (such as, approved, or rejected) by approvers before the set 'End date' of the message will automatically be rejected by the system to ensure minimum duration of delivery of messages are as expected by authors.

## Create a message

> [!IMPORTANT]
> Organizational messages deliver messages to end users within the time windows configured by admins via Microsoft 365 admin center experiences. However, occasionally, messages might not be delivered as expected due to system or user device conditions, such as urgent messages not being delivered to devices that are disconnected from the internet. In such instances, our system continues trying to deliver messages as possible and appropriate.

Users with the Organizational Messages Writer Microsoft Entra role described previously will have access to the **Create a message** button and capability in the centralized experience. Selecting this button invokes the wizard, which includes these primary creation steps:

- **Objective** for selecting the nature or purpose of your new message.

- **Location** for indicating to which in-product channel the message will be sent for your users.

- **Template** for choosing the format of the message, ‘create your own’ or a premade message from Microsoft.

- **Customize** for adding customization to the message, including full text and/or custom URLs.

- **Recipients** for setting the groups within your organization that should receive the message.

- **Schedule** for configuring the start and end dates as well as the frequency with which the system will send the message to the same user over time.

- **Finish** for reviewing the message before scheduling or sending for approval by your organization’s approvers.

> [!NOTE]
> To ensure tenant-based targeting, the organizational messages system might require up to 24-48 hours to establish any tenant that has not scheduled a message within the last 30 days.

### Choosing custom or premade messages

There are two primary forms of message creation that are enabled in this experience:

1. **Fully customized creation** (or 'create your own') – this is an open-ended format of entering in arbitrary content for messages, allowing your team to make messages that include your company name or other specifics that are unique to your company, group, or team. For example, an author can select ‘create your own’ and type all of the words of the message themselves.

> [!NOTE]
> The ability to create fully customized messages is enabled if your organization has at least one Microsoft license as described in the [Advanced features](#advanced-features) section.

2. **Premade messages** (or ‘templatized’ messages) – this is a method of selecting and customizing content that is partially created by Microsoft for general purpose use. For example, Microsoft might provide various generic messages that your team can pick and add your logo and URL to drive awareness of a software update.

### How to save and continue draft message

1. Notice that throughout the creation wizard, each step has a **Save and close** button.

2. You can select **Save and close** at any point to save the message as a new draft.

3. Once saved, you'll see your message at the top of the Manage table.

4. To go back to making your message, select the draft message’s name to invoke the message details panel.

5. Select **Modify** in the message details panel to continue creating that message in the creation wizard.

### How to enable targeting by Companies, Departments, Locations

The advanced targeting options of “Companies”, “Departments”, “Locations” in the **Recipients** step of the message creation flow are made possible by the group-level aggregates settings associated with Adoption Score. To learn more, see [Group Level Aggregates in Adoption Score](/microsoft-365/admin/adoption/group-level-aggregates).

This advanced targeting in organizational messages can be enabled using the following:

1. Go to **Settings** > **Org settings** within the Microsoft 365 admin center.

2. Select **Adoption Score**.

3. Under **Group data filtering**, select “Turn on group-level insights” and then “Save”.

4. Within **Adoption Score**, select the “Manage group-level filtering” button.

5. Select the “Organizational attributes” checkbox and then the “Turn on selected filters” button.

> [!NOTE]
> The ability to use advanced targeting options is enabled if your organization has at least one Microsoft license as described in the [Advanced features](#advanced-features) section.

### How to create a message by copying an existing message

1. Go the Manage experience and find a message you want to use as a starting point.

2. Select **Copy** function.

3. You're immediately placed within the creation wizard with relevant elements from the previous message copied over.

4. Edit as you like and complete the creation wizard or save as a draft.

> [!NOTE]
>
> - For the same channel (such as Windows Spotlight), images provided by your team for the last created message will be automatically provided for your next message. However, you can override that image with a new image upload.
> - Once you select ‘Send for approval’ at the end of a fully customized message creation flow, anyone in your tenant that has the Organizational Messages Approver Microsoft Entra role described previously will be able to review and approve/reject your message.
> - If you save your draft before the ‘Schedule’ step and thus don't provide a custom message name, the Draft will have a programmatically generated name based on the date-time when you saved the draft. You can edit this message name by modifying the draft message.
> - Not all selections in the ‘Objective’ step might have premade messages available. However, all objectives will have the “create your own’ format available for full customization authoring.

### Urgent delivery

For some time-sensitive communications, admins and other communicators might need to get a message out fast. For example, when an event is occurring on a corporate campus or a service outage has begun, admins might need to quickly broadcast such events to some employees so they can be prepared. To support communications in such events, admins in Microsoft 365 admin center will be able to select the ‘Urgent messages’ button in the “Top Actions” section.

The message creation experience for an urgent message is similar to the flow for creating other messages with these exceptions:

- The only locations available are Windows 10/11 Taskbar and Notifications area.
- Only Microsoft Entra (formerly Azure Active Directory) group targeting can be used.
- No Start/End dates nor frequency configurations are available as urgent messages are sent once as soon as possible.

:::image type="content" source="../../media/OM-urgentMessages_annotated.png" alt-text="Screenshot that highlights the button to send an urgent message.":::

## Review activity

As you can see upon visiting the centralized experience, the basic Manage table includes basic aggregate insights data for your messages (including Total messages seen, Total clicks, and Clickthrough rate). However, the centralized experience also includes advanced insights experiences, including:

- Filtering on time range, status, and other aspects,

- Graphing of selected date range,

- Data export to CSV

You'll also see three time-series data charts at the top, showing daily changes in the Total messages seen (or impressions), Total clicks, and Clickthrough rate for your messages.

### How to export data

If you or your team would like to work with your tenant’s message performance data, you can export it to a CSV file. To do so:

1. Set the filters, including time range, for the data you’re interested in retrieving.

2. Select the **Export to CSV** button and save the file locally.

## Advanced features

Starting with general availability, organizational messages will also introduce the concept of ‘advanced’ features. These experiences are ones within the Organizational messages Microsoft 365 admin center which have tenant and end user requirements as follows:

### Tenant - accessing advanced features when creating messages

Advanced features are accessible to admins within Organizational messages in Microsoft 365 admin center when their tenant has one of the following:

- Microsoft 365 E3-E5 licenses
- Office 365 E3-E5 licenses
- Windows 365 E3-E5 licenses

### End user – receiving messages with advanced features

End users within a tenant are eligible to receive messages created using advanced features when these end users personally have one of the following:

- Microsoft 365 E3-E5 license
- Office 365 E3-E5 license
- Windows 365 E3-E5 license

### Current advanced features

For general availability, the advanced features in Organizational messages in Microsoft 365 admin center are the following:

1. Fully customized message creation

> [!NOTE]
> In general availability, message authors whose tenant satisfies advanced feature requirements are able to Edit a templatized message within the message creation flow.

2. Advanced targeting – group level aggregates (Department, Location, Company)

## Setting tenant policies

>[!NOTE]
> If you recently onboarded your tenant to Microsoft Entra ID, it can take 36 to 64 hours before you're able to use the organizational messages features.

There are certain policies that will block the delivery of organizational messages to your end users if not configured properly, such as using [Microsoft Intune](https://intune.microsoft.com). This section describes some ways to adjust all policy settings for your tenant so that delivery is allowed and works as intended.

### General Instructions

To make policy changes on your tenant using Intune, your admin should:

1. Sign in to the Microsoft Endpoint Manager admin center for your tenant.
1. Configure the policies described below using a Microsoft Intune device restrictions profile template or the settings catalog.
1. Make sure to adjust these policies in all new and existing policies that are targeted at end users and devices that might receive organizational messages.
1. Enable Organizational Messages Policy

>[!NOTE]
> This policy is required for devices running [Windows](https://support.microsoft.com/topic/november-29-2022-kb5020044-os-build-22621-900-preview-43f0bdf9-0b75-4110-bab3-3bd2433d84b3), [version 22H2](https://support.microsoft.com/topic/november-29-2022-kb5020044-os-build-22621-900-preview-43f0bdf9-0b75-4110-bab3-3bd2433d84b3), [build 10.0.22621.900](https://support.microsoft.com/topic/november-29-2022-kb5020044-os-build-22621-900-preview-43f0bdf9-0b75-4110-bab3-3bd2433d84b3) and later. If you don't enable this policy, these devices can't receive organizational messages.

1. Go to **Settings catalog** > **Experience** > **Enable delivery of organizational messages (User)**.
1. To enable delivery of organizational messages, switch the toggle to **Enabled**.

### Enable Experiences Policies

>[!NOTE]
> If you use the Windows MDM security baseline, you'll need to change the required policies to **Not configured**. These policies control organizational messages configured by your team and other messages coming directly from Microsoft. To continue blocking messages coming directly from Microsoft as defined in the Windows MDM security baseline, configure the Microsoft messages policy found in the Organizational messages settings experience within the admin center.

If using Settings catalog, follow these steps:

(This can be in a new or existing Windows configuration profile.)

1. Go to **Devices** > **Windows** > **Configuration profiles**.
1. Select **Settings catalog**.
1. Select **Add Settings**.
1. In Settings picker, select **Experience category**.
1. In configuration settings, ensure the following are selected or set to ‘Allow’:
    - Add Allow Windows Spotlight (User)
    - Add Allow Windows Spotlight on Action Center (User)
    - Add Allow Windows Tips
    - Add Configure Windows Spotlight on Lock Screen (User)
1. In configuration settings, ensure the following are deselected:
    - Disable Cloud Optimized Content
1. In configuration settings, ensure the following are selected or set to ‘Allow’:
    - Enable delivery of organizational messages (User)

If using Device Restrictions, follow these steps:

(This can be in a new or existing Windows configuration profile.)

1. Go to **Devices** > **Windows** > **Configuration profiles**.
1. In a new or existing template profile, select **Device restrictions** > **Windows Spotlight**.
1. Ensure or Select ‘Not configured’ is set for the following:
    - Windows Spotlight
    - Windows Spotlight on lock screen
    - Windows Tips
    - Windows Spotlight in action center
    - Windows Spotlight personalization

## FAQ

### Can you tell me more about delivery expectations for these messages?

For non-urgent messages, after your message has been scheduled by the Organizational Messages platform (for example, after approval from your Organizational Messages approvers is acquired as needed), at the earliest, it will take a few hours before the message will be eligible to be delivered to end user devices. For example, if you set the Start Date to be now/today, you should expect a few hours before any end user devices in your testing tenant receive the message payload.

Further, Windows buffers messages on a set period for each of the channels. (In other words, this experience is delivered on a ‘pull’ model.) So, expect that your message might take 24 or more hours for targeted end users in your tenant to receive and render the message as their devices might be configured to request content at different times.

Once your message has been actively delivering for over 24 hours, you can return to the 'Manage' experience to review the latest delivery data for your message.

For urgent messages, after your message has been scheduled by the Organizational Messages platform (for example, after approval from your Organizational Messages approvers is acquired as needed), the platform will try to send the message as soon as possible. However, as noted above, this is a best-effort mechanism subject to various conditions, with no guaranteed delivery times.

### My team has made other organizational messages within Intune, Adoption Score, Usage reports, and others. How do they work with this?

The Organizational messages centralized experience is the ‘one-stop-shop’ for organizational messages. You should be able to see and manage your other messages from the centralized experience, regardless of where they were created.

> [!NOTE]
> Adoption Score organizational messages on Office or Outlook channels aren't visible in the centralized experience.

### How do admins get the required permissions?

 Reach out to a Global admin and ask them to assign you Organizational Messages Writer or Organizational Message Approver Microsoft Entra role to you following these steps:

1. Global Admin of target testing tenant goes to **Microsoft 365 Admin Center > Active Users**.

2. Search for or otherwise select target user in Active users table.

3. Select the **Manage roles** button in the top navigation bar.

4. Select **Organizational Messages Writer** or **Organizational Messages Approver** in the **Other** section, and then select **Save changes**.

### Why do I need to update my MDM policies?

The MDM policies listed under [Setting tenant policies](#setting-tenant-policies) control whether the service delivering the messages is able to access each location where organizational messages could be delivered. Previously, the CSPs only affected consumer scenarios and controlled whether Microsoft messaging can be delivered, however, since we’re using the same service, the policies affect admin-created messages as well.

### How can I get my MDM settings for troubleshooting purposes?

1. Run *ms-settings:workplace*.

2. In the **Export your management log files** section, select **Export**.

3. Get the resulting file in *C:\Users\Public\Documents\MDMDiagnostics*.

### How can I get my user and device ID for troubleshooting purposes?

1. Launch MS Feedback Hub

2. Select **Settings** in the bottom left-hand corner.

3. Navigate to the **Device Information** section

### Where can I find more information on the Configuration Service Provider (CSP) policies related to Organizational Messages?

You can find more information in the following documents:

- [Experience/AllowWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsspotlight)

- [Experience/AllowWindowsTips](/windows/client-management/mdm/policy-csp-experience#experience-allowwindowstips)

- [Experience/AllowWindowsSpotlightOnActionCenter](/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsspotlightonactioncenter)

- [Experience/DisableCloudOptimizedContent](/windows/client-management/mdm/policy-csp-experience#experience-disablecloudoptimizedcontent)

- [Experience/ConfigureWindowsSpotlightOnLockScreen](/windows/client-management/mdm/policy-csp-experience#experience-configurewindowsspotlightonlockscreen)

- [Experience/AllowSpotlightCollection](/windows/client-management/mdm/policy-csp-experience#experience-allowspotlightcollection)

- [Experience/OrganizationalMessages](/windows/client-management/mdm/policy-csp-experience#enableorganizationalmessages)

### What do the different message states mean?

All messages have a state that indicates their creation or delivery status, including:

1. **Completed** – message has successfully run its course as defined by Start and end dates.

2. **Pending** – message is still being registered by the organizational messages services and thus is not delivering. Additionally, certain details of the message might be unavailable while in ‘pending’ state.

3. **Failed** – message was not able to be properly registered by the organizational messages services for various reasons. These messages need to be copied to retry the process.

4. **Canceled** – message was explicitly stopped by your tenant admin. This might have been during delivery of the message or prior (that is, in Scheduled state).

5. **Active** – message is currently delivering to your users.

6. **Draft** – message has not been completed or otherwise submitted for scheduling and/or approval. Any of your tenant’s writers can continue a draft to completion via the creation flow.

7. **Scheduled** – message has been properly authored and is awaiting delivery (at which time it will be coded as ‘Active)

8. **Rejected** – message was reviewed, and an Approver admin disallowed it from proceeding to a Scheduled or Active state.

9. **Pending approval** – message is awaiting review by an Approver admin.

### How does localization work in Organizational messages?

**For premade messages**, your message is delivered to end users who have their related product language set to one of the following:

- en-US
- de-DE
- es
- fr-FR
- it-IT
- ja-JP
- ko-KR
- nl-NL
- pl-PL
- pt-BR
- pt-PT
- ru-RU
- tr-TR
- zh-Hans
- zh-Hant

For example, if the Organizational Messages Writer (admin) selects message A to be sent to their end users, then any end users with their product language set to one of the above languages qualifies to receive the message A.

**For customized messages**, your message will only be delivered in the language in which it was created within the Microsoft 365 admin center.

For example, if the Organizational Messages Writer (admin) has their Microsoft 365 admin center product language set to French when they create their message B from scratch, end users with related product language set to English will not receive the message B. However, end users with French set as their related product language qualifies to receive the message B.

### Does Organizational Messages support government environments, such as GCC, GCCH, etc.?

No, not at this time.

### Our team previously authored messages for the Windows Get Started location within the Organizational messages experience in Intune/Microsoft Endpoint Manager – can we still do that in this experience within Microsoft 365 admin center?

Any Get Started messages that you created in the Organizational messages experience within Intune/Microsoft Endpoint Manager that have not completed can be viewed within the Microsoft 365 admin center experience. However, new Get Started message creation is not yet supported at this time.

### Are there any premade messages available for the Windows Spotlight location?

No, not at this time.

### Only Windows 11 deliveries were supported in the public preview – is that still the case?

Based on customer feedback, organizational messages now deliver to both Windows 10 and Windows 11 locations for the Notifications area, Taskbar, and Windows Spotlight.

### My tenant only wants our end users to see messages from us, not Microsoft; how can we do that?

After your admins enable all of the policies described in the previous section on [Setting Tenant Policies](#setting-tenant-policies), you can then go to the ‘Settings’ feature within the Organizational messages in Microsoft 365 admin center portal (top right corner of the landing page), deselect the option “Allow Microsoft messages to display,” and select ‘Save’. This ensures Organizational messages platform sends only your team’s messages to Windows surfaces, like Taskbar.

### If my organization only has an Office 365 E3 or E5 license, should I expect to be able to create fully customized messages on Windows locations, like Notifications area or Taskbar? Likewise, if my organization only has a Windows E3 or E5 license, should I expect to be able to create fully customized messages on the Teams location?

No, the organizational messages creation flow will automatically disable authoring experiences that your tenant can't access based on the license requirements listed in the [Advanced features](#advanced-features) section. However, your organization might be able to create premade messages without such E3 or E5 licenses. For example, your team will not be able to create a fully customized message on Windows locations if your organization doesn't have at least a Windows E3 or E5 license or a Microsoft 365 E3 or E5 license. Similarly, your team won't be able to create a fully customized message on the Teams location if your organization doesn't have at least an Office 365 E3 or E5 license or a Microsoft 365 E3 or E5 license.
