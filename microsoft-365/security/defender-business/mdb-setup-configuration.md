---
title: Set up and configure Microsoft Defender for business
description: See how to set up and configure Microsoft Defender for business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 06/25/2021
ms.prod: m365-security
ms.technology: dforbiz
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Set up and configure Microsoft Defender for business

As a preview customer, you likely have assistance in setting up and configuring Microsoft Defender for business. As reference information, this article provides guidance on how to plan, configure, and onboard to the service. This information might be helpful if you are interested in the resources and information that are available to you.

## Review the requirements

The following table lists the basic requirements for Microsoft Defender for business.

| Requirement | Description |
|:---|:---|
| Licensing requirements | Microsoft Defender for business |
| Users | User accounts created <br/> Microsoft Defender for business licenses assigned |
| Browser requirements | Microsoft Edge <br/> Internet Explorer version 11 <br/> Google Chrome |
| Operating system | Windows 10 |
| Datacenter | One of the following datacenter locations for Microsoft Defender for business: <br/>- European Union <br/>- United Kingdom <br/>- United States |

> [!TIP]
> To learn more, see [Minimum requirements for Defender for Endpoint](../defender-endpoint/minimum-requirements.md).

## Get Microsoft Defender for business

If you don’t already have Microsoft Defender for business, you can sign up for a free trial or buy a subscription. The first person to sign your company up is a global administrator (also referred as the global admin). The global admin can purchase licenses, upgrade services, set up user accounts, and configure settings for your organization. To learn more, see [Microsoft 365 Business Premium Setup](../../business-video/setup-overview.md).

1.	Go to the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)), and sign in.

2.	In the navigation bar, go to **Billing**. 

3.	To view your current subscription(s), select **Your products**.

4.	To add a subscription, such as Microsoft Defender for business, choose **Purchase services**. Search for *Microsoft Defender for business*, and then complete the purchase process.

## Assign roles and permissions

In order for your security team to perform tasks in the Microsoft 365 Defender portal, such as configuring Microsoft Defender for business, or taking response actions on detected threats, appropriate permissions must be assigned. Microsoft recommends granting people access to only what they need to perform their tasks. We call this the concept of least privileges for permissions. 

The following table describes roles to consider as you plan for Microsoft Defender for business. [Learn more about admin roles](../../admin/add-users/about-admin-roles.md). 

| Permission level | Description |
|:---|:---|
| Global administrators (also referred to as global admins) <br/><br/> As a best practice, limit the number of global administrators. | Global admins can perform all tasks. The person who signed your company up for Microsoft 365 or for Microsoft Defender for business is a global administrator by default. <br/><br/> Global admins are able to access/change settings across all Microsoft 365 portals, including the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) and the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)).  |
| Security administrators (also referred to as security admins) | Security admins can perform security operator tasks plus the following: <br/>- Monitor security-related policies across Microsoft 365 services <br/>- Manage security threats and alerts <br/>- View reports |
| Security operator | Security operators can perform security reader tasks plus the following: <br/>- View, investigate, and respond to security threats alerts  |
| Security reader | Security readers can perform the following tasks: <br/>- View security-related policies across Microsoft 365 services <br/>- View security threats and alerts <br/>- View reports  |

## Choose where to manage your policies and settings

You can manage your security policies and settings using one of two methods/locations:

- The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com))
- Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). (Endpoint Manager now includes Microsoft Intune)

When you begin to use Microsoft Defender for business, you will be asked whether you want to use Endpoint Manager or your Microsoft 365 Defender portal. **We recommend using the Microsoft 365 Defender portal and its wizard-like experience for managing your devices and security settings**. 

Microsoft Defender for business is designed to provide strong protection while saving you time and effort in configuring your security settings. The streamlined experience in the Microsoft 365 Defender portal makes it simple to onboard devices and manage them. 

In addition, default policies are included so that your company's devices are protected as soon as they are onboarded. You can keep your default settings as they are, or make changes to suit your business needs. You can also add new policies to manage devices.

> [!NOTE]
> The procedures included in this article assume that you are using the Microsoft 365 Defender portal to manage your company’s security settings.

## View/edit device policies

Microsoft Defender for business was designed to simplify setup, configuration, and management. Your Microsoft Defender for business plan comes with default policies that are based on Microsoft’s recommendations for security and productivity. You can view and edit your default policies, and you can define new policies. You can also change the order of priority for policies that you create. 

The following sections provide more information about your security policies in Microsoft Defender for business:

