---
title: "Create organization-wide signatures and disclaimers"
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
ms.date: 06/19/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- highpri
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- must-keep
ms.custom:
- VSBFY23
- TRN_M365B
- OKR_SMB_Videos
- seo-marvel-may2020
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- adminvideo
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 2d75860f-c527-4352-a7f6-73eba54c0c72
description: "Manage email signatures, including legal disclaimers or disclosure statements for all email messages that enter or leave your organization."
---

# Create organization-wide signatures and disclaimers

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

 You can manage email signatures by adding an email signature, legal disclaimer, or disclosure statement to the email messages that enter or leave your organization. You can set it up to apply to all incoming and outgoing messages as shown below. Or you can apply it to certain messages like those containing specific words or text patterns.

## Create a signature that applies to all messages

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198031).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=e160f7ee-fac5-4dde-8d16-3de01fcc45a5]

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, select **Exchange**.
1. Select **Mail flow**.
1. Select **Rules**.
1. Select **Add a rule +**, and then select **Apply disclaimers**.
1. On the **New rule** page, complete the steps.

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

> [!TIP]
> Organization-wide signatures are called "disclaimers," regardless of what they include. For example, they can just be a signature, or also include your address, legal disclaimer, or other information you want.

::: moniker range="o365-worldwide"

Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a>.

::: moniker-end

::: moniker range="o365-21vianet"

Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">https://portal.partner.microsoftonline.cn/adminportal</a>.

::: moniker-end

1. Select the app launcher ![The app launcher icon.](../../media/7502f4ec-3c9a-435d-a7b4-b9cda85189a7.png), and then select **Admin**.

1. Select **Admin centers**, and then choose **Exchange**.

1. Under Mail flow, select **Rules**.

1. Select the **+** (Add) icon and choose **Apply disclaimers**.

1. Give the rule a name.

1. Under **Apply this rule**, select **[Apply to all messages]**.
  
1. Under Do the following, leave **Append a disclaimer** selected.

1. Select **Enter text**, type your disclaimer, and then select **Save**.

1. Select **Select one**, choose **Wrap** as a fallback option, and then select **Save**. This means that if the disclaimer can't be added because of encryption or another mail setting, it will be wrapped in a message envelope.

1. Under **Except if**, choose whether you want exceptions for sender, recipient, attachment and more and follow those steps.

1. Choose **Next**.

1. Under **Rule mode**, choose **Enforce** to turn on the disclaimer immediately, otherwise, choose **Test with Policy Tips** or **Test without Policy Tips**.

1. Choose a Severity level.

1. Choose **Activate this rule on** and specify a date.

1. Choose **Deactivate this rule on** and specify a date.

1. Choose **Stop processing more rules** if you only want this signature rule to run.

1. Choose **Defer the message if rule processing doesn’t complete** if you want this experience.

1. Select ***Header** under the **Match sender address in message** drop-down and then select **Next** and **Finish**.

1. Once the new rule has been processed, select **Done**.

## Limitations of organization wide signatures

You can't do the following when managing email signatures in Microsoft 365:
  
- Insert the signature directly under the latest email reply or forward

- Display server-side email signatures in users' Sent Items folders

- Embed images in email signatures

- Skip lines which contain variables that couldn't be updated (e.g. because the value wasn't provided for a user)

To gain these and other capabilities to manage email signatures, use a third-party tool. Please do an internet search for **email signature software**. A number of these providers are Microsoft Gold Partners and their software provides these capabilities.
  
## More resources

For information about using PowerShell, see [Organization-wide message disclaimers, signatures, footers, or headers in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/disclaimers-signatures-footers-or-headers).

## Related content

[Migrate email and contacts to Microsoft 365](migrate-email-and-contacts-admin.md) (video)\
[User email settings](../email/office-365-user-email-settings.md) (article)\
[Overview of the Microsoft 365 admin center](../admin-overview/admin-center-overview.md) (video)
