---
title: "Fix email delivery issues for error code 5.7.7xx in Exchange Online"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection:
- M365-security-compliance
description: "Learn how to fix email issues for error code 5.7.7xx in Exchange Online (tenant blocked from sending mail)."
---

# Fix email delivery issues for error code 5.7.7xx in Exchange Online

This topic describes what you can do if you see status code 550 5.7.7xx in a non-delivery report (also known as an NDR, bounce message, delivery status notification, or DSN). You'll see this automated notification when your tenant is restricted from sending email in one way or another. These error codes will usually come in as 705 or 750.

## 5.7.705: Tenant has exceeded threshold restriction: What you need to know

Once your users (collectively, as organization) send a certain amount of suspicious email through the service, all users can be prevented from sending any email until the problem is fixed. This is usually the result of a compromise (most common) or sending too much bulk mail. Users will receive an NDR that states:

`550 5.7.705 Access denied, tenant has exceeded threshold`

In rare cases, this could also happen if you renew your subscription after it has already expired. It takes time for the service to sync the new subscription information (typically, no more than one day), but your organization could be blocked from sending email in the meantime. The best way to prevent this is to make sure your subscription does not expire.

## 5.7.750: Unregistered Domain Email restriction: What you need to know

Office 365 allows tenants to relay some messages through Exchange Online Protection (EOP). For example:

- An Office 365 mailbox receives email from an external sender. Mail forwarding is configured on the Office 365 mailbox, so the message goes back out to the user's external email address. This scenario is most common in education environments where students want to use their personal email accounts to view school-related messages.

- Hybrid envrionments that have on-premises email servers that send outgoing mail through EOP.

### Problems with unregistered domains

The problem is when compromised on-premises email servers relay a large volume of spam through EOP. In almost all cases, the connectors are set up correctly, but email is being sent from unregistered (also known as unprovisioned) domains. Office 365 allows a reasonable amount of email from unregistered domains, but you should configure every domain that you use to send email as an accepted domain.

Once compromised, tenants will be prevented from sending outbound email for unregistered domains. Users will receive an NDR that states:

`550 5.7.750 Service unavailable. Client blocked from sending from unregistered domains`

## How to unblocking tenant in order to send again

There are several things you need to do if your tenant is blocked from sending email:

1. Verify that all of your email domains are registered. For more information, see [Add a domain to Office 365](https://docs.microsoft.com/office365/admin/setup/add-domain) and [Manage accepted domains in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).

2. [Enable MFA](https://docs.microsoft.com/office365/admin/security-and-compliance/set-up-multi-factor-authentication) for all admins in your Office 365 organization.

3. Verify that all of your email domains are registered. For more information, see [Add a domain to Office 365](https://docs.microsoft.com/office365/admin/setup/add-domain) and [Manage accepted domains in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).

4. Look for unusual [connectors](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow). Malicious actors will often create new inbound connectors in your Office 365 organization to send spam. To view your existing connectors, see [Validate connectors in Office 365](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/validate-connectors).

5. Check for compromised users as described in [Responding to a compromised email account in Office 365](responding-to-a-compromised-email-account.md).

6. Lock down your on-premises email servers and verify that they are not compromised.

   > [!TIP]
   > There are many factors here, especially if you're using third-party servers. Regardless, you'll need to verify that all of your outgoing email is now legitimate.

7. Call Microsoft Support and ask to get your tenant unblocked to send email again. The error code is helpful, but you'll need to prove that your environment has been secured and is incapable of sending spam. To open a support case, see [Contact support for business products - Admin Help](https://docs.microsoft.com/office365/admin/contact-support-for-business-products).

## For more information

[Office 365 email anti-spam protection](anti-spam-protection.md)

[Bulk Mail guidance in the sending limits section of the Exchange Online service description](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#receiving-and-sending-limits)

[Email non-delivery reports in Office 365](https://docs.microsoft.com/exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/non-delivery-reports-in-exchange-online)

[Configure email forwarding for a mailbox](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding)

[How to set up a multifunction device or application to send email using Office 365](https://docs.microsoft.com/Exchange/mail-flow-best-practices/how-to-set-up-a-multifunction-device-or-application-to-send-email-using-office-3)

[Manage accepted domains in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
