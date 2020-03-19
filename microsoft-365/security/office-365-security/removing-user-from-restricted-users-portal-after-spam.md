---
title: "Removing a user from the Restricted Users portal after sending spam email"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 07/10/2019
audience: ITPro
ms.topic: article
f1_keywords:
- 'ms.exch.eac.ActionCenter.Restricted.Users.RestrictedUsers'
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 712cfcc1-31e8-4e51-8561-b64258a8f1e5
ms.collection:
- M365-security-compliance
description: "If a user continuously sends emails from Office 365 that are classified as spam, they will be restricted from sending any more messages."
---

# Removing a user from the Restricted Users portal after sending spam email

If a user continuously sends emails that are classified as spam from Office 365, they will be restricted from sending email, but will still be able to receive it. The user will be listed in the service as a bad outbound sender and will receive a Non-Delivery Report (NDR) that states:

> "Your message couldn't be delivered because you weren't recognized as a valid sender. The most common reason for this is that
> your email address is suspected of sending spam and it's no longer allowed to send email.  Contact  your email admin for
> assistance. Remote Server returned '550 5.1.8 Access denied, bad outbound sender."

## What do you need to know before you begin?
<a name="sectionSection0"> </a>

Estimated time to complete: 5 minutes

You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Anti-spam entry in the [Feature Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions) topic.

The following procedure can also be performed via remote PowerShell. Use the Get-BlockedSenderAddress cmdlet to get the list of restricted users and Remove-BlockedSenderAddress to remove the restriction. To learn how to use Windows PowerShell to connect to Exchange Online, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

## Remove restrictions for a blocked Microsoft email account

You complete this task in the Security & Compliance Center (SCC). [Go to the Security & Compliance Center](../../compliance/go-to-the-securitycompliance-center.md) for more details about SCC. You need to be in the **Organization Management** or the **Security Administrator** role group in order to perform these functions. [Go to Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md) for more details about SCC role groups.

1. Using a work or school account that has Office 365 global administrator privileges, sign into the Office 365 Security and Compliance Center and in the list on the left, expand **Threat Management**, choose **Review**, and then choose **Restricted Users**.

    > [!TIP]
    > To go directly to the **Restricted Users** page (formerly known as the Action Center) in the Security &amp; Compliance Center, use this URL: [https://protection.office.com/#/restrictedusers](https://protection.office.com/?hash=/restrictedusers)

2. This page will contain the list of users that have been blocked from sending email.  Find the user you wish to remove restrictions from, and select **Unblock**.

3. A fly-out will go into the details about the account whose sending is restricted. You should go through the recommendations to ensure you're taking the proper actions in case the account is actually compromised. Click **Next** when done.

4. The next screen has recommendations to help prevent future compromise. Enabling multi-factor authentication (MFA) and changing the passwords are a good defense. Click **Unblock user** when done.

5. Click **Yes** to confirm the change.

    > [!NOTE]
    > It may take 30 minutes or more before restrictions are removed.

## Making sure admins are alerted when this happens

A "User restricted from sending email" alert is available as a policy under the Office 365 Security & Compliance Alert policies page. This was formerly the outbound spam policy but is now native to the Office 365 alerting platform. Go to [Alert policies in the Security & Compliance Center](../../compliance/alert-policies.md) for more information on alerts.

> [!IMPORTANT]
> For alerts to work, audit log search must to be turned on. See how to [Turn Office 365 audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md) for more information.

The policy for this alert is a default one and comes with every Office 365 tenant and does not need to be set up. It is considered a High severity alert and will email the configured TenantAdmins group when the alert is fired whenever a user has been restricted from sending mail. Admins can update the group notified when this alert happens by going to the alert under the SCC portal > Alerts > Alert policies > Users restricted from sending email.

You will be able to Edit the alert to:
- Turn email notifications On/Off
- Email the required recipients
- Limit the notifications you get per day

## Checking for and removing restrictions using PowerShell
The PowerShell commands for Restricted Users are:
- `Get-BlockedSenderAddress`: Run to retrieve the list of users that are restricted from sending email
- `Remove-BlockedSenderAddress`: Run to remove user(s) from being restricted

## For more information

[Responding to a compromised email account](responding-to-a-compromised-email-account.md)

[Understanding the User restricted from sending email alert](https://docs.microsoft.com/office365/securitycompliance/alert-policies)

[High-risk delivery pool for outbound messages](high-risk-delivery-pool-for-outbound-messages.md)

[Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md)

[Alert policies in the Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/alert-policies)
