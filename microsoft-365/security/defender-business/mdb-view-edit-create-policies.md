---
title: View or edit policies in Microsoft Defender for Business
description: Learn how to view, edit, create, and delete cybersecurity policies in Defender for Business. Protect your devices with security policies.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 05/05/2023
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# View or edit policies in Microsoft Defender for Business

In Defender for Business, security settings are configured through policies that are applied to devices. To help simplify your setup and configuration experience, Defender for Business includes several preconfigured policies to help protect your company's devices as soon as they are onboarded. There are other types of policies you can create as well (see [Set up, review, and edit your security policies and settings in Microsoft Defender for Business](mdb-configure-security-settings.md)).

This article describes how to view, edit, and create security policies in Defender for Business.

**This article includes**:

- [A list of default policies that are included in Defender for Business](#default-policies-in-defender-for-business) (Next-generation protection and firewall)
- [Additional policies that can be set up in Defender for Business](#policies-to-set-up-in-defender-for-business) (Web content filtering, controlled folder access, and attack surface reduction rules)
- [How to view existing policies](#view-your-existing-policies)
- [How to edit an existing policy](#edit-an-existing-policy)
- [How to create a new policy](#create-a-new-policy)

## Default policies in Defender for Business

In Defender for Business, there are two main types of default policies that are designed to protect your company's devices as soon as they're onboarded:

- **Next-generation protection policies**, which determine how Microsoft Defender Antivirus and other threat protection features are configured; and 
- **Firewall policies**, which determine what network traffic is permitted to flow to and from your company's devices.

[Next-generation protection](mdb-next-generation-protection.md) includes robust antivirus and antimalware protection for computers and mobile devices. The default policies are designed to protect your devices and users without hindering productivity. However, you can customize your policies to suit your business needs. For more details, see [Review or edit your next-generation protection policies](mdb-next-generation-protection.md).

[Firewall policies](mdb-firewall.md) help secure devices by establishing rules that determine what network traffic is permitted to flow to and from devices. You can use firewall protection to specify whether to allow or to block connections on devices in various locations. For example, your firewall settings can allow inbound connections on devices that are connected to your company's internal network, but prevent connections when the device is on a network with untrusted devices. For more details, see [Firewall](mdb-firewall.md).

## Policies to set up in Defender for Business

In addition to next-generation protection and firewall policies, there are three other types of policies to configure for the best protection with Defender for Business:

- **Web content filtering**, which turns on web protection for your organization.
- **Controlled folder access**, which is an important part of ransomware protection (Intune is required to set up and manage)
- **Attack surface reduction rules**, which help reduce device vulnerability (Intune is required to set up and manage)

[Web content filtering](mdb-web-content-filtering.md), which enables your security team to track and regulate access to websites based on content categories. Examples of categories include adult content, high bandwidth content, and legal liability content. When you set up your web content filtering policy, you enable web protection for your organization. For more information, see [Web content filtering](mdb-web-content-filtering.md).

[Controlled folder access](mdb-controlled-folder-access.md) allows only trusted apps to access protected folders on Windows devices. Think of this capability as ransomware mitigation. You can set up or edit your controlled folder access policy in Microsoft Intune. For more information, see [Set up or edit your controlled folder access policy](mdb-controlled-folder-access.md).

[Attack surface reduction rules](mdb-asr.md) target certain software behaviors that are often considered risky because they're commonly abused by attackers through malware. Examples of such behaviors include launching executable files and scripts that attempt to download or run files. Attack surface reduction rules can constrain software-based risky behaviors, and help keep your organization safe. At a minimum, we recommend configuring standard protection rules to help protect your network without causing disruption for users. For more information, see [Enable your attack surface reduction rules in Microsoft Defender for Business](mdb-asr.md).

> [!NOTE]
> Intune is required to configure [controlled folder access](mdb-controlled-folder-access.md) and [attack surface reduction rules](mdb-asr.md). Intune is not included in the standalone version of Defender for Business, but can be added on to your subscription.

## View your existing policies

You can view your existing policies in either Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or the Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)) (if you're using Intune).

## [**Microsoft 365 Defender portal**](#tab/M365D)

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Configuration management** > **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under each category (such as **Next-generation protection** and **Firewall**). 

4. To view more details about a policy, select its name. A side pane will open that provides more information about that policy, such as which devices are protected by that policy.

## [**Intune admin center**](#tab/intune)

1. Go to the Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com)) and sign in.

2. In the navigation pane, select **Endpoint security**, and then choose a category, such as **Antivirus**, **Firewall**. or **Attack surface reduction**. 

3. Any existing policies are listed for the category you selected. To view more details about a policy, select its name.

---

## Edit an existing policy

You can view your existing policies in either Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or the Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)) (if you're using Intune).

## [**Microsoft 365 Defender portal**](#tab/M365D)

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of policies under the **Next-generation protection** and **Firewall** categories. 

4. To edit a policy, select its name, and then choose **Edit**.

5. On the **General information** tab, review the information. If necessary, you can edit the description. Then choose **Next**.

6. On the **Device groups** tab, determine which device groups should receive this policy.  

   - To keep the selected device group as it is, choose **Next**.
   - To remove a device group from the policy, select **Remove**.
   - To set up a new device group, select **Create new group**, and then set up your device group. (To get help with this task, see [Device groups](mdb-create-edit-device-groups.md).)
   - To apply the policy to another device group, select **Use existing group**.

   After you have specified which device groups should receive the policy, choose **Next**.

7. On the **Configuration settings** tab, review the settings. If necessary, you can edit the settings for your policy. To get help with this task, see the following articles: 

   - [Understand next-generation configuration settings](mdb-next-generation-protection.md)   
   - [Firewall settings](mdb-firewall.md)

   After you have specified your next-generation protection settings, choose **Next**.

8. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you're ready to proceed, choose **Update policy**.

## [**Intune admin center**](#tab/intune)

1. Go to the Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com)) and sign in.

