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
> As soon as roles and permissions are assigned, your security team can get started using the Microsoft 365 Defender portal. To learn more, see [Getting started](mde-plan1-getting-started.md).
 
## Review the requirements

The following table lists the basic requirements for Defender for Endpoint Plan 1 (preview):

| Requirement | Description |
|:---|:---|
| Licensing requirements | Defender for Endpoint Plan 1 (preview) <br/><br/>*If you have Microsoft 365 E3, you can join the preview program.* |
| Browser requirements | Microsoft Edge <br/> Internet Explorer version 11 <br/> Google Chrome |
| Operating systems | Windows 10, version 1709 or later <br/>macOS: 11.5 (Big Sur), 10.15.7 (Catalina), or 10.14.6 (Mojave) <br/>iOS <br/>Android OS  |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |


## Plan your deployment

When you plan your deployment, you can choose from several different architectures and deployment methods. Every organization is unique, so you have several options to consider. For example, you can:

- Use [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) (included in Microsoft Endpoint Manager) to manage endpoints in a cloud native environment
- Use [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Configuration Manager](/mem/configmgr/core/understand/introduction) (included in Microsoft Endpoint Manager) to manage endpoints and workloads that span an on-premises and cloud environment
- Use [Configuration Manager](/mem/configmgr/core/understand/introduction) (included in Microsoft Endpoint Manager) to protect on-premises endpoints with the cloud-based power of Defender for Endpoint
- Use local scripts on endpoints to run a pilot or onboard just a few devices

All of these options are outlined in [Plan your Defender for Endpoint deployment](deployment-strategy.md). In addition, you can download the following poster: 

[:::image type="content" source="../../media/defender-endpoint/mde-deployment-strategy.png" alt-text="Deployment strategy poster thumbnail":::](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)

**[Get the deployment poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)**

> [!TIP]
> For more detailed information about planning your deployment, see [Plan your Microsoft Defender for Endpoint deployment](deployment-strategy.md).

## Set up your tenant environment

Setting up your tenant environment includes tasks, such as:

- Verifying your licenses
- Configuring your tenant
- Configuring your proxy settings (only if necessary)
- Making sure sensors are working correctly and reporting data to Defender for Endpoint 

These tasks are included in the setup phase for Defender for Endpoint. See [Set up Defender for Endpoint](production-deployment.md).

## Assign roles and permissions

In order to access the Microsoft 365 Defender portal, configure settings for Defender for Endpoint, or perform tasks, such as taking response actions on detected threats, appropriate permissions must be assigned. Defender for Endpoint uses [built-in roles within Azure Active Directory](/azure/active-directory/roles/permissions-reference). 

Microsoft recommends assigning users only the level of permission they need to perform their tasks. You can assign permissions by using basic permissions management, or by using [role-based access control](rbac.md) (RBAC). 

- With basic permissions management, global admins and security admins have full access, whereas security readers read-only access.
- With RBAC, you can set more granular permissions through more roles. For example, you can have security readers, security operators, security admins, endpoint administrators, and more.


The following table describes key roles to consider for Defender for Endpoint in your organization: <br/><br/>

| Role | Description |
|:---|:---|
| Global administrators (also referred to as global admins) <br/><br/> *As a best practice, limit the number of global administrators.* | Global admins can perform all kinds of tasks. The person who signed up your company for Microsoft 365 or for Microsoft Defender for Endpoint Plan 1 is a global administrator by default. <br/><br/> Global admins are able to access/change settings across all Microsoft 365 portals, such as: <br/>- The Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) <br/>- Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) <br/>- Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com))  |
| Security administrators (also referred to as security admins) | Security admins can perform security operator tasks plus the following tasks: <br/>- Monitor security-related policies <br/>- Manage security threats and alerts <br/>- View reports |
| Security operator | Security operators can perform security reader tasks plus the following tasks: <br/>- View information about detected threats <br/>- Investigate and respond to detected threats  |
| Security reader | Security readers can perform the following tasks: <br/>- View security-related policies across Microsoft 365 services <br/>- View security threats and alerts <br/>- View reports  |


