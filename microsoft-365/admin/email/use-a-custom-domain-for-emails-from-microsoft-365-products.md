---
title: "Use your custom domain for emails sent from Microsoft 365 products"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 03/15/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- business_assist
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 
description: "Let Microsoft send notification messages from an email address within your organization instead of Microsoft's default external email address."
---

# Use your custom domain for emails sent from Microsoft 365 products

Emails sent out to users as they interact with each other and across various products within Microsoft 365 are designed to provide insights and information about their organization. These emails are typically sent out between users based on those interactions, which means that they are often sent from the user’s email address. Those emails will remain unchanged and will continue to work as they do today.

There are several scenarios where emails are sent from a “no-reply” system-based product account. For example, batched comments, news, digests, and system notification emails are currently sent from a no-reply product address. These include addresses such no-reply@sharepointonline.com, no-reply@planner.com, no-reply@project.com. Users receive these emails as **[EXTERNAL]**, as they are sent by Microsoft on behalf of your organization.  

You can choose to change the notifications sent out by the system-based product accounts to use an email address using your custom domain. For example, users at Contoso who would receive Planner notifications from an external email address of no-reply@planner.com, instead would receive an internal email from no-reply@contoso.com.

Opting into this feature and selecting a domain owned by your organization means that emails will be routed to Exchange Online configured within your Microsoft 365 tenant. As they are no longer sent on behalf of the organization, they are internal emails which your Exchange Online instance will send out to your users.

> [!NOTE]
> Only domains registered within your tenant can be used and you must be the domain owner. 

## Configure the Send email notifications from your domain setting

The setting is available via the Microsoft 365 Admin Center Settings menu item. Select Settings and then choose the Organization Profile tab as illustrated below. 

:::image type="content" alt-text="Microsoft browser usage report." source="../../media/send-email-notifications-org-settings.png" lightbox="../../media/send-email-notifications-org-settings.png":::

> [!NOTE]
> - This setting is an opt-in setting which allows the Microsoft 365 system administrators to select a verified domain within the tenant. This means that the domain has been validated for ownership.
> - The recommendation is to use a domain that has the appropriate DNS records to facilitate email validation, like SPF, DKIM, DMARC, and MX as this then complies with the [RFC compliance](https://www.ietf.org/rfc/rfc2142.txt) for sending and receiving email. Please see [Learn more about Exchange Online Email Routing](/exchange/mail-flow-best-practices/mail-flow-best-practices) for more information.
> - Please ensure that you comply with all privacy, compliance and security requirements and policies within your organization. 



1. In the Microsoft 365 admin center, in the navigation pane select **Settings**.
2. Select **Org settings**.
3. On the **Org settings** page, select **Organizational profile**.
4. On the **Organizational profile** page, select **Send email notifications from your domain**.
5. In the **Send email notifications from your domain** page, select **Use a custom send-from domain address**.
6. The **Domains** menu, select the domain that you want to use for your email replies.The domains listed in the menu includes verified complete and incomplete domains as Microsoft 365 allows DNS settings to be configured and managed outside of the tenant. Your System or Exchange administrator must ensure that they follow and meet all DNS and domain requirements. 
7. For **Custom username**, you can optionally choose to change it from the default value of **no-reply**, if needed.
8. Select **Save**.  Changes will take a few minutes to complete.

:::image type="content" alt-text="Microsoft browser usage report." source="../../media/save-email-notifications-domain.png" lightbox="../../media/save-email-notifications-domain.png":::

> [!NOTE]
> If you make a mistake or would like to roll-back the change, de-select the **Use a custom send-from domain address** checkbox and then select **Save**. The setting will revert to the original configuration.

## Supported Products

Please note that the following products currently support this feature: 
- SharePoint Online
- Office
- Stream
- Planner
- Project
- Viva Connections
- Viva Pulse
- Viva Topics
- Viva Amplify

> [!NOTE]
> The supported products list will be updated as each product migrates to support the setting and no action will be required as these products onboard to the centralized setting. 

## Excluded Scenarios
Sharing One Time Passcodes (OTP) will continue to use no-reply@notify.microsoft.com.


