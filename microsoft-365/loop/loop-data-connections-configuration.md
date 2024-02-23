---
ms.date: 02/22/2024
title: "Configuring external data connections for Loop experiences"
ms.reviewer: dancost, dimple
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: article
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
- essentials-compliance
search.appverid:
- SPO160
- MET150
description: "Learn about how to configure external data connections for Loop experiences."
---

# Configuring external data connections for Loop experiences

Microsoft has enabled Jira, Trello and GitHub integration experiences within [Microsoft Loop](https://www.microsoft.com/en-us/microsoft-loop). Tenant admins can use Cloud Policy to configure the data integration features. Tenant admins have the option to either Enable, Disable or Not Configure various policy settings. The data integration policies are:

- **Allow external data integrations in Loop so users can import, view and edit items using Loop** - This is the primary policy that controls and overrides all specific data integration policies. To configure a specific data integration, use one of the specific policies below.
- **Allow GitHub external data integration in Loop so users can import, view and edit items using Loop**
- **Allow Jira external data integration in Loop so users can import, view and edit items using Loop**
- **Allow Trello external data integration in Loop so users can import, view and edit items using Loop**
- **Allow Azure DevOps external data integration in Loop so users can import, view and edit items using Loop**


## Example policy configurations and user experience result

|Primary Policy|Primary State|Specific Policy|Specific State|End User Outcome|
|-----|-----|-----|-----|-----|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|Not Configured|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|Not Configured|✅Enabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|Not Configured|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|✅Enabled|✅Enabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|Not Configured|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|🚫Disabled|🚫Disabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|✅Enabled|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|Not Configured|✅Enabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|✅Enabled|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|✅Enabled|✅Enabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|✅Enabled|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|🚫Disabled|🚫Disabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|🚫Disabled|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|Not Configured|🚫Disabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|🚫Disabled|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|✅Enabled|🚫Disabled|
|Allow *external data integrations in Loop* so users can import, view and edit items using Loop|🚫Disabled|Allow ***GitHub** external data integration in Loop* so users can import, view and edit items using Loop|🚫Disabled|🚫Disabled|


## Enabling Integrations in Loop experiences

The integration experience on Loop is now rolling out to be ON by default. If your organization prefers to not have these integrations or anyone integration, you can disable it via group policy manager or OCPS. 

These integrations will be supported on Loop web app, Microsoft365.com, Teams, Outlook, iOS, Android and other Loop supported hosts.
- This policy setting controls whether users can import or view these integrations in Loop web app and other Microsoft apps that support Loop. For e.g. in Outlook, Word for the web, Teams.
- If you enable this policy setting, users can import and view, and edit & sync within the integrated components in Loop file in apps that support Loop.
- If you disable this policy setting, users can't import, edit, and sync integration in apps that support Loop but will be able to see the existing imports (read-only) on to the Loop page, if any.


## Settings management in Cloud Policy

The Loop experiences check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) settings:

- **Allow external data integrations in Loop so users can import, view and edit items using Loop** - This is the primary policy that controls and overrides all specific data integration policies. To configure a specific data integration, use one of the specific policies below.
- **Allow GitHub external data integration in Loop so users can import, view and edit items using Loop**
- **Allow Jira external data integration in Loop so users can import, view and edit items using Loop**
- **Allow Trello external data integration in Loop so users can import, view and edit items using Loop**
- **Allow Azure DevOps external data integration in Loop so users can import, view and edit items using Loop**

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose one of the following settings:
    - For **Allow external data integrations in Loop so users can import, view and edit items using Loop**:
        - **Enabled**: All external data integrations in Loop are available to the users.
        - **Disabled**: All external data integrations in Loop are not available to the users.
        - **Not configured**: All external data integrations in Loop are available to the users.
    - For **Allow GitHub external data integration in Loop so users can import, view and edit items using Loop**:
        - **Enabled**: Github data integrations in Loop are available to the users.
        - **Disabled**: Github data integrations in Loop are not available to the users.
        - **Not configured**: Github data integrations in Loop are available to the users.
    - For **Allow Jira external data integration in Loop so users can import, view and edit items using Loop**:
        - **Enabled**: Jira data integrations in Loop are available to the users.
        - **Disabled**: Jira data integrations in Loop are not available to the users.
        - **Not configured**: Jira data integrations in Loop are available to the users.
    - For **Allow Trello external data integration in Loop so users can import, view and edit items using Loop**:
        - **Enabled**: Trello data integrations in Loop are available to the users.
        - **Disabled**: Trello data integrations in Loop are not available to the users.
        - **Not configured**: Trello data integrations in Loop are available to the users.
    - For **Allow Azure DevOps external data integration in Loop so users can import, view and edit items using Loop**: 
        - **Enabled**: Azure DevOps data integrations in Loop are available to the users.
        - **Disabled**: Azure DevOps data integrations in Loop are not available to the users.
        - **Not configured**: Azure DevOps data integrations in Loop are available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there will be a delay in the change being reflected as described below:
- If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations prior to the change, then it will take 24 hours for the change to be reflected.


## Related topics

- [Overview of Loop components in Microsoft 365](/microsoft-365/loop/loop-components-teams)
- [Manage Loop components in OneDrive and SharePoint](/microsoft-365/loop/loop-components-configuration)
- [Overview of Loop workspaces storage and permissions](/microsoft-365/loop/loop-workspaces-storage-permission)
- [Manage Loop workspace experiences in SharePoint Embedded](/microsoft-365/loop/loop-workspaces-configuration)
