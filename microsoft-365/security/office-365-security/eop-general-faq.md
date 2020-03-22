---
title: "EOP general FAQ"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 1/2/2018
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 9dbff00a-474e-4452-aeb5-5be9a6b8c6d5
description: "Here we answer the most common general questions about the Microsoft Exchange Online Protection (EOP) cloud-hosted email filtering service. For additional frequently asked questions (FAQ) topics, go to the following links:"
---

# EOP general FAQ

Here we answer the most common general questions about the Microsoft Exchange Online Protection (EOP) cloud-hosted email filtering service. For additional frequently asked questions (FAQ) topics, go to the following links:

- [EOP queued, deferred, and bounced messages FAQ](eop-queued-deferred-and-bounced-messages-faq.md)

- [Delegated administration FAQ](delegated-administration-faq.md)

- [Anti-spam protection FAQ](anti-spam-protection-faq.md)

- [Quarantine FAQ](quarantine-faq.md)

- [Anti-malware protection FAQ](anti-malware-protection-faq-eop.md)

- [Message Trace FAQ](https://docs.microsoft.com/exchange/monitoring/trace-an-email-message/message-trace-faq)

**Q. What is EOP?**

A. EOP is a cloud-hosted email filtering service built to protect customers from spam and malware, and to implement custom policy rules.

**Q. How do I sign up for an EOP trial or purchase EOP?**

A. Sign up for an EOP trial or purchase EOP via the web at the [Exchange Online Protection home page](https://products.office.com/exchange/exchange-email-security-spam-protection). Note that the functionality for a trial purchase is the same as for a paid subscription, but also includes the additional features provided with the [Exchange Enterprise CAL with Services](https://products.office.com/exchange/microsoft-exchange-server-licensing-licensing-overview) subscription plan.

**Q. How is EOP priced?**

A. EOP is licensed by user. For the latest pricing information, see the [Exchange Online Protection home page](https://products.office.com/exchange/exchange-email-security-spam-protection).

**Q. How long does it take to put EOP into production?**

A. When you change your MX record, as per the steps outlined in [Set up your EOP service](set-up-your-eop-service.md), and your mail flows through EOP, filtering begins immediately. The MX record may take as long as 24-48 hours to propagate via DNS. You can fine tune your protection settings in the Exchange admin center (EAC) at any time during this process.

**Q. Do I have to use all features of Microsoft Office 365 to use EOP? What if I just want EOP protection and that's all?**

A. You can use EOP to protect your on-premises mailboxes without using any other features of Office 365. This is known as a standalone subscription. A list of EOP features can be found in the [Exchange Online Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description).

**Q. Why do I need an Office 365 tenant when signing up for email filtering through EOP?**

A. Office 365 is the name given to a collection of products and services that may be accessed through an Office 365 tenant. Think of the Office 365 tenant as the starting point to which you may add licenses for email filtering.

**Q. Does EOP have a communication portal where I can find out about known issues and expected resolutions? What about new features?**

A. The Microsoft 365 admin center will have some of this information. If you are impacted by a Service Level Event then you should see a communication alert (typically accompanied by a bell icon) after signing in to the Microsoft 365 admin center. We recommend that you read and act on any items as appropriate.

Regarding new EOP features, the [Office 365 for business roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=O365) is a good resource for finding out information about upcoming new features. We'll also be posting blog articles about new features to the [Microsoft 365 Blogs](https://www.microsoft.com/microsoft-365/blog/) website.

**Q. Does the service work with legacy Exchange versions (such as Exchange Server 2010) and non-Exchange environments?**

A. Yes, the service is server agnostic and can be used with any SMTP mail transfer agent.

**Q. What size organization can use the service?**

A. Any size. The EOP network has sufficient capacity to accommodate your growth, no matter how fast your organization grows.

**What permissions do I need to set up EOP?**

In order to configure EOP, you must be an Office 365 Global Admin, or an Exchange Company Administrator (the Organization Management role group).

**Q. How do I know my data and private information are safe?**

A. To learn more about the steps we've taken to ensure the safety of your data and private information, including information about Service Level Agreements (SLAs), go to the [Office 365 Trust Center](https://www.microsoft.com/trust-center).

**Q. Are there any limits I should be aware of, such as message size limitations?**

A. Yes. For more information about limits in EOP, see [Exchange Online Protection Limits](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-limits).

**Q. Does EOP support PowerShell?**

A. Yes, full EOP functionality is available via PowerShell. For more information, see [Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/exchange-online-protection-powershell).
