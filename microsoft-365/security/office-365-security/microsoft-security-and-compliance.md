---
title: "The new Microsoft 365 security center and Microsoft 365 compliance center are now generally available"
ms.author: deniseb
author: denisebmsft
manager: laurawi
ms.date: 05/29/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
localization_priority: Normal
description: "Get ready for the all-new Microsoft 365 security center and compliance center"
---

# The new Microsoft 365 security center and Microsoft 365 compliance center are now generally available

**We are pleased to announce that the all-new [Microsoft 365 security center](#microsoft-365-security-center) and [Microsoft 365 compliance center](#microsoft-365-compliance-center)**, are now generally available. Read this article to get an overview of what's new, [what to expect](#what-to-expect), and [required licenses and permissions](#required-licenses-and-permissions).

## Microsoft 365 security center

Your new [Microsoft 365 security center](../mtp/overview-security-center.md) includes a dashboard to help you manage and monitor security across your identities, data, devices, apps, and infrastructure. You will also have easy access to your all-new [Microsoft Secure Score](../mtp/microsoft-secure-score.md), new device threat reports, new identity threat reports, and your Cloud App Security reports. 

[![New Microsoft 365 security center](../media/m365-security-center.png)](../mtp/overview-security-center.md)

When you use the Microsoft 365 security center for the first time, you'll see information across the top of the screen to help you get started. You'll also see how to navigate easily to the security features you're most interested in exploring. To learn more, see [Overview of the Microsoft 365 security center](../mtp/overview-security-center.md).

You will be able to access the Microsoft 365 security center at [https://security.microsoft.com](https://security.microsoft.com). 

> [!NOTE]
> You must be assigned a valid Azure Active Directory role to access the Microsoft 365 security center. To learn more, see the [Required licenses and permissions](#required-licenses-and-permissions) section (in this article).

## Microsoft 365 compliance center

Your new [Microsoft 365 compliance center](../../compliance/microsoft-365-compliance-center.md) provides you with visibility into Microsoft Compliance Manager, which reflects your overall compliance posture and gives you recommended actions to help you configure settings to meet complex compliance obligations. 

You’ll have easy access to sensitivity and retention labels and policies, data loss prevention (DLP), data governance, eDiscovery, data subject requests (DSRs), case management, and Cloud App Security. Additionally, you can gain actionable insights and leverage intelligent automation to reduce your compliance risks and safeguard your digital estate. 

[![Microsoft 365 compliance center](../media/m365-compliance-center.png)](../../compliance/microsoft-365-compliance-center.md)

When you use the Microsoft 365 compliance center for the first time, you'll see information across the top of the screen to help you get started. You'll see how to navigate easily to the compliance features you're most interested in exploring. To learn more, see [Welcome to your all-new Microsoft 365 compliance center](../../compliance/microsoft-365-compliance-center.md).

You will be to access the Microsoft 365 compliance center at [https://compliance.microsoft.com](https://compliance.microsoft.com).  

> [!NOTE]
> You must be assigned a valid Azure Active Directory role to access the Microsoft 365 compliance center. To learn more, see the [Required licenses and permissions](#required-licenses-and-permissions) section (in this article).

## What to expect

### Available now!

The new Microsoft 365 security center and the new Microsoft 365 compliance center are now generally available to Microsoft 365 customers, as of the end of March 2019. 

If you have another subscription, such as a standalone plan that includes the Office 365 Security & Compliance Center, you'll have access to the new Microsoft 365 security center and Microsoft 365 compliance center soon. To learn more, see the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap).

### Easy access!

With improved navigation, integrated solutions, and a streamlined experience, you'll be able to see and access the information you're most interested in and take advantage of the powerful security and compliance solutions in Microsoft 365. And, while more functionality and solutions are being added over the coming months, the Office 365 Security & Compliance Center ([https://protection.office.com](https://protection.office.com)) is still available.

To access the Office 365 Security & Compliance Center, in the navigation pane on the left side of the screen, choose **More resources**. Then, under **Office 365 security & compliance center**, choose **Open**.

### Smooth transition!

You can expect a smooth transition to the new centers. Eventually, the former Microsoft 365 Security & Compliance Center will be retired. Although the administrator experience will change, this won’t impact your current security and compliance configurations. If your organization has Microsoft 365 Enterprise E3 or E5, your security and compliance administrators can:

- Navigate directly to [https://security.microsoft.com](https://security.microsoft.com) and [https://compliance.microsoft.com](https://compliance.microsoft.com); <br>or  
- Go to the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), and navigate from there (in the navigation pane, click **Show all**, and then choose **Security** or **Compliance**).

In addition, you can still configure and manage settings in the existing Office 365 Security & Compliance Center ([https://protection.office.com](https://protection.office.com)). Your configurations will be maintained in both the existing Office 365 Security & Compliance Center and in the new Microsoft 365 security center and Microsoft 365 compliance center.  

## Required licenses and permissions

### Licenses

To get the new Microsoft 365 security center and Microsoft 365 compliance center, your organization must have a subscription to Microsoft 365 E3 or E5, or a Volume Licensing equivalent (which consists of Office 365 E3 or E5, Enterprise Mobility + Security E3 or E5, and Windows 10 Enterprise E3/E5). To learn more about these plans, see [Discover the Microsoft 365 solution that’s right for you](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).

### Roles and permissions

Users must be assigned the Global Administrator, Compliance Administrator, Compliance Data Administrator, Security Administrator, Security Operator, or Security Reader role in Azure Active Directory to access the new Microsoft 365 security center or Microsoft 365 compliance center.

- Global Administrators can access both the security center and the compliance center

- Compliance Administrators and Compliance Data Administrators can access the compliance center

- Security Administrators, Security Operators, and Security Readers can access the security center

 To learn more about these roles, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
 
The following table summarizes who can access various portals across Azure, Office 365, and Windows:

|Portal |Global Administrator |Security Administrator, Security Operator, or Security Reader|Compliance  Administrator or Compliance Data Administrator |
|---------|---------|---------|---------|
|[Office 365 Security & Compliance Center](https://protection.office.com) |Yes |Yes  |Yes |
|[Microsoft 365 security center](https://security.microsoft.com) |Yes  | Yes  | No        |
|[Microsoft 365 compliance center](https://compliance.microsoft.com) | Yes | No | Yes |
|[Compliance Manager](https://aka.ms/compliancemanager) |Yes | Yes |Yes  |
|[Azure Information Protection](https://docs.microsoft.com/azure/information-protection) |Yes |Yes |No |
|[Azure Security Center](https://docs.microsoft.com/azure/security-center/)  |Yes |Yes |No |
|[Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp)  |Yes |Yes |No |
|[Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) |Yes |Yes |No |
|[Identity Protection](https://docs.microsoft.com/azure/active-directory/identity-protection)     |Yes |Yes |No |
|[Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/privileged-identity-management)     |Yes |Yes |No |
|[Intune](https://docs.microsoft.com/intune)     |Yes |Yes |Yes |
|[Cloud App Security](https://docs.microsoft.com/cloud-app-security/)     |Yes |Yes |Yes |
|[Secure Score](https://docs.microsoft.com/office365/securitycompliance/office-365-secure-score)     |Yes |Yes |No |
|[Exchange](https://docs.microsoft.com/exchange/)     |Yes |Yes |Yes |

## Additional resources

[Microsoft 365 security center](../mtp/overview-security-center.md)

[Microsoft 365 compliance center](../../compliance/microsoft-365-compliance-center.md)

[Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap)

[Office 365 Security & Compliance Center Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-securitycompliance-center)

To provide feedback about Microsoft 365 security center and Microsoft 365 compliance center, such as ideas for new features, please visit [Customer Feedback for Microsoft Office 365](https://office365.uservoice.com)
