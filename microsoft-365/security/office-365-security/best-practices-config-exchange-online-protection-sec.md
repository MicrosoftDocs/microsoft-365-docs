---
title: "Configuration best practices for EOP security, best practices, settings, recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail,"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 09/18/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection:
- M365-security-compliance
description: "What are best practices for Exchange Online Protection (EOP) security settings? What's recommended? What should be used aggressively? And what extras do you get if you also use Advanced Threat Protection (ATP)?"
---

# Best-practices for configuring EOP security

Exchange Online Protection (EOP) is the primary source of security for E3 Office 365 subscriptions. It's optional, and even encouraged, for E3 customers to buy a subscription to Advanced Threat Protection (ATP), ex. ATP Plan 1, in order to leverage the depth of security available in E5 Office 365 subscriptions.

We'll discuss both Recommended and Aggressive settings below, covering whether either is present and comments on how to use them. The sections begin with email validation and authentication, which involves some tinkering outside of Office 365, in DNS, and secures outbound mail. We'll continue into settings that best protect your subscription.


## Email Authentication

SPF, DKIM, and DMARC are acronyms for Sender Policy Framework, DomainKeys Identified Mail, and Domain-based Message Authentication, Reporting, and Conformance (quite a mouthful), and are the basis of email validation. These methods handle outbound email from Office 365, and help destination systems trust that email from your domain is valid and involve configurations outside of Office 365 in DNS. For more information, see the [Email validation and authentication](https://docs.microsoft.com/en-us/office365/securitycompliance/how-office-365-uses-spf-to-prevent-spoofing) section in the Security and Compliance table of contents.


|Security feature name  |Recommended  |Aggressive  |Comment  |
|---------|---------|---------|---------|
|[Create SPF records](https://docs.microsoft.com/en-us/office365/securitycompliance/set-up-spf-in-office-365-to-help-prevent-spoofing)    | Y        |    Y     |   -      |
|[Configure DKIM Signing for Domains](https://docs.microsoft.com/en-us/office365/securitycompliance/use-dkim-to-validate-outbound-email)     |  Y       |    Y     |  -       |
|[Implement DMARC with reject or quarantine action](https://docs.microsoft.com/en-us/office365/securitycompliance/use-dmarc-to-validate-email)     |   Y      |     Y    |   Use action=none for Recommended, and action=reject for Aggressive.     |

## Anti-Spam and Anti-Malware