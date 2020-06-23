---
title: "Using  Endpoint data loss prevention (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2020
audience: ITPro
ms.topic: article
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Learn how to configure data loss prevention (DLP) policies to use Microsoft 365 Endpoint data loss prevention (EPDLP) locations."
---

# Using Endpoint data loss prevention (preview)

This article walks you through three scenarios of creating and modifying a DLP policy that uses devices as a location.

## DLP settings

Before you get started you should set up your DLP settings which are applied to all DLP policies for devices.

![DLP settings](../media/endpoint-dlp-1-using-dlp-settings.png)

### File path exclusions

You may want to exclude certain paths from monitoring, alerting, and protection on your devices because they are too noisy and don’t contain files you are interested in. Files in those locations will not be audited and any files that are created or modified in those locations will not be protected. You can configure path exclusions in DLP settings.

You can use this logic to construct your exclusion paths:

1. Begins with – matches every file path that starts with the defined prefix. For example, C:\Windows will match any file under C:\Windows folder and its subfolders.
2. Environment variables – defined paths can contain environment variables, for example, %AppData%\app123
3. Wildcards – defined paths can contain wildcards, for example, C:\Users\*\Desktop will match C:\Users\user1\Desktop, C:\Users\user1\Desktop and also C:\Users\user1\user1\Desktop

### Service domains

You can add domains to this list that Edge Chromium will refer to when enforcing the cloud upload action. If list mode is set to Block, then the domains in the list are essentially blacklisted and DLP will either generate a warning on upload attempt or block an upload attempt of files to those domain if the file matches the conditions of the enforced policy. If the list mode is set to Allow, then those domains are essentially whitelisted for upload while upload attempts to all domains not on the whitelist will either generate a warning on upload attempt or block an upload attempt if the file matches the conditions of the enforced policy.

### Unallowed apps

When a policy's 'Access by unallowed apps and browsers' setting is turned on and users attempt to use these apps to access a protected file, the activity will be allowed, blocked, or blocked but users can override the restriction. All activity is audited and available to review in activity explorer.

### Unallowed browsers

You add browsers, identified by their process names, that will be blocked from accessing files that match the conditions of an enforced  a DLP policy where Cloud upload is set to either warn or block. When these browsers are blocked from accessing a file, the end users will see a toast notification asking them to open the file through Edge.

## Create a policy from a template

These scenarios require that you already have devices onboarded and reporting into Activity explorer. If you haven't onboarded devices yet, see [Get started with Endpoint data loss prevention (preview)](endpoint-dlp-getting-started.md).

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies).
2. Choose `Create policy (preview).
3. For this scenario, choose **Privacy**, then **U.S. Personally Identifiable Information (PII) Data** and choose **Next**.
4. Toggle the **Status** field to off for all locations except **Devices**. Choose **Next**.
5. Accept the default **Review and customize settings from the template** selection and choose **Next**.
6. Accept the default **Detect when this content is shared** and **With people outside my organization** selections and choose **Next**.
7. Accept the default **Protection actions** values and choose **Next**.
8. Select **Audit or restrict activities on Windows devices** and leave the actions set to **Audit only**. Choose **Next**.
9. Accept the default **I'd like to test it out first** value and choose **Show policy tips while in test mode**. Choose **Next**.
10. Review your settings and choose **Submit**.
11. The new DLP policy will appear in the policy list.  



make a table to capture the what it is you want the policy to do or all the values that will need to be entered.

heavily refer out to existing DLP content on how to create a policy

refer out to existing activity explorer content


Relnotes references????


