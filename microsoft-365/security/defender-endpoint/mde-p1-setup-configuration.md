---
title: Set up and configure Microsoft Defender for Endpoint Plan 1 (preview)
description: Learn how to set up and configure Defender for Endpoint Plan 1. Review the requirements, plan your rollout, and set up your environment. 
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 07/26/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: 
f1.keywords: NOCSH
---

# Set up and configure Microsoft Defender for Endpoint Plan 1 (preview)

As a preview customer, you likely have assistance in setting up and configuring Defender for Endpoint Plan 1 (preview). However, just in case you're curious about what the setup and configuration process looks like, use this article as a guide.

## The setup and configuration process at a glance

The general setup and configuration process for Defender for Endpoint Plan 1 (preview) is as follows:

1. [Review the requirements](#review-the-requirements) (including licensing and device requirements)
2. [Plan your deployment](#plan-your-deployment)
3. [Set up your tenant environment](#set-up-your-tenant-environment)
4. [Assign roles and permissions](#assign-roles-and-permissions)
5. [Onboard to Defender for Endpoint](#onboard-to-defender-for-endpoint)
6. [Configure next-generation protection](#configure-next-generation-protection)
7. [Configure your attack surface reduction capabilities](#configure-your-attack-surface-reduction-capabilities)
 
> [!TIP]
> As soon as roles and permissions are assigned, your security team can get started using the Microsoft 365 Defender portal (see [Getting started with Defender for Endpoint Plan 1](mde-plan1-getting-started.md)).
 
## Review the requirements

The following table lists the basic requirements for Defender for Endpoint Plan 1 (preview):

| Requirement | Description |
|:---|:---|
| Licensing requirements | Defender for Endpoint Plan 1 (preview) <p>*If you have Microsoft 365 E3, you can join the preview program.* |
| Browser requirements | Microsoft Edge <br/> Internet Explorer version 11 <br/> Google Chrome |
| Operating system | Windows 10, version 1709 or later <br/><br/>macOS: <br/>- Big Sur 11.5 <br/>- Catalina 10.15.7 <br/>- Mojave 10.14.6 <br/><br/>iOS <br/><br/>Android OS  |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |

> [!TIP]
> If you have Microsoft 365 E3 but not Microsoft 365 E5, contact support and ask to participate in the preview program!

## Plan your deployment

When you plan your deployment, you can choose from several different architectures and deployment methods. Every organization is unique, so you have several options to consider. To help with these decisions, see [Plan your Defender for Endpoint deployment](deployment-strategy.md), which includes the downloadable poster that is depicted in the following image: 

:::image type="content" source="../../media/defender-endpoint/mdatp-deployment-strategy.png" alt-text="Deployment strategy poster thumbnail":::

**[Get the deployment poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)**

## Set up your tenant environment

Setting up your tenant environment includes tasks, such as verifying your licenses and configuring your tenant. An important part of this process is making sure sensors are working correctly and reporting data to Defender for Endpoint. As a preview customer, you’ll likely have help with this process. To learn more, see [Set up Defender for Endpoint](production-deployment.md).

## Assign roles and permissions

In order to access the Microsoft 365 Defender portal, configure settings for Defender for Endpoint, or to take response actions, appropriate permissions must be assigned. You can do this using [role-based access control](rbac.md) (RBAC). 

> [!TIP]
> Microsoft recommends using the concept of [least privileged access](/azure/active-directory/develop/secure-least-privileged-access), so that users and applications are granted only the minimum level of access needed to perform required tasks. 

Defender for Endpoint leverages [built-in roles within Azure Active Directory](/azure/active-directory/roles/permissions-reference). Review the different roles that are available, and then choose an appropriate role for each persona in Defender for Endpoint. 

To learn more, see [Prepare for your Defender for Endpoint deployment](prepare-deployment.md).

## Onboard to Defender for Endpoint

When you’re ready to onboard your organization’s devices and users to Defender for Endpoint, follow the guidance in [Onboard to the Defender for Endpoint service](onboarding.md).

Then, proceed to [configure next-generation protection settings](#configure-next-generation-protection) and [configure your attack surface reduction rules](#configure-attack-surface-reduction-rules). 

Defender for Endpoint enables you to edit and fine-tune your settings as needed. See [Manage Microsoft Defender for Endpoint Plan 1 (preview)](mde-p1-maintenance-operations.md).

## Configure next-generation protection

We recommend using [Microsoft Endpoint Manager](/mem) to manage your organization’s devices and security settings, as shown in the following image:
 
:::image type="content" source="../../media/mde-p1/endpoint-policies.png" alt-text="Endpoint security policies in MEM":::

Go to Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

## Review and edit your next-generation protection settings

1.	Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2.	Select **Endpoint security** > **Antivirus**, and then select an existing policy. (If you don’t have an existing policy, create a new policy.)

3.	Set or change your antivirus configuration settings. Need help? Refer to the following resources: <br/>

   - [Settings for Windows 10 Microsoft Defender Antivirus policy in Microsoft Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-windows)
   - [Configure Defender for Endpoint on iOS features](ios-configure-features.md)

4.	When you are finished specifying your settings, choose **Review + save**.

## Configure your attack surface reduction capabilities

To reduce your attack surfaces, configure the following capabilities: 

- [Ransomware mitigation](#ransomware-mitigation)
- [Device control](#device-control)
- [Web protection](#web-protection)
- Network protection
- Network firewall

### Ransomware mitigation

You get ransomware mitigation through [controlled folder access](controlled-folders.md#what-is-controlled-folder-access), which allows only trusted apps to access protected folders on your endpoints. 

1. Make sure Microsoft Defender Antivirus always-on protection is configured. See [Enable and configure Microsoft Defender Antivirus always-on protection](configure-real-time-protection-microsoft-defender-antivirus.md).

2. On a Windows 10 device, open the Windows Security app.

3. Select **Virus & threat protection**.

4. Under **Ransomware protection**, select **Manage ransomware protection**.

5. If controlled folder access is turned off, you'll need to turn it on. Select **protected folders**.

6. Take one of the following steps:

   - To add a folder, select **+ Add a protected folder**.
   - To remove a folder, select it, and then select **Remove**.

### Device control

You can configure Defender for Endpoint to block or allow removable devices and files on removable devices.

Follow the guidance in [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md).

### Web protection

With web protection, you can protect your organization's devices from web threats and unwanted content. Your web protection includes web threat protection and web content filtering (preview). Configure both sets of capabilities for your web protection.

1. Follow the guidance in [Protect your organization against web threats](web-threat-protection.md).

2. Follow the guidance in [Web content filtering](web-content-filtering.md).

### Network protection

With network protection, you can help protect your organization against dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet.

Follow the guidance in [Turn on network protection](enable-network-protection.md).

### Network firewall

Network firewall helps reduce the risk of network security threats. Your security team can set rules that determine which traffic is permitted to flow to or from your organization's devices. 

See [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).

## Next steps

[Getting started with Defender for Endpoint Plan 1 (preview)](mde-plan1-getting-started.md)