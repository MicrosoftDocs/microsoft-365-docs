---
title: Learn about insider risk management settings
description: Learn about insider risk management settings in Microsoft Purview.
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 03/13/2023
audience: itpro
ms.collection:
- highpri 
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
---

# Learn about insider risk management settings

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage, and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Before getting started with insider risk management policies, it's important to understand and choose the insider risk management settings that best meet the compliance needs for your organization. Insider risk management settings apply to all insider risk management policies, regardless of the template you choose when creating a policy.  

> [!NOTE]
> Use the **Settings** button at the top of any insider risk management page to make settings changes.

The following table describes each insider risk management setting and provides a link to learn more about the setting.

|Setting|Description|
|-------------------------------|------------------------------------------------------------|
|[Privacy](insider-risk-management-settings-privacy.md)|Choose whether to display usernames or anonymized versions of usernames for all current and past policy matches for alerts and cases.|
|[Policy indicators](insider-risk-management-settings-policy-indicators.md)|Each insider risk management policy template is based on specific indicators that correspond to specific triggers and risk activities. All global indicators are disabled by default; **you must select one or more indicators to configure an insider risk management policy**. Indicator level settings help you control how the number of occurrences of risk events in your organization affect the risk score.|
|[Policy timeframes](insider-risk-management-settings-policy-timeframes.md)|The **Policy timeframes** setting allows you to define past and future review periods that are triggered after policy matches based on events and activities for the insider risk management policy templates.|
|[Intelligent detections](insider-risk-management-settings-intelligent-detections.md)|Use the **Intelligent detections** setting to globally exclude certain file types, domains, file paths, sensitive info types, trainable classifiers, sites, or keywords from being scored for risk. You can also use the **Intelligent detections** setting to control alert volume and to import and filter Microsoft Defender for Endpoint alerts. |
|[Export alerts](insider-risk-management-settings-alerts.md)|Insider risk management alert information is exportable to security information and event management (SIEM) and security orchestration automated response (SOAR) solutions by using the Office 365 Management Activity API schema. You can use the Office 365 Management Activity APIs to export alert information to other applications your organization may use to manage or aggregate insider risk information. |
|[Priority user groups](insider-risk-management-settings-priority-user-groups.md)|Users in your organization may have different levels of risk depending on their position, level of access to sensitive information, or risk history. Prioritizing the examination and scoring of the activities of these users can help alert you to potential risks that may have higher consequences for your organization. Use the **Priority user groups** setting to define the users in your organization that need closer inspection and more sensitive risk scoring. |
|[Priority physical assets (preview)](insider-risk-management-settings-priority-physical-assets.md)|Identifying access to priority physical assets and correlating access activity to user events is an important component of your compliance infrastructure. These physical assets represent priority locations in your organization, such as company buildings, data centers, or server rooms. Insider risk activities may be associated with users working unusual hours, attempting to access these unauthorized sensitive or secure areas, and requests for access to high-level areas without legitimate needs.|
|[Power Automate flows (preview)](insider-risk-management-settings-power-automate.md)|Microsoft Power Automate is a workflow service that automates actions across applications and services. By using flows from templates or created manually, you can automate common tasks associated with these applications and services. When you enable Power Automate flows for insider risk management, you can automate important tasks for cases and users. You can configure Power Automate flows to retrieve user, alert, and case information and share this information with stakeholders and other applications, as well as automate actions in insider risk management, such as posting to case notes. Power Automate flows are applicable for cases and any user in scope for a policy.|
|[Microsoft Teams (preview)](insider-risk-management-settings-teams.md)|You can enable Microsoft Teams support so that compliance analysts and investigators can use Teams to collaborate on insider risk management cases. Use Teams to:<br> - Coordinate and review response activities for cases in private Teams channels<br>- Securely share and store files and evidence related to individual cases<br>- Track and review response activities by analysts and investigators|
|[Analytics](insider-risk-management-settings-analytics.md)|Insider risk analytics enables you to conduct an evaluation of potential insider risks in your organization without configuring any insider risk policies. This evaluation can help your organization identify potential areas of higher user risk and help determine the type and scope of insider risk management policies you may consider configuring. |
|[Admin notifications](insider-risk-management-settings-admin-notifications.md)|Use the **Admin notifications** setting to automatically send an email notification to selectable insider risk management role groups. You can:<br>- Send a notification email when the first alert is generated for a new policy<br>- Send a daily email when new high-severity alerts are generated<br>- Send a weekly email summarizing policies that have unresolved warnings|
|[Inline alert customization](insider-risk-management-settings-inline-alert-customization.md)|Inline alert customization allows you to quickly tune an insider risk management policy directly from the **Alerts dashboard** while reviewing the alert. Alerts are generated when a risk management activity meets the thresholds configured in the related policy. To reduce the number of alerts you get from this type of activity, you can change the thresholds or remove the risk management activity from the policy altogether.|

[!INCLUDE [purview-preview](../includes/purview-preview.md)]




