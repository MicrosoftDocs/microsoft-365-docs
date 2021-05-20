---
title: "Create organization-wide signatures and disclaimers"
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom:
- TRN_M365B
- OKR_SMB_Videos
- seo-marvel-may2020
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 2d75860f-c527-4352-a7f6-73eba54c0c72
description: "Manage email signatures, including legal disclaimers or disclosure statements for all email messages that enter or leave your organization."
---

# Create organization-wide signatures and disclaimers

 You can manage email signatures by adding an email signature, legal disclaimer, or disclosure statement to the email messages that enter or leave your organization. You can set it up to apply to all incoming and outgoing messages as shown below. Or you can apply it to certain messages like those containing specific words or text patterns.

 Watch a short video about creating a company-wide email signature. <br><br>
  
> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1IEWf] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

## Create a signature that applies to all messages

> [!TIP]
> Organization-wide signatures are called "disclaimers," regardless of what they include. For example, they can just be a signature, or also include your address, legal disclaimer, or other information you want.
    
::: moniker range="o365-worldwide"

Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

::: moniker-end

::: moniker range="o365-germany"

Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">https://portal.office.de/adminportal</a>.

::: moniker-end

::: moniker range="o365-21vianet"

Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">https://portal.partner.microsoftonline.cn/adminportal</a>.

::: moniker-end

1. Select the app launcher ![The app launcher icon](../../media/7502f4ec-3c9a-435d-a7b4-b9cda85189a7.png), and then select **Admin**.
   
    Can't find the app you're looking for? From the app launcher, select **All apps** to see an alphabetical list of the apps available to you. From there, you can search for a specific app. 
    
2. Select **Admin centers**, and then choose **Exchange**.
    
3. Under Mail flow, select **Rules**.
    
4. Select the **+** (Add) icon and choose **Apply disclaimers**.
    
5. Give the rule a name.
    
6. Under **Apply this rule**, select **[Apply to all messages]**.
    
    > [!TIP]
    > [Learn more](/Exchange/policy-and-compliance/mail-flow-rules/signatures#Scoping) about applying conditions if you don't want the disclaimer applied to all messages. (This scoping article is for Exchange Server, but it also applies to Microsoft 365.) 
  
7. Under Do the following, leave **Append the disclaimer** selected. 
    
8.  Select **Enter text** and type your disclaimer. 
    
    > [!TIP]
    > [Learn more](/Exchange/policy-and-compliance/mail-flow-rules/signatures#FormatDisclaimer) about formatting disclaimers. (This formatting article is for Exchange Server, but it also applies to Microsoft 365.) 

9. Select **Select one** and choose **Wrap** as a fallback option. Then **OK**. This means that if the disclaimer can't be added because of encryption or another mail setting, it will be wrapped in a message envelope.
    
10. Leave **Audit this rule with severity level** selected. Then choose **Low**, **Medium**, or **High** to be used in the message log. 
    
11. Choose **Enforce** to turn on the disclaimer immediately, unless you want to test it first. 
    
12. Choose **More options** to include additional conditions or exceptions. 
    
13. Choose **Save** when finished. 
    
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

[Migrate email and contacts to Microsoft 365](migrate-email-and-contacts-admin.md) (video)

[User email settings](../email/office-365-user-email-settings.md) (article)

[Overview of the Microsoft 365 admin center](../../business-video/admin-center-overview.md) (video)

