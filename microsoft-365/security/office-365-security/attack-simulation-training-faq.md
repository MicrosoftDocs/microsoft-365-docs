---
title: Attack simulation training deployment considerations and FAQ
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
description: Admins can learn about deployment considerations and frequently asked questions regarding Attack simulation and training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2 organizations.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/22/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Attack simulation training deployment considerations and FAQ

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Attack simulation training enables Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2 organizations to measure and manage social engineering risk by allowing the creation and management of phishing simulations that are powered by real-world, harmless phishing payloads. Hyper-targeted training, delivered in partnership with Terranova security, helps improve knowledge and change employee behavior.

For more information about getting started with Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

While the simulation creation and scheduling experience is designed to be free-flowing and frictionless, simulations at an enterprise scale require planning. This article helps address specific challenges that we see as our customers run simulations in their own environments.

## Issues with end user experiences

### Phishing simulation URLs blocked by Google Safe Browsing

A URL reputation service might identify one or more of the URLs that are used by Attack simulation training as unsafe. Google Safe Browsing in Google Chrome blocks some of the simulated phishing URLs with a **Deceptive site ahead** message. While we work with many URL reputation vendors to always allow our simulation URLs, we don't always have full coverage.

:::image type="content" source="../../media/attack-sim-training-faq-chrome-deceptive-site-message.png" alt-text="The Deceptive site ahead warning in Google Chrome" lightbox="../../media/attack-sim-training-faq-chrome-deceptive-site-message.png":::

This issue doesn't affect Microsoft Edge.

As part of the planning phase, be sure to check the availability of the URL in your supported web browsers before you use the URL in a phishing campaign. If the URLs are blocked by Google Safe Browsing, [follow this guidance](https://support.google.com/chrome/a/answer/7532419) from Google to allow access to the URLs.

Refer to [Get started using Attack simulation training](attack-simulation-training-get-started.md) for the list of URLs that are currently used by Attack simulation training.

### Phishing simulation and admin URLs blocked by network proxy solutions and filter drivers

Both phishing simulation URLs and admin URLs might be blocked or dropped by your intermediate security devices or filters. For example:

- Firewalls
- Web Application Firewall (WAF) solutions
- Third-party filter drivers (for example, kernel mode filters)

While we have seen few customers being blocked at this layer, it does happen. If you encounter problems, consider configuring the following URLs to bypass scanning by your security devices or filters as required:

- The simulated phishing URLs as described in [Get started using Attack simulation training](attack-simulation-training-get-started.md).
- <https://security.microsoft.com/attacksimulator>
- <https://security.microsoft.com/attacksimulationreport>
- <https://security.microsoft.com/trainingassignments>

### Simulation messages not delivered to all targeted users

It's possible that the number of users who actually receive the simulation email messages is less than the number of users who were targeted by the simulation. The following types of users are excluded as part of target validation:

- Invalid recipient email addresses.
- Guest users.
- Users that are no longer active in Azure Active Directory (Azure AD).

If you use distribution groups or mail-enabled security groups to target users, you can use the [Get-DistributionGroupMember](/powershell/module/exchange/get-distributiongroupmember) cmdlet in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to view and validate distribution group members.

## Issues with Attack simulation training reporting

### Attack simulation training reports don't contain any activity details

Attack simulation training comes with rich, actionable insights that keep you informed of the threat readiness progress of your employees. If Attack simulation training reports aren't populated with data, verify that audit logging is turned on in your organization (it's on by default).

Audit logging is required by Attack simulation training so events can be captured, recorded, and read back. Turning off audit logging has the following consequences for Attack simulation training:

- Reporting data isn't available across all reports. The reports appear empty.
- Training assignments are blocked, because data isn't available.

To verify that audit logging is on or to turn it on, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

> [!NOTE]
> Empty activity details can also be caused by no E5 licenses being assigned to users. Verify at least one E5 license is assigned to an active user to ensure that reporting events are captured and recorded.

### Reporting issues with on-premises mailboxes

Attack simulation training supports on-premises mailboxes, but with reduced reporting functionality:

- Data on whether users read, forwarded, or deleted the simulation email isn't available for on-premises mailboxes.
- The number of users who reported the simulation email isn't available for on-premises mailboxes.

### Simulation reports aren't updated immediately

Detailed simulation reports aren't updated immediately after you launch a campaign. Don't worry; this behavior is expected.

Every simulation campaign has a lifecycle. When first created, the simulation is in the **Scheduled** state. When the simulation starts, it transitions to the **In progress** state. When completed, the simulation transitions to the **Completed** state.

While a simulation is in the **Scheduled** state, the simulation reports are mostly empty. During this stage, the simulation engine is resolving the target user email addresses, expanding distribution groups, removing guest users from the list, etc.:

:::image type="content" source="../../media/attack-sim-training-faq-scheduled-state.png" alt-text="Simulation details showing the simulation in the Scheduled state" lightbox="../../media/attack-sim-training-faq-scheduled-state.png":::

Once the simulation enters the **In progress** stage, information starts trickling into the reporting:

:::image type="content" source="../../media/attack-sim-training-faq-in-progress-state.png" alt-text="Simulation details showing the simulation in the In progress state" lightbox="../../media/attack-sim-training-faq-in-progress-state.png":::

It can take up to 30 minutes for the individual simulation reports to update after the transition to the **In progress** state. The report data continues to build until the simulation reaches the **Completed** state. Reporting updates occur at the following intervals:

- Every 10 minutes for the first 60 minutes.
- Every 15 minutes after 60 minutes until two days.
- Every 30 minutes after two days until seven days.
- Every 60 minutes after seven days.