> [!TIP]
> To learn more about roles in Azure Active Directory, see [Assign administrator and non-administrator roles to users with Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). And, more information about roles for Defender for Endpoint, see [Role-based access control](prepare-deployment.md#role-based-access-control).

## Onboard to Defender for Endpoint

When you’re ready to onboard your organization’s endpoints, you can choose from several methods, as listed in the following table: <br/>

|Endpoint Operating System | Onboarding methods|
|---|---|
| Windows 10 | [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br> [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)  |
| macOS | [Local scripts](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| iOS |[App-based](ios-install.md) |
| Android | [Microsoft Endpoint Manager](android-intune.md) |

Then, proceed to configure your next-generation protection and attack surface reduction capabilities.

## Configure next-generation protection

We recommend using [Microsoft Endpoint Manager](/mem) to manage your organization’s devices and security settings, as shown in the following image:
 
:::image type="content" source="../../media/mde-p1/endpoint-policies.png" alt-text="Endpoint security policies in MEM":::

To configure your next-generation protection in Microsoft Endpoint Manager, follow these steps:

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Select **Endpoint security** > **Antivirus**, and then select an existing policy. (If you don’t have an existing policy, create a new policy.)

3. Set or change your antivirus configuration settings. Need help? Refer to the following resources: <br/>

   - [Settings for Windows 10 Microsoft Defender Antivirus policy in Microsoft Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-windows)
   - [Configure Defender for Endpoint on iOS features](ios-configure-features.md)

4. When you are finished specifying your settings, choose **Review + save**.

## Configure your attack surface reduction capabilities

Attack surface reduction is all about reducing the places and ways your organization is open to attack. Defender for Endpoint Plan 1 (preview) includes several features and capabilities to help you reduce your attack surfaces across your endpoints. These features and capabilities include: 

- [Ransomware mitigation](#ransomware-mitigation)
- [Device control](#device-control)
- [Network protection](#network-protection)
- [Web protection](#web-protection)
- [Network firewall](#network-firewall)

### Ransomware mitigation

You get ransomware mitigation through [controlled folder access](controlled-folders.md#what-is-controlled-folder-access), which allows only trusted apps to access protected folders on your endpoints. 

We recommend using Microsoft Endpoint Manager to configure controlled folder access.

:::image type="content" source="../../media/mde-p1/mem-asrpolicies.png" alt-text="ASR policies in Microsoft Endpoint Manager":::

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in. 

2. Select **Endpoint Security**, and then select **Attack Surface Reduction**.

3. Choose **+ Create Policy**. 

4. For **Platform**, select **Windows 10 and later**, and for **Profile**, select **Attack surface reduction rules**. Then choose **Create**. 

5. On the **Basics** tab, name the policy and add a description. Select **Next**. 

6. On the **Configuration settings** tab, in the **Attack Surface Reduction Rules** section, scroll down to the bottom. In the **Enable folder protection** drop-down, select **Enable**. You can optionally specify these other settings:

   - Next to **List of additional folders that need to be protected**, select the drop-down menu, and then add folders that need to be protected.
   - Next to **List of apps that have access to protected folders**, select the drop-down menu, and then add apps that should have access to protected folders.
   - Next to **Exclude files and paths from attack surface reduction rules**, select the drop-down menu, and then add the files and paths that need to be excluded from attack surface reduction rules.

   Then choose **Next**.

7. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. (This step is optional.)

   Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

8. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

9. On the **Review + create** tab, review the settings for your policy, and then choose **Create**. The policy will be applied to any endpoints that were onboarded to Defender for Endpoint shortly.

### Device control

You can configure Defender for Endpoint to block or allow removable devices and files on removable devices. We recommend using Microsoft Endpoint Manager to configure your device control settings.

:::image type="content" source="../../media/mde-p1/mem-admintemplates.png" alt-text="Microsoft Endpoint Manager administrative templates":::

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in. 

2. Select **Devices** > **Configuration profiles** > **Create profile**.

3. For **Platform**, select **Windows 10 and later**, and for **Profile type**, select **Templates**. 

   Under **Template name**, select **Administrative Templates**, and then choose **Create**. 

4. On the **Basics** tab, name the policy and add a description. Select **Next**. 

5. On the **Configuration settings** tab, select **All Settings**. Then in the search box, type `Removable` to see all the settings that pertain to removable devices.

6. Select an item in the list, such as **All Removable Storage classes: Deny all access**, to open its flyout pane. Then, set it to **Enabled**, **Disabled**, or **Not Configured**. 

   The flyout for each setting explains what happens when it is enabled, disabled, or not configured.

   After you have specified a setting, choose **OK**. 

   Repeat this step for each setting that you want to configure. Then choose **Next**.

7. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. (This step is optional.)

   Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

8. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

9. On the **Review + create** tab, review the settings for your policy, and then choose **Create**. The policy will be applied to any endpoints that were onboarded to Defender for Endpoint shortly.

> [!TIP]
> For more information, see [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md).

### Network protection

With network protection, you can help protect your organization against dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. We recommend using Microsoft Endpoint Manager to turn on network protection.

:::image type="content" source="../../media/mde-p1/mem-endpointprotectionprofile.png" alt-text="Endpoint protection profile in Microsoft Endpoint Manager":::

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in. 

2. Select **Devices** > **Configuration profiles** > **Create profile**.

3. For **Platform**, select **Windows 10 and later**, and for **Profile type**, select **Templates**. 

   Under **Template name**, select **Endpoint protection**, and then choose **Create**. 

4. On the **Basics** tab, name the policy and add a description. Select **Next**. 

5. On the **Configuration settings** tab, expand **Microsoft Defender Exploit Guard**, and then expand **Network filtering**.

   Set **Network protection** to **Enable**. (You can alternately choose **Audit** to see how network protection will work in your environment at first.)

   Then choose **Next**.

6. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

7. On the **Applicability Rules** tab, set up a rule. The profile you are configuring will be applied only to devices that meet the combined criteria you specify. 

   For example, you might choose to assign the policy to endpoints that are running a certain OS edition only.

   Then choose **Next**. 

8. On the **Review + create** tab, review the settings for your policy, and then choose **Create**. The policy will be applied to any endpoints that were onboarded to Defender for Endpoint shortly.

> [!TIP]
> You can use other methods, such as Windows PowerShell or Group Policy, to enable network protection. To learn more, see [Turn on network protection](enable-network-protection.md).

### Web protection

With web protection, you can protect your organization's devices from web threats and unwanted content. Your web protection includes [web threat protection](#configure-web-threat-protection) and [web content filtering](#configure-web-content-filtering) (preview). Configure both sets of capabilities. We recommend using Microsoft Endpoint Manager to configure your web protection settings.

#### Configure web threat protection

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.
 
2. Choose **Endpoint security** > **Attack surface reduction**, and then choose **+ Create policy**.

3. Select a platform, such as **Windows 10 and later**, select the **Web protection** profile, and then choose **Create**. 

4. On the **Basics** tab, specify a name and description, and then choose **Next**.

5. On the **Configuration settings** tab, expand **Web Protection**, specify your settings, and then choose **Next**.

   - Set **Enable network protection** to **Enabled** so web protection is turned on. Alternately, you can set network protection to **Audit mode** to see how it will work in your environment. In audit mode, network protection does not prevent users from visiting sites or domains, but it does track detections as events. 
   - To protect users from potential phishing scams and malicious software, turn **Require SmartScreen for Microsoft Edge Legacy** to **Yes**.
   - To prevent users from bypassing warnings about potentially malicious sites, set **Block malicious site access** to **Yes**.
   - To prevent users from bypassing the warnings and downloading unverified files, set **Block unverified file download** to **Yes**. 

6. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. (This step is optional.)

   Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

7. On the **Assignments** tab, specify the users and devices to receive the web protection policy, and then choose **Next**.

8. On the **Review + create** tab, review your policy settings, and then choose **Create**.

> [!TIP]
> To learn more about web threat protection, see [Protect your organization against web threats](web-threat-protection.md).

#### Configure web content filtering

> [!NOTE]
> Web content filtering is currently in preview.

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

Network firewall helps reduce the risk of network security threats. Your security team can set rules that determine which traffic is permitted to flow to or from your organization's devices. We recommend using Microsoft Endpoint Manager to configure your network firewall. 

:::image type="content" source="../../media/mde-p1/mem-firewallpolicy.png" alt-text="Firewall policy in Microsoft Endpoint Manager":::

To configure basic firewall settings, follow these steps:

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.

2. Choose **Endpoint security** > **Firewall**, and then choose **+ Create Policy**.

3. Select a platform, such as **Windows 10 and later**, select the **Microsoft Defender Firewall** profile, and then choose **Create**. 

4. On the **Basics** tab, specify a name and description, and then choose **Next**.

5. Expand **Microsoft Defender Firewall**, and then scroll down to the bottom of the list.

6. Set each of the following settings to **Yes**:

   - **Turn on Microsoft Defender Firewall for domain networks** 
   - **Turn on Microsoft Defender Firewall for private networks**
   - **Turn on Microsoft Defender Firewall for public networks**
   
   Review the list of settings under each of domain networks, private networks, and public networks. You can leave them set to **Not configured**, or change them to suit your organization's needs.

   Then choose **Next**.

7. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then select the tags you want to use. (This step is optional.)

   Then, choose **Next**. 
   
   To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

8. On the **Assignments** tab, select **Add all users** and **+ Add all devices**, and then choose **Next**. (You can alternately specify specific groups of users or devices.)

9. On the **Review + create** tab, review your policy settings, and then choose **Create**.

> [!TIP]
> Firewall settings are detailed and can seem complex. Refer to [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).

## Next steps

[Getting started with Defender for Endpoint Plan 1 (preview)](mde-plan1-getting-started.md)