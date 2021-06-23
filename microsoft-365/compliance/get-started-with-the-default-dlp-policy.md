---
title: "Get started with the default DLP policy"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 8/10/2017
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: e0ada764-6422-4b44-9472-513bed04837b
ms.collection: 
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: Learn how to use the report to refine your organization's default data loss prevention (DLP) policy.
---

# Get started with the default DLP policy

Before you even create your first data loss prevention (DLP) policy, DLP is helping to protect your sensitive information with a default policy. This default policy and its recommendation (shown below) help keep your sensitive content secure by notifying you when email or documents containing a credit card number were shared with someone outside your organization. You'll see this recommendation on the **Home** page of the Security &amp; Compliance Center. 
  
You can use this widget to quickly view when and how much sensitive information was shared, and then refine the default DLP policy in just a click or two. You can also edit the default DLP policy at any time because it's fully customizable. Note that if you don't see the recommendation at first, try clicking **+More** at the bottom of the **Recommended for you** section. 
  
![Widget named Further protect shared content](../media/2bae6dbc-cc92-4f35-b54c-c36e60226b5b.png)
  
## View the report and refine the default DLP policy

When the widget shows you that users have shared sensitive information with people outside your organization, choose **Refine DLP policy** at the bottom. 
  
The detailed report shows you when and how much content containing credit card numbers was shared in the past 30 days. Note that rule matches can take up to 48 hours to show up in the widget.
  
To help protect the sensitive information, the default DLP policy:
  
- Detects when content in Exchange, SharePoint, and OneDrive that contains at least one credit card number is shared with people outside your organization.
    
- Shows a policy tip and sends an email notification to users when they attempt to share this sensitive information with people outside your organization. For more information on these options, see [Send email notifications and show policy tips for DLP policies](use-notifications-and-policy-tips.md).
    
- Generates detailed activity reports so that you can track things like who shared the content with people outside your organization and when they did it. You can use the [DLP reports](view-the-dlp-reports.md) and [audit log data](search-the-audit-log-in-security-and-compliance.md) (where **Activity** = **DLP**) to see this information.
    
To quickly refine the default DLP policy, you can choose to have it:
  
- Send you an incident report email when users share this sensitive information with people outside your organization.
    
- Add other users to the email incident report.
    
- Block access to the content containing the sensitive information, but allow the user to override and share or send if they need to.
    
For more information on incident reports or restricting access, see [Data loss prevention reference](data-loss-prevention-policies.md).
  
If you want to change these options later, you can edit the default DLP policy at any time - see the next section.
  
![Settings for widget named Further protect shared content](../media/dad30a84-2715-4c0a-a5c5-44d85492363e.png)
  
## Edit the default DLP policy

This policy is named **Default DLP policy** and appears under **Data loss prevention** on the **Policy** page of the Security &amp; Compliance Center. 
  
This policy is fully customizable, the same as any DLP policy that you create yourself from scratch. You can also turn off or delete the policy, so that your users no longer receive policy tips or email notifications.
  
![DLP policy named Default DLP policy](../media/260731e8-4d57-4c98-abec-07b052ec48d5.png)
  
## When the widget does and does not appear

The widget named **Further protect shared content** appears in the **Recommended for you** section of the **Home** page of the Security &amp; Compliance Center. 
  
This widget appears only when:
  
- There are no data loss prevention policies in the Security &amp; Compliance Center or Exchange admin center. This widget is intended to help you get started with DLP, so it doesn't appear if you already have DLP policies.
    
- Content containing least one credit card has been shared with someone outside your organization in the past 30 days.
    
Note that rule matches can take up to 48 hours to be available to the widget, so after sensitive information shared externally is detected, it may take up to two days for the recommendation to appear.
  
Finally, after you use the widget to refine the default DLP policy, the widget disappears from the **Home** page. 
  

