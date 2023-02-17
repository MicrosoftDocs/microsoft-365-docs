---
title: "Send email as a distribution list"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- Adm_O365
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: a7c98273-067e-4162-b3a1-4ba081796012
description: "Send email as a distribution list in Microsoft 365 so that when a member replies to a message it appears to be from the distribution list."
---

# Send Microsoft 365 email as a distribution list

In Microsoft 365, you can send email as a distribution list. When a person who is a member of the distribution list replies to a message sent to the distribution list, the email appears to be from the distribution list, not from the individual user. This topic shows you how to do this.
  
## Before you begin

Before you perform these steps, make sure you've been added to a Microsoft 365 distribution list and you've have been granted Send as permission on it.
  
 **Admins**: Make sure you've followed the steps in the [Add a Microsoft 365 user or contact to a list](../email/add-user-or-contact-to-distribution-list.md) and [Allow members to send email as a Microsoft 365 Group](../../solutions/allow-members-to-send-as-or-send-on-behalf-of-group.md#allow-members-to-send-email-as-a-group) topics, and added the correct people to the distribution list.
  
## Outlook on the web

1. Open Outlook on the web and go to your inbox. 
    
2. Open a message that was sent to the distribution list. 
    
3. Select **Reply**. 
    
4. At the bottom of the message, select **More** \> **Show from**.<br/> ![Select More and then choose Show From.](../../media/534f13b7-9f15-48ea-8835-ea2ed1863ece.png)
  
5. Right-click on the From address - such as `Ina@weewalter.me` - and choose **Remove**.<br/> ![Remove the FROM alias.](../../media/9b8d8e8f-dc46-499c-89bd-0a480603bf1f.png)
  
6. Then type the distribution list address such as support@contoso.com, and send the message. The next time you reply from the distribution list, its address will appear as an option in the **From** list.<br/>![Alias of the shared mailbox appears.](../../media/f7632a9a-9cab-446c-9e37-23ef50c5b975.png)

## Outlook

1. Open Outlook desktop client.

2. Compose a New Email. Click the **From** field and select **Other email address**. If you do not see the From field, navigate to **Options** and select **From** in the Show fields section.

3. Select the **Distribution List** address from the Global Address List.

4. Send the email.

## Related content

[Create, edit, or delete a security group in the Microsoft 365 admin center](../email/create-edit-or-delete-a-security-group.md) (article)\
[Email collaboration](../email/email-collaboration.md) (article)\
[Add a user or contact to a distribution group](../email/add-user-or-contact-to-distribution-list.md) (article)
