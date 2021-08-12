---
title: Set up and configure Microsoft Defender for Endpoint Plan 1 (preview)
description: Learn how to set up and configure Defender for Endpoint Plan 1. Review the requirements, plan your rollout, and set up your environment. 
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 08/12/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: inbadian
f1.keywords: NOCSH
---

# Set up and configure Microsoft Defender for Endpoint Plan 1 (preview)

> [!TIP]
> If you have Microsoft 365 E3 but not Microsoft 365 E5, contact support and ask to participate in the preview program!

As a preview customer, you likely have assistance in setting up and configuring Defender for Endpoint Plan 1 (preview). This article describes the setup and configuration process to help you with planning and rolling out Defender for Endpoint Plan 1.

## The setup and configuration process

:::image type="content" source="images/mde-p1-deploymentflow.png" alt-text="Setup and deployment flow for Microsoft Defender for Endpoint Plan 1":::

The general setup and configuration process for Defender for Endpoint Plan 1 (preview) is as follows:

1. [Review the requirements](#review-the-requirements) (including licensing and device requirements)
2. [Plan your deployment](#plan-your-deployment)
3. [Set up your tenant environment](#set-up-your-tenant-environment)
4. [Assign roles and permissions](#assign-roles-and-permissions)
5. [Onboard to Defender for Endpoint](#onboard-to-defender-for-endpoint)
6. [Configure next-generation protection](#configure-next-generation-protection)
7. [Configure your attack surface reduction capabilities](#configure-your-attack-surface-reduction-capabilities)
 
> [!TIP]
> As soon as roles and permissions are assigned, your security team can get started using the Microsoft 365 Defender portal. To learn more, see [Getting started with Defender for Endpoint Plan 1](mde-plan1-getting-started.md).
 
## Review the requirements

The following table lists the basic requirements for Defender for Endpoint Plan 1 (preview):

| Requirement | Description |
|:---|:---|
| Licensing requirements | Defender for Endpoint Plan 1 (preview) <br/><br/>*If you have Microsoft 365 E3, you can join the preview program.* |
| Browser requirements | Microsoft Edge <br/> Internet Explorer version 11 <br/> Google Chrome |
| Operating systems | Windows 10, version 1709 or later <br/>macOS: 11.5 (Big Sur), 10.15.7 (Catalina), or 10.14.6 (Mojave) <br/>iOS <br/>Android OS  |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |


## Plan your deployment

When you plan your deployment, you can choose from several different architectures and deployment methods. Every organization is unique, so you have several options to consider. To help with these decisions, see [Plan your Defender for Endpoint deployment](deployment-strategy.md), which includes the downloadable poster that is depicted in the following image: 

[:::image type="content" source="../../media/defender-endpoint/mde-deployment-strategy.png" alt-text="Deployment strategy poster thumbnail":::](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)

**[Get the deployment poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)**

## Set up your tenant environment

Setting up your tenant environment includes tasks, such as verifying your licenses and configuring your tenant. An important part of this process is making sure sensors are working correctly and reporting data to Defender for Endpoint. As a preview customer, you’ll likely have help with this process. 

To learn more, see [Set up Defender for Endpoint](production-deployment.md).

## Assign roles and permissions

In order to access the Microsoft 365 Defender portal, configure settings for Defender for Endpoint, or to take response actions, appropriate permissions must be assigned. You can do this using [role-based access control](rbac.md) (RBAC). 

> [!TIP]
> Microsoft recommends using the concept of [least privileged access](/azure/active-directory/develop/secure-least-privileged-access), so that users and applications are granted only the minimum level of access needed to perform required tasks. 

Defender for Endpoint uses [built-in roles within Azure Active Directory](/azure/active-directory/roles/permissions-reference). Review the different roles that are available, and then choose an appropriate role for each persona in Defender for Endpoint. 

To learn more, see [Prepare for your Defender for Endpoint deployment](prepare-deployment.md).

## Onboard to Defender for Endpoint

1. When you’re ready to onboard your organization’s devices and users to Defender for Endpoint, follow the guidance in [Onboard to the Defender for Endpoint service](onboarding.md).

2. Proceed to [configure next-generation protection settings](#configure-next-generation-protection) and [configure your attack surface reduction capabilities](#configure-your-attack-surface-reduction-capabilities). 

3. Edit and fine-tune your settings as needed. See [Manage Microsoft Defender for Endpoint Plan 1 (preview)](mde-p1-maintenance-operations.md).

## Configure next-generation protection

We recommend using [Microsoft Endpoint Manager](/mem) to manage your organization’s devices and security settings, as shown in the following image:
 
:::image type="content" source="../../media/mde-p1/endpoint-policies.png" alt-text="Endpoint security policies in MEM":::

### Review and edit your next-generation protection settings

1.	Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2.	Select **Endpoint security** > **Antivirus**, and then select an existing policy. (If you don’t have an existing policy, create a new policy.)

3.	Set or change your antivirus configuration settings. Need help? Refer to the following resources: <br/>

   - [Settings for Windows 10 Microsoft Defender Antivirus policy in Microsoft Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-windows)
   - [Configure Defender for Endpoint on iOS features](ios-configure-features.md)

4.	When you are finished specifying your settings, choose **Review + save**.

## Configure your attack surface reduction capabilities

Attack surface reduction is all about reducing the places and ways your organization is open to attack. Defender for Endpoint Plan 1 (preview) includes several features and capabilities to help you reduce your attack surfaces: 

- [Ransomware mitigation](#ransomware-mitigation)
- [Device control](#device-control)
- [Network protection](#network-protection)
- [Web protection](#web-protection)
- [Network firewall](#network-firewall)

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

### Network protection

With network protection, you can help protect your organization against dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet.

You can use PowerShell, Microsoft Endpoint Manager, or Group Policy to enable network protection. To learn more, see [Turn on network protection](enable-network-protection.md).

### Web protection

With web protection, you can protect your organization's devices from web threats and unwanted content. Your web protection includes [web threat protection](#configure-web-threat-protection) and [web content filtering](#configure-web-content-filtering) (preview). Configure both sets of capabilities for your web protection.

#### Configure web threat protection

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.
 
2. Choose **Endpoint security** > **Attack surface reduction**, and then choose **+ Create policy**.

3. Select a platform, such as **Windows 10 and later**, select the **Web protection** profile, and then choose **Create**. 

4. On the **Basics** tab, specify a name and description, and then choose **Next**.

5. On the **Configuration settings** tab, expand **Web Protection**, specify your settings, and then choose **Next**.

   - Set **Enable network protection** to **Enabled** so web protection is turned on. Alternately, you can set network protection to **Audit mode** to see how it will work in your environment. In audit mode, network protection does not prevent users from visiting sites or domains, but it does track detections as events. 
   - To protect users from potential phishing scams and malicious software, turn **Require SmartScreen for Microsoft Edge Legacy** to **Yes**.
   - To prevent users from bypassing warnings about potentially malicious sites, set **Block malicious site access** to **Yes**.
   - To prevent users from bypassing the warnings and downloading unverified files, set **Block unverified file download** tl **Yes**. 

6. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then choose **Next**. (If you are not using scope tags, choose **Next**.) To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

7. On the **Assignments** tab, specify the users and devices to receive the web protection policy, and then choose **Next**.

8. On the **Review + create** tab, review your policy settings, and then choose **Create**.

> [!TIP]
> To learn more about web threat protection, see [Protect your organization against web threats](web-threat-protection.md).

#### Configure web content filtering

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) and sign in.

2. Choose **Settings** > **Endpoints**.

3. Under **Rules**, choose **Web content filtering**, and then choose **+ Add policy**.

4. In the **Add policy** flyout, on the **General** tab, specify a name for your policy, and then choose **Next**.

5. On the **Blocked categories**, select one or more categories that you want to block, and then choose **Next**.

6. On the **Scope** tab, select the device groups you want to receive this policy, and then choose **Next**.

7. On the **Summary** tab, review your policy settings, and then choose **Save**.

> [!TIP]
> To learn more about configuring web content filtering, see [Web content filtering](web-content-filtering.md).

### Network firewall

Network firewall helps reduce the risk of network security threats. Your security team can set rules that determine which traffic is permitted to flow to or from your organization's devices. 

Refer to [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).

## Next steps

[Getting started with Defender for Endpoint Plan 1 (preview)](mde-plan1-getting-started.md)