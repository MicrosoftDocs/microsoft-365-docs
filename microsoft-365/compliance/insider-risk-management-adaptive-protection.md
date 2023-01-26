---
title: Help dynamically mitigate risks with Adaptive Protection (preview)
description: Learn how to help mitigate risks with Adaptive Protection and Data Loss Prevention (DLP) policies.
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- tier1
- purview-compliance
ms.custom: admindeeplinkCOMPLIANCE
---

# Help dynamically mitigate risks with Adaptive Protection (preview)

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Insider risk management policies and alerts are effective in helping you detect and identify potential risks associated with specific user actions in your organization. However, organizations need a more effective and efficient data protection solution that can automatically protect their data against the most critical risks.

Adaptive Protection in Microsoft Purview uses machine learning to identify and mitigate the most critical risks with the most effective [data loss prevention (DLP)](/microsoft-365/compliance/dlp-learn-about-dlp) protection controls dynamically, saving security teams valuable time while ensuring better data security. Adaptive Protection helps increase risk mitigation by extending and managing preventative options associated with detected risky action to the capabilities provided by DLP policies.

Adaptive Protection helps mitigate these potential risks by using the following features:

- **Context-aware detection**. Helps identify the most critical risks with ML-driven analysis of both content and user activities.
- **Dynamic controls**. Helps enforce effective controls on high-risk users while others maintain productivity.
- **Automated mitigation**. Helps to minimize the impact of potential data security incidents and reduce admin overhead.

Adaptive Protection dynamically assigns appropriate DLP policies to users based on the risk levels defined and analyzed by the machine learning models in insider risk management. With this new capability, static DLP policies become adaptive based on user context, ensuring that the most effective policy, such as blocking data sharing, is applied only to high-risk users while low-risk users can maintain productivity. The policy controls constantly adjust, so when a user's risk level changes, an appropriate policy is dynamically applied to match the new risk level.

Watch the following video to learn more about the Adaptive Protection workflow:

PLACEHOLDER FOR AP VIDEO - RED TIGER VIDEO LINK NEEDED FROM TINA

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Risk levels and preventive controls

With Adaptive Protection, your administrators can configure the risk factors or activities for customizable risk levels based on your organization's needs. The risk levels for Adaptive Protection update continuously and automatically based on the users' risk factors, so when users' data security risks increase or decrease, their risk levels will be adjusted accordingly. Based on the risk levels, DLP automatically applies the right level of preventative controls as configured by admins; such as *block*, *block with override*, or *warning*.

### Risk levels

Risk levels in Adaptive Protection define how risky a user's activity is and can be based on criteria such as how many exfiltration activities they performed or whether their activity generated a high severity insider risk alert. These risk levels have default conditional settings, but can be customized as needed:

- **Elevated risk level**: The highest risk level, includes built-conditions for users with high severity alerts, users with at least 3 sequence insights, each with a high severity alert for specific risk activities, or 1 or more confirmed high severity alerts.
- **Moderate risk level**: The medium risk level, includes built-n conditions for users with medium severity alerts or users with at least 2 high severity alerts for specific risk activities.
- **Minor risk level**: The lowest risk level, includes built-in conditions for users with low severity alerts or users with at least 1 high severity alert for specific risk activities.

### Customizing risk levels

Custom risk levels allow you to create risk levels based on your organization's needs. You can criteria that the risk level will be based on and then define conditions to control when the risk level is assigned to users.

For example, Adaptive Protection settings and DLP policies can allow users in the minor or medium risk level to receive policy tips and education on best practices of handling sensitive data, influencing positive behavior changes over time to reduce organizational data risks. For users in the elevated risk level, administrators can use the strictest protection controls, such as blocking users from saving or sharing sensitive data, to minimize the impact of potential data incidents.

#### Risk level criteria and conditions

Risk level criteria and conditions customization can be based on the following areas:

