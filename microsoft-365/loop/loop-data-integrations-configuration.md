---
ms.date: 03/06/2025
title: "Configuring external data integrations for Loop experiences"
ms.reviewer: dancost, dimple
ms.author: jenz
author: jenzamora
manager: jtremper
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: how-to
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
- essentials-compliance
search.appverid:
- SPO160
- MET150
description: "Learn about how to configure external data integrations for Loop experiences."
---

# Configuring external data integrations for Loop experiences

Microsoft enabled Jira, Trello, and GitHub integration experiences within [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop). Tenant admins can use Cloud Policy to configure the data integration features. Tenant admins can Enable, Disable, or Not Configure various policy settings to control these integrations. The data integration policies are:

- **Import, view, and edit, items from apps integrated with Loop**
    - This is the primary policy to control all specific data integration policies. To configure a specific data integration differently than the primary setting, use one of the specific policies.
- **Import, view, and edit, GitHub items from Loop**
- **Import, view, and edit, Jira issues from Loop**
- **Import, view, and edit, Trello boards from Loop**

## User experience expectations when admin settings are configured

When data integrations are Enabled, data from external sources synchronize into the Loop data file. Integration options appear in the Discover '/' menu. Integrations synchronize data when the user views or edits the Loop component in apps that support Loop such as Teams, Outlook, Loop app, etc.

When data integrations are Disabled, data from these disabled external sources don't synchronize. No connections to these external sources can be established. All existing data stops synchronizing, and becomes read-only everywhere. The integration options still appear in the Discover '/' menu but users can't activate nor create new external data integrations.

## Example policy configurations and user experience result

|Primary Policy|Primary State|Specific Policy|Specific State|End User Outcome|
|-----|-----|-----|-----|-----|
|Import, view, and edit, items from apps integrated with Loop|Not Configured|Import, view, and edit, **GitHub** items from Loop|Not Configured|✅Enabled for all data integrations|
|Import, view, and edit, items from apps integrated with Loop|Not Configured|Import, view, and edit, **GitHub** items from Loop|✅Enabled|✅Enabled for all data integrations|
|Import, view, and edit, items from apps integrated with Loop|Not Configured|Import, view, and edit, **GitHub** items from Loop|🚫Disabled|✅Enabled for all data integrations EXCEPT<br/>🚫Disabled for GitHub|
|Import, view, and edit, items from apps integrated with Loop|✅Enabled|Import, view, and edit, **GitHub** items from Loop|Not Configured|✅Enabled for all data integrations|
|Import, view, and edit, items from apps integrated with Loop|✅Enabled|Import, view, and edit, **GitHub** items from Loop|✅Enabled|✅Enabled for all data integrations|
|Import, view, and edit, items from apps integrated with Loop|✅Enabled|Import, view, and edit, **GitHub** items from Loop|🚫Disabled|✅Enabled for all data integrations EXCEPT<br/>🚫Disabled for GitHub|
|Import, view, and edit, items from apps integrated with Loop|🚫Disabled|Import, view, and edit, **GitHub** items from Loop|Not Configured|🚫Disabled for all data integrations|
|Import, view, and edit, items from apps integrated with Loop|🚫Disabled|Import, view, and edit, **GitHub** items from Loop|✅Enabled|🚫Disabled for all data integrations|
|Import, view, and edit, items from apps integrated with Loop|🚫Disabled|Import, view, and edit, **GitHub** items from Loop|🚫Disabled|🚫Disabled for all data integrations|


## Settings management in Cloud Policy

The Loop experiences check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) settings:

- **Import, view, and edit, items from apps integrated with Loop**
    - This is the primary policy to control all specific data integration policies. To configure a specific data integration differently than the primary setting, use one of the specific policies.
- **Import, view, and edit, GitHub items from Loop**
- **Import, view, and edit, Jira issues from Loop**
- **Import, view, and edit, Trello boards from Loop**


1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users**, or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](/microsoft-365/loop/loop-components-configuration#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose one of the following settings:
    - For **Import, view, and edit, items from apps integrated with Loop**:
        - first, recall:
            - This is the primary policy to control all specific data integration policies. To configure a specific data integration differently than the primary setting, use one of the specific policies.
        - **Enabled**: All external data integrations in Loop are available to the users.
        - **Disabled**: All external data integrations in Loop aren't available to the users.
        - **Not configured**: All external data integrations in Loop are available to the users.
    - For **Import, view, and edit, GitHub items from Loop**:
        - **Enabled**: GitHub data integrations in Loop are available to the users.
        - **Disabled**: GitHub data integrations in Loop aren't available to the users.
        - **Not configured**: GitHub data integrations in Loop are available to the users.
    - For **Import, view, and edit, Jira issues from Loop**:
        - **Enabled**: Jira data integrations in Loop are available to the users.
        - **Disabled**: Jira data integrations in Loop aren't available to the users.
        - **Not configured**: Jira data integrations in Loop are available to the users.
    - For **Import, view, and edit, Trello boards from Loop**:
        - **Enabled**: Trello data integrations in Loop are available to the users.
        - **Disabled**: Trello data integrations in Loop aren't available to the users.
        - **Not configured**: Trello data integrations in Loop are available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if necessary. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there's a delay in the change being reflected:
- If there were existing policy configurations before the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations before to the change, then it will take 24 hours for the change to be reflected.


## Related topics

- [Use Trello with Loop - Microsoft Support](https://support.microsoft.com/office/use-trello-with-loop-cd889fc9-bcf4-43f1-af70-36558dd1e0b0)
- [Use Jira with Loop - Microsoft Support](https://support.microsoft.com/office/use-jira-with-loop-68e2ccce-5741-4b6d-a1fa-30a5df2e0479)
- [Use GitHub with Loop - Microsoft Support](https://support.microsoft.com/office/use-github-with-loop-5a4d95d5-3c59-4de8-a208-c9c8ab05a4fb)
