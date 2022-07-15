---
title: Track and respond to emerging threats with campaigns
description: Walkthrough of campaigns within Microsoft Defender for Office 365 to demonstrate how they can be used to investigate a coordinated email attack against your organization.
search.product: 
search.appverid: 
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-guidance-templates
ms.topic: how-to
ms.technology: mdo
---

# Track and respond to emerging threats with campaigns

Campaigns can be used to track and respond to emerging threats because Campaigns allow you to investigate a coordinated email attack against your organization. As new threats target your organization, Microsoft Defender for Office 365 will automatically detect and correlate malicious messages. 

## What you will need
- Microsoft Defender for Office 365 Plan 2 (Included in E5 Plans)
- Sufficient permissions (Security Reader role)
- 5-10 minutes to perform the steps below.

## What is a campaign

A campaign is a coordinated email attack against one or many organizations. Email attacks that steal credentials and company data are a large and lucrative industry. As technologies to stop attacks grow and multiply, attackers modify their methods to continue their success.

Microsoft leverages vast amounts of anti-phishing, anti-spam, and anti-malware data across the entire service to help identify campaigns. We analyze and classify the attack information according to several factors. For example:

- Attack source: The source IP addresses and sender email domains.
-	Message properties: The content, style, and tone of the messages.
-	Message recipients: How recipients are related. For example, recipient domains, recipient job functions (admins, executives, etc.), company types (large, small, public, private, etc.), and industries.
-	Attack payload: Malicious links, attachments, or other payloads in the messages.

A campaign might be short-lived, or could span several days, weeks, or months with active and inactive periods. A campaign might be launched against your specific organization, or your organization might be part of a larger campaign across multiple companies.

>[!TIP]
> To learn more about the data available within a campaign: [Campaign Views in Microsoft Defender for Office 365](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/campaigns)

## Watch

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWGBL8]


## Investigating a campaign

In the scenario that a campaign has targeted your organization and you’d like to learn more about the impact: 
1. Navigate to the campaign page: https://security.microsoft.com/campaigns 
1. Select the campaign name that you would like to investigate. 
1. Upon the flyout opening, select **“Download threat report.”**
1. Open the threat report and it will provide more information surrounding the campaign. The information in the report includes: 
- **Executive summary:** High level summary of the type of campaign and the number of users targeted in your organization. 
- **Analysis:** Timeline chart of when the campaign started, the count of messages targetting your organization, and the destination and verdicts of the messages. 
- **Attack origin:** Top sending IP addresses and domains with a count of messages that were delivered to inboxes in your organization. This allows you to investigate who is targeting your organization. 
-	**Email template and payload:** The subject line of the emails that were part of the campaign and URLs (and their frequency) present as part of the campaign.
-	**Recommendations:** Recommendations for next steps to remediate messages.

## Investigate Inboxed messages part of a campaign

1.	Navigate to the campaign page: security.microsoft.com/campaigns.
1.	Scroll through the list of campaigns in the **Details view**, below the graph.
1.	**Select** the campaign name you want to investigate. If the campaign has a click count more than zero, that indicates that a user in your organization clicked on a URL or downloaded a file from the email.
1.	The **campaign flyout** displays more information about the campaign, the graph displays a timeline of the campaign from campaign start to end date & the horizonal flow diagram displays the stages of the campaign from its origin, the verdict, and the current location of the messages.
1.	Below the flow diagram, selecting the **URL clicks** tab displays information regarding the click. Here you can see the user that clicks on a URL, if the user is tagged as a priority account user, the URL itself, and the time of click. 
1.	If you want to learn more about the inboxed and clicked messages. Click on **Explore messages** > **Inboxed messages**. A new tab will open and navigate to Threat Explorer. 
1.	In the **details view** of Explorer you can reference **Latest delivery** to determine if a message is still in the Inbox or was moved into quarantine by system ZAP. _To get more details about the specific message, select the message. The fly out provides extra information. Upon selecting the Open email entity page on the top left of the flyout, a new tab will open and give you further information about the message._
1.	If you would like to take an action and move the messages out of the inbox, you can **select the message** and click on **Message actions** > **Move to junk folder**. This will ensure your user doesn’t continue to interact with the malicious message that could result in a potential breach. 

## Next Steps

Read the detailed documentation on campaigns to learn more [Campaign Views in Microsoft Defender for Office 365](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/campaigns)