- **Alerts generated or confirmed for a user**: This criteria allows you to choose conditions based on the severity level for alerts that are generated or confirmed for a user. Conditions for alerts aren't additive and and the risk level is assigned to a user if one of the conditions are met.
- **Specific user activity**: This criteria allows you to choose conditions for activity to detect, its severity, and the number of daily occurrences during the [past activity detection](#past-activity-detection) window (optional). Conditions for user activity are additive and the risk level is assigned to a user only if all the conditions are met.

#### Past activity detection

This risk level setting determines how many days back Adaptive Protection examines to detect whether a user meets the conditions defined by any of the risk levels. The default setting is 7 days, but you can choose between 5 and 30 days of previous activity to apply risk level conditions. This setting only applies to risk levels that are based on a user's daily activity and excludes risks levels based on alerts.

#### Risk level timeframe

This risk level setting determines how long a risk level remains assigned to a user before it's automatically reset. The default setting is 7 days, but you can choose between 5 and 30 days before resetting the risk level for a user.

## Configure Adaptive Protection

Depending on the needs of your organization or where you are currently configured with insider risk management and DLP, you have two options to get started with Adaptive Protection.

### Quick setup

The quick setup option is fastest way to get started with Adaptive Protection. With this option, you don't need any pre-existing insider risk management or DLP policies, settings, features configured. If your organization doesn't have a current subscription or license that supports insider risk management or DLP, a [Microsoft Purview risk and compliance solutions trial](/microsoft-365/compliance/compliance-easy-trials) is automatically configured as part of the quick setup process. 

Available on Adaptive Protection cards on the insider risk management and DLP overview pages, you can get started by selecting **Turn on Adaptive Protection**. You can also get started with the quick setup process by navigating to **Insider risk management** > **Adaptive Protection** > **Dashboard** and selecting **Quick setup**.

Here's what is configured when you use the quick setup process for Adaptive Protection:

|**Area**|**Configuration**|
|:-------|:----------------|
| Insider risk settings (if not already configured) | - Privacy: Show anonymized versions of user names <br> - Policy timeframes: Defaults <br> - Policy indicators: A subset of Office indicators (you can view in insider risk management settings) <br> - Risk score boosters: All <br> - Intelligent Detections: Alert Volume = Default volume <br> - Analytics: On <br> - Admin notifications: Send notification email when first alert is generated to all |
| Insider risk settings (if already configured) | - Policy indicators: Office indicators not already configured (you can view in insider risk management settings) <br> - Analytics: On |
| A new insider risk policy | - Policy template: [General data leaks](/microsoft-365/compliance/insider-risk-management-policy-templates#data-leaks) <br> - Policy name: Adaptive Protection policy for Insider Risk Management <br> - Policy scope for users and groups: All users and groups <br> - Priority content: None <br> - Triggering events: Selected exfiltration events (you can view in insider risk management settings) <br> - Policy indicators: A subset of Office indicators (you can view in insider risk management settings) <br> - Risk score boosters: Activity is above user's usual activity for that day |
| Adaptive Protection risk levels | - Elevated risk level: Users must have at least 3 high severity exfiltration sequences <br> - Moderate risk level: Users must have at least 2 high severity activities (excluding some types of downloads) <br> - Minor risk level: Users must have at least 1 high severity activity (excluding some types of downloads) |
| Two new DLP policies | Adaptive Protection policy for Endpoint DLP <br><br> - Elevated risk level rule: Blocked <br> - Moderate/Mionr risk level rule: Audit <br> - Policy starts in test mode (audit only) <br><br> Adaptive Protection policy for Teams and Exchange DLP <br><br> - Elevated risk level rule: Blocked <br> - Moderate/Minor risk level rules: Audit <br> - Policy starts in test mode (audit only) |
|||

Once the quick setup process is started, it may take up to 72 hours before the associated insider risk management and DLP policies are created and you can expect to see Adaptive Protection risk levels and DLP actions applied to applicable user activities.

### Custom setup

The custom setup option allows you customize the insider risk management policy, the risk levels, and the DLP policies configured for Adaptive Protection. This option also allows you to configured this items before actually enabling the Adaptive Protection connections between insider risk management and DLP. In most cases, this option should be used by organizations that already have insider risk management and/or DLP policies in place.

Complete the following steps to configure Adaptive Protection using the custom setup:

#### Step 1: Create insider risk management policy or choose an existing one

Risk levels are assigned to users when a policy assigned in Adaptive Protection either detects user activity or generates alerts that match the risk level conditions you define in the next step. You can either use an existing insider risk management policy or create a new one. Your insider risk management policy for Adaptive Protection should include:

- **Users whose activity you want to detect**. This can be all users and groups in your organization or just a subset for specific risk mitigation scenarios or testing purposes.
- **Activities you consider risky and custom thresholds that influence an activity's risk score**. Risky activities might include emailing people outside your organization or copying files to USB devices.

#### Step 2: Configure risk level settings

On the **Risk levels for Adaptive Protection** tab, select the IRM policy you want to use for Adaptive Protection. Then decide whether to use the built-in risk level conditions or create your own. Don’t forget to click 'Save' at the bottom of the page.

#### Step 3: Create or edit a DLP policy

Create or edit an existing DLP policy to restrict actions for users who match your risk level conditions. Use the following guidelines for your DLP policy configuration:

- You must include the *User's risk level for Adaptive Protection is* condition in your DLP policy. This DLP policy can include other conditions as needed.​
- Although you can include other locations in the DLP policy, AP currently supports only Exchange, Microsoft Teams, and devices.

>[!TIP]
>We recommend testing the DLP policy (with policy tips) so you can review DLP alerts to verify that the policy is working as expected before enabling AP.

#### Step 4: Turn on adaptive protection

To turn on AP, go to IRM > AP > Adaptive Protection settings

When you turn it on:

- IRM policy starts looking for user activity matching your risk level conditions. If detected, the risk levels will be assigned to users.
- Users who are assigned risk levels will appear on the **Users assigned risk levels** tab.
- DLP policy applies protection actions for any user assigned to risk levels included in the DLP policy.

### Risk levels, activity detection, and risk level timeframe

Risk levels in AP define how risky a user's activity is and can be based on criteria such as how many exfiltration activities they performed or whether their activity generated a high severity insider risk alert.

- Elevated risk level
- Moderate risk level
- Minor risk level

## Manage Adaptive Protection

### Dashboard


### Users in scope

### DLP policies




## Disable Adaptive Protection

