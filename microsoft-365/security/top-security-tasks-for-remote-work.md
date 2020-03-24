---
title: "Top 10 tasks for security teams to to support working from home"
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

# Top 10 tasks for security teams to support working from home

If you are like [Microsoft](https://www.microsoft.com/en-us/microsoft-365/blog/2020/03/10/staying-productive-while-working-remotely-with-microsoft-teams/) and suddenly find yourself supporting a primarily home-based workforce, we want to help you ensure your organization is working as securely as possible. This article prioritizes tasks to help security teams implement the most important security capabilities as quickly as possible. 

If you are a small or medium-size organization using one of Microsoft's business plans, see these resources instead:
- [Top 10 ways to secure Office 365 and Microsoft 365 Business plans](../admin/security-and-compliance/secure-your-business-data.md) 
- [Microsoft 365 for Campaigns](office-365-security/campaigns.md) (includes a recommended security configuration for Microsoft 365 Business)

  
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
|6      |  Configure risk-based MFA with Azure AD Identity Protection  |   |      | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)        | 
|7      | Configure Intune App protection for phones and tablets |    |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)       |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)       | 
|8     | Configure MFA and conditional access for guests, including Intune app protection  |    |  ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)     | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)      | 
|9      |  Enroll PCs into device management and require compliant PCs   |  | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)        | ![Included](../media/d238e041-6854-4a78-9141-049224df0795.png)        | 
|10   |   |      |      |      | 


   
Before you begin, check your [Microsoft 365 Secure Score](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-secure-score) in the Microsoft 365 security center. From a centralized dashboard, you can monitor and improve the security for your Microsoft 365 identities, data, apps, devices, and infrastructure. You are given points for configuring recommended security features, performing security-related tasks (such as viewing reports), or addressing recommendations with a third-party application or software. The recommended tasks in this article will raise your score.
  
![Screenshot of Microsoft Secure Score](../media/secure-score.png)
  
## 1: Enable Azure Multi-Factor Authentication (MFA)
The single best thing you can do to improve security for employees working from home is to turn on MFA. If you don't already have processes in place, treat this as an emergency pilot and make sure you have support folks ready to help employees who get stuck. As you probably can't distribute hardware security devices, use Windows Hello biometrics and smartphone authentication apps like Microsoft Authenticator.

[Enable Azure Multi-Factor Authentication](https://docs.microsoft.com/en-us/azure/active-directory/authentication/tutorial-enable-azure-mfa)


After you set up multi-factor authentication for your organization, your users will be required to set up two-step verification on their devices. For more information, see [Set up 2-step verification for Office 365](https://support.office.com/article/ace1d096-61e5-449b-a875-58eb3d74de14).
  
Later, you can implement more sophisticated access controls using conditional access, Azure Active Directory Identity Protection (for risk-based access), Intune App protection, and device compliance. These take a bit more time.
  
## 2: Protect against threats in Office 365

Office 365 includes a variety of threat protection features. Bumping up protection for these features takes just a few minutes.
- Anti-malware protection
- Protection from malicious URLs and files
- Anti-phishing protection
- Anti-spam protection

See [Protect against threats in Office 365](office-365-security/protect-against-threats.md) for guidance you can use as a starting point.
    

## 3: Configure Office 365 Advanced Threat Protection

Office 365 Advanced Threat Protection (ATP) safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools. This can take several hours to configure.

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


- See [Azure ATP Quickstarts](https://docs.microsoft.com/en-us/azure-advanced-threat-protection/install-atp-step1) to get setup quickly 
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


## 6:

## 7:

