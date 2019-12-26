---
title: "Fix email delivery issues for error code 5.7.7xx in Exchange Online"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 06/11/2019
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

Once your users collectively, as a tenant, send a certain amount of suspicious mail through the service, all users can be prevented from sending any mail until the problem is fixed. This is usually a result of compromise (most common) or sending too much bulk mail. Users will receive a Non-Delivery Report (NDR) that states:

- 550 5.7.705 Access denied, tenant has exceeded threshold

In rare cases, this could also happen if you renew your subscription after it has already run out. The reason for this is because it takes time for the service to sync the new subscription information. This should not take more than a day, but the tenant could be blocked from sending email in the meantime. The best way to prevent this is to make sure the subscription does not run out.

## 5.7.750: Unregistered Domain Email restriction: What you need to know

Office 365 allows for tenants to relay some messages through Exchange Online Protection (EOP). One supported example of this would be when users have an Office 365 mailbox and someone external sends them email but email forwarding is configured so that it goes back out to the user's external mailbox. This is most common in education environments where students want to leverage their personal email interface but still get emails related to school. Another example is when customers are in a hybrid scenario and have on-premises servers that send email out of EOP.

### Problems with unregistered domains

The problem is when on-premises servers get compromised and end up relaying a large volume of spam out of EOP. In almost all cases, the right connectors are set up but email is being sent from unregistered, also known as unprovisioned, domains. Office 365 does allow a reasonable amount of mail to come from unregistered domains, but an Accepted Domain should be configured in the Admin Center for each domain you plan on sending out of.

Once compromised, tenants will be prevented from sending outbound mail for unregistered domains. Users will receive a Non-Delivery Report (NDR) that states:

- 550 5.7.750 Service unavailable. Client blocked from sending from unregistered domains

## How to unblocking tenant in order to send again

There are several things you need to do if your tenant get blocked for sending email:

1. Make sure that you register all of your domains in Microsoft 365 admin center. More information can be found [here](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).

2. Look for unusual connectors. Malicious actors will often create new inbound connectors in your Office 365 tenant to send spam. More information on checking your connectors can be found [here](https://docs.microsoft.com/powershell/module/exchange/mail-flow/get-inboundconnector).

3. Check to see [if users have been compromised](responding-to-a-compromised-email-account.md)

4. [Enable MFA](https://docs.microsoft.com/en-us/office365/admin/security-and-compliance/set-up-multi-factor-authentication) for all admins in your tenant.

5. Lock down your on-premises servers and ensure that they are not compromised.

   > [!TIP]
   > There are many factors involved here, especially if these are third-party servers. Regardless, you will need to be able confirm that  all mail leaving your servers are legitimate.

6. Once done, you will need to call Microsoft Support and ask to get your tenant unblocked to send from unregistered domains again.  Providing the error code is helpful, but you will need to prove that your environment is secured and that spam will not be sent again. More information on opening a support case can be found [here](https://docs.microsoft.com/office365/admin/contact-support-for-business-products).

## For more information

[Office 365 email anti-spam protection](anti-spam-protection.md)

[Bulk Mail guidance in the sending limits section of the Exchange Online service description](https://docs.microsoft.com/en-us/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#receiving-and-sending-limits)

[Email non-delivery reports in Office 365](https://docs.microsoft.com/exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/non-delivery-reports-in-exchange-online)

[Configure email forwarding for a mailbox](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding)

[How to set up a multifunction device or application to send email using Office 365](https://docs.microsoft.com/Exchange/mail-flow-best-practices/how-to-set-up-a-multifunction-device-or-application-to-send-email-using-office-3)

[Manage accepted domains in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
