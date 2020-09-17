---
title: Configure automated investigation and response capabilities in Microsoft Threat Protection
description: Configure automated investigation and response with self-healing in Microsoft Threat Protection
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: article
ms.date: 09/17/2020 
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: M365-security-compliance.
ms.custom: autoir
ms.reviewer: evaldm, isco
f1.keywords: CSH 
---

# Configure automated investigation and response capabilities in Microsoft Threat Protection

Microsoft Threat Protection includes powerful [automated investigation and response capabilities](mtp-autoir.md) that can save your security operations team much time and effort. With self-healing, these capabilities mimic the steps a security analyst would take to investigate and respond to threats, only faster, and with more ability to scale. This article describes how to configure automated investigation and response in Microsoft Threat Protection.

To configure automated investigation and response capabilities, follow these steps:

1. [Review the prerequisites](#prerequisites-for-automated-investigation-and-response-in-microsoft-threat-protection).

2. [Make sure Microsoft Threat Protection is turned on](#make-sure-microsoft-threat-protection-is-turned-on).

3. [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).

4. [Review your security and alert policies in Office 365](#review-your-security-and-alert-policies-in-office-365).

Then, [review pending and completed actions in the Action center](#review-pending-and-completed-actions-in-the-action-center). 


## Prerequisites for automated investigation and response in Microsoft Threat Protection

|Requirement |Details |
|--|--|
|Subscription requirements |One of the  subscriptions: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 A5 <br/>- Microsoft 365 E5 Security<br/>- Microsoft 365 A5 Security<br/>- Office 365 E5 plus Enterprise Mobility + Security E5 plus Windows E5<br/><br/>See [Microsoft Threat Protection licensing requirements](https://docs.microsoft.com/microsoft-365/security/mtp/prerequisites?#licensing-requirements).|
|Network requirements |- [Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) enabled<br/>- [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) configured<br/>- [Microsoft Cloud App Security integrated with Azure ATP](https://docs.microsoft.com/cloud-app-security/aatp-integration) |
|Windows machine requirements |- Windows 10, version 1709 or later installed (See [Windows 10 release information](https://docs.microsoft.com/windows/release-information/)) with the following threat protection services configured:<br/>- [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints) <br/>- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) |
|Protection for email content and Office files |[Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp#configure-atp-policies) configured |
|Permissions |- To configure automated investigation and response capabilities, you must have the Global Administrator or Security Administrator role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)).<br/><br/>- To work with automated investigation and response capabilities, such as reviewing, approving, or rejecting pending actions, refer to [Required permissions for Action center tasks](mtp-action-center.md#required-permissions-for-action-center-tasks). |

## Make sure Microsoft Threat Protection is turned on

1. Go to the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, look for **Incidents**, **Action center**, and **Hunting**, as shown in the following image:<br/> :::image type="content" source="../../media/mtp-enable/mtp-on.png" alt-text="MTP on":::

   - If you see **Incidents**, **Action center**, and **Hunting**, Microsoft Threat Protection is turned on. Proceed to the next procedure, [Review or change the automation level for device groups](#review-or-change-the-automation-level-for-device-groups).

   - If you do *not* see **Incidents**, **Action center**, or **Hunting**, then Microsoft Threat Protection might not be turned on. In this case, proceed to the next step.

3. In the navigation pane, choose **Settings** > **Microsoft Threat Protection**. Confirm that Microsoft Threat Protection is turned on. 

   Need help? See [Turn on Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-enable).

## Review or change the automation level for device groups

Whether automated investigations run, and whether remediation actions are taken automatically or only upon approval for your devices depend on certain settings, such as device group policies. To learn more, see [How threats are remediated](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated).

### Review your device group settings

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.

2. Go to **Settings** > **Permissions** > **Device groups**. 

3. Review your device groups. In particular, look at the **Remediation level** column. We recommend using **Full - remediate threats automatically**.  You might need to create or edit your device groups to get the level of automation you want. To get help with this task, see the following articles:

   - [How threats are remediated](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated)
   
   - [Create and manage device groups](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups) 

## Review your security and alert policies in Office 365

Microsoft provides built-in [alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies) that help identify certain risks. These risks include Exchange admin permissions abuse, malware activity, potential external and internal threats, and information governance risks. Some alerts can trigger [automated investigation and response in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air). 

> [!TIP]
> To learn more about the relationship between alerts and automated investigations, see [Alert policies in the security and compliance center](https://docs.microsoft.com/microsoft-365/compliance/alert-policies).

In order for alert policies to work with automated investigation and response as expected, make sure your [Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) features are configured correctly.

> [!NOTE]
> Although certain alerts and security policies can trigger automated investigations, no remediation actions are taken automatically for email and content. Instead, all remediation actions are pending approval in the [Action center](mtp-action-center.md).

### To view or change your security settings in Office 365

Security settings in Office 365 help protect email and content. To view or change these settings, follow the guidance in [Protect against threats](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats).

1. Review your [antimalware protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#part-1---anti-malware-protection) policy settings.

2. Review your [anti-phishing protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#part-2---anti-phishing-protection) policy settings.

3. Review your [antispam protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#part-3---anti-spam-protection) policy settings. 

4. Review your [safe attachments](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#atp-safe-attachments-policies) policy settings. 

5. Review your [safe links](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#atp-safe-links-policies) policy settings. 

6. Make sure [Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#part-5---turn-on-atp-for-sharepoint-onedrive-and-microsoft-teams-workloads) is turned on.

7. Review your [zero-hour auto purge for email](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats#zero-hour-auto-purge-for-email-in-eop) settings. 

8. Review your [alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies).
 
## Review pending and completed actions in the Action center

After you have configured automated investigation and response in Microsoft Threat Protection, your next step is to visit the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)). There, you can review and approve pending actions, and see remediation actions that were taken automatically.

To learn more, see [The Action center](mtp-action-center.md).

## See also

[Remediation actions in MIcrosoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-remediation-actions)

[Microsoft Threat Protection: Deploy supported services](https://docs.microsoft.com/microsoft-365/security/mtp/deploy-supported-services)