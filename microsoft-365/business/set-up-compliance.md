---
title: "Increase threat protection for Microsoft 365 Business Premium"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
ms.custom:
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
description: "Set up compliance features to prevent data loss and help keep your and your customers' sensitive information secure."
---
# Set up compliance features

Your Microsoft 365 Business Premium comes with features to protect your data and devices, and help you keep your and your customers' sensitive information secure.

## Set up DLP features

See [Create a DLP policy from a template](../compliance/create-a-dlp-policy-from-a-template.md) for an example on how to set up a policy to protect against protect loss of personal data. 
  
DLP comes with many ready-to-use policy templates for many different locales. For example, Australia Financial Data, Canada Personal Information Act, U.S. Financial Data, and so on. See [What the DLP policy templates include](../compliance/what-the-dlp-policy-templates-include.md) for a full list. All of these templates can be enabled similar to the PII template example. 
  
## Set up email retention with Exchange Online Archiving

 **Exchange Online Archiving** license features help maintain compliance and regulatory standards by preserving email content for eDiscovery. It also helps reduce your risk if there is a lawsuit, and provides a way to recover data after a security breach or when you need to recover deleted items. You can use litigation hold to preserve all of a user's content, or use retention policies to customize what you want to preserve.
  
**Litigation hold:** You can preserve all mailbox content including deleted items by putting a user's entire mailbox on litigation hold. 
    
To place a mailbox on litigation hold, in the Admin center:
    
1. In the left nav, go to **Users** \> **Active users**.
    
2. Select a user whose mailbox you want to place on litigation hold. In the user pane, expand **Mail settings**, and next to **More settings**, choose **Edit Exchange properties**.
    
3. On the mailbox page for the user, choose ** mailbox features ** on the left nav, and then choose the **Enable** link under **Litigation hold**.
    
4. In the **litigation hold** dialog box, you can specify the litigation hold duration in the **Litigation hold duration** field. Leave the field empty if you want to place an infinite hold. You can also add notes and direct the mailbox owner to a website you might have to explain more about the litigation hold. \> **Save**.
    
**Retention:** You can enable customized retention policies, for example, to preserve for a specific amount of time or delete content permanently at the end of the retention period. To learn more, see [Overview of retention policies](../compliance/retention.md).

## Set up Sensitivity labels

Sensitivity labels come with Azure Information Protection (AIP) Plan 1, and help you classify, and optionally protect your documents and emails, by applying labels. Labels can be applied automatically by administrators who define rules and conditions, manually by users, or by using a combination where users are given recommendations.

To set up Sensitivity labels, view [create and manage sensitivity labels](../business-video/create-sensitivity-labels.md) video.



### Install the Azure Information Protection client manually

To manually install the AIP client:

1. Download **AzinfoProtection_UL.exe** from [Microsoft download center](https://www.microsoft.com/download/details.aspx?id=53018).
 
2. You can verify that the installation worked by viewing a Word document and making sure that the **Sensitivity** option is available on the **Home** tab. 
<br/>![Protection tab drop-down in a Word document.](../media/word-sensitivity.png)

For more information, see [Install the client](/azure/information-protection/infoprotect-tutorial-step3).