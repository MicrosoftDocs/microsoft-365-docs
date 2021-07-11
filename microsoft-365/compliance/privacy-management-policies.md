---
title: "Create and manage policies in Microsoft privacy management (preview)"
f1.keywords:
- CSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- M365-privacy-management
search.appverid: 
- MOE150
- MET150
description: "Learn how to create and manage policies for handling your organization's personal data in Microsoft 365, respond to alerts, and remediate issues."
---

# Create and manage policies in privacy management (preview)

In this article: learn how to build and customize **policies** for handling personal data, get **alerts** about policy matches, and remediate **issues**.

## Purpose of policies

Policies allow you to define the types of privacy risks to look out for in your company’s Microsoft 365 data and establish the preferred outcomes for scenarios where matches are found. Your organization can work from the resulting alerts to review any matching data and remediate issues, all from within the privacy management solution.

Privacy management provides templates to give you an easy start on policy building and allows you to fine-tune your approach through extensive customization options. The key scenarios covered by privacy management’s templates include the following:

- **Data overexposure**: Detects overexposed personal data and prompts users to secure it.
- **Data transfer**: Spots and helps limit transfers of personal data across departments or regional borders.
- **Data minimization**: Helps users identify and reduce the amount of unused personal data.

To learn more about the capabilities of each template, see below.

## Policy types

### Data overexposure

Privacy management can help you detect and handle situations in which data that you’ve stored is insufficiently secure. For example, if access to an internal site is open to too wide a group or your permission settings have not been kept up to date, personal data stored on that site may be vulnerable to a breach. You can use privacy management’s data policy template to evaluate your data and alert you to potential issues.

### Data transfer

Transferring data across departments or regional borders can increase the risk of data exposure, for example if it’s sent via unencrypted emails or to unauthorized recipients. Such actions can have regulatory impact or may go against established practices for privacy. Using the data transfer template to create privacy management policies can spot and help limit such transfers.

> [!NOTE]
> During public preview, some tenants running data transfer policies to detect transfers across regions may encounter synchronization issues that impact visibility into policy matches in Exchange and Teams data. We recommend focusing on SharePoint and OneDrive data while previewing this policy type. An update for this issue is expected in fall 2021.

### Data minimization

Over time, companies can collect large amounts of personal data from customers or employees. Sometimes this includes data that was collected in excess of need, or is otherwise being unused and should be reduced to limit privacy risks around that information. The data minimization template can be used to address risks of this type.

## Get started with default templates

Privacy management will help kickstart your data evaluation process by creating three policies with default settings, using the templates for data minimization, data overexposure, and data transfers. These policies will be on by default, but will not automatically trigger notification mails or remediation prompts. After your initial setup, you can proceed to create and customize your own policies.

## Create a privacy management policy

There are two paths into creating privacy management policies. The first option is to choose from the set of pre-defined templates. You can also customize your own policy, using any of those templates as a starting point.

### Create a policy from a template

To get started right away with a policy, select one of the three pre-set policy types. To review details about any of them, you can select View settings to see the specific properties that make up the policy, including data types, data locations, and the conditions that trigger policy matches.

