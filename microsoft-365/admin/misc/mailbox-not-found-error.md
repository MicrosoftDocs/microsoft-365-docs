---
title: "Getting a mailbox not found error in Outlook on the web"
f1.keywords:
- CSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.date: 08/10/2023
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
ms.custom: 
- AdminTemplateSet
- admindeeplinkMAC
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
ms.assetid: 7e453a40-66df-44ab-92a1-96786cb7fb34
description: "A **Mailbox couldn't be found for** error means the account you used to connect to Outlook on the web doesn't have an Exchange Online license."
---

# Getting a mailbox not found error in Outlook on the web?

If you're using Outlook on the web and you get a  **Mailbox couldn't be found for**  error, the account that you used to connect to Outlook on the web doesn't have an Exchange Online license and therefore, no mailbox is associated with the account.

## Assign a license to your account

Your admin can assign a license to your account by following these steps:

1. Open the  [Microsoft 365 admin center](https://admin.microsoft.com/adminportal/home#/homepage). In the left nav pane, in the **Users**  section, select **Active users**, and then select the user who is seeing the error.
1. In the user page that opens, go to the  **Licenses and Apps**  section, select the appropriate  **Location**  value, and assign a license that contains Exchange Online (expand **Apps** to see its details).
1. When you're finished, click  **Save changes**.

## Related content

[Add another email alias for a user](../email/add-another-email-alias-for-a-user.md) (article)\
[Configure email forwarding in Microsoft 365](../email/configure-email-forwarding.md) (article)\
[Create a shared mailbox](../email/create-a-shared-mailbox.md) (article)
