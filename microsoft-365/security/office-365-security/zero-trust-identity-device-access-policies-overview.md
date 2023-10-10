---
title: Zero Trust identity and device access configurations - Microsoft 365 for enterprise
description: Describes Microsoft recommendations and core concepts for deploying secure email, docs, and apps policies and configurations for Zero Trust.
ms.author: dansimp
author: dansimp
manager: dansimp
ms.service: microsoft-365-security
ms.topic: conceptual
audience: Admin
f1.keywords:
  - NOCSH
ms.reviewer: martincoetzer
ms.custom:
  - it-pro
  - goldenconfig
ms.collection:
  - M365-identity-device-management
  - m365-security
  - m365solution-identitydevice
  - m365solution-overview
  - m365solution-zero-trust
  - zerotrust-solution
  - highpri
  - tier1
ms.subservice: mdo
search.appverid: met150
ms.date: 10/10/2023
---

# Zero Trust identity and device access configurations

Today's workforce requires access to applications and resources that exist beyond traditional corporate network boundaries. Security architectures that rely on network firewalls and virtual private networks (VPNs) to isolate and restrict access to resources are no longer sufficient.

To address this new world of computing, Microsoft highly recommends the Zero Trust security model, which is based on these guiding principles:

- **Verify explicitly**: Always authenticate and authorize based on all available data points. This verification is where Zero Trust identity and device access policies are crucial to sign-in and ongoing validation.
- **Use least privilege access**: Limit user access with Just-In-Time and Just-Enough-Access (JIT/JEA), risk-based adaptive policies, and data protection.
- **Assume breach**: Minimize blast radius and segment access. Verify end-to-end encryption and use analytics to get visibility, drive threat detection, and improve defenses.

Here's the overall architecture of Zero Trust:

:::image type="content" source="../../media/zero-trust/zero-trust-architecture.png" alt-text="Diagram that shows Microsoft Zero Trust architecture." lightbox="../../media/zero-trust/zero-trust-architecture.png":::

Zero Trust identity and device access policies address the **Verify explicitly** guiding principle for:

- **Identities**: When an identity attempts to access a resource, verify that identity with strong authentication and ensure that requested access is compliant and typical.
- **Devices (also called endpoints)**: Monitor and enforce device health and compliance requirements for secure access.
- **Applications**: Apply controls and technologies to:
  - Ensure appropriate in-app permissions.
  - Control access based on real-time analytics.
  - Monitor for abnormal behavior
  - Control user actions.
  - Validate secure configuration options.

This series of articles describe a set of identity and device access configurations and policies using Azure Active Directory (Azure AD) Conditional Access, Microsoft Intune, and other features. These configurations and policies provide Zero Trust access to Microsoft 365 for enterprise cloud apps and services, other SaaS services, and on-premises applications that are published with Azure AD Application Proxy.

Zero Trust identity and device access settings and policies are recommended in three tiers:

- Starting point.
- Enterprise.
- Specialized security for environments with highly regulated or classified data.

These tiers and their corresponding configurations provide consistent levels of Zero Trust protection across your data, identities, and devices. These capabilities and their recommendations:

- Are supported in Microsoft 365 E3 and Microsoft 365 E5.
- Are aligned with [Microsoft Secure Score](../defender/microsoft-secure-score.md) and [identity score in Azure AD](/azure/active-directory/fundamentals/identity-secure-score). Following the recommendations will increase these scores for your organization.
- Help you to implement these [five steps to securing your identity infrastructure](/azure/security/azure-ad-secure-steps).

If your organization has unique requirements or complexities, use these recommendations as a starting point. However, most organizations can implement these recommendations as prescribed.

Watch this video for a quick overview of identity and device access configurations for Microsoft 365 for enterprise.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWxEDQ]

