---
title: Get started using Attack simulation training
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
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
ms.date: 7/17/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Get started using Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365 Plan 2 (add-on licenses or included in subscriptions like Microsoft 365 E5), you can use Attack simulation training in the Microsoft 365 Defender portal to run realistic attack scenarios in your organization. These simulated attacks can help you identify and find vulnerable users before a real attack impacts your bottom line. Read this article to learn more.

Watch this short video to learn more about Attack simulation training.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWMhvB]

> [!NOTE]
> Attack simulation training replaces the old Attack Simulator v1 experience that was available in the Security & Compliance Center at **Threat management** \> **Attack simulator** or <https://protection.office.com/attacksimulator>.

## What do you need to know before you begin?

- Attack simulation training requires a Microsoft 365 E5 or [Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md) license. For more information about licensing requirements, see [Licensing terms](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#licensing-terms).

- Attack simulation training supports on-premises mailboxes, but with reduced reporting functionality. For more information, see [Reporting issues with on-premises mailboxes](attack-simulation-training-faq.md#reporting-issues-with-on-premises-mailboxes).

- To open the Microsoft 365 Defender portal, go to <https://security.microsoft.com>. Attack simulation training is available at **Email and collaboration** \> **Attack simulation training**. To go directly to Attack simulation training, use <https://security.microsoft.com/attacksimulator>.

- For more information about the availability of Attack simulation training across different Microsoft 365 subscriptions, see [Microsoft Defender for Office 365 service description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): You need membership in one of the following roles:
    - **Global Administrator**
    - **Security Administrator**
    - **Attack Simulation Administrators**<sup>\*</sup>: Create and manage all aspects of attack simulation campaigns.
    - **Attack Payload Author**<sup>\*</sup>: Create attack payloads that an admin can initiate later.

    <sup>\*</sup> Adding users to this role in [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md) is currently unsupported.

- There are no corresponding PowerShell cmdlets for Attack simulation training.

- Attack simulation and training related data is stored with other customer data for Microsoft 365 services. For more information, see [Microsoft 365 data locations](../../enterprise/o365-data-locations.md). Attack simulation training is available in the following regions: APC, EUR, and NAM. Countries within these regions where Attack simulation training is available include ARE, AUS, BRA, CAN, CHE, DEU, FRA, GBR, IND, JPN, KOR, LAM, NOR, POL, QAT, SGP, SWE, and ZAF.

  > [!NOTE]
  > NOR, ZAF, ARE and DEU are the latest additions. All features except reported email telemetry will be available in these regions. We are working to enable the features and will notify our customers as soon as reported email telemetry becomes available.

- As of June 2021, Attack simulation training is available in GCC. If your organization has Office 365 G5 GCC or Microsoft Defender for Office 365 (Plan 2) for Government, you can use Attack simulation training as described in this article. Attack simulation training isn't yet available in GCC High or DoD environments.

> [!NOTE]
> Attack simulation training offers a subset of capabilities to E3 customers as a trial. The trial offering contains the ability to use a Credential Harvest payload and the ability to select 'ISA Phishing' or 'Mass Market Phishing' training experiences. No other capabilities are part of the E3 trial offering.

## Simulations

*Phishing* is a generic term for email attacks that try to steal sensitive information in messages that appear to be from legitimate or trusted senders. *Phishing* is a part of a subset of techniques we classify as *social engineering*.

In Attack simulation training, multiple types of social engineering techniques are available:

- **Credential Harvest**: An attacker sends the recipient a message that contains a URL. When the recipient clicks on the URL, they're taken to a website that typically shows a dialog box that asks the user for their username and password. Typically, the destination page is themed to represent a well-known website in order to build trust in the user.

- **Malware Attachment**: An attacker sends the recipient a message that contains an attachment. When the recipient opens the attachment, arbitrary code (for example, a macro) is run on the user's device to help the attacker install additional code or further entrench themselves.

- **Link in Attachment**: This technique is a hybrid of a credential harvest. An attacker sends the recipient a message that contains a URL inside of an attachment. When the recipient opens the attachment and clicks on the URL, they're taken to a website that typically shows a dialog box that asks the user for their username and password. Typically, the destination page is themed to represent a well-known website in order to build trust in the user.

- **Link to Malware**: An attacker sends the recipient a message that contains a link to an attachment on a well-known file sharing site (for example, SharePoint Online or Dropbox). When the recipient clicks on the URL, the attachment opens, and arbitrary code (for example, a macro) is run on the user's device to help the attacker install additional code or further entrench themselves.

- **Drive-by-url**: An attacker sends the recipient a message that contains a URL. When the recipient clicks on the URL, they're taken to a website that tries to run background code. This background code attempts to gather information about the recipient or deploy arbitrary code on their device. Typically, the destination website is a well-known website that has been compromised or a clone of a well-known website. Familiarity with the website helps convince the user that the link is safe to click. This technique is also known as a *watering hole attack*.

- **OAuth Consent Grant**: An attacker creates a malicious Azure Application that seeks to gain access to data. The application sends an email request that contains a URL. When the recipient clicks on the URL, the consent grant mechanism of the application asks for access to the data (for example, the user's Inbox).

The URLs that are used by Attack simulation training are described in the following table:

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
> Check the availability of the simulated phishing URL in your supported web browsers before you use the URL in a phishing campaign. While we work with many URL reputation vendors to always allow these simulation URLs, we don't always have full coverage (for example, Google Safe Browsing). Most vendors provide guidance that allows you to always allow specific URLs (for example, <https://support.google.com/chrome/a/answer/7532419>).

### Create a simulation

For step by step instructions on how to create and send a new simulation, see [Simulate a phishing attack](attack-simulation-training-simulations.md).

### Create a payload

For step by step instructions on how to create a payload for use within a simulation, see [Create a custom payload for Attack simulation training](attack-simulation-training-payloads.md#create-payloads).

### Gaining insights

For step by step instructions on how to gain insights with reporting, see [Gain insights through Attack simulation training](attack-simulation-training-insights.md).

### Predicted compromise rate

One of the most crucial elements in a phishing simulation is the payload selection. If you're tracking only click-through as a quality metric, there's an incentive to decrease the click rate by selecting easier-to-spot phishing payloads. Eventually, it's less likely that the user will change their behavior when a real phishing message comes along.

To combat the tendency to use low click rate payloads and to maximize educational returns, we've created a new piece of metadata for every global payload called the predicted compromise rate (PCR).

PCR uses historical data across Microsoft 365 that predicts the percentage of people who will be compromised by the payload. PCR is an intelligent mechanism that's built on information like payload content, compromise rates (aggregated and anonymized), and payload metadata. PCR predicts a more accurate potential compromise rate when the payload is used within a simulation. The benefit of PCR comes from predicting actual vs. predicted click through for a given simulation and payload.

You can also review the overall performance of your organization by measuring the difference between the predicted compromise rate and the actual compromise rate across simulations using the Training efficacy report.

> [!NOTE]
> Attack Simulator uses Safe Links in Defender for Office 365 to securely track click data for the URL in the payload message that's sent to targeted recipients of a phishing campaign, even if the **Track user clicks** setting in Safe Links policies is turned off.
