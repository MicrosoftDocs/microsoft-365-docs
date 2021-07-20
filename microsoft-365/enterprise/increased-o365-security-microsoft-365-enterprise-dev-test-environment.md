---
title: "Increased Microsoft 365 security for your Microsoft 365 for enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/09/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-security-compliance
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to enable additional Microsoft 365 security settings your Microsoft 365 for enterprise test environment.
---

# Increased Microsoft 365 security for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

With the instructions in this article, you configure additional Microsoft 365 settings to increase security in your Microsoft 365 for enterprise test environment.

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](../downloads/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you just want to configure increased Microsoft 365 security in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure increased Microsoft 365 security in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing increased Microsoft 365 security does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 

## Phase 2: Configure increased Microsoft 365 security

In this phase, you enable increased Microsoft 365 security for your Microsoft 365 for enterprise test environment. For additional details and settings, see [Configure your tenant for increased security](/office365/securitycompliance/tenant-wide-setup-for-increased-security).

### Configure SharePoint Online to block apps that don't support modern authentication

Apps that do not support modern authentication cannot have [identity and device access configurations](../security/office-365-security/microsoft-365-policies-configurations.md) applied to them, which is an important element of securing your Microsoft 365 subscription and its digital assets. 

1. Go to the Microsoft 365 admin center ([https://portal.microsoft.com](https://portal.microsoft.com)) and sign in to your Microsoft 365 test lab subscription with your global administrator account.
    
  - If you are using the lightweight Microsoft 365 test environment, sign in from your local computer.
    
  - If you are using the simulated enterprise Microsoft 365 test environment, use the [Azure portal](https://portal.azure.com) to connect to the CLIENT1 virtual machine, and then sign in from CLIENT1.
 
2. On the new **Microsoft 365 admin center** tab, under **Admin centers** in the left navigation pane, click **SharePoint**.
3. On the new **SharePoint admin center** tab, click **Policies > Access control**.
4. Click **Apps that don't support modern authentication**, select **Block access**, and then click **Save**.


### Enable Defender for Office 365 for SharePoint, OneDrive for Business, and Microsoft Teams

Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams protects your organization from inadvertently sharing malicious files.

1. Go to the [Security & Compliance Center](https://protection.office.com) and sign in with your global administrator account.

2. In the left navigation pane, under **Threat management**, click **Policy**, and then click **Safe Attachments**. 

3. Under **Protect files in SharePoint, OneDrive, and Microsoft Teams**. select **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams**.

4. Click **Save**.


### Enable anti-malware

Malware is comprised of viruses and spyware. Viruses infect other programs and data, and they spread throughout your computer looking for programs to infect. Spyware refers to malware that gathers your personal information, such as sign-in information and personal data, and sends it back to the malware author. 

Microsoft 365 has built-in malware and spam filtering capabilities that help protect inbound and outbound messages from malicious software and help protect you from spam. For more information, see [Anti-spam & anti-malware protection](../security/office-365-security/anti-spam-and-anti-malware-protection.md).

To ensure that anti-malware processing is being performed on files with common attachment file types:

1. Click the back button on your browser to get back to the **Policy** page.
2. Click **Anti-malware**.
3. Double-click the policy named **Default**.
4. In the **Anti-malware policy** window, click **Settings**.
4. Under **Common Attachment Types filter**, select **On**, and then click **Save**.


## Phase 3: Examine the security dashboard

Threat management in Microsoft 365 can help you control and manage mobile device access to your organization's data, help protect your organization from data loss, and help protect inbound and outbound messages from malicious software and spam. You also use threat management to protect your domain's reputation and to determine whether or not senders are maliciously spoofing accounts from your domain. 

To see the security dashboard:

1. If needed, go to the [Security & Compliance Center](https://protection.office.com) and sign in with your global administrator account.

2. In the left navigation pane, under **Threat management**, click **Dashboard**.

Take a close look at all the cards on the dashboard to familiarize yourself with the information provided.

For more information, see [Security Dashboard](../security/office-365-security/security-dashboard.md).


## Phase 4: Examine Microsoft Secure Score

Microsoft Secure Score shows your security posture as a number, which indicates your current level relative to the features that are available in your subscription. It also gives you a list of improvement actions you can take to improve your score.

1. Create a new tab in your browser and go to the [Microsoft 365 security center](https://security.microsoft.com/), and then click **Secure score**.
2. On the **Overview**  tab, note your current Secure Score and how it compares with the global average and subscriptions with a similar number of licenses.
3. On the **Improvement actions** tab, read through the list of actions you can take to increase your score.

For more information, see [Microsoft Secure Score](../security/defender/microsoft-secure-score.md).

## Next steps

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)