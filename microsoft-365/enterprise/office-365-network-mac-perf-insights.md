---
title: "Microsoft 365 Network Insights"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/24/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
description: "Microsoft 365 Network Insights"
---

# Microsoft 365 Network Insights

Network insights are actionable issues that might affect user experience, performance or interoperability when using Microsoft 365 services, we detect insights based on network optics received from Microsoft 365 apps for your tenant users. Insights are available to view only by administrative users in your tenant. Insights can be viewed from [Network Connectivity](https://admin.cloud.microsoft/#/networkperformance) in Microsoft 365 Admin Center. 

These insights are designed to help identify and resolve network infrastructure issues that are managed either by your organization or your network provider. This infrastructure includes the network services your tenant users rely on to connect to Microsoft 365 services from various office locations. Each insight highlights a specific connectivity issue tied to the geographic location from which users are accessing Microsoft 365.

> [!TIP]
> Admins can now view Service health notifications in Microsoft 365 admin center for Network insights detected for their tenant. You may also receive an email if you opted to receive email notifications. The service health notification has a deep link that takes you directly to the detected network insight for your tenant. You receive one notification per insight detected. 

The following are the network insights that might be shown for each office location:

|#|Network Insight                                                                                             | Description                                                                                                                                                                                                            | Impact                                                                                                                                                                                                             | Protocol  |Services or Scenarios impacted                                                | What action should I take?                                                                                                                                                                                                        |
| --- | ----------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------- | -------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | Your connectivity to critical Microsoft 365 domains is failing                                              | We are detecting connectivity (HTTPS) failures to the following domains: `*.cloud.microsoft`, `*.static.microsoft`, `*.usercontent.microsoft`.                                                                         | Some or all users are unable to connect using HTTPS to subdomains or hosts within the specified wildcard domains due to network issues in infrastructure managed by your organization or your network provider.    | HTTPS     | All or any service part of Microsoft 365                                               | Check your network devices or web proxy infrastructure to ensure HTTPS connectivity is allowed to hosts in the wildcard domains `*.cloud.microsoft`, `*.static.microsoft`, `*.usercontent.microsoft` or any of their subdomains.  |
| 2   | WebSocket connection to critical Microsoft 365 domains is failing                                           | We are detecting WebSocket (WSS) connection failures to the domain: `*.cloud.microsoft`, which his cause Copilot to not work correctly for your users.                                                                 | Some or all users are unable to connect using WebSocket to subdomains or hosts within the specified wildcard domain due to network issues in infrastructure managed by your organization or your network provider. | WebSocket | All or any Microsoft 365 Copilot scenario, Real-time collaboration using Office apps.  | Check your network devices or web proxy infrastructure to ensure WebSocket protocol is allowed for connections to hosts in the wildcard domain `*.cloud.microsoft` or its subdomains.                                             |
| 3   | User connections to Microsoft 365 domains are being TLS intercepted and decrypted by a network intermediary | We detected the use of non-Microsoft 365 issued certificates for connections to Microsoft 365 services, indicating decryption and potential alteration of data connections between clients and Microsoft 365 services. | Some or all users maybe experiencing TLS break and inspect for connections to Microsoft 365 domains or hosts due to network configuration in infrastructure managed by your organization or your network provider. | HTTPS     | All or any service part of Microsoft 365                                               | We recommend working with your network team or solution provider to update network configurations and ensure that traffic to Microsoft 365 domains is exempt from TLS interception and decryption at the network layer.           |

## FAQs: Microsoft 365 Unified domains and Network Connectivity Insights

### 1. What is the unified domain for Microsoft 365 apps and services?

Microsoft announced the transition to a unified domain—**`cloud.microsoft`**—for Microsoft 365 apps and services over two years ago. This change simplifies domain management and improves connectivity across Microsoft 365. Unified domain consolidates authenticated user-facing Microsoft 365 experiences onto a single domain (cloud.microsoft) benefiting customers in several ways. For end users, it will streamline the overall experience by reducing sign-in prompts, redirects, and delays when navigating across apps. For admins, it will drastically reduce the complexity of the allow-lists required to help your tenant stay secure while enabling users to access the apps and services they need to do their work.

References for cloud.microsoft announcements:
[https://techcommunity.microsoft.com/t5/microsoft-365-blog/introducing-cloud-microsoft-a-unified-domain-for-microsoft-365/ba-p/3826287](https://techcommunity.microsoft.com/t5/microsoft-365-blog/introducing-cloud-microsoft-a-unified-domain-for-microsoft-365/ba-p/3826287)

  
---

### 2. What happens if connections to unified domains are blocked?
Blocking connectivity to unified domains such as:
- `*.cloud.microsoft`
- `*.static.microsoft`
- `*.usercontent.microsoft`

...can impact **any or all Microsoft 365 applications and services**. These domains are essential for proper functionality, including features like Microsoft Copilot.

---

### 3. What does the term "location" mean in the Connectivity report or network Insight?
The location label (e.g., “Singapore” or "Redmond, WA") typically refers to either:

- The **office location** of the user, or
- The **network egress point** (i.e., where traffic exits your network onto Internet to reach Microsoft services)

This information helps identify where connectivity issues are occurring.

---

### 4. Where can I find more details about network connectivity issues?
Visit the **[Network Connectivity page in the Microsoft 365 Admin Center](https://admin.cloud.microsoft/#/networkperformance)**. It provides:
- List of office locations discovered for your tenant users
- Egress IP address ranges per office location
- network Insights detected per location

---

### 5. What does “egress IP address ranges” mean?

These are the **public IP addresses** from which Microsoft 365 sees your network traffic. They help you understand:
- How your network connections to Microsoft 365 are NATed (Network Address Translated)

- The path your traffic takes to reach Microsoft 365 services

---

### 6. What does Microsoft test for in connectivity checks?
We test for the following:
- **TCP 443 and HTTPS** connectivity to key Microsoft 365 domains
- **WebSocket protocol** connectivity (required for Microsoft Copilot)
- **The use of non-Microsoft 365-issued certificates on connections to Microsoft 365 services** which may indicate TLS interception, decryption, inspection, and potential alteration of data traffic between clients and Microsoft 365 services within your tenant environment.

Based on these test results, issues are flagged as network Insights along with Service Health notifications.

---

### 7. Does Microsoft’s connectivity insight include user or device context?
No. The insights are **network-focused only**. Our network tests do not collect or include:
- User identities
- Device details
- Licensing information

---

### 8. Does Microsoft’s connectivity insight apply only to licensed users? For example, does Microsoft test for WebSocket connection only for licensed Copilot users?
No. Our network tests apply to all users irrespective of their licensing status for Microsoft 365 services. 

---

## Related articles

[Network connectivity in the Microsoft 365 Admin Center](office-365-network-mac-perf-overview.md)

[Microsoft 365 network assessment](office-365-network-mac-perf-score.md)

[Microsoft 365 network connectivity test tool](office-365-network-mac-perf-onboarding-tool.md)

[Microsoft 365 Network Connectivity Location Services](office-365-network-mac-location-services.md)
