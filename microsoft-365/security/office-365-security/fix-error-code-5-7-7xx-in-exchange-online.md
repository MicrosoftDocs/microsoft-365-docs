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

Internal senders could see this NDR whenever you try to send mail if your tenant was compromised. This usually occus when the majority of traffic from your tenant has been detected as suspicious and has resulted in a ban on sending ability for the tenant. This can also occur if your users send an large amount of bulk mail from Office 365. As stated in the service description, Exchange Online customers who need to send legitimate bulk commercial email (for example, customer newsletters) should use third-party providers that specialize in these services.

Once your users collectively, as a tenant, send a certain amount of suspicious mail through the service, all users can be prevented from sending any mail until the problem is fixed. Users will receive a Non-Delivery Report (NDR) that states:

- 550 5.7.705 Access denied, tenant has exceeded threshold

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

3. Lock down your on-premises servers and ensure that they are not compromised.

> [!TIP]
> There are many factors involved here, especially if these are third-party servers. Regardless, you will need to be able confirm that  all mail leaving your servers are legitimate.

4. Once done, you will need to call Microsoft Support and ask to get your tenant unblocked to send from unregistered domains again.  Providing the error code is helpful, but you will need to prove that your environment is secured and that spam will not be sent again. More information on opening a support case can be found [here](https://support.office.com/article/Contact-support-for-business-products-Admin-Help-32a17ca7-6fa0-4870-8a8d-e25ba4ccfd4b#ID0EAADAAA=online).
  
## For more information

[Office 365 email anti-spam protection](anti-spam-protection.md)

[Email non-delivery reports in Office 365](https://support.office.com/article/email-non-delivery-reports-in-office-365-51daa6b9-2e35-49c4-a0c9-df85bf8533c3)

[Configure email forwarding for a mailbox](https://docs.microsoft.com/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding)

[How to set up a multifunction device or application to send email using Office 365](https://support.office.com/article/How-to-set-up-a-multifunction-device-or-application-to-send-email-using-Office-365-69f58e99-c550-4274-ad18-c805d654b4c4)

[Manage accepted domains in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).
