---
title: "Using  Endpoint data loss prevention (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/21/2020
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

This article walks you through three scenarios where you create and modify a DLP policy that uses devices as a location.

## DLP settings

Before you get started you should set up your DLP settings which are applied to all DLP policies for devices. You must configure these if you intend to create policies that enforce:

- cloud egress restrictions
- unallowed apps restrictions

Or

- If you what to exclude noisy file paths from monitoring

![DLP settings](../media/endpoint-dlp-1-using-dlp-settings.png)

### File path exclusions

You may want to exclude certain paths from DLP monitoring, DLP alerting, and DLP policy enforcement on your devices because they are too noisy or don’t contain files you are interested in. Files in those locations will not be audited and any files that are created or modified in those locations will not be subject to DLP policy enforcement. You can configure path exclusions in DLP settings.

You can use this logic to construct your exclusion paths:

- Valid file path that ends with ‘\’, which means only files directly under folder. For example: C:\Temp\
- Valid file path that ends with ‘\*’, which means only files under sub-folders, besides the files directly under the folder. For example: C:\Temp\*
- Valid file path that ends without ‘\’ or ‘\*’, which means all files directly under folder and all sub-folders. For example: C:\Temp
- A path with wildcard between ‘\’ from each side. For example: C:\Users\*\Desktop\
- A path with wildcard between ‘\’ from each side and with ‘(number)’ to give exact number of subfolders. For example: C:\Users\*(1)\Downloads\
- A path with SYSTEM environment variables. For example: %SystemDrive%\Test\*
- A mix of all the above. For example: %SystemDrive%\Users\*\Documents\*(2)\Sub\

### Service domains

You can add domains to this list that Edge Chromium will refer to when enforcing the Endpoint DLP policy cloud upload access restriction. 

If the list mode is set to **Block**, then user will not be able to upload sensitive items to those domains. When an upload action is blocked because an item matches a DLP policy, DLP will either generate a warning or block the upload of the sensitive item.

If the list mode is set to **Allow**, then users will be able to upload sensitive items ***only*** to those domains, and upload access to all other domains is not allowed.

### Unallowed apps

When a policy's **Access by unallowed apps and browsers** setting is turned on and users attempt to use these apps to access a protected file, the activity will be allowed, blocked, or blocked but users can override the restriction. All activity is audited and available to review in activity explorer.

### Unallowed browsers

You add browsers, identified by their process names, that will be blocked from accessing files that match the conditions of an enforced  a DLP policy where the upload to cloud services restriction is set to block or block override. When these browsers are blocked from accessing a file, the end users will see a toast notification asking them to open the file through Edge Chromium.

## Tying DLP settings together

With Endpoint DLP and Edge Chromium Web browser, you can restrict unintentional sharing of sensitive items to unallowed cloud apps and services. Edge Chromium understands when an item is restricted by an Endpoint DLP policy and enforces access restrictions.

When you use Endpoint DLP as a location in a properly configured DLP policy and the Edge Chromium browser, the unallowed browsers that you've defined in these settings will be prevented from accessing the sensitive items that match your DLP policy controls. Instead, users will be redirected to use Edge
Chromium and Edge Chromium, with its understanding of DLP imposed restrictions, can block or restrict activities when the conditions in the DLP policy are met.

To use this restriction you’ll need to configure three important pieces:

1. Specify the places – services, domains, IP addresses – that you want to prevent sensitive items from being shared to
2. Add the browsers that aren’t allowed to access certain sensitive items when a DLP policy match occurs
3. Configure DLP policies to define the kinds of sensitive items for which upload should be restricted to these places by turning on **Upload to cloud services** and **Access from unallowed browser**.

You can continue to add new services, apps, and policies to extend and augment your restrictions to meet your business needs and protect sensitive data. 

This configuration will help ensure your data remains safe while also avoiding unnecessary restrictions that prevent or restrict users from accessing and sharing non-sensitive items.

## Endpoint DLP policy scenarios

To help familiarize you with Endpoint DLP features and how they surface in DLP policies, we've put together some scenarios for you to follow. All the Endpoint DLP content will be folded in to the main DLP content set when Endpoint DLP becomes generally available.

