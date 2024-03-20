---
title: Get started using Attack simulation training
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid:
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn how to use Attack simulation training to run simulated phishing and password attacks in their Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2 organizations.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 3/20/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Get started using Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5), you can use Attack simulation training in the Microsoft Defender portal to run realistic attack scenarios in your organization. These simulated attacks can help you identify and find vulnerable users before a real attack impacts your bottom line.

This article explains the basics of Attack simulation training.

Watch this short video to learn more about Attack simulation training.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWMhvB]

> [!NOTE]
> Attack simulation training replaces the old Attack Simulator v1 experience that was available in the Security & Compliance Center at **Threat management** \> **Attack simulator** or <https://protection.office.com/attacksimulator>.

## What do you need to know before you begin?

- Attack simulation training requires a Microsoft 365 E5 or [Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md) license. For more information about licensing requirements, see [Licensing terms](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#licensing-terms).

- Attack simulation training supports on-premises mailboxes, but with reduced reporting functionality. For more information, see [Reporting issues with on-premises mailboxes](attack-simulation-training-faq.md#reporting-issues-with-on-premises-mailboxes).

- To open the Microsoft Defender portal, go to <https://security.microsoft.com>. Attack simulation training is available at **Email and collaboration** \> **Attack simulation training**. To go directly to Attack simulation training, use <https://security.microsoft.com/attacksimulator>.

- For more information about the availability of Attack simulation training across different Microsoft 365 subscriptions, see [Microsoft Defender for Office 365 service description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): You need membership in one of the following roles:
    - **Global Administrator**
    - **Security Administrator**
    - **Attack Simulation Administrators**<sup>\*</sup>: Create and manage all aspects of attack simulation campaigns.
    - **Attack Payload Author**<sup>\*</sup>: Create attack payloads that an admin can initiate later.

    <sup>\*</sup> Adding users to this role group in [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md) is currently unsupported.

    Currently, [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) isn't supported.

- There are no corresponding PowerShell cmdlets for Attack simulation training.

- Attack simulation and training related data is stored with other customer data for Microsoft 365 services. For more information, see [Microsoft 365 data locations](/microsoft-365/enterprise/o365-data-locations). Attack simulation training is available in the following regions: APC, EUR, and NAM. Countries within these regions where Attack simulation training is available include ARE, AUS, BRA, CAN, CHE, DEU, FRA, GBR, IND, JPN, KOR, LAM, NOR, POL, QAT, SGP, SWE, and ZAF.

  > [!NOTE]
  > NOR, ZAF, ARE and DEU are the latest additions. All features except reported email telemetry are available in these regions. We're working to enable the features and we'll notify customers as soon as reported email telemetry becomes available.

- As of September 2023, Attack simulation training is available in Microsoft 365 GCC and GCC High environments, but certain advanced features aren't available in GCC High (for example, payload automation, recommended payloads, the predicted compromised rate). If your organization has Office 365 G5 GCC or Microsoft Defender for Office 365 (Plan 2) for Government, you can use Attack simulation training as described in this article. Attack simulation training isn't yet available in DoD environments.

> [!NOTE]
> Attack simulation training offers a subset of capabilities to E3 customers as a trial. The trial offering contains the ability to use a Credential Harvest payload and the ability to select 'ISA Phishing' or 'Mass Market Phishing' training experiences. No other capabilities are part of the E3 trial offering.

## Simulations

A simulation in Attack simulation training is the overall campaign that delivers realistic but harmless phishing messages to users. The basic elements of a simulation are:

- Who gets the simulated phishing message and on what schedule.
- Training that users get based on their action or lack of action (for both correct and incorrect actions) on the simulated phishing message.
- The _payload_ that's used in the simulated phishing message (a link or an attachment), and the composition of the phishing message (for example, package delivered, problem with your account, or you won a prize).
- The _social engineering technique_ that's used. The payload and social engineering technique are closely related.

In Attack simulation training, multiple types of social engineering techniques are available. Except for **How-to Guide**, these techniques were curated from the [MITRE ATT&CK® framework](https://attack.mitre.org/techniques/enterprise/). Different payloads are available for different techniques.

The following social engineering techniques are available:

- **Credential Harvest**: An attacker sends the recipient a message that contains a URL. When the recipient clicks on the URL, they're taken to a website that typically shows a dialog box that asks the user for their username and password. Typically, the destination page is themed to represent a well-known website in order to build trust in the user.

- **Malware Attachment**: An attacker sends the recipient a message that contains an attachment. When the recipient opens the attachment, arbitrary code (for example, a macro) is run on the user's device to help the attacker install additional code or further entrench themselves.

- **Link in Attachment**: This technique is a hybrid of a credential harvest. An attacker sends the recipient a message that contains a URL inside of an attachment. When the recipient opens the attachment and clicks on the URL, they're taken to a website that typically shows a dialog box that asks the user for their username and password. Typically, the destination page is themed to represent a well-known website in order to build trust in the user.

- **Link to Malware**: An attacker sends the recipient a message that contains a link to an attachment on a well-known file sharing site (for example, SharePoint Online or Dropbox). When the recipient clicks on the URL, the attachment opens, and arbitrary code (for example, a macro) is run on the user's device to help the attacker install additional code or further entrench themselves.

- **Drive-by-url**: An attacker sends the recipient a message that contains a URL. When the recipient clicks on the URL, they're taken to a website that tries to run background code. This background code attempts to gather information about the recipient or deploy arbitrary code on their device. Typically, the destination website is a well-known website that has been compromised or a clone of a well-known website. Familiarity with the website helps convince the user that the link is safe to click. This technique is also known as a _watering hole attack_.

- **OAuth Consent Grant**: An attacker creates a malicious Azure Application that seeks to gain access to data. The application sends an email request that contains a URL. When the recipient clicks on the URL, the consent grant mechanism of the application asks for access to the data (for example, the user's Inbox).

- **How-to Guide**: A teaching guide that contains instructions for users (for example, how to report phishing messages).

The URLs that are used by Attack simulation training are listed in the following table:

|&nbsp;|&nbsp;|&nbsp;|
|---|---|---|
|<https://www.attemplate.com>|<https://www.exportants.it>|<https://www.resetts.it>|
|<https://www.bankmenia.com>|<https://www.exportants.org>|<https://www.resetts.org>|
|<https://www.bankmenia.de>|<https://www.financerta.com>|<https://www.salarytoolint.com>|
|<https://www.bankmenia.es>|<https://www.financerta.de>|<https://www.salarytoolint.net>|
|<https://www.bankmenia.fr>|<https://www.financerta.es>|<https://www.securembly.com>|
|<https://www.bankmenia.it>|<https://www.financerta.fr>|<https://www.securembly.de>|
|<https://www.bankmenia.org>|<https://www.financerta.it>|<https://www.securembly.es>|
|<https://www.banknown.de>|<https://www.financerta.org>|<https://www.securembly.fr>|
|<https://www.banknown.es>|<https://www.financerts.com>|<https://www.securembly.it>|
|<https://www.banknown.fr>|<https://www.financerts.de>|<https://www.securembly.org>|
|<https://www.banknown.it>|<https://www.financerts.es>|<https://www.securetta.de>|
|<https://www.banknown.org>|<https://www.financerts.fr>|<https://www.securetta.es>|
|<https://www.browsersch.com>|<https://www.financerts.it>|<https://www.securetta.fr>|
|<https://www.browsersch.de>|<https://www.financerts.org>|<https://www.securetta.it>|
|<https://www.browsersch.es>|<https://www.hardwarecheck.net>|<https://www.shareholds.com>|
|<https://www.browsersch.fr>|<https://www.hrsupportint.com>|<https://www.sharepointen.com>|
|<https://www.browsersch.it>|<https://www.mcsharepoint.com>|<https://www.sharepointin.com>|
|<https://www.browsersch.org>|<https://www.mesharepoint.com>|<https://www.sharepointle.com>|
|<https://www.docdeliveryapp.com>|<https://www.officence.com>|<https://www.sharesbyte.com>|
|<https://www.docdeliveryapp.net>|<https://www.officenced.com>|<https://www.sharession.com>|
|<https://www.docstoreinternal.com>|<https://www.officences.com>|<https://www.sharestion.com>|
|<https://www.docstoreinternal.net>|<https://www.officentry.com>|<https://www.supportin.de>|
|<https://www.doctorican.de>|<https://www.officested.com>|<https://www.supportin.es>|
|<https://www.doctorican.es>|<https://www.passwordle.de>|<https://www.supportin.fr>|
|<https://www.doctorican.fr>|<https://www.passwordle.fr>|<https://www.supportin.it>|
|<https://www.doctorican.it>|<https://www.passwordle.it>|<https://www.supportres.de>|
|<https://www.doctorican.org>|<https://www.passwordle.org>|<https://www.supportres.es>|
|<https://www.doctrical.com>|<https://www.payrolltooling.com>|<https://www.supportres.fr>|
|<https://www.doctrical.de>|<https://www.payrolltooling.net>|<https://www.supportres.it>|
|<https://www.doctrical.es>|<https://www.prizeably.com>|<https://www.supportres.org>|
|<https://www.doctrical.fr>|<https://www.prizeably.de>|<https://www.techidal.com>|
|<https://www.doctrical.it>|<https://www.prizeably.es>|<https://www.techidal.de>|
|<https://www.doctrical.org>|<https://www.prizeably.fr>|<https://www.techidal.fr>|
|<https://www.doctricant.com>|<https://www.prizeably.it>|<https://www.techidal.it>|
|<https://www.doctrings.com>|<https://www.prizeably.org>|<https://www.techniel.de>|
|<https://www.doctrings.de>|<https://www.prizegiveaway.net>|<https://www.techniel.es>|
|<https://www.doctrings.es>|<https://www.prizegives.com>|<https://www.techniel.fr>|
|<https://www.doctrings.fr>|<https://www.prizemons.com>|<https://www.techniel.it>|
|<https://www.doctrings.it>|<https://www.prizesforall.com>|<https://www.templateau.com>|
|<https://www.doctrings.org>|<https://www.prizewel.com>|<https://www.templatent.com>|
|<https://www.exportants.com>|<https://www.prizewings.com>|<https://www.templatern.com>|
|<https://www.exportants.de>|<https://www.resetts.de>|<https://www.windocyte.com>|
|<https://www.exportants.es>|<https://www.resetts.es>||
|<https://www.exportants.fr>|<https://www.resetts.fr>||

> [!NOTE]
> Check the availability of the simulated phishing URL in your supported web browsers before you use the URL in a phishing campaign. For more information, see [Phishing simulation URLs blocked by Google Safe Browsing](attack-simulation-training-faq.md#phishing-simulation-urls-blocked-by-google-safe-browsing).

### Create simulations

For instructions on how to create and launch simulations, see [Simulate a phishing attack](attack-simulation-training-simulations.md).

The _landing page_ in the simulation is where users go when they open the payload. When you create a simulation, you select the landing page to use. You can select from built-in landing pages, custom landing pages that you already created, or you can create a new landing page to use during the creation of the simulation. To create landing pages, see [Landing pages in Attack simulation training](attack-simulation-training-landing-pages.md).

_End user notifications_ in the simulation send periodic reminders to users (for example, training assignment and reminder notifications). You can select from built-in notifications, custom notifications that you already created, or you can create new notifications to use during the creation of the simulation. To create notifications, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

> [!TIP]
> _Simulation automations_ provide the following improvements over traditional simulations:
>
> - Simulation automations can include multiple social engineering techniques and related payloads (simulations contain only one).
> - Simulation automations support automated scheduling options (more than just the start date and end date in simulations).
>
> For more information, see [Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md).

### Payloads

Although Attack simulation contains many built-in payloads for the available social engineering techniques, you can create custom payloads to better suit your business needs, including [copying and customizing an existing payload](attack-simulation-training-payloads.md#copy-payloads). You can create payloads at any time before you create the simulation or during the creation of the simulation. To create payloads, see [Create a custom payload for Attack simulation training](attack-simulation-training-payloads.md#create-payloads).

In simulations that use **Credential Harvest** or **Link in Attachment** social engineering techniques, _login pages_ are part of the payload that you select. The login page is the web page where users enter their credentials. Each applicable payload uses a default login page, but you can change the login page that's used. You can select from built-in login pages, custom login pages that you already created, or you can create a new login page to use during the creation of the simulation or the payload. To create login pages, see [Login pages in Attack simulation training](attack-simulation-training-login-pages.md).

The best training experience for simulated phishing messages is to make them as close as possible to real phishing attacks that your organization might experience. What if you could capture and use harmless versions of real-world phishing messages that were detected in Microsoft 365 and use them in simulated phishing campaigns? You can, with _payload automations_ (also known as _payload harvesting_). To create payload automations, see [Payload automations for Attack simulation training](attack-simulation-training-payload-automations.md).

### Reports and insights

After you create and launch the simulation, you need to see how it's going. For example:

- Did everyone receive it?
- Who did what to the simulated phishing message and the payload within it (delete, report, open the payload, enter credentials, etc.).
- Who completed the assigned training.

The available reports and insights for Attack simulation training are described in [Insights and reports for Attack simulation training](attack-simulation-training-insights.md).

### Predicted compromise rate

You often need to tailor a simulated phishing campaign for specific audiences. If the phishing message is too close to perfect, almost everyone will be fooled by it. If it's too suspicious, no will be fooled by it. And, the phishing messages that some users consider difficult to identify are considered easy to identify by other users. So how do you strike a balance?

The _predicted compromise rate (PCR)_ indicates the potential effectiveness when the payload is used in a simulation. PCR uses intelligent historical data across Microsoft 365 to predict the percentage of people who will be compromised by the payload. For example:

- Payload content.
- Aggregated and anonymized compromise rates from other simulations.
- Payload metadata.

PCR allows you to compare the predicted vs. actual click through rates for your phishing simulations. You can also use this data to see how your organization performs compared to predicted outcomes.

PCR information for a payload is available wherever you view and select payloads, and in the following reports and insights:

- [Behavior impact on compromise rate card](attack-simulation-training-insights.md#behavior-impact-on-compromise-rate-card)
- [Training efficacy tab for the Attack simulation report](attack-simulation-training-insights.md#training-efficacy-tab-for-the-attack-simulation-report)

> [!TIP]
> Attack Simulator uses Safe Links in Defender for Office 365 to securely track click data for the URL in the payload message that's sent to targeted recipients of a phishing campaign, even if the **Track user clicks** setting in Safe Links policies is turned off.

## Training without tricks

Traditional phishing simulations present users with suspicious messages and the following goals:

- Get users to report the message as suspicious.
- Provide training after users click on or launch the simulated malicious payload and give up their credentials.

But, sometimes you don't want to wait for users to take correct or incorrect actions before you give them training. Attack simulation training provides the following features to skip the wait and go straight to training:

- **Training campaigns**: A Training campaign is a training-only assignment for the targeted users. You can directly assign training without putting users through the test of a simulation. Training campaigns make it easy to conduct learning sessions like monthly cybersecurity awareness training. For more information, see [Training campaigns in Attack simulation training](attack-simulation-training-training-campaigns.md).

- **How-to Guides in simulations**: Simulations based on the **How-to Guide** social engineering technique don't attempt to test users and don't require user action. A How-to guide is a lightweight learning experience that users can view directly in their Inbox. For example, the following built-in **How-to Guide** payloads are available, and you can create your own (including [copying and customizing an existing payload](attack-simulation-training-payloads.md#copy-payloads)):
  - **Teaching guide: How to report phishing messages**
  - **Teaching Guide: How to recognize and report QR phishing messages**
