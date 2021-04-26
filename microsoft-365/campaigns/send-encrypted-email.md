---
title: "Send encrypted email"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
ms.date: 9/20/2018
ms.audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-Campaigns
- m365solution-smb
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
ms.assetid: 496e690b-b75d-4ff5-bf34-cc32905d0364
description: "Learn how to send encrypted email using Outlook."
---

# Encrypt or label your sensitive email

Your data and campaign information is important and often confidential. Help protect this sensitive information by using encryption and sensitivity labels so you and your email recipients treat the information with the sensitivity it requires.

## Best practices

Before you send email with confidential or sensitive information, consider turning on:

- **Encryption:** You can encrypt your email to protect the privacy of the information in the email. When you encrypt an email message, it's converted from readable plain text into scrambled cypher text. Only the recipient who has the private key that matches the public key used to encrypt the message can decipher the message for reading. Any recipient without the corresponding private key, however, sees indecipherable text. Your admin can define rules to automatically encrypt messages that meet certain criteria. For instance, your admin can create a rule that encrypts all messages sent outside your organization or all messages that mention specific words or phrases. Any encryption rules will be applied automatically.
- **Sensitivity labels:** Your campaign can also set up sensitivity labels that you can apply to your files and email to keep them compliant with your campaign's information protection policies. When you set a label, the label persists with your email, even when it's sent - for example, by appearing as a header to your message.

![Diagram of an email with callouts for labels and encryption](../media/m365-campaign-email-encrypt.png)

## Set it up

If you want to encrypt a message that doesn't meet a pre-defined rule or your admin hasn't set up any rules, you can apply a variety of different encryption rules before you send the message. To send an encrypted message from Outlook 2013 or 2016, or Outlook 2016 for Mac, select **Options > Permissions**, then select the protection option you need. You can also send an encrypted message by selecting the **Protect** button in Outlook on the web. For more information, see [Send, view, and reply to encrypted messages in Outlook for PC](https://support.microsoft.com/en-us/office/send-view-and-reply-to-encrypted-messages-in-outlook-for-pc-eaa43495-9bbb-4fca-922a-df90dee51980).

## Admin settings

You can learn all about setting up email encryption at [Email encryption in Microsoft 365](../compliance/email-encryption.md).

### Automatically encrypt email messages

Admins can create mail flow rules to automatically protect email messages that are sent and received from your campaign. Set up rules to encrypt any outgoing email messages, and remove encryption from encrypted messages coming from inside your organization or from replies to encrypted messages sent from your organization.

You create mail flow rules to encrypt email messages with the new Office 365 Message Encryption (OME) capabilities. Define mail flow rules for triggering message encryption with the new OME capabilities by using the Exchange Admin Center (EAC). 

1. In a web browser, using a work or school account that has been granted global administrator permissions, sign in.
2. Choose the Admin tile.
3. In the admin center, choose **Admin centers > Exchange**.

For more information, see [Define mail flow rules to encrypt email messages](../compliance/define-mail-flow-rules-to-encrypt-email.md).

### Brand your encryption messages

You can also apply your campaign branding to customize the look and the text in the email messages. For more information, see [Add your organization's brand to your encrypted messages](../compliance/email-encryption.md).