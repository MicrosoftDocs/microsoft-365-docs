---
title: Microsoft 365 Enterprise services overview | Microsoft Docs
description: This content provides an overview of Microsoft 365 Enterprise and enterprise use recommendations.
author: jeffgilb
manager: femila
ms.prod: microsoft-365-business
ms.topic: article
ms.date: 08/23/2017
ms.author: jeffgilb
ms.reviewer: jsnow
ms.custom: it-pro
---

# Microsoft 365 Enterprise services and concepts

Microsoft 365 Enterprise is designed for large organizations and integrates Office 365 Enterprise, Windows 10 Enterprise, and Enterprise Mobility + Security (EMS) to empower everyone to be creative and work together, securely. Microsoft 365 Enterprise includes an enterprise edition of Windows 10 and Office applications through Office 365 ProPlus.

Both Windows 10 and Office 365 ProPlus provide new feature releases to the enterprise in March and September via the Semi-Annual Channel. A feature release of Semi-Annual Channel is supported for 18 months. Both Microsoft Intune and System Center Configuration Manager provide capabilities to deploy and update Windows 10 and Office 365 ProPlus.

Here are the most current versions of Windows 10, Office 365 ProPlus, Microsoft Intune, and System Center Configuration Manager:

|     |**Semi-Annual Channel (Targeted)**|**Semi-Annual Channel**|
|:-----|:-----|:-----|
|**Windows 10**|Windows 10 Fall Creators Update (coming soon)|Version 1703|
|**Office 365 ProPlus**|Version 1708|Version 1705|
|**Intune**|N/A|Version 1708|
|**System Center Configuration Manager**|Technical Preview Version 1708|Version 1706<sup>*</sup>|

<sup>*</sup> Update 1706 for System Center Configuration Manager current branch is available as an in-console update for previously installed sites that run version 1606, 1610, or 1702.

> [!NOTE]
> Microsoft Azure services are also updated on a regular basis, but are not referenced by a version number. To review the latest updates, and what's coming, for Azure services, see the [cloud platform roadmap](https://www.microsoft.com/cloud-platform/roadmap).

