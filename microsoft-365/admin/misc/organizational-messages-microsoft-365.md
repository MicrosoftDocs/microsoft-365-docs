---
title: "Organizational messages in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 05/02/2024
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

## What can I do with organizational messages?

Organizational messages’ centralized experience within Microsoft 365 admin center includes the following features and capabilities:

- Create messages from scratch (for example, free text entry)

- Use premade template messages from Microsoft

- Send messages to the Windows Spotlight location

- Save draft messages

- Reject or Approve customized messages

- Add images or icons to messages

- Specify custom destination URLs

- Configure delivery schedules and parameters for messages

- Assign targeting via Entra user groups and advanced targeting options

- Manage messages created in Microsoft 365 admin center and other portals

- Review message performance with time series data

## Setup requirements

Before working with organizational messages, make sure your team satisfies the following requirements:

- **Tenant** ensure your IT admin or others who work with Microsoft Intune enable all [organizational message policy requirements](/mem/intune/remote-actions/organizational-messages-prerequisites#policy-requirements).

- **Authors** anyone in your organization who wants to create messages must have one of these following admin roles assigned to them within Microsoft 365 admin center:

  - [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator)

  - [Organizational Messages Writer](/azure/active-directory/roles/permissions-reference#organizational-messages-writer)

- **Approvers** anyone in your organization who will be designated a responsible party for approving customized messages must have one of these following admin roles assigned to them within Microsoft 365 admin center:

  - [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator)

  - [Organizational Messages Approver](/entra/identity/role-based-access-control/permissions-reference#organizational-messages-approver)

- **Message recipients** anyone in your organization who might receive messages from your authors must have access to the Microsoft products to which the messages are configured to be delivered. (End users aren't required to have any Entra roles to receive organizational messages.)

  - For example, any message configured to be delivered to a Windows channel, like Windows Spotlight, requires that recipients use **Windows 11 Enterprise**.

> [!IMPORTANT]
> Organizational messages public preview features will not be restricted based on the licenses held by participating tenants, authors, approvers, or message recipients. However, some organizational messages features might be restricted to particular Microsoft licenses in the future.

## Get started

:::image type="content" source="../../media/OM-LandingPage_annotated.png" alt-text="Screenshot showing the organizational messages landing page in the Microsoft 365 admin center with numbered annotations." lightbox="../../media/OM-LandingPage_annotated.png":::

There are three basic experiences to familiarize yourself with within the organizational messages centralized experience:

1. **Manage** – this is where you and your team will be able to see most of your organizational messages created in various portals, including Intune/Microsoft Endpoint Manager. Your team will also be able to execute various functions on each message, view details, and conduct approval flows in the ‘Manage’ area.

2. **Create a message** – this wizard is where anyone with the above-described “Organizational Messages Writer” Entra role can go to create either fully customized or templatized messages.

3. **Review activity** – This is where your admins can go to see the performance activity of messages that are or have been delivering to your users.

## Manage

You can review and control the messages from anyone in their organization using the main landing experience. Operations that admins can affect within the ‘Manage’ experience include:

- Filtering based on message status (such as Active), location (such as Windows Spotlight), or objective (such as Adoption); filtering using search on message name.

- Reviewing existing message details (such as language, targeting, among others).

- Understanding aggregate performance data per message.

- Cancelling, deleting, approving, copying messages.

### How to continue creating a draft message (Modify)

If you have the Organizational Messages Writer Entra role as described above, you can edit or otherwise complete a saved ‘draft’ message in your tenant. To do so:

1. Filter Status to **Draft**.

2. Select the message name of the message you want to edit.

3. In the message details panel, select **Modify**.

4. This takes you directly into the creation wizard where you can continue the creation of this draft message.

### How to approve or reject a ‘pending approval’ message

If you have the Organizational Messages Approver Entra role as described above, you can review and approve or reject messages from your colleagues that are in the ‘pending approval’ state. To approve or reject a ‘pending approval’ message:

1. Filter Status to **Pending approval**.

2. Select the message name of the message you want to review.

3. In the message details panel, read through all of the content provided by the author.

4. If you believe this message is appropriate for delivering to users in your tenant, you can optionally add a comment and select **Approve**.

5. However, if you believe the message is not ready or appropriate for delivering to your tenant’s users, you must add a comment in the text field and select **Reject**.

### How to overcome a rejected message (Withdraw)

If you have the Organizational Messages Writer Entra role as described above, you can overcome a rejection from the approvers in your tenant. To do so:

1. Filter status to **Rejected**.

2. On the message name of the rejected message you want to overcome, select **Withdraw**.

3. This sets the state of the rejected message to **Draft**.

4. From there, you can go to the message details panel, select **Modify**.

5. This takes you directly into the creation wizard where you can continue the creation of this draft message, once again sending for approval to return the message to approvers for review.

> [!NOTE]
> - Fully customized messages will require an approver to ‘approve’ any message before it is delivered to your users. However, selecting a premade message will not require any approval from your organization before it can be delivered to end users.
> - Approvers cannot approve or reject a message that they personally created.
> - ‘Rejecting’ a message will mark the message state as “Rejected”, requiring an author to ‘Withdraw’ the message and then ‘Modify’ the new draft.
> - Messages that are not reviewed (such as, approved or rejected) by approvers before the set “End date” of the message will automatically be rejected by the system to ensure minimum duration of delivery of messages are as expected by authors.

## Create a message

Users with the Organizational Messages Writer Entra role described previously will have access to the **Create a message** button and capability in the centralized experience. Selecting this button will invoke the wizard, which includes these primary creation steps:

- **Objective** for selecting the nature or purpose of your new message.

- **Location** for indicating to which in-product channel the message will be sent for your users.

- **Template** for choosing the format of the message, ‘create your own’ or a premade message from Microsoft.

- **Customize** for adding customization to the message, including full text and/or custom URLs.

- **Recipients** for setting the groups within your organization that should receive the message.

- **Schedule** for configuring the start and end dates as well as the frequency with which the system will send the message to the same user over time.

- **Finish** for reviewing the message before scheduling or sending for approval by your organization’s approvers.

### Choosing custom or premade messages

There are two primary forms of message creation that are enabled in this experience:

1. **Fully customized creation** (or 'create your own') – this is an open-ended format of entering in arbitrary content for messages, allowing your team to make messages that include your company name or other specifics that are unique to your company, group, or team. For example, an author can select ‘create your own’ and type all of the words of the message themselves.

2. **Premade messages** (or ‘templatized’ messages) – this is a method of selecting and customizing content that is partially created by Microsoft for general purpose use. For example, Microsoft might provide various generic messages that your team can pick and add your logo and URL to drive awareness of a software update.

### How to save and continue draft message

1. Notice that throughout the creation wizard, each step has a **Save and close** button.

2. You can select **Save and close** at any point to save the message as a new draft.

3. Once saved, you'll see your message at the top of the Manage table.

4. To go back to making your message, select the draft message’s name to invoke the message details panel.

5. Select **Modify** in the message details panel to continue creating that message in the creation wizard.

### How to create a message by copying an existing message

1. Go the Manage experience and find a message you want to use as a starting point.

2. Select **Copy** function.

3. You'll be immediately placed within the creation wizard with relevant elements from the previous message copied over.

4. Edit as you like and complete the creation wizard or save as a draft.

> [!NOTE]
> - For the same channel (such as Windows Spotlight), images provided by your team for the last created message will be automatically provided for your next message. However, you can override that image with a new image upload.
> - Once you click ‘Send for approval’ at the end of a fully customized message creation flow, anyone in your tenant that has the “Organizational Messages Approver” Entra role described above will be able to review and approve/reject your message.
> - If you save your draft before the ‘Schedule’ step and thus do not provide a custom message name, the Draft will have a programmatically generated name based on the date-time when you saved the draft. You can edit this message name by modifying the draft message.
> - Not all selections in the ‘Objective’ step might have premade messages available. However, all objectives will have the “create your own’ format available for full customization authoring.

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

Rolling out in spring 2024, organizational messages will also include two more features that provide advanced capabilities for how admins can schedule and direct their messages:

### Urgent delivery

For some time-sensitive communications, admins and other communicators might need to get a message out fast. For example, when an event is occurring on a corporate campus or a service outage has begun, admins might need to quickly broadcast such events to all employees so they can be prepared. To support communications in such events, admins in Microsoft 365 admin center will be able to select the ‘Urgent messages’ button in the “Top Actions” section.

:::image type="content" source="../../media/OM-urgentMessages_annotated.png" alt-text="Screenshot that highlights the button to send an urgent message.":::

## FAQ

### Can you tell me more about delivery expectations for these messages?

After your message has been scheduled by the Organizational Messages platform, at the earliest, it will take a few hours before the message will be eligible to be delivered to end user devices. For example, if you set the Start Date to be now/today, you should expect a few hours before any end user devices in your testing tenant receive the message payload.

Further, Windows 11 buffers messages on a set period for each of the channels. (In other words, this experience is delivered on a ‘pull’ model.) So, expect that your message might take 24 or more hours for targeted end users in your testing tenant to receive and render the message as their devices might be configured to request content at different times.

Once your message has been actively delivering for over 24 hours, you can return to the Manage experience to review the latest delivery data for your message.

### My team has made other organizational messages within Intune, Adoption Score, Usage reports, and others. How do they work with this?

The Organizational messages centralized experience is the ‘one-stop-shop’ for organizational messages. You should be able to see and manage your other messages from the centralized experience, regardless of where they were created.

> [!NOTE]
> - Adoption Score organizational messages on Office or Outlook channels are not visible in the centralized experience.
> - Intune organizational messages can only be read in the centralized experience (such as, cannot be canceled or deleted).
> - We expect this to change in future releases within the 2024 calendar year.

### How do admins get the required permissions?

 Reach out to a Global admin and ask them to assign you Organizational Messages Writer or Organizational Message Approver Entra role to you following these steps:

1. Global Admin of target testing tenant goes to **Microsoft 365 Admin Center > Active Users**.

2. Search for or otherwise select target user in Active users table.

3. Select the **Manage roles** button in the top navigation bar.

4. Select **Organizational Messages Writer** or **Organizational Messages Approver** in the **Other** section, and then select **Save changes**.

### Why do I need to update my MDM policies?

The MDM policies listed under Prerequisites control whether the service delivering the messages is able to access each location where organizational messages could be delivered. Previously, the CSPs only affected consumer scenarios and controlled whether Microsoft messaging can be delivered, however, since we’re using the same service, the policies affect admin-created messages as well.

### How can I get my MDM settings for troubleshooting purposes?

1. Run *ms-settings:workplace*

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

- [Experience/AllowWindowsConsumerFeatures](/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsconsumerfeatures)

- [Experience/AllowTailoredExperiencesWithDiagnosticData](/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowtailoredexperienceswithdiagnosticdata)

- [Experience/AllowThirdPartySuggestionsInWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#experience-allowthirdpartysuggestionsinwindowsspotlight)

### Where can I find more information on Organizational Messages experiences?

There are several other public Microsoft documents for our other preview product experiences:

- [Microsoft Adoption Score Organizational Messages](/microsoft-365/admin/adoption/organizational-messages.md)

- [Overview of organizational messages in Microsoft Intune](/mem/intune/remote-actions/organizational-messages-overview)

### What do the different message states mean?

All messages have a state that indicates their creation or delivery status, including:

1. **Completed** – message has successfully run its course as defined by Start and end dates.

2. **Pending** – message is still being registered by the organizational messages services and thus is not delivering. Additionally, certain details of the message might be unavailable while in ‘pending’ state.

3. **Failed** – message was not able to be properly registered by the organizational messages services for various reasons. These messages will need to be copied to retry the process.

4. **Cancelled** – message was explicitly stopped by your tenant admin. This might have been during delivery of the message or prior (that is, in Scheduled state).

5. **Active** – message is currently delivering to your users.

6. **Draft** – message has not been completed or otherwise submitted for scheduling and/or approval. Any of your tenant’s writers can continue a draft to completion via the creation flow.

7. **Scheduled** – message has been properly authored and is awaiting delivery (at which time it will be coded as ‘Active)

8. **Rejected** – message was reviewed, and an Approver admin disallowed it from proceeding to a Scheduled or Active state.

9. **Pending approval** – message is awaiting review by an Approver admin.
