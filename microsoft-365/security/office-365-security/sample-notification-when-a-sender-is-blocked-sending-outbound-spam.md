---
title: "Sample notification when a sender is blocked sending outbound spam"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 11/02/2017
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: c33fd406-a4c8-4ac8-ad85-123996c5cded
ms.collection:
- M365-security-compliance
description: "When a sender is blocked from the service due to sending outbound spam, the domain admin specified when you Configure the outbound spam policy will receive a notification email similar to the following:"
---

# Sample notification when a sender is blocked sending outbound spam

When a sender is blocked from the service due to sending outbound spam, the domain admin specified when you [Configure the outbound spam policy](configure-the-outbound-spam-policy.md) will receive a notification email similar to the following: 
  
 **Sender address:** spamalerts@microsoft.com 
  
 **Subject:** Outbound spam notification - \<  *account name*  \> blocked from sending outbound mail 
  
 **Body:** This is an automated reply from the Exchange Online Protection Spam Analysis System. 
  
You are being contacted because we have detected high volumes of email marked as spam, or other suspicious behavior, originating from your organization. The following email accounts have been blocked from sending email (they can still receive email):
  
\< *account name*  \> 
  
It is likely that this email account has been compromised. Please follow these steps:
  
1. Resolve this issue on your side by:
    
  - Changing the password of the account.
    
  - Determining how the account was compromised.
    
  - Taking precautions to ensure that this vulnerability will not be exploited again.
    
  - Confirming that your outbound mail queue has been cleared of all offending messages.
    
2. Contact Microsoft support by using your regular contact channel.
    
3. Explain that you have a user that is blocked from sending mail and that the problem has been dealt with.
    
4. The agent will create a support ticket with the information that you provide and escalate it to have the email address or domain unblocked.
    
5. After the address has been unblocked, and pending no other issues, you will be contacted and alerted to the unblocking.
    
Thank you for assisting us in controlling unwanted email.
  
Exchange Online Protection.
  
\*\*NOTE - Please do not respond to this email as it is sent from an unmonitored address\*\*
  
> [!TIP]
> You can also contact support via the options documented at [Help and support for EOP](help-and-support-for-eop.md). 
  