Widgets on the **Overview** page provide a quick snapshot of your organization's simulation-based security posture over time. Because these widgets reflect your overall security posture and journey over time, they're updated after each simulation campaign is completed.

> [!NOTE]
> You can use the **Export** option on the various reporting pages to extract data.

### Messages reported as phishing by users aren't appearing in simulation reports

Simulation reports in Attack simulator training provide details on user activity. For example:

- Users who clicked on the link in the message.
- Users who gave up their credentials.
- Users who reported the message as phishing.

If messages that users reported as phishing aren't captured in Attack simulation training simulation reports, there might be an Exchange mail flow rule (also known as a transport rule) that's blocking the delivery of the reported messages to Microsoft. Verify that any mail flow rules aren't blocking delivery to the following email addresses:

- junk@office365.microsoft.com
- abuse@messaging.microsoft.com
- phish@office365.microsoft.com
- not\_junk@office365.microsoft.com

### Users are assigned training after they report a simulated message

If users are assigned training after they report a phishing simulation message, check to see if your organization uses a reporting mailbox to receive user reported messages at <https://security.microsoft.com/securitysettings/userSubmission>. The reporting mailbox needs to be configured to skip many security checks as described in the [reporting mailbox prerequisites](submissions-user-reported-messages-custom-mailbox.md#configuration-requirements-for-the-reporting-mailbox).

If you don't configure the required exclusions for the custom reporting mailbox, the messages might be detonated by Safe Links or Safe Attachments protection, which causes training assignments.

## Other frequently asked questions

### Q: What is the recommended method to target users for simulation campaigns?

A: Several options are available to target users:

- Include all users (currently available to organizations with less than 40,000 users).
- Choose specific users.
- Select users from a CSV file (one email address per line).
- Azure AD group-based targeting.

We've found that campaigns where the targeted users are identified by Azure AD groups are easier to manage.

### Q: Are there any limits in targeting users while importing from a CSV or adding users?

A: The limit for importing recipients from a CSV file or adding individual recipients to a simulation is 40,000.

A recipient can be an individual user or a group. A group might contain hundreds or thousands of recipients, so an actual limit isn't placed on the number of individual users.

Managing a large CSV file or adding many individual recipients can be cumbersome. Using Azure AD groups simplify the overall management of the simulation.

### Q: Does Microsoft provide payloads in other languages?

A: Currently, there are 40+ localized payloads available in 29+ languages: English, Spanish, German, Japanese, French, Portuguese, Dutch, Italian, Swedish, Chinese (Simplified), Norwegian Bokmål, Polish, Russian, Finnish, Korean, Turkish, Hungarian, Hebrew, Thai, Arabic, Vietnamese, Slovak, Greek, Indonesian, Romanian, Slovenian, Croatian, Catalan, and Other. We've determined that direct or machine translation of existing payloads to other languages leads to inaccuracies and decreased relevance.

That being said, you can create your own payload in the language of your choice using the custom payload authoring experience. We also strongly recommend that you harvest existing payloads that were used to target users in a specific geography. In other words, let the attackers localize the content for you.

### Q: How many training videos are available?

A: Currently, there are more than 85 training modules available in the content library.

### Q: How can I switch to other languages for my admin portal and training experience?

A: In Microsoft 365 or Office 365, language configuration is specific and centralized for each user account. For instructions on how to change your language setting, see [Change your display language and time zone in Microsoft 365 for Business](https://support.microsoft.com/office/6f238bff-5252-441e-b32b-655d5d85d15b).

The configuration change might take up to 30 minutes to synchronize across all services.

### Q: Can I trigger a test simulation to understand what it looks like prior to launching a full-fledged campaign?

A: Yes you can! On the last **Review Simulation** page in the new simulation wizard, select **Send a test**. This option sends a sample phishing simulation message to the currently logged in user. After you validate the phishing message in your Inbox, you can submit the simulation.

:::image type="content" source="../../media/attack-sim-training-simulations-review-simulation.png" alt-text="The Send a test button on the Review simulation page" lightbox="../../media/attack-sim-training-simulations-review-simulation.png":::

### Q: Can I target users that belong to a different tenant as part of the same simulation campaign?

A: No. Currently, cross-tenant simulations aren't supported. Verify that all of your targeted users are in the same tenant. Any cross-tenant users or guest users are excluded from the simulation campaign.

### Q: How does region aware delivery work?

A: Region aware delivery uses the TimeZone attribute of the targeted user's mailbox and 'not before' logic to determine when to deliver the message. For example, consider the following scenario:

- At 7:00 AM in the Pacific time zone (UTC-8), an admin creates and schedules a campaign to start at 9:00 AM on the same day.
- UserA is in the Eastern time zone (UTC-5).
- UserB is also in the Pacific time zone.

At 9:00 AM on the same day, the simulation message is sent to UserB. With region-aware delivery, the message isn't sent to UserA on the same day, because 9:00 AM Pacific time is 12:00 PM Eastern time. Instead, the message is sent to UserA at 9:00 AM Eastern time on the following day.

So, on the initial run of a campaign with region aware delivery enabled, it might appear that the simulation message was sent only to users in a specific time zone. But, as time passes and more users come into scope, the targeted users increase.

### Q: Does Microsoft collect or store any information that users enter at the Credential Harvest sign-in page, used in the Credential Harvest simulation technique?

A: No. Any information entered at the credential harvest sign-in page is discarded silently. Only the 'click' is recorded to capture the compromise event. Microsoft doesn't collect, log or store any details that users enter at this step.
