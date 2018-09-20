---
title: "Increased Office 365 security for your Microsoft 365 Enterprise test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/16/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to enable additional Office 365 security settings your Microsoft 365 Enterprise test environment.
---

# Increased Office 365 security for your Microsoft 365 Enterprise test environment

With the instructions in this article, you configure additional Office 365 settings to increase security in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure increased Office 365 security in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure increased Office 365 security in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing increased Office 365 security does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for a Windows Server AD forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 


## Phase 2: Configure increased Office 365 security

In this phase, you enable increased Office 365 security for your Microsoft 365 Enterprise test environment. For additional details and settings, see [Configure your Office 365 tenant for increased security](https://docs.microsoft.com/office365/securitycompliance/tenant-wide-setup-for-increased-security).

### Configure SharePoint Online to block apps that don’t support modern authentication

Apps that do not support modern authentication cannot have [identity and device access configurations](microsoft-365-policies-configurations.md) applied to them, which is an important element of securing your Microsoft 365 subscription and its digital assets. 

1. Go to the Office 365 portal ([https://portal.office.com](https://portal.office.com)) and sign in to your Office 365 trial subscription with your global administrator account.
    
  - If you are using the lightweight Microsoft 365 test environment, sign in from your local computer.
    
  - If you are using the simulated enterprise Microsoft 365 test environment, use the [Azure portal](https://portal.azure.com) to connect to the CLIENT1 virtual machine, and then sign in from CLIENT1.
 
2. From the **Microsoft 365 admin center** tab, click **Admin**.
3. On the new **Microsoft 365 admin center** tab, click **Admin centers > SharePoint**.
4. On the new **SharePoint admin center** tab, click **Access control**.
5. Under **Apps that don’t support modern authentication**, click **Block > OK**.


### Enable Advanced Threat Protection (ATP) for SharePoint, OneDrive, and Microsoft Teams

Office 365 Advanced Threat Protection (ATP) is a feature of Exchange Online Protection (EOP) that helps keep malware out of your email. With ATP, you create policies in the Exchange admin center (EAC) or the Security & Compliance center that help ensure your users access only links or attachments in emails that are identified as not malicious. For more information, see [Advanced threat protection for safe attachments and safe links](https://docs.microsoft.com/office365/securitycompliance/office-365-atp).

1. On the **Microsoft 365 admin center** tab of your browser, click **Admin centers > Security & Compliance**.
2. On the new **Security & Compliance** tab, click **Threat management > Policy**.
3. Click **ATP safe attachments**.
4. In the **Safe attachments** pane, select **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams**, and then click **Save**.

### Enable anti-malware

Malware is comprised of viruses and spyware. Viruses infect other programs and data, and they spread throughout your computer looking for programs to infect. Spyware refers to malware that gathers your personal information, such as sign-in information and personal data, and sends it back to the malware author. 

Office 365 has built-in malware and spam filtering capabilities that help protect inbound and outbound messages from malicious software and help protect you from spam. For more information, see [Anti-spam & anti-malware protection in Office 365](https://docs.microsoft.com/office365/securitycompliance/anti-spam-and-anti-malware-protection)

To ensure that anti-malware processing is being performed on files with common attachment file types:

1. Click the back button on your browser to get back to the **Policy** page.
2. Click **Anti-malware**.
3. Double-click the policy named **Default**.
4. In the **Anti-malware policy** window, click **Settings**.
4. Under **Common Attachment Types filter**, click **On > Save**.


## Phase 3: Examine Office 365 security tools and logs

In this phase, you look at built-in services that inform you about security events and measure your overall security posture.

### Threat management dashboard

Office 365 Threat management can help you control and manage mobile device access to your organization's data, help protect your organization from data loss, and help protect inbound and outbound messages from malicious software and spam. You also use threat management to protect your domain's reputation and to determine whether or not senders are maliciously spoofing accounts from your domain. For more information, see [Threat management in the Office 365 Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/threat-management).

Use these steps to view the Office 365 Threat management dashboard:

1. On the **Microsoft 365 admin center** tab of your browser, click **Admin centers > Security & Compliance**.
2. On the new **Security & Compliance** tab, click **Threat management > Dashboard**.
3. On the new **Dashboard** tab in your browser, note the malware trends, insights, and other sections of the dashboard.

### Office 365 Cloud App Security dashboard

Office 365 Cloud App Security, previously known as Office 365 Advanced Security Management, allows you to create policies that monitor for and inform you of suspicious activities in your Office 365 subscription, so that you can investigate and take possible remediation action. For more information, see [Overview of Office 365 Cloud App Security](https://docs.microsoft.com/office365/securitycompliance/office-365-cas-overview).

1. On the **Microsoft 365 admin center** tab of your browser, click **Admin centers > Security & Compliance**.
2. On the new **Security & Compliance** tab, click **Alerts > Manage advanced alerts > Go to Office 365 Cloud App Security**.
3. On the new **Cloud App Security** tab, note the dashboard view and the list of default policies that that monitor for various activities in your Office 365 subscription.
4. Click the dashboard icon to see a summary of Cloud App Security activities that are being tracked.
5. Click **Investigate** (the eyeglasses icon) and then **Activity log** to see the list of recent sign-ins and other activities.

### Secure Score

1. Create a new tab in your browser and go to **securescore.office.com**.
2. On the **Dashboard tab**, note your current Secure Score and the list of actions in the queue to increase your score.

## Next step

Explore additional [information protection](m365-enterprise-test-lab-guides.md#information-protection) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)