- [View your policies](#view-your-policies)
- [Define a new policy](#define-a-new-policy)
- [Edit an existing policy](#edit-an-existing-policy)
- [Learn more about policy order](#learn-more-about-policy-order)
- [Understand configuration settings for next-generation protection](#understand-configuration-settings-for-next-generation-protection)

## View your policies

1.	Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. You’re now in the Microsoft 365 Defender portal.

2.	In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type. 

3.	Select an operating system tab (for example, **Windows clients**). 

4.	Expand a category to view the list of policies for that operating system and policy type. 

5.	Select a policy to view more details about the policy.

## Define a new policy

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. You’re now in the Microsoft 365 Defender portal.

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type. 

3. Select an operating system tab, and then expand a category. 

4. Select **+ Add**.

5. On the **General information** tab, specify a name and description. This information will help you and your team identify the policy later on.

6. Review the policy order and edit if necessary. (See the **Policy order** section for more details).

7. On the **Device groups** tab, either create a new device group, or use an existing group. Policies are assigned to devices through device groups. Here are some things to keep in mind:

   - Initially, you might only have your default device group, which includes the devices people in your company are using to access company data and email.
   - Create a new device group to apply a policy with specific settings that are different from the default policy. 
   - When you set up your device group, you specify certain criteria, such as the operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. 
   - All device groups—including the default and custom device groups that you define—are stored in in Azure Active Directory (Azure AD).
   - As you add (or remove) devices in a device group, the devices receive (or are released from) the policies that target the device group. 

8. On the **Configuration settings** tab, specify the settings for your policy, and then choose Next. For more information about the individual settings, see [Configuration settings for next-generation protection](#understand-configuration-settings-for-next-generation-protection).

9. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you’re ready to proceed, choose **Create policy**.

## Edit an existing policy

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. You’re now in the Microsoft 365 Defender portal.

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system and policy type. 

3. Select an operating system tab, and then expand a category. 

4. Select a policy, and then choose **Edit**.

5. On the **General information** tab, review the information. If need be, edit the policy name and description. Then choose **Next**.

6. On the **Device groups** tab, determine which device groups should receive this policy. Take one or more of the following steps: 

   - Keep the selected device group as is
   - Remove a device group from the policy
   - Create a new device group
   - Select another existing device group

7. On the **Configuration settings** tab, review and if need be, edit the settings for your policy, and then choose **Next**.

   For more information about the individual settings, see [Configuration settings for next-generation protection](#understand-configuration-settings-for-next-generation-protection).

8. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you’re ready to proceed, choose **Update policy**.

## Learn more about policy order

Microsoft Defender for business includes predefined policies to help ensure the devices your employees use are protected. You can add new policies as well. For example, suppose that you want to apply certain settings to some devices, and different settings to other devices. You can do that by adding policies.

As you define policies, you’ll notice that an order of priority is assigned. You can edit the order of priority for the policies that you define, but you cannot change the order of priority for default policies. For example, suppose that for your Windows client devices, you have three next-generation protection policies. In this case, your default policy is number 3 in priority. You can change the order of your policies that are numbered 1 and 2, but the default policy will remain number 3 in your list. 

The important thing to remember about multiple policies is that devices will receive the first applied policy only. Referring to our earlier example of three next-generation policies, suppose that you have devices that are targeted by all three policies. In this case, those devices will receive policy number 1, but will not receive policies numbered 2 and 3. 

## Understand configuration settings for next-generation protection

This section describes your configuration settings for next-generation protection. Your next-generation protection includes robust antivirus and antimalware protection. Your default policies are designed to protect your devices and users without hindering productivity; however, you can also customize your policies to suit your business needs. 

The following table lists your settings and options:

| Setting | Description |
|:---|:---|
| **Real-time protection**  |
| Turn on real-time protection | Enabled by default, real-time protection locates and stops malware from running on devices. <p> *We recommend keeping real-time protection turned on.* |
| Turn on block at first sight | Enabled by default, block at first sight blocks malware within seconds of detection, increases the time (in seconds) allowed to submit sample files for analysis, and sets your detection level to High. <p> *We recommend keeping block at first sight turned on.* |
| Set network protection to Block mode | When turned on, network protection helps protect against phishing scams, exploit-hosting sites, and malicious content on the Internet. It also prevents users from turning network protection off. <p> Network protection can be set to one of the following modes:<br/>- Block mode (this is the default), which prevents users from visiting sites that are considered unsafe <br/>- Audit mode, which allows users to visit sites that might be unsafe and tracks network activity to/from such sites <br/>- Disabled mode, which nether blocks users from visiting sites that might be unsafe nor tracks network activity to/from such sites <p>*We recommend using network protection set to Block mode.* |
| **Remediation**  |
| Enable protection from potentially unwanted apps | Potentially unwanted applications (PUA) can include advertising software, bundling software that offers to install other, unsigned software, and evasion software that attempts to evade security features. Although PUA are not necessarily viruses, malware, or other types of threats, PUA can affect device performance. <p> Enabled by default, PUA protection blocks items that are detected as PUA. You can set PUA protection to one of the following settings: <br/>- Enable (this is the default), which blocks items detected as PUA on devices. <br/>- Audit, which takes no action on items detected as PUA <br/>- Off, which neither detects nor takes action items that might be PUA <p> *We recommend keeping PUA protection enabled.* |
| **Scan**   |
| Scheduled scan type | Consider running a weekly antivirus scan on your devices. You can choose between full, quick, or custom scans. <br/>- Full scan checks all files and folders on a device <br/>- Quick scan checks locations, such as registry keys and startup folders, where malware could be registered to start with a device.  <br/>- Custom scan enables you to specify the files and folders to scan, including USB drives <p>We recommend using a quick scan. [Learn more about scan types](../defender-endpoint/schedule-antivirus-scans.md). |
| Day of week to run a scheduled scan | Select a day for your regular, weekly antivirus scans to run. |
| Time of day to run a scheduled scan | Select a time to run your regularly scheduled antivirus scans to run. |
| Use low performance | Turn this on to limit the device memory and resources that are used during scheduled scans. |
| **User experience**   |
| Allow users to access the Windows Security app | Turn this on to enable users to open the Windows Security app on their devices. Users won’t be able to override settings that you configure in Microsoft Defender for business, but they will be able to run a quick scan if need be, or view any detected threats. |
| **Antivirus exclusions** | In general, you should not need to define exclusions. Microsoft Defender Antivirus includes many automatic exclusions that are based on known operating system behaviors and typical management files. <br/>[Learn more about exclusions](../defender-endpoint/configure-exclusions-microsoft-defender-antivirus.md). |
| [Process exclusions](../defender-endpoint/configure-process-opened-file-exclusions-microsoft-defender-antivirus.md) | Exclude files that are opened by specific processes from Microsoft Defender Antivirus scans. |
| [File and extension exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md) | Exclude specific files or files with specific extensions from Microsoft Defender Antivirus scans. |
| [File and folder exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md) | Exclude files that are in specific folders from Microsoft Defender Antivirus scans. |





