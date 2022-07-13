---
title: Assess the impact of security configuration changes with Explorer
description: Examples and walkthrough of using Explorer to determine the impact of a security control (configuration) change in Microsoft Defender for Office 365
search.product: 
search.appverid: 
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTBen
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-guidance-templates
ms.topic: how-to
ms.technology: mdo
---

# Assess the impact of security configuration changes with Explorer

Before you make change(s) to your security configuration, such as policies or transport rules, It’s important to understand the impact of the change(s) so that you can plan and ensure minimal disruption to your organization.

This step-by-step guide will take you through assessing a change and exporting the impacted emails for assessment. The procedure can be applied to many different changes, by altering the criteria (filters) you use in explorer. 

## What you'll need

- Microsoft Defender for Office 365 Plan 2 (included as part of E5)
- Sufficient permissions (Security reader minimum required to assess via explorer)
- 5-10 minutes to perform the steps below.

## Assess changing normal confidence phish delivery location to quarantine (from Junk email folder)

1. **Login** to the security portal and navigate to Explorer (underneath Email & Collaboration on the left nav) https://security.microsoft.com/threatexplorer  
1. Select **Phish** from the top tab selection (All email is the default view)
1. Press the **filter** button (defaulted to “Sender”) and select **Phish confidence level** 
1. Select the **Phish confidence level** of **Normal**
1. Add an additional **filter** of **Original delivery location** set as **Junk folder**
1. Press **Refresh**, explorer is now filtered to show all the mail which is detected as high confidence phish and gets delivered to the Junk folder due to the settings in the anti-spam policy. 
1. If you wish to pivot the data displayed in the chart, you can do by using the **data slicer top left of the chart (defaulted to delivery action)**, selecting useful data such as **Sender IP**, or **Sender domain** to spot trends and top affected senders.
1. Below the chart section, where the affected emails are displayed, select **Export email list** which will generate a CSV for offline analysis. – **this is a list of the emails which would be quarantined if the phish action was changed to Quarantine (recommended change for both standard and strict presets)** 

## Assess removing a sender / domain override removal

1. **Login** to the security portal and navigate to **Explorer** (underneath Email & Collaboration on the left nav) https://security.microsoft.com/threatexplorer  
1. Select **All email** if not already selected. 
1. Press the **filter** button (defaulted to “Sender”) and add either a sender or sender domain filter, then add the entry you wish to assess impact of removal. 
1. Expand the date range to the maximum & press **Refresh** – you should now see mail listed if the sender / sending domain is still active in messaging your organization. – if not you may need to tweak the filter, or alternatively you no longer receive mail from that domain / sender and can remove the entry safely. 
1. If mail is listed, this means the entry is still an active sender, pivot the data in the chart using the data slicer (defaulted to Delivery action) to **Detection technology**. 
1. The chart should refresh, if it now displays no data, this means we have not detected any threats on any of the mail previously shown, which indicates an override is not needed as there is no detection to override. 
1. If there is data displayed when the data is sliced by **Detection technology**, this means removing the override would have impact on this sender / domain due to the protection stack taking action. 
1. You should investigate the mail further to assess if it is truly malicious and the entry can be removed, or if it is a false positive and should be remediated so it is no longer incorrectly detected as a threat (authentication is the biggest cause of false positives) 

### Further reading

Consider using secure presets [Ensuring you always have the optimal security controls with preset security policies](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/step-by-step-guides/ensuring-you-always-have-the-optimal-security-controls-with-preset-security-policies)

You can also manage authentication issues with spoof intelligence [Spoof intelligence insight](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/learn-about-spoof-intelligence)

Learn more about authentication [Email Authentication in Exchange Online Protection](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/email-validation-and-authentication)
