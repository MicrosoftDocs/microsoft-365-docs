---
title: Converging MSDO and MSDE in the 'Microsoft 365 Security' center, OATP, MDATP, MSDO, MSDE, single pane of glass
ms.author: tracyp
author: msfttracyp
manager: dansimp
ms.date: 11/03/2020
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
description: "Manage security for Office 365 and endpoint devices in the same place, the Microsoft 365 Security center. This article outlines what's new and where to find things."
---

# The Microsoft Security center

The new [Microsoft 365 security](https://security.microsoft.com) center combines security capabilities that protect, detect, investigate, and respond to email, collaboration, *and* device threats. It converges features in Microsoft Defender for Endpoint (MSDE), with Microsoft Defender for Office 365 (MSDO) features.

The left navigation, or quick launch bar, will look familiar, but there are some new features aimed at working with greater efficiency.

The URL to access and assess this page is:
https://security.microsoft.com
<p>    

|Alerts & Actions  |Endpoints  |Email & Collaboration  |Access & Reporting  |
|---------|---------|---------|---------|
|:::image type="content" source="../../media/Converge 1 AlertsAndActions.png" alt-text="The Alerts and Actions quicklaunch bar.":::     |     :::image type="content" source="../../media/Converge 2 Endpoints.png" alt-text="The Endpoints quicklaunch bar.":::    | :::image type="content" source="../../media/Converge 3 Email and Collab.png" alt-text="The Emails and Collaboration quicklaunch bar.":::        |    :::image type="content" source="../../media/Converge 4 Access and reporting.png" alt-text="The Access and Reporting quicklaunch bar.":::    |

> [!IMPORTANT]
> The URL used by the converged Microsoft Security portal is https://security.microsoft.com, and **combines** security features in https://securitycenter.windows.com and https://protection.office.com. <p>However, what you will *see* at the Microsoft Security Center will be different according to what you subscribe to. If you have Microsoft Defender for Office 365 Plan 1 or 2, as standalone subscriptions, you won't see any capabilities around Security for Endpoints, for example.

The home page of the new portal will surface Secure Score ratings, the number of users and devices at risk, active incident illuminated lists, lists of privileged OAuth apps, device health data, informative tweets from Microsoft’s security intelligence feed, and more. You’ll also see security notifications if there are any available upon arrival.

:::image type="content" source="../../media/Converge 5 Microsoft 365 Security center.png" alt-text="This is the Microsoft Security center page with Home, Endpoints, Email and Collaboration, and miscellaneous areas.":::

This page welcomes you to the new Microsoft 365 security center experience with three headings **Intro**, **Next steps**, and **Give feedback**.

- The links under ‘Next steps’ will take you to the [Secure Score](https://security.microsoft.com/securescore?viewid=overview) page for deeper analysis of your security posture. Otherwise, clicking to [Proactively hunt](https://security.microsoft.com/advanced-hunting) for intrusions will take you directly to Hunting > Advanced Hunting.
- ‘Give feedback’ will allow you to both [join the Windows Insider program](https://insider.windows.com/en-us/) to preview and review coming changes, and the **leave feedback** on your experiences with the new portal.

This ‘Welcome’ page will disappear after you navigate through the Next button to Close, so be sure to take note of any URLs you’d want for your record. 

The ‘Guided Tour’ bar, however, will remain on the page and has these useful features.  

:::image type="content" source="../../media/Converge 12 Home Page Guided Tour bar.gif" alt-text="An animation showing the Guided tour drop down (giving tours of Endpoint and Email and Collaboration pages, a link to the Office 365 Security and Compliance center, and the What's New page curated by the Product Group for Office 365 Security.":::

## Changed and unchanged Security features

This table is a quick check list of areas where the most change has occurred between the Security & Compliance center and the Microsoft 365 Security portal.

|**Changed**  |**Unchanged**  |
|---------|---------|
|Dashboard     |  Explorer       |
|Policies & Rules     |    Investigation     |
|Attack Simulator     |    Campaign     |
|     |    Submissions     |
|     |    Review     |
|     |    Threat Tracker     |
|     |         |

## Email & Collaboration

The way you access Microsoft Defender for Office 365 (MSDO, but formerly known as Office 365 Advanced Threat Protection or ATP) has changed. The layout of the portal has both been simplified and combined with Microsoft Defender for Endpoint (or Microsoft Defender Advanced Threat Protection, MDATP). That’s quite a mouthful! In short, the new [Microsoft 365 Security portal](https://security.microsoft.com/) combines:

1. Microsoft Defender for Office 365 (MSDO)
2. Microsoft Defender for Endpoint (MSDE)

in one easy to navigate location. This means security for your Office 365 or Microsoft 365 subscription, and for the devices that connect to it, is done from one portal.

> [!NOTE]
> If you know MSDO (once Office 365 ATP) from  the core overview article ‘[Office 365 Security overview](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/?view=o365-worldwide)’, then you're aware much of the Microsoft documentation about MSDO can be roughly broken down in Security Administrator and Security Operations topics. <p>The Microsoft 365 Security center has the same strengths. Many of the administration topics appear under ‘Policies & Rules’, and ‘Dashboard’. Long term security investigation, detection, defense, and response as per Security Operations, takes place in the other sections of the Email & Collaboration section.

