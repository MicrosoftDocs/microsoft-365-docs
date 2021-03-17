---
title: Microsoft 365 Enterprise resource planning - Cybersecurity architecture
description: Learn how to overcome security challenges in Microsoft Enterprise architecture from Kozeta Garrett, Cybersecurity Architect at Microsoft.
ms.author: bcarter
author: brendacarter
manager: bcarter
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-identity-device-management
- M365-security-compliance
- M365solutions
ms.custom: seo-marvel-jun2020
f1.keywords: NOCSH
---

# Security hurdles you can sail over—One architect’s viewpoint

In this article, [Kozeta Garrett](https://www.linkedin.com/in/kozeta-garrett-53013a6/), Cybersecurity Architect at Microsoft, describes the top security challenges she encounters at enterprise organizations and recommends approaches for sailing over these hurdles.

## About the author

![Kozeta Garrett photo](../media/solutions-architecture-center/kozeta-garrett-security.jpg)

In my role as a Cloud Security Architect, I've worked with multiple organizations to provide strategic and technical guidance focusing on designing and implementing security architecture for customers migrating to Microsoft 365 and Azure, developing enterprise security solutions, and helping transform security architecture and culture for business resilience. My experience includes incident detection and response, malware analysis, penetration testing, and recommending improvements to IT security and defense posture. I'm very passionate about leading transformations that result in security as an enabler for the business, including modernization efforts.

It has been MOST satisfying to see how organizations that adopted a security modernization mindset over the last couple of years are in a great position that is allowing them to continue to operate remotely in a secure manner, despite the recent COVID-19 situation. Unfortunately, these circumstances have also served as a wake-up call for some customers, who weren't ready for this immediate need. Many organizations are realizing they must modernize rapidly, retire their accumulated IT security debt, and improve their security posture overnight so they can operate in these extremely unusual circumstances.

The good news is Microsoft has curated some great resources to help organizations quickly ramp up their security posture. In addition to these resources, I’d like to share the top challenges I've encountered with customers daily in the hopes that you can sail over these hurdles.

I currently live in Northern Virginia, close to our country's Capital, Washington DC. I love just about every form of outdoor activities and exercise, like running, biking, hiking, and swimming. To counter these I enjoy just as much cooking, gourmet food, and travel.

## Partner with the Security team from the start of cloud adoption

To begin, I can’t emphasize enough how important it is for teams in your organization to coordinate from the start. Security teams must be embraced as critical partners in the early stages of cloud adoption and design. This means getting security teams onboard to champion cloud adoption, not only for the added capabilities to the business (such as a great user experience from secure mobile devices, full functionality applications, or creating value on corporate data beyond the limited functionality email and productivity applications) but also to leverage the storage, AI, and computing analytics capabilities that help solve new and old security challenges. Security teams must be included in managing all aspects of this shift, including people (culture), processes (training), and technology to be successful. It also means investing in the modernization and continuous improvement of the Security Operations Center (SOC). Work together to align your security strategy with your business strategy and environment trends to ensure the digital transformation is done securely. When this is done well, organizations develop the capability to adapt faster to changes, including changes to the business, IT, and security.

Where I see customers trip over hurdles the most is when there's no real partnership between the operations and the SOC teams. While the operations team is being pressured and mandated with tight deadlines to adopt the cloud, the security teams aren't always included early in the process to revise and plan a comprehensive security strategy. This involves integrating different cloud components and components on-prem. This lack of partnership further trickles down to different teams that seem to work in silos to implement controls for their specific components, leading to the added complexity of implementation, troubleshooting, and integration.

Customers who sail over these hurdles have good partnerships between the Operations and Governance and the Security and Risk management teams to revamp the security strategy and requirements for protecting hybrid cloud workloads. They laser-focus on the ultimate security goals and outcomes—data protection and systems and services availability in accordance with cybersecurity governance, risk, and compliance requirements. These organizations develop early-stage partnerships between their Operations and Governance team and SOC, which is critical to the security design approach and will maximize the value of their investments.

## Build a modern (identity-based) security perimeter

Next, adopt a Zero Trust architecture approach. This starts with building a modern, identity-based security perimeter. Design the security architecture where every access attempt, whether on-prem or cloud, is treated as untrusted until it's verified—“never trust, always verify.” This design approach not only increases security and productivity, but it also allows users to work from anywhere with any device type. The sophisticated cloud controls included with Microsoft 365 help you protect users’ identities while controlling access to valuable resources based on user risk level.

For a recommended configuration, see [Identity and device access configurations](../security/office-365-security/microsoft-365-policies-configurations.md).

## Transition security controls to the cloud

Many security teams are still using the traditional security best practices built for an all on-premises world, including maintaining a “network perimeter security” and trying to “force” the on-prem security tools and controls to cloud solutions. Such controls were not designed for the cloud, are ineffective, and hinder the adoption of modern cloud capabilities. Processes and tools that work for a network perimeter security approach have proven to be inefficient, obstructive to cloud capabilities, and don't allow for taking advantage of modern and automated security features.

You can sail over this hurdle by shifting the defense strategies to cloud-managed protection, automated investigation and remediation, automated pen-testing, Defender for Office 365, and incident analysis. Customers who are using modern device management solutions have implemented automated management, standardized patching, antivirus, policy enforcement, and application protection across all devices (whether a smartphone, personal computer, laptop, or tablet). This eliminates the need for a VPN, Microsoft System Center Configuration Manager (SCCM), and Active Directory group policies. This, combined with conditional access policies, provides powerful control and visibility, as well as streamlined access to resources regardless of where their users are operating from.

## Strive for ‘best together’ security tools

Another hurdle I see customers stumble over is taking a ‘best of breed’ approach to security tools. Continually layering ‘best of breed’ point solutions to address emerging security needs causes enterprise security to break down. Even with the best intentions, tools in most environments don't get integrated because it becomes too expensive and complex. This, in turn, creates gaps in visibility as there are more alerts to triage than the team can handle. Retraining the SecOps team on new tools also becomes a constant challenge.

The ‘simple is better’ approach works for security too. Instead of going after ‘best of breed’ tools, sail over this hurdle by adopting a ‘best together’ strategy with tools that work together by default. Microsoft security capabilities protect your entire organization with integrated threat protection that spans applications, users, and clouds. Integration enables an organization to be more resilient and reduce risk by containing attackers at entry and rapidly remediating attacks.

## Balance security with functionality

As I come from a long cybersecurity background and experience, I tend to prefer starting with the most secure configuration out of the box and allowing organizations to relax security configurations based on their operational and security needs. However, this can come at a hefty price of lost functionality and poor user experience. As many organizations have learned, if security is too hard for users, they'll find a way to work around you, including using unmanaged cloud services. As hard as it is for me to accept, I've come to realize that the delicate functionality-security balance must be achieved.

Organizations that realize users will do whatever it takes to get their jobs done acknowledge that the "Shadow IT battle" isn't worth fighting. They recognize that IT employees are the biggest offenders when it comes to Shadow IT and the use of non-approved SaaS applications for their job. They've shifted their strategy to encourage its use (instead of suppressing) and focusing on mitigating the risks exposure it could create. These organization’s security teams don't insist that everything gets blocked, logged, and sent through a reverse proxy or a VPN. Rather, these security teams double down their efforts to protect valuable and sensitive data from being exposed to the wrong parties or malicious apps. They work to protect the integrity of the data. They're making full use of more advanced cloud information protection capabilities, including encryption, secure multi-factor authentication, automated risk and compliance, and Cloud App Security Broker (CASB) capabilities while allowing and even encouraging the protected sharing across multiple platforms. They're turning shadow IT into inspiring creativity, productivity, and collaboration, which allows their business to stay on the competitive edge.

## Adopt a methodical approach

Most of the challenges I have experienced with implementing cloud security at different organizations, regardless of industry, have been very similar. First of all, while there is plenty of great documentation on specific capabilities and features, there is a level of confusion at the organization level about what applies to them, where security features overlap, and how capabilities should be integrated. There is also a level of uncertainty about which security features come pre-configured out of the box and which require configuration by the organization. In addition, the SOC teams unfortunately have not had the full exposure, training, or the budget allocation needed to prepare for the rapid cloud adoption and digital transformation their organizations are already undergoing.

To help you clear these hurdles, Microsoft has curated several resources designed to help you take a methodical approach to your security strategy and implementation.

|Resource   |More information  |
|---------|---------|
|[Top tasks for security teams to support working from home](../security/top-security-tasks-for-remote-work.md)      | If you find yourself suddenly supporting a mostly work-at-home workforce, this article helps you ramp up security quickly. It includes top recommended tasks based on your licensing plan.    |
|[Microsoft 365 Security for Business Decisions Makers](../security/Microsoft-365-security-for-bdm.md)    | When you have time for a more comprehensive plan, this article includes recommendations that span Microsoft 365, prioritized by attack surface. It even comes with a spreadsheet you can use to sort on licensing and area (such as identity, threat protection, and monitoring).  |
|[Microsoft security architecture recommendations](/security/compass/compass)    | If you are a security architect, be sure to see security recommendations organized by discipline, including identity, networking, and security operations.   |
|[Microsoft Security Operations recommendations](/security/compass/security-operations-videos-and-decks)|Learn Microsoft recommendations for setting up and running a Security Operations Center (SOC) |
|[Chief Information Security Officer (CISO) Workshop Training](/security/ciso-workshop/ciso-workshop)   | If you’re new to cloud security, don’t miss this series of videos.        |
|[docs.security.com/security](/security/)    | Technical guidance from across Microsoft for security strategy and architecture.        |
| | |

All of these resources are designed to be used as a starting point and adapted for the needs of your organization.