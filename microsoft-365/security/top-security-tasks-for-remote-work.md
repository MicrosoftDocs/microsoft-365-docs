---
title: "Top 12 tasks for security teams to to support working from home"
f1.keywords:
- CSH
ms.author: bcarter
author: brendacarter
manager: johmar
audience: Admin
ms.topic: tutorial
ms.service: o365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
description: "Protect your business email and data from cyber threats, including ransomware, phishing, and malicious attachments. "
---

# Top 12 tasks for security teams to support working from home

If you are like [Microsoft](https://www.microsoft.com/microsoft-365/blog/2020/03/10/staying-productive-while-working-remotely-with-microsoft-teams/) and suddenly find yourself supporting a primarily home-based workforce, we want to help you ensure your organization is working as securely as possible. This article prioritizes tasks to help security teams implement the most important security capabilities as quickly as possible. 

If you are a small or medium-size organization using one of Microsoft's business plans, see these resources instead:
- [Top 10 ways to secure Office 365 and Microsoft 365 Business plans](../admin/security-and-compliance/secure-your-business-data.md) 
- [Microsoft 365 for Campaigns](https://docs.microsoft.com/microsoft-365/campaigns/?view=o365-worldwide) (includes a recommended security configuration for Microsoft 365 Business)

  
For customers using our enterprise plans, Microsoft recommends you complete the tasks listed in the following table that apply to your service plan. If, instead of purchasing a Microsoft 365 enterprise plan, you are combining subscriptions, note the following:
- Microsoft 365 E3 includes Enterprise Mobility + Security (EMS) E3 and Azure AD P1
- Microsoft 365 E5 includes EMS E5 and Azure AD P2
  
||**Task**| All Office 365 Enterprise plans|**Microsoft 365 E3** |**Microsoft 365 E5**|
|:-----|:-----|:-----|:-----|:-----|
|1      |Enable Azure Multi-Factor Authentication   |   ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)  |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)   | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      | 
|2     | Protect against threats in Office 365  |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png) |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)       | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)       | 
|3      |  Configure Office 365 Advanced Threat Protection  |   |      |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)     | 
|4      | Configure Azure Advanced Threat Protection (ATP)   |   |      |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)     | 
|5     |   Turn on Microsoft Advanced Threat Protection  |  |      | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      | 
|6      | Configure Intune App protection for phones and tablets |    |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)       |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)       | 
|7     | Configure MFA and conditional access for guests, including Intune app protection  |    |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)     | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      | 
|8      |  Enroll PCs into device management and require compliant PCs   |  | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)        | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)        | 
|9      | Optimize your network for cloud connectivity  |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png) |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)        | 
|10   | Train users  |    ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png) |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      | 
|11 |Get started with Microsoft Cloud App Security |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)   |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)   |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)   |
|12 |Monitor for threats and take action |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)   |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)  |![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)  |
| | | |


   
Before you begin, check your [Microsoft 365 Secure Score](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-secure-score) in the Microsoft 365 security center. From a centralized dashboard, you can monitor and improve the security for your Microsoft 365 identities, data, apps, devices, and infrastructure. You are given points for configuring recommended security features, performing security-related tasks (such as viewing reports), or addressing recommendations with a third-party application or software. The recommended tasks in this article will raise your score.
  
![Screenshot of Microsoft Secure Score](../media/secure-score.png)
  
## 1: Enable Azure Multi-Factor Authentication (MFA)
The single best thing you can do to improve security for employees working from home is to turn on MFA. If you don't already have processes in place, treat this as an emergency pilot and make sure you have support folks ready to help employees who get stuck. As you probably can't distribute hardware security devices, use Windows Hello biometrics and smartphone authentication apps like Microsoft Authenticator.

Normally, Microsoft recommends you give users 14 days to register their device for Multi-Factor Authentication before requiring MFA. However, if your workforce is suddenly working from home, go ahead and require MFA as a security priority and be prepared to help users who need it. 

Applying these policies will take only a few minutes, but be prepared to support your users over the next several days.  


