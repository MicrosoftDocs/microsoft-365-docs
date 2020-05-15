---
title: "ATP anti-phishing capabilities in Office 365"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyp
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 5076d0f6-7a59-4d6c-bd07-ba95033f0682
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: "Learn about anti-phishing capabilities that are part of Office 365 Advanced Threat Protection to provide protection for commodity & spear phishing attacks."
---

# ATP anti-phishing capabilities in Office 365

ATP anti-phishing is part of [Office 365 Advanced Threat Protection](office-365-atp.md). ATP anti-phishing applies a set of machine learning models together with impersonation detection algorithms to incoming messages to provide protection for commodity and spear phishing attacks. All messages are subject to an extensive set of machine learning models trained to detect phishing messages, together with a set of advanced algorithms used to protect against various user and domain impersonation attacks. ATP anti-phishing protects your organization according to polices that are set by your Office 365 global or security administrators.
  
To learn more, see [Set up anti-phishing policies in Office 365](set-up-anti-phishing-policies.md).
  
> [!NOTE]
> ATP anti-phishing is only available in Advanced Threat Protection, which is included in subscriptions, such as [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise/home), [Microsoft 365 Business](https://www.microsoft.com/microsoft-365/business), Office 365 Enterprise E5, Office 365 Education A5, etc. If your organization has an Office 365 subscription that does not include Office 365 ATP, you can potentially purchase ATP as an add-on. For more information, see [Office 365 Advanced Threat Protection plans and pricing](https://products.office.com/exchange/advance-threat-protection) and the [Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

## How ATP anti-phishing works

ATP anti-phishing checks incoming messages for indicators that the message may be phishing. Whenever a user is covered by an ATP policy (safe attachments, safe links or anti-phishing) the incoming message is evaluated by multiple machine learning models that analyze the message to determine if the policy applies to the message and the appropriate action is taken, based on the configured policy.
  
ATP anti-phishing allows Office 365 global administrators or security admins to define policies that provide protection against phishing attacks that include impersonation of either users or domains. (or both). Office 365 global administrators or security admins define within the policy which user and domains should be protected from impersonation attacks using either a fixed list of users or domains or by using mailbox intelligence. Mailbox intelligence is an advanced understanding of a user's email habits and personal contacts. ATP learns how each individual user communicates with other users inside and outside the organization and builds up a map of these relationships. This map allows ATP to understand more details about how to ensure the right messages are identified as impersonation.
  
ATP anti-phishing polices can be applied to a specific set of people or groups in your organization, or to an entire domain or all of your custom domains. To learn more, see [Set up anti-phishing policies in Office 365](set-up-anti-phishing-policies.md).
  
## How to get ATP anti-phishing

ATP Anti-Phishing features are part of [Advanced Threat Protection](office-365-atp.md); however, ATP anti-phishing protection applies when anti-phishing policies are defined. (One example is an impersonation-based policy.) See [Set up anti-phishing policies in Office 365](set-up-anti-phishing-policies.md).
  
## How to know if ATP anti-phishing is in place

ATP anti-phishing policies must be defined in order for protection to be in effect. Check this first to verify protection is in place.

In addition, reports are available to show how the service is working for your organization. To learn more, see [View reports for Office 365 Advanced Threat Protection](view-reports-for-atp.md).

For ATP anti-phishing machine learning models to be active for a particular user, that user must be part of a defined [ATP Safe attachments](atp-safe-attachments.md), [ATP Safe Links](atp-safe-links.md), or ATP Anti-Phishing policy. 

The following table describes a few example scenarios. In each of these examples, the organization is using Office 365 Enterprise E5, which includes Advanced Threat Protection.
  
|**Example scenario**|**Does ATP anti-phishing apply in this case?**|
|:-----|:-----|
|Pat's organization has Office 365 Enterprise E5, but no one has defined any policies for ATP safe attachments, ATP safe links or ATP advanced phishing yet.|No. Although the feature is available, at least one ATP policy must be defined in order for the ATP machine learning models to work. For impersonation an ATP anti-phishing policy must also be in place.|
|Lee is an employee in the sales department at Contoso. Lee's organization has an ATP anti-phishing policy in place that applies to finance employees only.|No. In this case, ATP anti-phishing (machine models and impersonation protection) would apply to finance employees, but other employees, including the sales department, would not.|
|Yesterday, an Office 365 administrator at Jean's organization set up an ATP anti-phishing policy that applies to all employees. Earlier today, Jean received an email message that includes an impersonation covered by the policy.|Yes. In this example, Jean has a license for Advanced Threat Protection, and an ATP anti-phishing policy that includes Jean has been defined. It typically takes about 30 minutes for a new policy to take effect across datacenters; since a day has passed in this case, the policy should be in effect.|

## Related topics

[Office 365 Advanced Threat Protection](office-365-atp.md)
  
[Anti-phishing protection in Office 365](anti-phishing-protection.md)
  
[Set up anti-phishing policies in Office 365](set-up-anti-phishing-policies.md)
  
[ATP safe links in Office 365](atp-safe-links.md)
  
[Set up ATP safe links policies in Office 365](set-up-atp-safe-links-policies.md)
  
[ATP safe attachments in Office 365](atp-safe-attachments.md)
  
[Set up ATP safe attachments policies in Office 365](set-up-atp-safe-attachments-policies.md)
  
[View the reports for Advanced Threat Protection](view-reports-for-atp.md)