> [!NOTE]
> Microsoft also sells Enterprise Mobility + Security (EMS) licenses for Office 365 subscriptions. EMS E3 and EMS E5 capabilities are equivalent to those in Microsoft 365 E3 and Microsoft 365 E5. For more information, see [EMS plans](https://www.microsoft.com/microsoft-365/enterprise-mobility-security/compare-plans-and-pricing).

## Intended audience

These recommendations are intended for enterprise architects and IT professionals who are familiar with Microsoft 365 cloud productivity and security services. These services include Azure AD (identity), Microsoft Intune (device management), and Microsoft Purview Information Protection (data protection).

### Customer environment

The recommended policies are applicable to enterprise organizations operating both entirely within the Microsoft cloud and for customers with hybrid identity infrastructure. A hybrid identity structure is an on-premises Active Directory forest that's synchronized with Azure AD.

Many of our recommendations rely on services that are available only with the following licenses:

- Microsoft 365 E5.
- Microsoft 365 E3 with the E5 Security add-on.
- EMS E5.
- Azure AD Premium P2 licenses.

For organizations who don't have these licenses, we recommend that you at least implement [security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults), which is included with all Microsoft 365 plans.

### Caveats

Your organization might be subject to regulatory or other compliance requirements, including specific recommendations that require you to apply policies that diverge from these recommended configurations. These configurations recommend usage controls that haven't historically been available. We recommend these controls because we believe they represent a balance between security and productivity.

We've done our best to account for a wide variety of organizational protection requirements, but we're not able to account for all possible requirements or for all the unique aspects of your organization.

## Three levels of protection

Most organizations have specific requirements regarding security and data protection. These requirements vary by industry segment and by job functions within organizations. For example, your legal department and administrators might require additional security and information protection controls around their email correspondence that aren't required for other business units.

Each industry also has their own set of specialized regulations. We aren't trying to provide a list of all possible security options or a recommendation per industry segment or job function. Instead, we're providing recommendations for three levels of security and protection that can be applied based on the granularity of your needs.

- **Starting point**: We recommend all customers establish and use a minimum standard for protecting data, as well as the identities and devices that access your data. You can follow these recommendations to provide strong default protection as a starting point for all organizations.
- **Enterprise**: Some customers have a subset of data that must be protected at higher levels, or all data must be protected at a higher level. You can apply increased protection to all or specific data sets in your Microsoft 365 environment. We recommend protecting identities and devices that access sensitive data with comparable levels of security.
- **Specialized security**: As needed, a few customers have a small amount of data that is highly classified, constitutes trade secrets, or is regulated. Microsoft provides capabilities to help these customers meet these requirements, including added protection for identities and devices.

:::image type="content" source="../../media/microsoft-365-policies-configurations/M365-idquality-threetiers.png" alt-text="The Security cone" lightbox="../../media/microsoft-365-policies-configurations/M365-idquality-threetiers.png":::

This guidance shows you how to implement Zero Trust protection for identities and devices for each of these levels of protection. Use this guidance as a minimum for your organization and adjust the policies to meet your organization's specific requirements.

It's important to use consistent levels of protection across your identities, devices, and data. For example, protection for users with priority accounts&mdash;such as executives, leaders, managers, and others&mdash;should include the same level of protection for their identities, their devices, and the data they access.
<!--

The **Zero Trust identity and device protection for Microsoft 365** architecture model shows you which capabilities are comparable.

[![Thumb image for Zero Trust Identity and device protection for Microsoft 365 poster.](../../media/microsoft-365-policies-configurations/zero-trust-id-device-protection-model-thumbnail.png)](../../downloads/MSFT_cloud_architecture_identity&device_protection.pdf) <br> [View as a PDF](../../downloads/MSFT_cloud_architecture_identity&device_protection.pdf) \| [Download as a PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/MSFT_cloud_architecture_identity&device_protection.pdf)  \| [Download as a Visio](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/MSFT_cloud_architecture_identity&device_protection.vsdx)

-->

Additionally, see the [Deploy information protection for data privacy regulations](/microsoft-365/solutions/information-protection-deploy) solution to protect information stored in Microsoft 365.

## Security and productivity trade-offs

Implementing any security strategy requires trade-offs between security and productivity. It's helpful to evaluate how each decision affects the balance of security, functionality, and ease of use.

:::image type="content" source="../../media/microsoft-365-policies-configurations/security-triad.png" alt-text="The Security triad balancing security, functionality, and ease of use" lightbox="../../media/microsoft-365-policies-configurations/security-triad.png":::

The recommendations provided are based on the following principles:

- Know your users and be flexible to their security and functional requirements.
- Apply a security policy just in time and ensure it's meaningful.

## Services and concepts for Zero Trust identity and device access protection

Microsoft 365 for enterprise is designed for large organizations to empower everyone to be creative and work together securely.

This section provides an overview of the Microsoft 365 services and capabilities that are important for Zero Trust identity and device access.

### Azure AD

Azure AD provides a full suite of identity management capabilities. We recommend using these capabilities to secure access.

|Capability or feature|Description|Licensing|
|---|---|---|
|[Multifactor authentication (MFA)](/azure/active-directory/authentication/concept-mfa-howitworks)|MFA requires users to provide two forms of verification, such as a user password plus a notification from the Microsoft Authenticator app or a phone call. MFA greatly reduces the risk that stolen credentials can be used to access your environment. Microsoft 365 uses the Azure AD Multi-Factor Authentication service for MFA-based sign-ins.|Microsoft 365 E3 or E5|
|[Conditional Access](/azure/active-directory/conditional-access/overview)|Azure AD evaluates the conditions of the user sign-in and uses Conditional Access policies to determine the allowed access. For example, in this guidance we show you how to create a Conditional Access policy to require device compliance for access to sensitive data. This greatly reduces the risk that an attacker with their own device and stolen credentials can access your sensitive data. It also protects sensitive data on the devices, because the devices must meet specific requirements for health and security.|Microsoft 365 E3 or E5|
|[Azure AD groups](/azure/active-directory/fundamentals/active-directory-manage-groups)|Conditional Access policies, device management with Intune, and even permissions to files and sites in your organization rely on the assignment to user accounts or Azure AD groups. We recommend that you create Azure AD groups that correspond to the levels of protection. For example, executives are likely higher value targets for attackers. Therefore, it makes sense to add the user accounts of these employees to an Azure AD group and assign this group to Conditional Access policies and other policies that enforce a higher level of protection for access.|Microsoft 365 E3 or E5|
|[Device enrollment](/azure/active-directory/devices/overview)|You enroll a device into Azure AD to create an identity for the device. This identity is used to authenticate the device when a user signs in and to apply Conditional Access policies that require domain-joined or compliant PCs. For this guidance, we use device enrollment to automatically enroll domain-joined Windows computers. Device enrollment is a prerequisite for managing devices with Intune.|Microsoft 365 E3 or E5|
|[Azure AD Identity Protection](/azure/active-directory/identity-protection/overview)|Enables you to detect potential vulnerabilities affecting your organization's identities and configure automated remediation policy to low, medium, and high sign-in risk and user risk. This guidance relies on this risk evaluation to apply Conditional Access policies for multifactor authentication. This guidance also includes a Conditional Access policy that requires users to change their password if high-risk activity is detected for their account.|Microsoft 365 E5, Microsoft 365 E3 with the E5 Security add-on, EMS E5, or Azure AD Premium P2 licenses|
|[Self-service password reset (SSPR)](/azure/active-directory/authentication/concept-sspr-howitworks)|Allow users to reset their passwords securely and without help desk intervention, by providing verification of multiple authentication methods that the administrator can control.|Microsoft 365 E3 or E5|
|[Azure AD password protection](/azure/active-directory/authentication/concept-password-ban-bad)|Detect and block known weak passwords and their variants and additional weak terms that are specific to your organization. Default global banned password lists are automatically applied to all users in an Azure AD tenant. You can define additional entries in a custom banned password list. When users change or reset their passwords, these banned password lists are checked to enforce the use of strong passwords.|Microsoft 365 E3 or E5|

Here are the components of Zero Trust identity and device access, including Intune and Azure AD objects, settings, and subservices.

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-device-access-components.png" alt-text="The Components of Zero Trust identity and device access" lightbox="../../media/microsoft-365-policies-configurations/identity-device-access-components.png":::

### Microsoft Intune

[Intune](/intune/introduction-intune) is Microsoft's cloud-based mobile device management service. This guidance recommends device management of Windows PCs with Intune and recommends device compliance policy configurations. Intune determines whether devices are compliant and sends this data to Azure AD to use when applying Conditional Access policies.

#### Intune app protection

[Intune app protection](/intune/app-protection-policy) policies can be used to protect your organization's data in mobile apps, with or without enrolling devices into management. Intune helps protect information, making sure your employees can still be productive, and preventing data loss. By implementing app-level policies, you can restrict access to company resources and keep data within the control of your IT department.

This guidance shows you how to create recommended policies to enforce the use of approved apps and to determine how these apps can be used with your business data.

### Microsoft 365

This guidance shows you how to implement a set of policies to protect access to Microsoft 365 cloud services, including Microsoft Teams, Exchange, SharePoint, and OneDrive. In addition to implementing these policies, we recommend you also raise the level of protection for your tenant using these resources:

- [Configure your tenant for increased security](tenant-wide-setup-for-increased-security.md)

### Windows 11 or Windows 10 with Microsoft 365 Apps for enterprise

Windows 11 or Windows 10 with Microsoft 365 Apps for enterprise is the recommended client environment for PCs. We recommend Windows 11 or Windows 10 because Azure is designed to provide the smoothest experience possible for both on-premises and Azure AD. Windows 11 or Windows 10 also includes advanced security capabilities that can be managed through Intune. Microsoft 365 Apps for enterprise includes the latest versions of Office applications. These apps use modern authentication, which is more secure and a requirement for Conditional Access. These apps also include enhanced compliance and security tools.

## Applying these capabilities across the three levels of protection

The following table summarizes our recommendations for using these capabilities across the three levels of protection.

|Protection mechanism|Starting point|Enterprise|Specialized security|
|---|---|---|---|
|**Enforce MFA**|On medium or above sign-in risk|On low or above sign-in risk|On all new sessions|
|**Enforce password change**|For high-risk users|For high-risk users|For high-risk users|
|**Enforce Intune application protection**|Yes|Yes|Yes|
|**Enforce Intune enrollment for organization-owned device**|Require a compliant or domain-joined PC, but allow bring-your-own devices (BYOD) phones and tablets|Require a compliant or domain-joined device|Require a compliant or domain-joined device|

## Device ownership

The above table reflects the trend for many organizations to support a mix of organization-owned devices, and personal or BYODs to enable mobile productivity across the workforce. Intune app protection policies ensure that email is protected from exfiltrating out of the Outlook mobile app and other Office mobile apps, on both organization-owned devices and BYODs.

We recommend that organization-owned devices are managed by Intune or domain-joined to apply additional protections and control. Depending on data sensitivity, your organization might choose to not allow BYODs for specific user populations or specific apps.

## Deployment and your apps

Prior to configuring and rolling out Zero Trust identity and device access configuration for your Azure AD-integrated apps, you must:

- Decide which apps used in your organization you want to protect.
- Analyze this list of apps to determine the sets of policies that provide appropriate levels of protection.

  You shouldn't create separate sets of policies each for app because management of them can become cumbersome. Microsoft recommends that you group your apps that have the same protection requirements for the same users.

  For example, have one set of policies that include all Microsoft 365 apps for all users for starting point protection. Have a second set of policies for all sensitive apps, such as those used by human resources or finance departments, and apply them to those groups.

Once you have determined the set of policies for the apps you want to secure, roll the policies out to users incrementally, addressing issues along the way. For example:

1. Configure the policies that you intend to use for all Microsoft 365 apps.
2. Add just Exchange with its required changes, roll out the policies to users, and work through any issues.
3. Add Teams with its required changes, roll out the policies to users, and work through any issues.
4. Add SharePoint with its required changes, roll out the policies to users, and work through any issues.
5. Continue adding the rest of your apps until you can confidently configure these starting point policies to include all Microsoft 365 apps.

Similarly, for your sensitive apps, create the set of policies and add one app at a time. Work through any issues until they're all included in the sensitive app policy set.

Microsoft recommends that you don't create policy sets that apply to all apps because it can result in some unintended configurations. For example, policies that block all apps could lock your admins out of the Azure portal and exclusions can't be configured for important endpoints such as Microsoft Graph.

## Steps to configure Zero Trust identity and device access

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-device-access-steps.png" alt-text="The steps to configure Zero Trust identity and device access" lightbox="../../media/microsoft-365-policies-configurations/identity-device-access-steps.png":::

1. Configure prerequisite identity features and their settings.
2. Configure the common identity and access Conditional Access policies.
3. Configure Conditional Access policies for guest and external users.
4. Configure Conditional Access policies for Microsoft 365 cloud apps—such as Microsoft Teams, Exchange, and SharePoint—and Microsoft Defender for Cloud Apps policies.

After you have configured Zero Trust identity and device access, see the [Azure AD feature deployment guide](/azure/active-directory/fundamentals/active-directory-deployment-checklist-p2) for a phased checklist of additional features to consider and [Azure AD Identity Governance](/azure/active-directory/governance/) to protect, monitor, and audit access.

## Next step

[Prerequisite work for implementing Zero Trust identity and device access policies](zero-trust-identity-device-access-policies-prereq.md)
