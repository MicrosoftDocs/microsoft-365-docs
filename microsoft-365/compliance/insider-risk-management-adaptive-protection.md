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

Watch the following video for a summary of how Adaptive Protection can help identify and mitigate the most critical risks in your organization:

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
| A new insider risk policy | - Policy template: [Data leaks](/microsoft-365/compliance/insider-risk-management-policy-templates#data-leaks) <br> - Policy name: Adaptive Protection policy for Insider Risk Management <br> - Policy scope for users and groups: All users and groups <br> - Priority content: None <br> - Triggering events: Selected exfiltration events (you can view in insider risk management settings) <br> - Policy indicators: A subset of Office indicators (you can view in insider risk management settings) <br> - Risk score boosters: Activity is above user's usual activity for that day |
| Adaptive Protection risk levels | - Elevated risk level: Users must have at least 3 high severity exfiltration sequences <br> - Moderate risk level: Users must have at least 2 high severity activities (excluding some types of downloads) <br> - Minor risk level: Users must have at least 1 high severity activity (excluding some types of downloads) |
| Two new DLP policies | Adaptive Protection policy for Endpoint DLP <br><br> - Elevated risk level rule: Blocked <br> - Moderate/Mionr risk level rule: Audit <br> - Policy starts in test mode (audit only) <br><br> Adaptive Protection policy for Teams and Exchange DLP <br><br> - Elevated risk level rule: Blocked <br> - Moderate/Minor risk level rules: Audit <br> - Policy starts in test mode (audit only) |
|||

Once the quick setup process is started, it may take up to 72 hours before the associated insider risk management and DLP policies are created and you can expect to see Adaptive Protection risk levels and DLP actions applied to applicable user activities.

### Custom setup

The custom setup option allows you customize the insider risk management policy, the risk levels, and the DLP policies configured for Adaptive Protection. This option also allows you to configured this items before actually enabling the Adaptive Protection connections between insider risk management and DLP. In most cases, this option should be used by organizations that already have insider risk management and/or DLP policies in place.

Complete the following steps to configure Adaptive Protection using the custom setup:

#### Step 1: Create insider risk management policy

Risk levels are assigned to users when a policy assigned in Adaptive Protection either detects user activity or generates alerts that match the risk level conditions you define in the next step. If you don't want to use an existing insider risk management policy (selected in Step 2), you must create a new insider risk management policy. Your insider risk management policy for Adaptive Protection should include:

- **Users whose activity you want to detect**. This can be all users and groups in your organization or just a subset for specific risk mitigation scenarios or testing purposes.
- **Activities you consider risky and custom thresholds that influence an activity's risk score**. Risky activities might include emailing people outside your organization or copying files to USB devices.

Select **Create insider risk policy** to launch the new policy wizard. The [Data leaks](/microsoft-365/compliance/insider-risk-management-policy-templates#data-leaks) policy template is automatically selected in the wizard, but you can select any policy template if needed.

>[!IMPORTANT]
>Depending on the policy template selected, you may need to configure [additional settings](/microsoft-365/compliance/insider-risk-management-configure#step-4-recommended-configure-prerequisites-for-policies) for the policy to properly detect potentially risky activities and to create applicable alerts

#### Step 2: Configure risk level settings

Select the **Risk levels for Adaptive Protection** tab. You'll start by selecting the insider risk management policy you want to use for Adaptive Protection. This can either be the new policy you created in Step 1 or an existing policy you've already configured.

Next, you'll accept the applicable built-in risk level conditions or create your own. Depending on the type of policy you've selected, the risk level conditions will reflect the applicable conditions associated with indicators and activities you've configured in the policy.

For example, if you've chosen a policy based on the [Data leaks](/microsoft-365/compliance/insider-risk-management-policy-templates#data-leaks) policy template, the built-in risk level condition choices will apply to indicators and activities available in that policy. If you've selected a policy based on the [Security policy violations](/microsoft-365/compliance/insider-risk-management-policy-templates#security-policy-violations-preview) policy template, the built-in risk level conditions are automatically scoped to indicators and activities available in that policy.

To customize a risk level for your policy, complete the following steps:

1. On the **Risk levels for Adaptive Protection** tab, select **Edit** for the risk level you'd like to customize (*Elevated*, *Moderate*, or *Minor*).
2. On the **Custom risk level** pane, select an option in the **Risk level based on** section:

    - **Alert generated or confirmed for a user**
    - **Specific user activity**

3. If you've selected the **Alert generated or confirmed for a user** option, you'll choose the severity levels for alerts that are generated or confirmed for a user that should use this risk level. You can keep the *Severity for generated alerts* and the *Severity for confirmed alerts* conditions or remove one of these conditions if you only want to use one. If you need to add one of these conditions back, select **Add condition** and select the condition. For each condition, choose the severity level that should be applied for the condition (*High*, *Medium*, or *Low*). If the **any** of the conditions are met, the risk level is assigned to a user.
4. If you've selected the **Specific user activity** option, you'll choose the activity to detect, its severity, and number of daily occurrences during the past activity detection window. You must configure the *Activities*, *Activity severity*, and *Activity occurrences during detection window* conditions for this risk level. For the *Activities* condition, the options you can choose from are automatically updated for the types of activities you've defined with the indicators configured in the associated policy. If needed, select the **Assign this risk level to any user who has a future alert confirmed, even if conditions above aren't met** checkbox. If the **all** of the conditions are met, the risk level is assigned to a user.
5. Select **Confirm** to apply the custom risk level conditions or **Cancel** to discard your changes.

#### Step 3: Create or edit a DLP policy

Next you'll create (or edit) an existing DLP policy to restrict actions for users who match your risk level conditions in Adaptive Protection. Use the following guidelines for your DLP policy configuration:

- You must include the *User's risk level for Adaptive Protection is* condition in your DLP policy. This DLP policy can include other conditions as needed.
- Although you can include other locations in the DLP policy, Adaptive Protection currently supports only Exchange, Microsoft Teams, and devices.

Select **Create DLP policy** to launch the new DLP policy wizard. For step-by-step guidance to configure a DLP policy, see LINK TO CHRIS'S TOPIC.

If you have an existing DLP policy that you'd like to configure for Adaptive Protection, go to **Data loss prevention** > **Policies** in the compliance portal and select the DLP policy you'd like to update for Adpative Protection. See LINK TO CHRIS'S TOPIC FOR DETAILS.

>[!TIP]
>We recommend testing the DLP policy (with policy tips) so you can review DLP alerts to verify that the policy is working as expected before enabling AP.

#### Step 4: Turn on adaptive protection

After you've completed all three of the previous steps, you're ready to enable Adaptive Protection. When you turn Adaptive Protection on:

- THe insider risk management policy starts looking for user activity matching your risk level conditions. If detected, the risk levels are assigned to users.
- Users who are assigned risk levels will appear on the **Users in scope** tab in Adaptive Protection.
- The DLP policy applies protection actions for any user assigned to risk levels included in the DLP policy.
- The DLP policy is added to the **DLP policies** tab in **Adaptive Protection (preview)**. You can view details about the DLP policy and edit policy conditions from the dashboard.

To enable Adaptive Protection, select the **Adaptive Protection settings** tab and toggle the **Enable Adaptive Protection** to *On*. It may take up to 72 hours before you can expect to see Adaptive Protection risk levels and DLP actions applied to applicable user activities.

## Manage Adaptive Protection

### Dashboard


### Users in scope

### DLP policies




## Disable Adaptive Protection

