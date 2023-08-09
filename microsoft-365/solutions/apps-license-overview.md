---
title: "Understand app licenses used in Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand app licenses used in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Understand app licenses used in Intune

Before you can distribute managed apps to members of your organization, you must add the apps to Intune. Many of the apps that you use with Intune can be added to Intune and deployed to user's devices for free. However, some apps that you can deploy to the members of your organization may require either a license, subscription, or account for each user to use the app. Intune helps you manage app licenses as tokens. Additionally, Intune uses Azure Active Directory (Azure AD) to help manage user credentials that managed apps can utilize.  

The following table provides the primary ways to obtain app licenses that you can use with Intune:

| App   license type | Description |
|---|---|
| Standard license included with app | You can freely add these apps to Intune and deploy them to the members of your organization. These apps don't require any additional cost to use.  |
| Purchased app license  | You must purchase licenses for these apps before adding them to Intune and deploying them to members of your   organization. Each device platform (Windows, iOS, Android) offers a standard method to purchase licenses for these apps. In addition, Intune provides methods to manage the app license for each member (end user) of your organization. |
| License   for apps that requiring an account, subscription, or license from the app   developer | You can freely add and deploy the app from Intune, but the app requires an account, subscription, or license from the app vendor to use. |
| Microsoft app license of apps included with your Intune license | Based on your Microsoft Intune license, you may already have Microsoft app licenses available, allowing you to add and deploy apps to members of your organization. |

## Standard license included with app

As previously mentioned, many of the apps available to select within [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) are free to use. You can add these apps to Intune and assign them to the members of your organization without additional cost. The members of your organization can use the app without any additional license, subscription, or account. Each app may have their own standard use-license.

> [!NOTE]
> Each app type for their related platform is added within [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) by selecting **Apps** > **All apps** > **Add**.

For more information, see [Add apps to Microsoft Intune Overview](apps-add-overview.md).

## Acquire app licenses

For iOS apps, you can purchase or acquire app licenses in-volume through Apple's volume purchase program (VPP). Apple lets you purchase multiple app licenses using [Apple Business Manager](https://business.apple.com/). Depending on your Microsoft Intune license, you may already have Microsoft app licenses for specific apps available to add and deploy. Once you've connected your VPP app license with Intune, you can find and add those apps using the regular [Add app](apps-add-overview.md) process. For more information, see [Understanding licensed apps](/mem/intune/apps/apps-add#understanding-licensed-apps) and [Purchase apps in-volume for Intune](apps-purchase-volume.md).

## Apps requiring account, subscription, or license from the app vendor

You can freely add and deploy most apps provided within [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), but there are apps that require an account, subscription, or license from the app vendor to use. After [assessing your organization's app requirements](apps-add-step-1.md), you must contact the app vendor for apps that you can't purchase through a VPP program.

## Microsoft app licenses included with Intune

Intune includes several Microsoft apps based on the Microsoft license that you use for Intune. To learn more about the different Microsoft enterprise license available that includes Intune, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses). To compare the different Microsoft apps that are available with Microsoft 365, see the [licensing options available with Microsoft 365](/microsoft-365/compare-microsoft-365-enterprise-plans). To see all the options for each plan (including the available Microsoft apps), download the full [Microsoft subscription comparison table](https://go.microsoft.com/fwlink/?linkid=2139145) and locate the plans that include Microsoft Intune.

### App functionality included with Microsoft 365 E5 license

When you purchase a plan that includes Microsoft Intune, there are [Microsoft apps included with the license](apps-license-overview.md#microsoft-app-licenses-included-with-intune). For instance, common areas of functionality included with an **E5 Enterprise Mobility + Security** license are displayed in the following table.

| Capability / Feature | Details |
|---|---|
| **Microsoft 365 apps** | Includes online apps, such as Microsoft Word, Excel, PowerPoint, OneNote, Outlook, and more |
| **Email, calendar, and scheduling** | Includes Microsoft Exchange and Outlook desktop client |
| **Meetings, calling, and chat** | Includes Microsoft Teams |
| **Social, intranet, and storage** | Includes SharePoint, Viva Engage, and Viva Connections |
| **Content services** | Includes Microsoft Graph API, Microsoft Search, Microsoft Stream, and more |
| **Project and task management** | Includes Microsoft Planning and Microsoft To-Do |
| **Analytics** | Includes Productivity Score, Secure Score, Compliance Management, and Power BI Pro |
| **Viva Insights and Viva Learning** | Includes Personal insights in Teams, Viva Learning in Teams, and more |
| **Automation, app building, and chatbots** | Power Apps for Microsoft 365, Power Automate for Microsoft 365, and more |
| **Information protection** | Azure Information Protection, Automatic sensitivity labeling in Office 365 apps, Endpoint Data Loss Prevention, and more |
| **Threat protection** | Microsoft Defender Antimalware, Microsoft Defender Firewall, Application Guard for Office 365, and more |
| **Access and security** | Microsoft Defender for Cloud Apps Discovery, Microsoft Developer for Cloud Apps, Office 365 Cloud App Security |
| **Identity and access management** | Azure Active Directory Premium, Multi Factor Authentication, Microsoft Advanced Threat Analytics, and more |
| **Data lifecycle management** | Rules-based Retention Policies, Machine Learning-bsaed Retention, and more |
| **eDiscovery and auditing** | Content Search, eDiscovery, and more |
| **Risk management** | Communication Compliance, Privileged Access Management, and more |
| **Windows** | Windows 11 Edition, Azure Virtual Desktop, and Universal Print |


