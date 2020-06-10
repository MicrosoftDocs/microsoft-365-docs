---
title: "Step 3: Deploy security services"
f1.keywords:
- NOCSH
author: JoeDavies-MSFT
ms.author: josephd
manager: laurawi
ms.date: 05/27/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- remotework
- M365solutions
ms.custom:
description: Use Microsoft 365 security services to protect your apps, data, and devices.
---

# Step 3: Deploy security services

For remote workers, some of whom either never come into the office or very infrequently, security is an important part of the overall solution because all of their communications occurs over the Internet. Remote work needs these elements of security:

- Contolled access to the productivity apps that remote workers use, such as Microsoft Teams 
- Controlled access to and protection of the data that remote workers use, such as chat conversations or shared files
- Windows 10 devices need to be protected from malware and other types of cyber attacks

https://www.microsoft.com/security/blog/2020/04/06/protecting-your-data-and-maintaining-compliance-in-a-remote-work-environment/

## Protect applications and data


### SaaS apps with Azure AD


In addition to providing cloud authentication for users, Azure AD can also be your single control plane to secure all your apps, whether they’re on-premises, in Microsoft’s cloud, or in another cloud. Using Azure AD to sign into apps isn’t just about being more secure. It’s also about being more productive. Our customers use about 180 apps on average—and this number keeps growing. By integrating your apps into Azure AD, you can make it easy for remote workers to discover the applications they need and sign into them securely. Using the Azure portal, you can find more than 3000 SaaS applications in the App Gallery and configure them for single sign-on with just a few clicks. You can automatically provision and de-provision access to the apps so that people who need them can start using them right away.


### Cloud App Security

Cloud App Security is a Cloud Access Security Broker, a service that sits between your organization and a cloud provider like Microsoft and others. It acts as a gatekeeper, allowing the organization to extend the reach of their security policies into the cloud.

Cloud App Security uses signals from your cloud-based services—both Microsoft 365 and other SaaS apps—to protect those services from attack.

### Office ATP 

Microsoft 365 apps and data


### DLP

‎Office 365‎ has built-in tools to help prevent the accidental disclosure of sensitive information. You can use the ‎DLP‎ capabilities of ‎Teams‎ and ‎SharePoint‎ to detect inappropriately stored or shared sensitive information.

If part of your remote work strategy involves a bring-your-own-device (BYOD) policy, you can use Conditional Access App Control to prevent sensitive data from being downloaded to users' personal devices.


## Malware protection

By default, ‎SharePoint‎ Online automatically scans file uploads for known malware. ‎

Exchange Online Protection‎ (‎EOP‎) secures cloud mailboxes by default. If you want to configure stricter policies or use ‎EOP‎ to secure on-premises mailboxes, see the ‎Exchange Online Protection‎ setup guide.

## Windows Defender ATP

With many employees suddenly working from home, there are things an organization and employees can do to help remain productive without increasing cybersecurity risk.

While employees in this new remote work situation will be thinking about how to stay in touch with colleagues and coworkers using chat applications, shared documents, and replacing planned meetings with conference calls, they may not be thinking about cyberattacks. CISOs and admins need to look urgently at new scenarios and new threat vectors as their organizations become a distributed organization overnight, with less time to make detailed plans or run pilots.

Use ‎Microsoft Defender Advanced Threat Protection‎ (‎Microsoft‎ Defender ‎ATP‎) to look for attackers masquerading as employees working from home.

### Office 365 ATP Safe Links 

‎Office 365 Advanced Threat Protection‎ (‎ATP‎) safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools.

## Results of Step 3

To keep your employees :



## Next step

Continue with [Step 4](empower-people-to-work-remotely-manage-endpoints.md) to manage your devices, PCs, and other endpoints