When creating a policy directly from a template, many settings will be chosen for you automatically. This includes turning on the policy by default. If you want to preview the policy in action before fully activating it, find it in your list after creation, edit the policy, and toggle it to test mode. For more information, see [Test your policy](#test-your-policy).

### Create custom policy

To take granular control of a policy’s settings, you can create a customized policy using one of the existing templates as a baseline. Privacy management provides a wizard to guide you through these steps.

Customizable properties include:

- **Name and type**: Choose the template to build your policy upon, then name and describe your version.
- **Data to monitor**: Select the type of personal data your policy will monitor. Choose either from the available classification groups, or choose from the list of individual sensitive info types. To learn more, see Choose data monitoring options below.
- **Users**: Select whether this policy applies to all users or selected users. If you choose the second option, you can select up to 300 users of your choosing from the provided list.
- **Locations**: Choose the locations within Microsoft 365 that your policy should cover, such as your organization’s SharePoint or Exchange data.
- **Conditions**: Select the relevant conditions for your type of policy. For example, you can specify what types of transfers a data transfer policy should look for, or how recently data has been used for a data minimization policy.
- **Outcomes**: Define outcomes when a policy match is detected. Your options depend on the policy type you’re starting with. Possible outcomes include:
  - **Email notifications**: This setting allows you to trigger digest email notifications, including links to related training. For more information, see Set user email notifications below.
  - **Teams**: Give users in Teams policy tips and recommendations, along with links to related training. This option is available for data transfer policies.
- **Alerts**: Decide the frequency of alerts to admins when a policy match is detected. Options include no alerts, alerts for every policy match, or alerts when a specific threshold is reached. If you choose the threshold option, set your desired parameters.
- **Mode**: Decide whether to run a policy in test mode first or turn it on immediately. For more information, see Test your policy.
When you have stepped through all settings in the wizard, review your settings, make any final edits if necessary, and save your policy.

#### Choose data monitoring options

When setting up a custom policy, you will be asked to select which types of data your policy should monitor. The options are as follows:

- **Classification groups**: A searchable list of sets of data based on key privacy regulations, such as GDPR or HIPAA. View details of any group to see what types of sensitive information it covers. Select one or more of these sets to use them as-is. The groups currently available are as follows:
  - Australia Health Records Act (HRIP Act) Enhanced
  - Australia Privacy Act Enhanced
  - (EU) General Data Protection Regulation (GDPR) Enhanced
  - Japan Personally Identifiable Information (PII) Data Enhanced
  - Japan Protection of Personal Information Enhanced
  - U.S. Gramm-Leach-Bliley Act (GLBA) Enhanced
  - U.S. Health Insurance Act (HIPAA) Enhanced
  - U.S. Patriot Act Enhanced
  - U.S. Personally Identifiable Information (PII) Data Enhanced
  - U.S. State Breach Notification Laws Enhanced
- **Individual sensitive info types**: By choosing specific sensitive information types yourself, like Social Security numbers or driver’s license information, you can customize your own group or groups of data of to look out for. This wizard allows you to select from the complete list of sensitive information types within privacy management. Each information type has its own properties. Use the info button beside any of them for details and notes about recommended settings. If you create more than one group, the wizard lets you apply Boolean operators to relate them and define their order of operations.

If you use pre-set classification groups, you cannot also select individual types or create your own groups. For the most flexibility, choose individual sensitive info types. To utilize the most common standards, choose from the classification groups.

#### Test your policy

If you would like to assess a new policy before fully activating it, set your policy to test mode. Test mode enables you to look for matches from the last 30 days, gauge the policy’s behavior, and review the types of alerts generated. We recommend running test policies for at least five days to get representative results. You have the option during the test phase to edit and adjust the policy’s settings. After you have gained insights from running the test, you can proceed to turn on the policy. While a policy is running in test mode, no user notification mails will be delivered.

#### Set user email notifications

With email notifications, users receive direct notifications about policy matches and important tasks to complete. The recipients will receive email digests that summarize data to be reviewed and possible actions, such as making documents private, keeping them on file, reporting any false-positive matches, and adding notes for future reference. These emails also include links for training recipients on how to handle these cases. Providing these links is required when initially setting up notifications and should point to your own internal documentation on processes and best practices.

Notifications can be enabled for individual policies during custom policy creation or when editing any policy. Use the Outcomes section to define what happens when a policy match is detected, including the option to enable these notifications, and set how often you want these digests to be delivered.

Email notification capability is controlled at a global level within Settings. It is enabled by default. Turning this setting off will stop all emails even if specific notifications have been configured at an individual policy level. For more information, see Configure settings under [Get started with privacy management](privacy-management-setup.md#configure-settings).

## View policy details

After your policy has been created, select it on the main **Policies** page to see its full overview. The policy details page will provide insights into your data, enable you to view content about specific policy matches, and advise you on next steps. If your policy is running in test mode, this page is also where you can turn on your policy when testing is complete.

After your policy is active, you can continue to review its policy details page to see ongoing insights on problem areas, alert severity and trends, and corrective actions taken.

## Resolve policy alerts and issues

Once your policies have been activated, privacy management will keep you apprised of important discoveries by alerting you to policy matches, grading their severity, and enabling you to take action by creating and resolving issues.

Privacy management’s Overview page provides a view into these findings with dynamic updates about key areas of concern, such as the policies with the most matches and your currently active policy alerts. You can also access details about your alerts and issues via the main Policies page.

### Alerts

To evaluate your active alerts and specify which issues require follow-up, access your **Alerts** page. It provides a filterable list of alerts generated by your policies, which you can individually review to determine the circumstances under which they were triggered.

Selecting any alert will open a flyover pane with additional details, such as the policy type, the number of matching items, and the severity as judged by your policy settings. Under the **Content** tab, you can review the files involved in this alert. This information can provide additional insights as to the specific event that triggered the alert, where the files reside, and what types of personal data are involved. Triggers for alerts are determined by each policy’s specific conditions. For instance, an alert might be triggered on a data transfer policy if privacy management detects a transfer between the policy’s specified departments or regions.

After assessing any alert in the list, you can use the **Create issue** action to prompt further investigation and action. You will be asked to name the issue and add any relevant comments for context. You can also dismiss alerts here if they don’t require a follow-up.

### Issues

As described in the Alerts section, issues are created while assessing alerts about policy matches. To follow up and resolve the indicated concerns, visit the Issues page. From here you can review individual issues, investigate the instigating conditions, review the data, and take the necessary steps to close the case.

This page provides a list of all open issues. Issues are listed by name and sorted by severity to help you prioritize cases, including high, medium, and low categories, along with unassigned. Select any issue in the list to review its content and take action to resolve it. You can give unassigned issues a severity rating during review.

#### Issue overview

Issue details pages help guide you through the process of addressing the identified privacy risks and properly handling the indicated files. On the **Overview** tab you can see the current step to take, indicating the status of the issue and the next recommended actions. You can also review essential information about the content involved, the associated policy, details about the alert, and the timeline.

Subsequent tabs provide further details about the associated alerts and content, along with any notes from others on your team who are working on the issue. You can manage the list of active contributors via the **Collaborators** tab.

#### Share the issue

Adding people as collaborators allows you to share the issue with additional members of your enterprise via a secure Microsoft Teams channel, company email, or by sharing a link directly to the issue’s page in privacy management. These options are available under the **Share** button. When sharing via Teams, you will be asked to select from the available teams in your organization, select the specific channel, and leave a message about the issue, which will be shared with the specified channel.

#### Review content and remediate

To review the content associated with an issue, choose the **Review content** action if prompted or open the Content tab. Select any file in the list to view it in full. Here you can see details about the file, any activities on record, and its remediation history, if previous steps have been taken to manage this file.

Use the **Remediate** button to make your own data handling decisions for this content. Selecting the button allows you to choose from one or more remediation actions. Options include:

**All policies**

- **Notify**: Notify the content owner about the detected issue.
- **Apply retention label**: Add a label about data retention for this item. 
- **Apply sensitivity label**: Add a label about the sensitivity of this item’s data.
- **Mark as not a match**: Identify a search result as a false positive to remove the content item from consideration.

**Data minimization**

- **Recycle/delete**: Use this option for a soft deletion of the data. Content is moved into the deleted items folder or recycling bin (Exchange, SharePoint, OneDrive), or deleted with an option to recover (Teams messages). Deletion can be reversed within a set period of time, depending on the settings of the service.

**Data overexposure and data transfer**

- **Unshare**: Stop sharing a link to this content item.

Each option will prompt you to leave comments and any other necessary supporting information for the content owner before you confirm your choice.

Once all remediation steps have been taken and the issue is ready to close, use the Resolve button and add your final comments before submitting it.

## Delete a policy

If you need to remove an existing privacy management policy, find it in the list on the Policies page, select the action menu (vertical ellipses), and choose the Delete policy action. You will be asked to confirm your choice before the deletion is final and the policy is permanently removed. Deleting a policy will not affect any files previously evaluated by the policy, and issues and alerts generated by the policy will remain.
