---
title: Prepare your organization for Windows 10 Enterprise
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: JoeDavies-MSFT
localization_priority: Normal
ms.collection: M365-modern-desktop
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 06/01/2018
f1.keywords:
- NOCSH
ms.author: josephd
---

# Step 1: Prepare your organization for Windows 10 Enterprise

*This article applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 3: Windows 10 Enterprise](../media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)

Before upgrading your devices to Windows 10 Enterprise, consider the following:

- **Your domains must be added and verified** <br>
  With a Microsoft 365 subscription, you get a default domain name that ends in onmicrosoft.com (for example, contoso.onmicrosoft.com). Most organizations prefer to use one or more of the domains they own so their email addresses end in their own domain name (like username@contoso.com). To use your own domain, you need to add it to Microsoft 365 and verify that you own it. We recommend that you add and verify your domains now so they're ready to go whenever you set up Microsoft 365 services, like email and Skype for Business.
- **You don't need to add users at this time** <br>
  To use Microsoft 365 services or install Microsoft 365 products, users need accounts in Microsoft 365 and they need product licenses. How you add users to Microsoft 365 depends on the number of users and whether you currently have Active Directory on-premises. If you don’t have Active Directory (or you have Active Directory but don’t want to synchronize it to Microsoft 365), you can add users directly to Microsoft 365 and assign licenses, either individually or in bulk. <br>
  If you have Active Directory on-premises, you can [sync it with Microsoft 365](identity-add-user-accounts.md#identity-sync) to create user accounts in Azure AD, the cloud directory used by Microsoft 365. With this method, you can create accounts for users and for security groups you use to manage permissions to resources (like SharePoint Online site collections or documents). Synchronizing your Active Directory with Microsoft 365 won’t assign licenses to the users.
- **You don't need to license users at this time** <br>
  Before users can use Microsoft 365 services or install software from the Microsoft 365 portal, they need product licenses. As a global or user management admin, you can directly assign products licenses in Microsoft 365 either individually or in bulk. You can also use [group-based licensing](identity-use-group-management.md#identity-group-license) to automatically assign licenses when users are added to a particular group. 
- **You install Office 365 ProPlus separately** <br>
  Obtaining a Microsoft 365 license does not automatically install Office 365 ProPlus on your client computers. See [Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md) for more information. 

## Set Windows diagnostics data level

Microsoft uses diagnostic data to help keep Windows devices secure by identifying malware trends and other threats and to help us improve the quality of Windows and Microsoft services. You must ensure that the diagnostics service is enabled at a minimum level of Basic on all endpoints in your organization. *By default, this service is enabled and set to the Enhanced level.* However, it’s good practice to check and ensure that they are receiving sensor data. Setting levels through policies overrides device-level settings. 

**Windows 10 operating system diagnostic data levels**

You can configure your operating system diagnostic data settings using the management tools you’re already using, such as Group Policy, MDM, or Windows Provisioning. You can also manually change your settings using Registry Editor. Setting your diagnostic data levels through a management policy overrides any device level settings.

Use the appropriate value in the table below when you configure the management policy.

| Level | Data gathered | Value |
|:--- |:--- |:--- |
| Security | Security data only. | 0 |
| Basic | Security data, and basic system and quality data. | 1 |
| Enhanced | Security data, basic system and quality data, and enhanced insights and advanced reliability data. | 2 |
| Full | Security data, basic system and quality data, enhanced insights and advanced reliability data, and full diagnostics data. | 3 |

You can enable diagnostics data through any of these methods:

* **Microsoft Intune** - If you plan to use Intune to manage your devices, you can create a configuration policy to enable diagnostic data by configuring the <a href="https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-allowtelemetry" target="blank">SystemAllowTelemetry</a> system policy. For more info on setting up configuration policies, see [Manage settings and features on your devices with Microsoft Intune policies](https://aka.ms/intuneconfigpolicies).
* **Registry Editor** - You can use the Registry Editor to manually enable diagnostic data on each device in your organization. Alternately, you can write a script to edit the registry. If a management policy already exists, such as Group Policy or MDM, it will override this registry setting.
* **Group Policy** - If you do not plan to enroll devices in Intune, you can use a Group Policy object to set your organization’s diagnostic data level.
* **Command prompt** - You can set Windows 10 diagnostics data and service to automatically start with the command prompt. This method is best if you are testing the service on only a few devices. Enabling the service to start automatically with this command will not configure the diagnostic data level. If you have not configured a diagnostic data level using management tools, the service will operate with the default Enhanced level.

See [Configure Windows diagnostic data in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization) to learn more about Windows diagnostic data and how you can enable it based on the method that you choose.

As an interim checkpoint, you can see the [exit criteria](windows10-exit-criteria.md#crit-windows10-step1) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 2](../media/stepnumbers/Step2.png)| [Deploy Windows 10 Enterprise for existing devices as an in-place upgrade](windows10-deploy-inplaceupgrade.md) |






