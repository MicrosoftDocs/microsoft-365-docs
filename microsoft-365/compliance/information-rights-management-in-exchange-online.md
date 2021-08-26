---
title: "Exchange Online mail encryption with AD RMS"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 12/13/2017
audience: End User
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 2c956776-0016-4be6-b4cd-133a237f4a9e
ms.custom:
- seo-marvel-apr2020
description: Learn how to configure Exchange Online IRM to use on-premises Active Directory Rights Management Service (AD RMS) to satisfy your organization requirements.
---

# Exchange Online mail encryption with AD RMS

To help prevent information leakage, Exchange Online includes Information Rights Management (IRM) functionality that provides online and offline protection of email messages and attachments. You can configure Exchange Online IRM to use on-premises Active Directory Rights Management Service (AD RMS), if needed, to satisfy your organization requirements. This is not common. If you do not have a requirement to use AD RMS, use [Office 365 Message Encryption](ome.md) instead. 

IRM protection can be applied by users in Microsoft Outlook or Outlook on the web, and it can be applied by administrators using transport protection rules or Outlook protection rules. IRM helps you and your users control who can access, forward, print, or copy sensitive data within an email.
  
## Changes to how IRM works with Office 365 Message Encryption (OME) and Azure Active Directory

As of September 2017, when you set up the new Office 365 Message Encryption capabilities for your organization, you also set up IRM for use with Azure Rights Management (Azure RMS). You no longer set up IRM with Azure RMS separately. Instead, OME and rights management work seamlessly together. For more details about the new capabilities, see [Office 365 Message Encryption FAQ](./ome-faq.yml). If you're ready to get started using the new OME capabilities within your organization, see [Set up new Office 365 Message Encryption capabilities built on top of Azure Information Protection](./set-up-new-message-encryption-capabilities.md).
  
## How IRM works with Exchange Online and Active Directory Rights Management Services

Exchange Online IRM uses on-premises Active Directory Rights Management Services (AD RMS), an information protection technology in Windows Server 2008 and later. IRM protection is applied to email by applying an AD RMS rights policy template to an email message. Rights are attached to the message itself so that protection occurs online and offline and inside and outside of your organization's firewall.
  
Users can apply a template to an email message to control the permissions that recipients have on a message. Actions, such as forwarding, extracting information from a message, saving a message or printing a message can be controlled by applying an AD RMS rights policy to the message.
  
You can configure IRM to use an AD RMS server running Windows Server 2008 or later. You can use this AD RMS server to manage the AD RMS rights policy templates for your cloud-based organization. Outlook also relies on the AD RMS server to enable users to apply IRM protection to messages they send. For details, see [Configure IRM to use an on-premises AD RMS server](configure-irm-to-use-an-on-premises-ad-rms-server.md). 
  
After it's enabled, IRM protection can be applied to messages as follows:
  
- **Users can manually apply a template using Outlook and Outlook on the web.** Users can apply an AD RMS rights policy template to an email message by selecting the template from the **Set permissions** list. When users send an IRM-protected message, any attached files that use a supported format also receive the same IRM protection as the message. IRM protection is applied to files associated with Word, Excel, and PowerPoint, as well as .xps files and attached email messages. 
    
- **Administrators can use transport protection rules to apply IRM protection automatically to both Outlook and Outlook on the web.** You can create transport protection rules to IRM-protect messages. Configure the transport protection rule action to apply an AD RMS rights policy template to messages that meet the rule condition. After you enable IRM, your organization's AD RMS rights policy templates are available to use with the transport protection rule action called **Apply rights protection to the message with**.
    
- **Administrators can create Outlook protection rules.** Outlook protection rules automatically apply IRM-protection to messages in Outlook 2010 (not Outlook on the web) based on message conditions that include the sender's department, who the message is sent to, and whether recipients are inside or outside your organization. For details, see [Create an Outlook Protection Rule](/exchange/create-an-outlook-protection-rule-exchange-2013-help).