For more information about the features available in these versions, see the following articles:
- [What's new in Windows 10](https://docs.microsoft.com/windows/whats-new/)
- [Windows 10 release information](https://technet.microsoft.com/windows/release-info)
- [Update history for Windows 10](https://support.microsoft.com/help/4018124/windows-10-update-history)
- [Office 365 client update channel releases](https://technet.microsoft.com/office/mt465751)
- [What's new in Microsoft Intune](https://docs.microsoft.com/intune/whats-new)
- [What's new in System Center Configuration Manager](https://docs.microsoft.com/sccm/core/plan-design/changes/whats-new-incremental-versions)
- [Capabilities in Technical Preview 1708 for System Center Configuration Manager](https://docs.microsoft.com/sccm/core/get-started/capabilities-in-technical-preview-1708)

## Services overview

This section provides an overview of the EMS and Office 365 services included with Microsoft 365 Enterprise and also introduces the core concepts necessary to understand how to best use it for your oganizational needs. These services provide capabilities that enable Microsoft cloud enterprise administrators to not just protect company employees’ identities and devices, but also control access to company data itself; both in transit and at rest.

|Service|Description|
|-------|-----------|
|[Microsoft Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-whatis)|Azure AD provides a full suite of identity management capabilities including multi-factor authentication, device registration, self-service password management, self-service group management, role based access control, application usage monitoring, rich auditing and security monitoring and alerting.|
|[Azure AD Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection)|This service enables you to detect potential vulnerabilities affecting your organization’s identities and configure automated responses via conditional access policies to low, medium and high sign-in risk and user risk.|
|[Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure)|This service enables organizations to minimize the number of people who have persistent access to privileged operations; Azure AD Privileged Identity Management introduces the concept of an eligible admin. Eligible admins should be users that need privileged access now and then, but not every day. The role is inactive until the user needs access, then they complete an activation process and become an active admin for a predetermined amount of time.|
|[Azure Information Protection](https://docs.microsoft.com/information-protection/understand-explore/what-is-information-protection)| Azure Information Protection is a cloud-based solution, delivered as part of the EMS E5 offering, that helps an organization to classify, label, and protect its documents and emails. This can be done automatically by administrators who define rules and conditions, manually by users, or a combination where users are given recommendations. You use Azure Information Protection labels to apply classification to documents and emails. When you do this, the classification is identifiable at all times, regardless of where the data is stored or with whom it’s shared. <br><br>Azure Information Protection policy settings are protected by [Azure Rights Management](https://docs.microsoft.com/information-protection/understand-explore/what-is-azure-rms). Similar to how the labels that are applied, protection that is applied by using Rights Management stays with the documents and emails, independently of the location—inside or outside your organization, networks, file servers, and applications.|
|[Microsoft Intune](https://docs.microsoft.com/intune/understand-explore/introduction-to-microsoft-intune)|Intune is a cloud-based enterprise mobility management (EMM) service that helps enable your workforce to be productive while keeping your corporate data protected. Intune integrates closely with Azure AD for identity and access control and is used for device and application management. [Intune’s device management](https://docs.microsoft.com/intune/deploy-use/manage-settings-and-features-on-your-devices-with-microsoft-intune-policies) capabilities are used to configure and protect your user’s devices, including Windows PCs. <br><br>Intune device management capabilities support both [Bring Your Own Device (BYOD)](https://docs.microsoft.com/enterprise-mobility-security/solutions/enable-byod) enrollment which lets users enroll their personal phones, tablets, or PCs, and [Corporate-owned Device (COD)](https://docs.microsoft.com/enterprise-mobility-security/solutions/issue-corp-devices) enrollment that enable management scenarios like automatic enrollment, shared devices, or pre-authorized enrollment requirement configurations. For added security, you can even require MFA to enroll a device. Once enrolled into management, Intune can configure device features and settings to enable secure access to company resources.|

## Important concepts to understand
Core concepts and EMS capabilities that you should be familiar with are described in the table below.

|Core Concept|Description|
|------------|-----------|
|[Azure Multi-Factor Authentication (MFA)](https://docs.microsoft.com/azure/multi-factor-authentication/multi-factor-authentication-get-started-cloud)|As Microsoft's two-step verification solution, Azure MFA helps safeguard access to data and applications while meeting user demand for a simple sign-in process. It delivers strong authentication via a range of verification methods, including phone call, text message, or mobile app verification.|
|[Azure AD Conditional Access](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access)|This capability of Azure AD enables you to enforce controls on the access to cloud apps in your environment based on specific conditions. With controls, you can either tie additional requirements to the access or you can block it. The implementation of conditional access is based on policies.|
|[Exchange Online Data Loss Prevention (DLP)](https://support.office.com/article/Overview-of-data-loss-prevention-policies-1966b2a7-d1e2-4d92-ab61-42efbb137f5e)|Exchange Online Data Loss Prevention (DLP) policies, available as a premium feature of Exchange Online Plan 2 and Office 365 subscriptions, enable organizations to identify, monitor, and automatically protect sensitive information across Office 365.<br><br>With Exchange Online DLP policies you can identify sensitive information across many locations, such as Exchange Online, SharePoint Online, and OneDrive for Business. For example, these policies help you identify documents containing sensitive information or prevent the accidental sharing of sensitive information with people outside your organization.|
|[Exchange Mail Flow/Transport Rules](https://support.office.com/en-US/article/Define-mail-flow-rules-to-encrypt-or-decrypt-email-messages-9B7DAF19-D5F2-415B-BC43-A0F5F4A585E8)|Exchange mail flow rules, also known as transport rules, look for specific conditions in messages that pass through your organization and act on them. Mail flow rules are like the Inbox rules that are available in many email clients. The main difference between mail flow rules and rules you would set up in a client application such as Outlook is that mail flow rules act on messages while they’re in transit as opposed to after the message is delivered. Mail flow rules also contain a richer set of conditions, exceptions, and actions, which provides you with the flexibility to implement many types of messaging policies.|
|[Intune Mobile Device Management](https://docs.microsoft.com/intune/understand-explore/introduction-to-microsoft-intune)|Intune provides mobile device management (MDM) by using the protocols or APIs that are available in the mobile operating systems. It includes tasks like enrolling devices into management so IT has an inventory of devices that are accessing corporate services, configuring devices to ensure they meet company security and health standards, providing certificates and Wi-Fi/VPN profiles to access corporate services, reporting on and measuring device compliance to corporate standards, and removing corporate data from managed devices.|
|[Intune app protection policies](https://docs.microsoft.com/intune/deploy-use/protect-app-data-using-mobile-app-management-policies-with-microsoft-intune)|Intune app protection policies can be used to protect your company’s data in mobile apps with or without enrolling devices into management. In fact, your users' mobile devices can even be managed by another non-Microsoft MDM solution while [Intune helps protect Office 365 information](https://docs.microsoft.com/enterprise-mobility-security/solutions/protect-company-data-without-managing-devices). While making sure your employees can still be productive, you can also prevent data loss—intentional and unintentional. By implementing app-level policies, you can restrict access to company resources and keep data within the control of your IT department.|
|[Azure AD Token Lifetime](https://docs.microsoft.com/azure/active-directory/active-directory-configurable-token-lifetimes)|You can specify the lifetime of a token issued by Azure Active Directory (Azure AD). You can set token lifetimes for all apps in your organization, for a multi-tenant (multi-organization) application, or for a specific service principal in your organization.|
|Microsoft Identity Brokers|Microsoft provides applications for every mobile platform that allow for the bridging of credentials across applications from different vendors and allows for special enhanced features that require a single secure place from where to validate credentials. We call these brokers. On iOS and Android these brokers are provided through the Microsoft Authenticator and Intune Company Portal apps. In Windows 10, this functionality is provided by an account chooser built in to the operating system, known technically as the Web Authentication Broker.|

## Security best practices and recommendations
While there is no single best recommendation for all customer environments, the [recommended security policies and configurations](microsoft-365-policies-configurations.md) article introduces important security best practices concepts to understand. This article also describes general Microsoft recommendations about how to apply policy and configuration within the Microsoft cloud to ensure that your employees are both secure and productive.

### Baseline recommended security policies and configurations
[General identity and device access policy recommendations](identity-access-policies.md) describes the common recommended policies to help you secure Microsoft 365 Enterprise. Also discussed are the default platform client configurations we recommend to provide the best SSO experience to your users, as well as the technical pre-requisites for conditional access.

### Exchange Online access policies
[Policy recommendations to help secure email](secure-email-recommended-policies.md) provides Microsoft recommendations to help you secure organizational email, and email clients that support Modern Authentication and Conditional Access. These recommendations are in addition to the [common identity and access policy recommendations](identity-access-policies.md).

### SharePoint Online access policies
Recommendations are provided to [safeguard SharePoint Online file access](sharepoint-file-access-policies.md) in addition to the [common identity and access policy recommendations](identity-access-policies.md) and [policy recommendations to help secure email](secure-email-recommended-policies.md). This article describes the new policies that must be created, and how existing policies should be amended, to protect both Exchange Online email and SharePoint online file access.

## Deploy Windows 10 and Office 365 ProPlus
Learn how to deploy Windows 10 and Office 365 ProPlus and integrate into Microsoft Azure Active Directory (Azure AD) or on-premises Active Directory Domain Services (AD DS). Deploy Windows 10, Office 365 ProPlus, and your other line-of-business apps to new devices or upgrade existing devices to Windows 10 using Intune, System Center Configuration Manager, and Group Policy to manage devices.

For more information, see the following articles:
- [Windows 10 deployment considerations](https://docs.microsoft.com/windows/deployment/planning/windows-10-deployment-considerations)
- [Deployment guide for Office 365 ProPlus](https://support.office.com/article/f99f8cd0-e648-4834-8f45-f5637351899d)
- [Best practices guide for deploying Office 365 ProPlus in the enterprise](https://support.office.com/article/31a384ca-650c-4265-b76c-a87b414fd8b8)
- [Deploy Office 365 ProPlus apps to Windows 10 devices using Intune](https://docs.microsoft.com/intune/apps-add-office365)

For deployment assistance with Microsoft 365, [contact FastTrack](https://fasttrack.microsoft.com/microsoft365).

## Manage updates to Windows 10 and Office 365 ProPlus
The following links show you how to gain maximum control over quality and feature updates for Windows 10 and Office 365 ProPlus. Learn how to effectively control bandwidth usage and keep Windows and Office up-to-date with the newest features, capabilities, and security updates.

For more information, see the following articles:
- [Overview of Windows as a service](https://docs.microsoft.com/windows/deployment/update/waas-overview)
- [Overview of update channels for Office 365 ProPlus](https://support.office.com/article/9ccf0f13-28ff-4975-9bd2-7e4ea2fefef4)
- [Manage software updates with Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure)
- [Deploy Windows 10 updates using System Center Configuration Manager](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-configuration-manager)<sup>*</sup>
- [Manage Office 365 ProPlus with Configuration Manager](https://docs.microsoft.com/sccm/sum/deploy-use/manage-office-365-proplus-updates)

<sup>*</sup> Microsoft encourages organizations currently using Configuration Manager for Windows update management to continue doing so for Windows 10 client computers.

## Next steps
[Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)
[Cloud platform roadmap](https://www.microsoft.com/cloud-platform/roadmap)
