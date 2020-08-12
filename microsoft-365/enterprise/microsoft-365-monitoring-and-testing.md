---
title: "Microsoft 365 Monitoring and Testing Tenant Boundaries"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, learn how Microsoft continuously monitors and tests tenant boundaries for Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Monitoring and Testing Tenant Boundaries

Microsoft continuously monitors and explicitly tests for weaknesses and vulnerabilities in tenant boundaries, including monitoring for intrusion, permission violation attempts, and resource starvation. We also use multiple internal systems to continuously monitor for inappropriate resource utilization, which if detected, triggers built-in throttling.

Microsoft 365 has internal monitoring systems that continuously monitor for any failure and drive automated recovery when failure is detected. Microsoft 365 systems analyze deviations in service behavior and initiate self-healing processes that are built into the system. Microsoft 365 also uses outside-in monitoring in which monitoring is performed from multiple locations both from trusted third-party services (for independent SLA verification) and our own datacenters to raise alerts. For diagnostics, we have extensive logging, auditing, and tracing. Granular tracing and monitoring helps us isolate issues and perform fast and effective root cause analysis.

While Microsoft 365 has automated recovery actions where possible, Microsoft on-call engineers are available 24x7 to investigate all Severity 1 security escalations, and post-mortem reviews of every service incident contributes to continuous learning and improvement. This team includes support engineers, product developers, program managers, product managers, and senior leadership. Our on-call professionals provide timely backup and often can automate recovery actions, so that next time an event occurs, it can be self-healed.

Microsoft performs a thorough post-incident review each time a Microsoft 365 security incident occurs regardless of the magnitude of impact. A post-incident review consists of an analysis of what happened, how we responded and how we prevent similar incidents in the future. In the interest of transparency and accountability, we share post-incident review for any major service incidents with affected customers. For specific details, see [Office 365 Security Incident Management](https://aka.ms/Office365SIM).

## Assume Breach Methodology

Based on detailed analysis of security trends, Microsoft advocates and highlights the need for additional investments in reactive security processes and technologies that focus on detection and response to emerging threats, rather than solely the prevention of those threats. Because of changes in the threat landscape and in-depth analysis, Microsoft refined its security strategy beyond just preventing security breaches to one better equipped to deal with breaches when they do occur – a strategy which considers major security events not as a matter of if, but when.

While Microsoft's [Assume Breach](https://www.microsoft.com/TrustCenter/Security/default.aspx) practices have been in place for many years, many customers are unaware of the work being done behind the scenes to harden the Microsoft cloud. Assume Breach is a mindset that guides security investments, design decisions and operational security practices. Assume Breach limits the trust placed in applications, services, identities, and networks by treating them all—internal and external—as insecure and already compromised. Although the Assume Breach strategy was not borne from an actual breach of any Microsoft enterprise or cloud services, it was a recognition that many organizations, across the industry, were being breached despite all attempts to prevent it. While preventing breaches is a critical part of any organization's operations, those practices must be continuously tested and augmented to effectively address modern adversaries and advanced persistent threats. For any organization to prepare for a breach, they must first build and maintain robust, repeatable, and thoroughly-tested security response procedures.

While Prevent Breach security processes, such as threat modeling, code reviews, and security testing are very useful as part of the [Security Development Lifecycle](https://www.microsoft.com/securityengineering/sdl/), Assume Breach provides numerous advantages that help account for overall security by exercising and measuring reactive capabilities in the event of a breach.

At Microsoft, we set out to accomplish this through ongoing war-games exercises and live site penetration testing of our security response plans with the goal of improving our detection and response capability. Microsoft regularly simulates real-world breaches, conducts continuous security monitoring, and practices security incident management to validate and improve the security of Microsoft 365, Azure, and other Microsoft cloud services.

Microsoft executes its Assume Breach security strategy using two core groups:
- Red Teams (attackers)
- Blue Teams (defenders)

Both Microsoft Azure and Microsoft 365 staff separate full-time red teams and blue teams.

Referred to as "[Red Teaming](https://go.microsoft.com/fwlink/?linkid=518599)", the approach is to test Azure and Microsoft 365 systems and operations using the same tactics, techniques and procedures as real adversaries, against the live production infrastructure, without the foreknowledge of the Engineering or Operations teams. This tests Microsoft's security detection and response capabilities, and helps identify production vulnerabilities, configuration errors, invalid assumptions, and other security issues in a controlled manner. Every red team breach is followed by full disclosure between both teams to identify gaps, address findings, and improve breach response.

**NOTE**: No customer data is deliberately targeted during Red Teaming or live site penetration testing. The tests are against Microsoft 365 and Azure infrastructure and platforms, as well as Microsoft's own tenants, applications, and data. Customer tenants, applications, and content hosted in Microsoft 365 or Azure are never targeted.

## Red Teams

The red team is a group of full-time staff within Microsoft that focuses on breaching Microsoft's infrastructure, platform and Microsoft's own tenants and applications. They are the dedicated adversary (a group of ethical hackers) performing targeted and persistent attacks against Online Services (Microsoft infrastructure, platforms, and applications but not end-customers' applications or content).

The role of the red team is to attack and penetrate environments using the same steps as an adversary:
 
![Breach stages](../media/office-365-isolation-breach-stages.png)

Among other functions, red teams specifically attempt to breach tenant isolation boundaries to find bugs or gaps in our isolation design.

## Blue Teams

The blue team is comprised of either a dedicated set of security responders or members from across the security incident response, Engineering, and Operations organizations. Regardless of their make-up, they are independent and operate separately from the red team. The blue team follows established security processes and uses the latest tools and technologies to detect and respond to attacks and penetration. Just like real-world attacks, the blue team does not know when or how the red team's attacks will occur or what methods may be used. Their job, whether it is a red team attack or an actual assault, is to detect and respond to all security incidents. For this reason, the blue team is continuously on-call and must react to red team breaches the same way they would for any other breach.

When an adversary, such as a red team, has breached an environment, the blue team must:

- Gather evidence left by the adversary
- Detect the evidence as an indication of compromise
- Alert the appropriate Engineering and Operation team(s)
- Triage the alerts to determine whether they warrant further investigation
- Gather context from the environment to scope the breach
- Form a remediation plan to contain or evict the adversary
- Execute the remediation plan and recover from breach

These steps form the security incident response that runs parallel to the adversary's, as shown below:
 
![Breach response stages](../media/office-365-isolation-breach-response-stages.png)

Red team breaches allow for exercising the blue team's ability to detect and respond to real-world attacks end-to-end. Most importantly, it allows for practiced security incident response prior to a genuine breach. Additionally, because of red team breaches, the blue team enhances their situational awareness which can be valuable when dealing with future breaches (whether from the red team or another adversary). Throughout the detection and response process, the blue team produces actionable intelligence and gains visibility into the actual conditions of the environment(s) they are trying to defend. Frequently this is accomplished via data analysis and forensics, performed by the blue team, when responding to red team attacks and by establishing threat indicators, such as indicators of compromise. Much like how the red team identifies gaps in the security story, blue teams identify gaps in their ability to detect and respond. Furthermore, since the red teams model real-world attacks, the blue team can be accurately assessed on their ability, or inability, to deal with determined and persistent adversaries. Finally, red team breaches measure both readiness and impact of our breach response.