2. In the navigation pane, select **Endpoint security**, and then choose a category, such as **Antivirus**, **Firewall**. or **Attack surface reduction**. 

3. Existing policies are listed. Select a policy to view more details about it.

4. Next to **Configuration settings**, choose **Edit**. 

   To get help with this task, see [Edit a policy in Intune](/mem/intune/protect/endpoint-security-policy#to-edit-a-policy).

---

## Create a new policy

## [**Microsoft 365 Defender portal**](#tab/M365D)

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in. 

2. In the navigation pane, choose **Device configuration**. Policies are organized by operating system (such as **Windows client**) and policy type (such as **Next-generation protection** and **Firewall**). 

3. Select an operating system tab (for example, **Windows clients**), and then review the list of **Next-generation protection** policies. 

4. Under **Next-generation protection** or **Firewall**, select **+ Add**.

5. On the **General information** tab, take the following steps:

   1. Specify a name and description. This information will help you and your team identify the policy later on.
   2. Review the policy order, and edit it if necessary. (For more information, see [Policy order](mdb-policy-order.md).)
   3. Choose **Next**. 

7. On the **Device groups** tab, either create a new device group, or use an existing group. Policies are assigned to devices through device groups. Here are some things to keep in mind:

   - Initially, you might only have your default device group, which includes the devices people in your company are using to access company data and email. You can keep and use your default device group.
   - Create a new device group to apply a policy with specific settings that are different from the default policy. 
   - When you set up your device group, you specify certain criteria, such as the operating system version. Devices that meet the criteria are included in that device group, unless you exclude them. 
   - All device groups, including the default and custom device groups that you define, are stored in Azure Active Directory (Azure AD).

   To learn more about device groups, see [Device groups](mdb-create-edit-device-groups.md).

8. On the **Configuration settings** tab, specify the settings for your policy, and then choose **Next**. For more information about the individual settings, see [Configuration settings for Defender for Business](mdb-next-generation-protection.md).

9. On the **Review your policy** tab, review the general information, targeted devices, and configuration settings. 

   - Make any needed changes by selecting **Edit**.
   - When you're ready to proceed, choose **Create policy**.

## [**Intune admin center**](#tab/intune)

1. Go to the Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com)) and sign in.

2. In the navigation pane, select **Endpoint security**, and then choose a category, such as **Antivirus**, **Firewall**. or **Attack surface reduction**. 

3. Select **+ Create Policy**. 

   - If your policy is for Windows devices, in the **Platform** list, choose **Windows 10, Windows 11, and Windows Server**.
   - If your policy is for Mac, in the **Platform** list, choose **macOS**.

4. In the **Profile** list, select a profile, and then choose **Create**.

   The **Profile** list varies depending on what you selected for **Platform**, as summarized in the following table:

   | Platform | Profile | Description |
   |---|---|---|
   | Windows 10, Windows 11, and Windows Server | Microsoft Defender Antivirus exclusions | Select this template to define [exclusions for Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/defender-endpoint-antivirus-exclusions#microsoft-defender-antivirus-exclusions).  |
   | Windows 10, Windows 11, and Windows Server | Microsoft Defender Antivirus | Select this template to set up your [next-generation protection policy](mdb-next-generation-protection.md). |
   | Windows 10, Windows 11, and Windows Server | Windows Security Experience | Select this template to turn on [tamper protection](../defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection.md) and to configure what users can see or do with the Windows Security app on their computer. | 
   | macOS | Antivirus | Select this template to set up your [next-generation protection policy](mdb-next-generation-protection.md) for devices running macOS. |
   | Windows 10, Windows 11, and Windows Server | Microsoft Defender Firewall | Select this template to set up your [firewall protection policy](mdb-firewall.md). | 
   | Windows 10, Windows 11, and Windows Server | Microsoft Defender Firewall Rules | Select this template to set up exceptions to your firewall policy. These exceptions are defined through [custom rules](mdb-firewall.md#manage-your-custom-rules-for-firewall-policies-in-microsoft-defender-for-business). |
   | Windows 10, Windows 11, and Windows Server | Attack Surface Reduction Rules | Select this template to set up [attack surface reduction rules](mdb-asr.md) or [controlled folder access](mdb-controlled-folder-access.md). |

5. Use the wizard to set up your policy. To get help, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy).

---

## See also

- [Understand policy order](mdb-policy-order.md)
- [Set up your security policies and settings](mdb-configure-security-settings.md)