|Plan  |Recommendation  |
|---------|---------|
|Office 365 plans (without Azure AD P1 or P2)     |[Enable Security defaults in Azure AD](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults). Security defaults in Azure AD include MFA for users and administrators.   |
|Microsoft 365 E3 (with Azure AD P1)     | Use [Common Conditional Access policies](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-policy-common) to configure the following policies: <br>- [Require MFA for administrators](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa) <br>- [Require MFA for all users](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa) <br> - [Block clients that don't support modern authentication](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-block-legacy)       |
|Microsoft 365 E5 (with Azure AD P2)     | Taking advantage of Azure AD Identity Protection, begin to implement Microsoft's [recommended set of conditional access and related policies](../enterprise/identity-access-policies.md) by creating these two policies:<br> - [Require MFA when sign-in risk is medium or high](../enterprise/identity-access-policies.md#require-mfa-based-on-sign-in-risk) <br>- [Block clients that don't support modern authentication](../enterprise/identity-access-policies.md#block-clients-that-dont-support-modern-authentication)<br>- [High risk users must change password](../enterprise/identity-access-policies.md#high-risk-users-must-change-password)       |
| | |


  
## 2: Protect against threats in Office 365

All Office 365 plans include a variety of threat protection features. Bumping up protection for these features takes just a few minutes.
- Anti-malware protection
- Protection from malicious URLs and files
- Anti-phishing protection
- Anti-spam protection

See [Protect against threats in Office 365](office-365-security/protect-against-threats.md) for guidance you can use as a starting point.
    

## 3: Configure Office 365 Advanced Threat Protection

Office 365 Advanced Threat Protection (ATP), included with Microsoft 365 E5 and Office 365 E5, safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools. This can take several hours to configure.

Office 365 ATP:
- Protects your organization from unknown email threats in real-time by using intelligent systems that inspect attachments and links for malicious content. These automated systems include a robust detonation platform, heuristics, and machine learning models. 
- Protects your organization when users collaborate and share files, by identifying and blocking malicious files in team sites and document libraries. 
- Applies machine learning models and advanced impersonation-detection algorithms to avert phishing attacks. 

For an overview, including a summary of plans, see [Office 365 Advanced Threat Protection](office-365-security/office-365-atp.md).

Your Global Administrator can configure these protections:
- [Set up ATP Safe Links](office-365-security/set-up-atp-safe-links-policies.md)
- [Set up ATP Safe Attachments policies](office-365-security/set-up-atp-safe-attachments-policies.md)
- [Set up a custom "do not rewrite" URLs list](office-365-security/set-up-a-custom-do-not-rewrite-urls-list-with-atp.md)
- [Set up a custom blocked URLs list](office-365-security/set-up-a-custom-blocked-urls-list-wtih-atp.md)

You'll need to work with your Exchange Online administrator and SharePoint Online administrator to configure ATP for these workloads:
- [Turn on ATP for SharePoint, OneDrive, and Microsoft Teams](office-365-security/turn-on-atp-for-spo-odb-and-teams.md)

## 4: Configure Azure Advanced Threat Protection

[Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) (Azure ATP) is a cloud-based security solution that leverages your on-premises Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Focus on this next because it protects your on-prem and your cloud infrastructure, has no dependencies or prerequisites, and can provide immediate benefit.


- See [Azure ATP Quickstarts](https://docs.microsoft.com/azure-advanced-threat-protection/install-atp-step1) to get setup quickly 
- Watch [Video: Introduction to Azure ATP](https://www.youtube.com/watch?reload=9&v=EGY2m8yU_KE)
- Review the [three phases of Azure ATP deployment](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp#whats-next)

## 5: Turn on Microsoft Advanced Threat Protection

Now that you have Office 365 ATP and Azure ATP configured, you can view the combined signals from these capabilities in one dashboard. [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection) (MTP) brings together alerts, incidents, automated investigation and response, and advanced hunting across workloads (Azure ATP, Office 365 ATP, Microsoft Defender ATP, and Microsoft Cloud App Security) into a single pane of glass experience. 
<br>

![MTP dashboard illustration](../media/top-10-security-remote-work-mtp-dashboard.png)
<br><br>
After you have configured one or more of your advanced threat protection services, turn on MTP. New features are added continually to MTP; consider opting in to receive preview features.

- [Learn more about MTP](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection?view=o365-worldwide)
- [Turn on MTP](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-enable?view=o365-worldwide)
- [Opt in for preview features](https://docs.microsoft.com/microsoft-365/security/mtp/preview?view=o365-worldwide)


## 6: Configure Intune App protection for phones and tablets

text coming

## 7: Configure MFA and conditional access for guests, including Intune app protection

text coming. test pending--are app protection policies applied to guests who's organization has also issued app protection policies?

## 8: Enroll PCs into device management and require compliant PCs

test coming

## 9: Optimize your network for cloud connectivity

If you are rapidly enabling the bulk of your employees to work from from home, this sudden switch of connectivity patterns can have a significant impact on the corporate network infrastructure. Many networks were scaled and designed before cloud services were adopted. In many cases, networks are tolerant of remote workers, but were not designed to be used remotely by all users simultaneously.

Network elements such as VPN concentrators, central network egress equipment (such as proxies and data loss prevention devices), central internet bandwidth, backhaul MPLS circuits, NAT capability and so on are suddenly put under enormous strain due to the load of the entire business using them. The end result is poor performance and productivity coupled with a poor user experience for users who are adapting to working from home.

Some of the protections that have traditionally been provided by routing traffic back through a corporate network are provided by the cloud apps your users are accessing. If you've reached this step in this article, you've implemented a set of sophisticated cloud security controls for Microsoft 365 services and data. With these controls in place, you may be ready to route remote users' traffic directly to Office 365. If you still require a VPN link for access to other applications, you can greatly improve your performance and user experience by implementing split tunneling. Once you achieve agreement in your oganization, this can be accomplished within a day by a well-coordinated network team.

For more information:
- [How to quickly optimize Office 365 traffic for remote staff & reduce the load on your infrastructure](https://techcommunity.microsoft.com/t5/office-365-blog/how-to-quickly-optimize-office-365-traffic-for-remote-staff-amp/ba-p/1214571#)
- [Alternative ways for security professionals and IT to achieve modern security controls in today's unique remote work scenarios](https://www.microsoft.com/security/blog/2020/03/26/alternative-security-professionals-it-achieve-modern-security-controls-todays-unique-remote-work-scenarios/)


## 10:  Train users

When users don't know about threat protection features at work in your organization, they can get frustrated by protection features that are perceived as slowing them down or preventing them from getting their work done. In addition, if they know ahead of time what to watch for with respect to suspicious email messages or URLs, they'll be far less likely to open questionable artifacts. Training users can save your users and security operations team a lot of time and frustration.

Use the following resources to help inform users in your organization:

. . . these work for the lower plans? . . .

|Concept  |Resources  |
|---------|---------|
|Microsoft 365     |[Customizable learning pathways](https://docs.microsoft.com/office365/customlearning/) <p>These resources can help you put together training for end users in your organization        |
|Microsoft 365 security |[Learning module: Secure your organization with built-in, intelligent security from Microsoft 365](https://docs.microsoft.com/learn/modules/security-with-microsoft-365) <p>This module enables you to describe how Microsoft 365 security features work together and to articulate the benefits of these security features. |
|Multi-factor authentication     | [Two-step verification: What is the additional verification page?](https://docs.microsoft.com/azure/active-directory/user-help/multi-factor-authentication-end-user-first-time) <p>This article helps end users understand what multi-factor authentication is and why it's being used at your organization.    |
| | |

## 11: Get started with Microsoft Cloud App Security

[Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security) provides rich visibility, control over data travel, and sophisticated analytics to identify and combat cyberthreats across all your cloud services. Once you get started with Cloud App Security, anomaly detection policies are automatically enabled, but Cloud App Security has an initial learning period of seven days during which not all anomaly detection alerts are raised.

Get started with Cloud App Security now. Later you can set up more sophisticated monitoring and controls.

- [Quickstart: Get started with Cloud App Security](https://docs.microsoft.com/cloud-app-security/getting-started-with-cloud-app-security)
- [Get instantaneous behavioral analytics and anomaly detection](https://docs.microsoft.com/cloud-app-security/anomaly-detection-policy)
- [Learn more about Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
- [Review new features and capabilities](https://docs.microsoft.com/cloud-app-security/release-notes)
- [See basic setup instructions](https://docs.microsoft.com/cloud-app-security/general-setup)

## 12: Monitor for threats and take action

Microsoft 365 includes several ways to monitor status and take appropriate actions. Your best starting point is the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)), where you can view your organization's [Microsoft Secure Score](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-secure-score?view=o365-worldwide), and any alerts or entities that require your attention.

. . . working on monitoring and dashboards by service plan . . .

- [Get started with the Microsoft 365 security center](https://docs.microsoft.com/microsoft-365/security/mtp/overview-security-center?view=o365-worldwide)
- [Monitor and view reports](https://docs.microsoft.com/microsoft-365/security/mtp/monitoring-and-reporting?view=o365-worldwide)
- [See the security portals in Microsoft 365](https://docs.microsoft.com/microsoft-365/security/mtp/portals)

## Next steps

Congratulations! You have quickly implemented some of the most important security protections. Now you're ready to go even further with threat protection capabilities (including Microsoft Defender Advanced Threat Protection), data classification and protection capabilities, and securing administrative accounts. For a deeper methodical set of security recommendations for Microsoft 365, see [Microsoft 365 Security for Business Decision Makers (BDMs)](Microsoft-365-security-for-bdm.md). 