> [!IMPORTANT]
> These Endpoint DLP scenarios are not the official procedures for creating and tuning DLP policies. Refer to the below topics when you need to work with DLP policies in general situations:
>- [Overview of data loss prevention](data-loss-prevention-policies.md)
>- [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)
>- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)
>- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)

### Scenario 1: Create a policy from a template, audit only

These scenarios require that you already have devices onboarded and reporting into Activity explorer. If you haven't onboarded devices yet, see [Get started with Endpoint data loss prevention (preview)](endpoint-dlp-getting-started.md).

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies).
2. Choose **Create policy (preview)**.
3. For this scenario, choose **Privacy**, then **U.S. Personally Identifiable Information (PII) Data** and choose **Next**.
4. Toggle the **Status** field to off for all locations except **Devices**. Choose **Next**.
5. Accept the default **Review and customize settings from the template** selection and choose **Next**.
6. Accept the default **Protection actions** values and choose **Next**.
7. Select **Audit or restrict activities on Windows devices** and leave the actions set to **Audit only**. Choose **Next**.
8. Accept the default **I'd like to test it out first** value and choose **Show policy tips while in test mode**. Choose **Next**.
9. Review your settings and choose **Submit**.
10. The new DLP policy will appear in the policy list.
11. Check Activity explorer for data from the monitored endpoints. Set the location filter for devices and add the policy, then filter by policy name to see the impact of this policy. See, [Get started with activity explorer](data-classification-activity-explorer.md) if needed.
12. Attempt to share a test that contains content that will trigger the U.S. Personally Identifiable Information (PII) Data condition with someone outside your organization. This should trigger the policy.
13. Check Activity explorer for the event.

### Scenario 2: Modify the existing policy, set an alert

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies).
2. Choose the **U.S. Personally Identifiable Information (PII) Data** policy that you created in scenario 1.
3. Choose **edit policy (preview)**.
4. Go to the **Advanced DLP rules** page and edit the **Low volume of content detected U.S. Personally Identifiable Inf**
5. Scroll down to the **Incident reports** section and set **Send an alert to admins when a rule match occurs** to **On**. Email alerts will be automatically sent to the administrator and anyone else you add to the list of recipients. 
![turn-on-incident-reports](../media/endpoint-dlp-2-using-dlp-incident-reports.png)
6. For the purposes of this scenario, choose **Send alert every time an activity matches the rule**.
7. Choose **Save**.
8. Retain all your previous settings by choosing **Next** and then **Submit** the policy changes.
9. Attempt to share a test that contains content that will trigger the U.S. Personally Identifiable Information (PII) Data condition with someone outside your organization. This should trigger the policy.
10. Check Activity explorer for the event.

### Scenario 3: Modify the existing policy, block the action with allow override

1. Open the [Data loss prevention page](https://compliance.microsoft.com/datalossprevention?viewid=policies).
2. Choose the **U.S. Personally Identifiable Information (PII) Data** policy that you created in scenario 1.
3. Choose **edit policy (preview)**.
4. Go to the **Advanced DLP rules** page and edit the **Low volume of content detected U.S. Personally Identifiable Inf**
5. Scroll down to the **Audit or restrict activities on Windows device** section and for each activity set the corresponding action to  **Block with override**.
![set block with override action](../media/endpoint-dlp-6-using-dlp-set-blocked-with-override.png)
6. Choose **Save**.
7. Repeat steps 4-7 for the **High volume of content detected U.S. Personally Identifiable Inf**.
8. Retain all your previous settings by choosing **Next** and then **Submit** the policy changes.
9. Attempt to share a test that contains content that will trigger the U.S. Personally Identifiable Information (PII) Data condition with someone outside your organization. This should trigger the policy.

You'll see a popup like this on the client device:

![endpoint dlp client blocked override notification](../media/endpoint-dlp-3-using-dlp-client-blocked-override-notification.png)

10. Check Activity explorer for the event.

## See also

- [Learn about Endpoint data loss prevention (preview)](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention (preview)](endpoint-dlp-getting-started.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://docs.microsoft.com/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure Active Directory (AAD) joined](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
- [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)
- [Create a DLP policy from a template](create-a-dlp-policy-from-a-template.md)