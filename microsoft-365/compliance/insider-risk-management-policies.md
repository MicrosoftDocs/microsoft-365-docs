---
title: Create and manage insider risk management policies
description: Learn about insider risk management policies in Microsoft Purview
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/09/2023
audience: itpro
ms.collection:
- tier1
- purview-compliance
ms.custom: admindeeplinkCOMPLIANCE
---

# Create and manage insider risk management policies

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potentially malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider Risk Management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Insider risk management policies determine which users are in-scope and which types of risk indicators are configured for alerts. You can quickly create a security policy that applies to all users in your organization or define individual users or groups for management in a policy. Policies support content priorities to focus policy conditions on multiple or specific Microsoft Teams, SharePoint sites, data sensitivity types, and data labels. Using templates, you can select specific risk indicators and customize event thresholds for policy indicators, effectively customizing risk scores, and level and frequency of alerts. 

You can also configure quick data leak and data theft policies by departing user policies that automatically define policy conditions based on results from the latest analytics. Also, risk score boosters and anomaly detections help identify potentially risky user activity that is of higher importance or unusual. Policy windows allow you to define the time frame to apply the policy to alert activities and are used to determine the duration of the policy once activated.

Check out the [Insider Risk Management Policies Configuration video](https://www.youtube.com/watch?v=kudK5ajZTUo) for an overview of how policies created with built-in policy templates can help you to quickly act on potential risks.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Policy dashboard

The **Policy dashboard** allows you to quickly see the policies in your organization, the health of the policy, manually add users to security policies, and to view the status of alerts associated with each policy.

- **Policy name**: Name assigned to the policy in the policy wizard.
- **Status**: Health status for each policy. Displays number of policy warnings and recommendations, or a status of *Healthy* for policies without issues.  You can select the policy to see the health status details for any warnings or recommendations.
- **Active alerts**: Number of active alerts for each policy.
- **Confirmed alerts**: Total number of alerts that resulted in cases from the policy in the last 365 days.
- **Actions taken on alerts**: Total number of alerts that were confirmed or dismissed for the last 365 days.
- **Policy alert effectiveness**: Percentage determined by total confirmed alerts divided by total actions taken on alerts (which is the sum of alerts that were confirmed or dismissed over the past year).

![Insider risk management policy dashboard](../media/insider-risk-policy-dashboard.png)

## Policy recommendations from analytics

Insider risk analytics gives you an aggregate view of anonymized user activities related to security and compliance, enabling you to evaluate potential insider risks in your organization without configuring any insider risk policies. This evaluation can help your organization identify potential areas of higher risk and help determine the type and scope of insider risk management policies you may consider configuring. If you decide to act on analytics scan results for [data leaks](insider-risk-management-policy-templates.md#data-leaks) or [data theft](insider-risk-management-policy-templates.md#data-theft-by-departing-users) by departing users policies, you even have the option to configure a quick policy based on these results.

To learn more about insider risk analytics and policy recommendations, see [Insider risk management settings: Analytics](insider-risk-management-settings.md#analytics).

## Quick policies from recommended actions (preview)

For many organizations, getting started with an initial policy can be a challenge. If you're new to insider risk management and are using the recommended actions to get started, you can configure a quick policy to expedite a *General data leaks* or *Data theft by departing users* policy. Quick policy settings are automatically populated based on results from the latest analytics scan in your organization. For example, if the check detected potential data leak activities, the quick policy would include the indicators used to detect those activities. 

To get started, review the quick policy settings and configure the policy with a single selection. If you need to customize a quick policy, you can change the conditions during the initial configuration or after the policy has been created. Also, you can stay up to date with the detection results for a quick policy by configuring email notifications each time you have a policy warning or each time the policy generates a high severity alert.

## Prioritize content in policies

Insider risk management policies support specifying a higher priority for content depending on where it's stored, the type of content, or how it's classified. You can also choose whether to assign risk scores to all activities detected by a policy or only activities that include priority content. Specifying content as a priority increases the risk score for any associated activity, which in turn increases the chance of generating a high severity alert. However, some activities won't generate an alert at all unless the related content contains built-in or custom sensitive info types or was specified as a priority in the policy.

For example, your organization has a dedicated SharePoint site for a highly confidential project. Data leaks for information in this SharePoint site could compromise the project and would have a significant impact on its success. By prioritizing this SharePoint site in a Data leaks policy, risk scores for qualifying activities are automatically increased. This prioritization increases the likelihood that these activities generate an insider risk alert and raises the severity level for the alert.

Additionally, you can choose to focus this policy for SharePoint site activity that only includes priority content for this project. Risk scores will be assigned and alerts will be generated only when specified activities include priority content. Activities without priority content won't be scored, but you'll still be able to review them if an alert is generated.

> [!NOTE]
> If you configure a policy to generate alerts only for activity that includes priority content, no changes are applied to risk score boosters.

When you create an insider risk management policy in the policy wizard, you can choose from the following priorities:

- **SharePoint sites**: Any activity associated with all file types in defined SharePoint sites is assigned a higher risk score. Users configuring the policy and selecting priority SharePoint sites can select SharePoint sites that they have permission to access. If SharePoint sites aren't available for selection in the policy by the current user, another user with the required permissions can select the sites for the policy later, or the current user should be given access to the required sites.
- **Sensitive information types**: Any activity associated with content that contains [sensitive information types](sensitive-information-type-entity-definitions.md) are assigned a higher risk score.
- **Sensitivity labels**: Any activity associated with content that has specific [sensitivity labels](sensitivity-labels.md) applied are assigned a higher risk score.
- **File extensions**: Any activity associated with content that has specific file extensions. Users configuring a data theft/leak policy that selects **File extensions to prioritize** in the policy wizard can define up to 50 file extensions to prioritize in the policy. Entered extensions can include or omit a '.' as the first character of the prioritized extension.
- **Trainable classifiers**: Any activity associated with content that is included in a [trainable classifier](/microsoft-365/compliance/classifier-learn-about). Users configuring a policy that selects Trainable classifiers in the policy wizard can select up to 5 trainable classifiers to apply to the policy. These classifiers can be existing classifiers that identify patterns of sensitive information like social security, credit card, or bank account numbers or custom classifiers created in your organization.

## Sequence detection (preview)

Risk management activities may not occur as isolated events. These risks are frequently part of a larger sequence of events. A sequence is a group of two or more potentially risky activities performed one after the other that might suggest an elevated risk. Identifying these related user activities is an important part of evaluating overall risk. When sequence detection is selected for data theft or data leaks policies, insights from sequence information activities are displayed on the **User activity** tab within an insider risk management case. The following policy templates support sequence detection:

- Data theft by departing users
- Data leaks
- Data leaks by priority users
- Data leaks by risky users

These insider risk management policies can use specific indicators and the order that they occur to detect each step in a sequence of risk. For policies created from the *Data leaks* and *Data leaks by priority user* templates, you can also select which sequences trigger the policy. File names are used when mapping activities across a sequence. These risks are organized into four main categories of activity:

- **Collection**: Detects download activities by in-scope policy users. Example risk management activities include downloading files from SharePoint sites, third-party cloud services, unallowed domains, or moving files into a compressed folder.
- **Exfiltration**: Detects sharing or extraction activities to internal and external sources by in-scope policy users. An example risk management activity includes sending emails with attachments from your organization to external recipients.
- **Obfuscation**: Detects the masking of potentially risky activities by in-scope policy users. An example risk management activity includes renaming files on a device.
- **Clean-up**: Detects deletion activities by in-scope policy users. An example risk management activity includes deleting files from a device.

> [!NOTE]
> Sequence detection uses indicators that are enabled in the global settings for insider risk management. If appropriate indicators are not selected, you'll be able to turn on these indicators in the sequence detection step in the policy wizard.

You can customize individual threshold settings for each sequence detection type when configured in the policy. These threshold settings adjust alerts based on the volume of files associated with the sequence type.

To learn more about sequence detection management in the **User activity** view, see [Insider risk management cases: User activity](insider-risk-management-cases.md#user-activity).

## Cumulative exfiltration detection (preview)

With privacy on by default, insider risk indicators help identify unusual levels of risk activities when evaluated daily for users that are in-scope for insider risk policies. Cumulative exfiltration detection uses machine learning models to help you identify when exfiltration activities that a user performs over a certain time exceeds the normal amount performed by users in your organization for the past 30 days over multiple exfiltration activity types. For example, if a user shared more files than most users over the past month, this activity would be detected and classified as a cumulative exfiltration activity.

Insider risk management analysts and investigators may use cumulative exfiltration detection insights to help identify exfiltration activities that may not typically generate [alerts](insider-risk-management-activities.md#alert-dashboard) but are above what is typical for their organization. Some examples may be departing users slowly exfiltrate data across a range of days, or when users repeatedly share data across multiple channels more than usual for data sharing for your organization, or compared to their peer groups.
>[!NOTE]
> By default, cumulative exfiltration detection generates risk scores based on a user's cumulative exfiltration activity compared to their organization norms. You can enable *Cumulative exfiltration detection* options in the **Policy indicators** section of the Insider risk management settings page.
Higher risk scores are assigned to cumulative exfiltration activities for SharePoint sites, sensitive information types, and content with [sensitivity labels](/microsoft-365/compliance/sensitivity-labels#label-priority-order-matters) configured as priority content in a policy or for activity involving labels configured as high priority in [Microsoft Purview Information Protection](information-protection.md).

Cumulative exfiltration detection is enabled by default when using the following policy templates:

- Data theft by departing users
- Data leaks
- Data leaks by priority users
- Data leaks by risky users

### Peer groups for cumulative exfiltration detection

Insider risk management identifies three types of peer groups for analyzing exfiltration activity performed by users. Peer groups defined for users are based on the following criteria:

**SharePoint sites**: Insider risk management identifies peer groups based on users who access similar SharePoint sites. 

**Similar organization**: Users with reports and team members based on organization hierarchy. This option requires that your organization uses Azure Active Directory (Azure AD) to maintain organization hierarchy. 

**Similar job title**: Users with a combination of organizational distance and similar job titles. For example, a user with a Senior Sales Manager title with a similar role designation as a Lead Sales Manager in the same organization would be identified as similar job title. This option requires that your organization uses Azure AD to maintain organization hierarchy, role designations, and job titles. If you do not have Azure AD configured for organization structure and job titles, then insider risk management identifies peer groups based on common SharePoint sites.
 
If you enable cumulative exfiltration detection, your organization is agreeing to sharing Azure AD data with the compliance portal, including organization hierarchy and job titles. If your organization does not use Azure AD to maintain this information, then detection may be less accurate.
> [!NOTE]
> Cumulative exfiltration detection uses exfiltration indicators that are enabled in the global settings for insider risk management and exfiltration indicators that are selected in a policy. As such, cumulative exfiltration detection is only evaluated for the necessary exfiltration indicators selected. Cumulative exfiltration activities for [sensitivity labels](sensitivity-labels.md) configured in priority content generate higher risk scores.

When cumulative exfiltration detection is enabled for data theft or data leak policies, insights from cumulative exfiltration activities are displayed on the **User activity** tab within an insider risk management case. To learn more about user activity management, see [Insider risk management cases: User activities](insider-risk-management-cases.md#user-activity). 

## Policy health

The policy health status gives you insights into potential issues with your insider risk management policies. The **Status** column on the **Policies** tab can alert you to policies issues that may prevent user activity from being reported or why the number of activity alerts is unusual. The policy health status can also confirm that the policy is healthy and doesn't need attention or configuration changes.

If there are issues with a policy, the policy health status displays notification warnings and recommendations to help you take action to resolve policy issues. These notifications can help you resolve the following issues:

- **Policies with incomplete configuration**. These issues may include missing users or groups in the policy or other incomplete policy configuration steps.
- **Policies with indicator configuration issues**. Indicators are an important part of each policy. If indicators aren't configured, or if too few indicators are selected, the policy may not evaluate risky activities as expected.
- **Policy triggers aren't working, or policy trigger requirements aren't properly configured**. Policy functionality may depend on other services or configuration requirements to effectively detect triggering events to activate risk score assignment to users in the policy. These dependencies may include issues with connector configuration, Microsoft Defender for Endpoint alert sharing, or data loss prevention policy configuration settings.
- **Volume limits are nearing or over limits**. Insider risk management policies use numerous Microsoft 365 services and endpoints to aggregate risk activity signals. Depending on the number of users in your policies, volume limits may delay identification and reporting of risk activities. Learn more about these limits in the Policy template limits section of this article.

To quickly view the health status for a policy, navigate the **Policy** tab and the **Status** column. Here you'll see the following policy health status options for each policy:

- *Healthy*: No issues have been identified with the policy.
- *Recommendations*: An issue with the policy that may prevent the policy from operating as expected.
- *Warnings*: An issue with the policy that may prevent it from identifying potentially risky activities.

For more details about any recommendations or warnings, select a policy on the **Policy** tab to open the policy details card. More information about the recommendations and warnings, including guidance on how to address these issues, is displayed in the **Notifications** section of the details card.

![Insider risk management policy health.](../media/insider-risk-policy-health.png)

### Notification messages

Use the following table to learn more about recommendations and warning notifications and actions to take to resolve potential issues.

|**Notification messages**|**Policy templates**|**Causes / Try this action to fix**|
|:------------------------|:-------------------|:----------------------------------|
|**Policy isn't assigning risk scores to activity**| All policy templates | You may want to review your policy scope and triggering event configuration so that the policy can assign risk scores to activities <br><br> 1. Review the users that are selected for the policy. If you have few users selected, you may want to select additional users. <br> 2. If you're using an HR connector, check that your HR connector is sending the correct data. <br> 3. If you're using a DLP policy as your triggering event, check your DLP policy configuration to ensure it's configured to be used in this policy. <br> 4. For security violation policies, review the Microsoft Defender for Endpoint alert triage status selected in Insider risk settings > Intelligent detections. Confirm that the alert filter isn't too narrow.|
|**Policy hasn't generated any alerts**| All policy templates|You may want to review your policy configuration so that you're analyzing the most relevant scoring activity. <br><br> 1. Confirm that you've selected indicators that you want to score. The more indicators selected, the more activities are assigned risk scores. <br> 2. Review threshold customization for policy. If the thresholds selected don't align with your organization's risk tolerance, adjust the selections so that alerts are created based on your preferred thresholds. <br> 3. Review the users and groups selected for the policy. Confirm you've selected all of the applicable users and groups. <br> 4. For security violation policies, confirm you've selected the alert triage status that you want to score for Microsoft Defender for Endpoint alerts in Intelligent Detections in settings.|
|**No users or groups are included in this policy**| All policy templates | Users or groups aren't assigned to the policy. <br><br> Edit your policy and select users or groups for the policy.|
|**No indicators have been selected for this policy**| All policy templates | Indicators haven't been selected for the policy <br><br> Edit your policy and select appropriate policy indicators for the policy.|
|**No priority user groups are included in this policy**|- Data leaks by priority users <br> - Security policy violations by priority users|Priority user groups aren't assigned to the policy. <br><br> Configure priority user groups in Insider risk management settings and assign priority user groups to the policy.|
|**No triggering event has been selected for this policy**| All policy templates | A triggering event isn't configured for the policy <br><br> Risk scores won't be assigned to user activities until you edit the policy and select a triggering event.|
|**HR connector isn't configured or working as expected**|- Data theft by departing user <br> - Security policy violations by departing user <br> - Data leaks by risky users <br> - Security policy violations by risky users|There's an issue with the HR connector. <br><br> 1. If you're using an HR connector, check that your HR connector is sending correct data <br><br> OR <br><br> 2. Select the Azure AD account deleted triggering event.|
|**No devices are onboarded**|- Data theft by departing users <br> - Data leaks <br> - Data leaks by risky users <br> - Data Leaks by priority users|Device indicators are selected but there aren't any devices onboarded to the compliance portal <br><br> Check whether devices are onboarded and meet requirements.|
|**HR connector hasn't uploaded data recently**|- Data theft by departing user <br> - Security policy violations by departing user <br> - Data leaks by risky users <br> - Security policy violations by risky users|HR connector hasn't imported data in more than 7 days. <br><br> Check that your HR connector is configured correctly and sending data.|
|**We're unable to check the status of your HR connector right now, please check again later**|- Data theft by departing user <br> - Security policy violations by departing user <br> - Data leaks by risky users <br> - Security policy violations by risky users|The insider risk management solution is unable to check the status of your HR connector. <br><br> Check that your HR connector is configured correctly and sending data, or come back and check the policy status.|
|**DLP policy isn't selected as the triggering event**|- Data leaks <br> - Data leaks by priority users|A DLP policy hasn't been selected as a triggering event or the selected DLP policy has been deleted. <br><br> Edit the policy and either select an active DLP policy or 'User performs an exfiltration activity' as the triggering event in the policy configuration.|
|**DLP policy used in this policy is turned off** |- Data leaks <br> - Data leaks by priority users|DLP policy used in this policy is turned off. <br><br> 1. Turn the DLP policy assigned to this policy on. <br><br> OR <br><br> 2. Edit this policy and either select a new DLP policy or 'User performs an exfiltration activity' as the triggering event in the policy configuration.|
|**DLP policy doesn't meet requirements**|- Data leaks <br> - Data leaks by priority users|DLP policies used as triggering events must be configured to generate high severity alerts. <br><br>  1. Edit your DLP policy to assign applicable alerts as *High severity*. <br><br> OR <br><br> 2. Edit this policy and select *User performs an exfiltration activity* as the triggering event.|
|**Your organization doesn't have a Microsoft Defender for Endpoint subscription**|- Security policy violations <br> - Security policy violations by departing users <br> - Security policy violations by risky users <br> - Security policy violations by priority users|An active Microsoft Defender for Endpoint subscription wasn't detected for your organization. <br><br> Until a Microsoft Defender for Endpoint subscription is added, these policies won't assign risk scores to user activity.|
|**Microsoft Defender for Endpoint alerts aren't being shared with the compliance portal**|- Security policy violations <br> - Security policy violations by departing users <br> - Security policy violations by risky users <br> - Security policy violations by priority users|Microsoft Defender for Endpoint alerts aren't being shared with the compliance portal. <br><br> Configure sharing of Microsoft Defender for Endpoint alerts.|
|**You're approaching the maximum limit of users being actively scored for this policy template**|All policy templates|Each policy template has a maximum number of in-scope users. See the template limit section details. <br><br> Review the users in the Users tab and remove any users who don't need to be scored anymore.|
|**Triggering event is repeatedly occurring for over 15% of users in this policy**|All policy templates|Adjust the triggering event to help reduce how often users are brought into the policy scope.|

## Create a new policy

To create a new insider risk management policy, you'll generally use the policy wizard in the **Insider risk management** solution in the Microsoft Purview compliance portal. You can also create quick policies for general data leaks and data theft by departing users from Analytics checks if applicable.

Complete [Step 6: Create an insider risk management policy](/microsoft-365/compliance/insider-risk-management-configure#step-6-required-create-an-insider-risk-management-policy) to configure new insider risk policies.

## Update a policy

To update an existing insider risk management policy, you'll use the policy wizard in **Insider risk management** solution in the Microsoft Purview compliance portal.

Complete the following steps to manage an existing policy:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. On the policy dashboard, select the policy you want to manage.
3. On the policy details page, select **Edit policy**
4. In the policy wizard, you can't edit the following:
    - **Policy template**: The template used to define the types of risk indicators checked by the policy.
    - **Name**: The friendly name for the policy
5. On the **Name and description** page, update the description for the policy in the **Description** field.
6. Select **Next** to continue.
7. On the **Users and groups** page, select **Include all users and groups** or **Include specific users and groups** to define which users or groups are included in the policy, or if you've chosen a priority users-based template; select **Add or edit priority user groups**. Selecting **Include all users and groups** will look for triggering security and compliance related events for all users and groups in your organization to start assigning risk scores for the policy. Selecting **Include specific users and groups** allows you to define which users and groups to assign to the policy. Guest user accounts aren't supported.

    > [!NOTE]
    > To take advantage of real-time analytics (preview) for indicator threshold settings, you must scope your policy to **Include all users and groups**. Real-time analytics enables you to see the number of users that could potentially match a given set of policy conditions in real time. This helps you efficiently adjust the selection of indicators and thresholds of activity occurrence so you don’t have too few or too many policy alerts. Scoping your policy to **Include all users and groups** also provides better overall protection across your tenant. For more information on real-time analytics for threshold settings, [see Indicator level settings](insider-risk-management-settings.md#indicator-level-settings).

8. Select **Next** to continue.
9. On the **Content to prioritize** page, you can assign (if needed) the sources to prioritize, which increases the chance of generating a high severity alert for these sources. Select one of the following choices:

    - **I want to prioritize content**. Selecting this option will enable you to prioritize *SharePoint sites*, *Sensitivity labels*, *Sensitive info types*, and *File extensions* content types. If you choose this option, you must select at least one priority content type.

    - **I don't want to specify priority content right now**. Selecting this option will skip the priority content detail pages in the wizard.

10. Select **Next** to continue.

11. If you've selected **I want to prioritize content** in the previous step, you'll see the detail pages for *SharePoint sites*, *sensitive info types*, *sensitivity labels*, *file extensions*, and *Scoring*. Use these detail pages to define the SharePoint, sensitive info types, sensitivity labels, and file extensions to prioritize in the policy. The *Scoring* detail page allows you to scope the policy to only assign risk scores to priority content.

    - **SharePoint sites**: Select **Add SharePoint site** and select the SharePoint sites you have access to and want to prioritize. For example, *"group1@contoso.sharepoint.com/sites/group1"*.
    - **Sensitive info type**: Select **Add sensitive info type** and select the sensitivity types you want to prioritize. For example, *"U.S. Bank Account Number"* and *"Credit Card Number"*.
    - **Sensitivity labels**: Select **Add sensitivity label** and select the labels you want to prioritize. For example, *"Confidential"* and *"Secret"*.
    - **File extensions**: Add up to 50 file extensions. You can include or omit the '.' with the file extension. For example, *.py* or *py* would prioritize Python files.
    - **Scoring**: Decide whether to assign risk scores to all activities detected by this policy or only for activities that include priority content. Choose **Get alerts for all activity** or **Get alerts only for activity that includes priority content**.

    > [!NOTE]
    > Users configuring the policy and selecting priority SharePoint sites can select SharePoint sites that they have permission to access. If SharePoint sites aren't available for selection in the policy by the current user, another user with the required permissions can select the sites for the policy later or the current user should be given access to the required sites.

12. Select **Next** to continue.
13. If you've selected the *General data leaks* or *Data leaks by priority users* templates, you'll see options on the **Triggers for this policy** page for custom triggering events and policy indicators. You have the choice to select a DLP policy or indicators for triggering events that bring users assigned to the policy in-scope for activity scoring. If you select the **User matches a data loss prevention (DLP) policy triggering event** option, you must select a DLP policy from the DLP policy dropdown list to enable triggering indicators for the DLP Policy for this insider risk management policy. If you select the **User performs an exfiltration activity triggering event** option, you must select one or more of the listed indicators for the policy triggering event.
    > [!IMPORTANT]
    > If you're unable to select a listed indicator, it's because they aren't enabled for your organization. To make them available to select and assign to the policy, enable the indicators in **Insider risk management** > **Settings** > **Policy indicators**.
    > If you've selected other policy templates, custom triggering events aren't supported. The built-in policy triggering events apply and you'll continue to Step 23 without defining policy attributes.
14. If you've selected the *Data leaks by risky users* or *Security policy violations by risky users* templates, you'll see options on the **Triggers for this policy** page for [integration with communication compliance](/microsoft-365/compliance/communication-compliance-policies#policy-for-insider-risk-management-integration-preview) and HR data connector events. You have the choice to assign risk scores when users send messages that contain potentially threatening, harassing, or discriminatory language or to bring users into the policy scope after risky user events are reported in your HR system. If you select the **Risk triggers from communication compliance (preview)** option, you can accept the default communication compliance policy (automatically created), choose a previously created policy scope for this trigger, or create another scoped policy. If you select **HR data connector events**, you must configure an HR data connector for your organization.
15. Select **Next** to continue.
16. If you've selected the *Data leaks* or *Data leaks by priority users* templates and have selected the **User performs an exfiltration activity and associated indicators**, you can choose custom or default thresholds for the indicator triggering events that you've selected. Choose either the **Use default thresholds (Recommended)** or **Use custom thresholds for the triggering events**.
17. Select **Next** to continue.
18. If you've selected **Use custom thresholds for the triggering events**, for each triggering event indicator that you selected in Step 13, choose the appropriate level to generate the desired level of activity alerts.
19. Select **Next** to continue.
20. On the **Policy indicators** page, you'll see the [indicators](insider-risk-management-settings.md#policy-indicators) that you've defined as available on the **Insider risk settings** > **Indicators** page. Select the indicators you want to apply to the policy.

    > [!IMPORTANT]
    > If indicators on this page can't be selected, you'll need to select the indicators you want to enable for all policies. You can use the **Turn on indicators** button in the wizard or select indicators on the **Insider risk management** > **Settings** > **Policy indicators** page.

    If you've selected at least one *Office* or *Device* indicator, select the **Risk score boosters** as appropriate. Risk score boosters are only applicable for selected indicators.
    If you've selected a *Data theft* or *Data leaks* policy template, select one or more **Sequence detection** methods and a **Cumulative exfiltration detection** method to apply to the policy.

21. Select **Next** to continue.
22. On the **Decide whether to use default or custom indicator thresholds** page, choose custom or default thresholds for the policy indicators that you've selected. Choose either the **Use default thresholds for all indicators** or **Specify custom thresholds** for the selected policy indicators. If you've selected Specify custom thresholds, choose the appropriate level to generate the desired level of activity alerts for each policy indicator.

    > [!NOTE]
    > If analytics is turned on, and if you've scoped the policy to include all users, you can take advantage of real-time analytics to tune your threshold settings. [Learn more about real-time analytics for indicator threshold settings](insider-risk-management-settings.md#indicator-level-settings)

23. Select **Next** to continue.
24. On the **Review** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Select **Edit** to change any of the policy values or select **Submit** to create and activate the policy.

## Copy a policy

You may need to create a new policy that is similar to an existing policy but needs just a few configuration changes. Instead of creating a new policy from scratch, you can copy an existing policy and then modify the areas that need to be updated in the new policy.

Complete the following steps to copy an existing policy:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. On the policy dashboard, select the policy you want to copy.
3. On the policy details page, select Copy.
4. In the policy wizard, name the new policy and update the policy configuration as needed.

## Immediately start scoring user activity

There may be scenarios where you need to start assigning risk scores to users with insider risk policies outside of the insider risk management triggering event workflow. Use **Start scoring activity for users** on the **Policies** tab to manually add a user (or users) to one or more insider risk policies for a specific amount of time, to  start assigning risk scores to their activity, and to bypass the requirement for a user to have a triggering indicator (like a DLP policy match or an Employment End Date from the HR Connector). You can also add a reason for adding the user to the policy, which will appear on the users' activity timeline. Users manually added to policies are displayed in the **Users** dashboard and alerts are created if the activity meets the policy alert thresholds. At any given time, you can have up to 4,000 users in scope that have been manually added using the **Start scoring activity for users** feature.

Some scenarios where you may want to immediately start scoring user activities:

- When users are identified with risk concerns and you want to immediately start assigning risk scores to their activity for one or more of your policies.
- When there's an incident that may require you to immediately start assigning risk scores to involved users' activity for one or more of your policies.
- When you haven't configured your HR connector yet, but you want to start assigning risk scores to user activities for HR events by uploading a .csv file for the users.

> [!NOTE]
> It may take several hours for new manually-added users to appear in the **Users** dashboard. Activities for the previous 90 days for these users may take up to 24 hours to display. To view activities for manually added users, navigate to the **Users** tab and select the user on the **Users** dashboard and open the **User activity** tab on the details pane.

To manually start scoring activity for users in one or more insider risk management policies, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. On the policy dashboard, select the policy or policies you want to add users to.
3. Select **Start scoring activity for users**.
4. In the **Reason field** in the **Add users to multiple policies** pane, add a reason for adding the users.
5. In the **This should last for (choose between 5 and 30 days)** field, define the number of days to score the user's activity for the policy they're added to
6. To search your Active Directory for users, use the **Search user to add to policies** field. Type the name of the user you want to add to the policies. Select the user name and repeat to assign additional users to the policies. The list of users you've selected appear in the users section of the Add users to multiple policies pane.
7. To import a list of users to add to the policies, select **Import** to import a .csv (comma-separated values) file. The file must be in the following format and you must list the user principal names in the file:

    ```csv
    user principal name
    user1@domain.com
    user2@domain.com
    ```

8. Select the Add users to policies to accept the changes and add users to the policies or select Cancel to discard the changes and close the dialog.

## Stop scoring users in a policy

To stop scoring users in a policy, see the [Insider risk management users: Remove users from in-scope assignment to policies](insider-risk-management-users.md#remove-users-from-in-scope-assignment-to-policies) article.

## Delete a policy

> [!NOTE]
> Deleting a policy does not delete active or archived alerts generated from the policy.

To delete an existing insider risk management policy, complete the following steps:

1. In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management** and select the **Policies** tab.
2. On the policy dashboard, select the policy you want to delete.
3. Select **Delete** on the dashboard toolbar.
4. On the **Delete** dialog, Select **Yes** to delete the policy, or select **Cancel** to close the dialog.
