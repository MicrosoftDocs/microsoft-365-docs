---
title: Deploy configurable settings in Microsoft Managed Desktop
description:  Deploy and track configurable settings changes in Microsoft Managed Desktop.  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation, deploy, staged deployment, configurable settings
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Deploy and track configurable settings - Microsoft Managed Desktop

After you make changes to your setting categories and stage a deployment, the Deployment status page allows you to begin deploying your settings to groups. This page shows a summary of each configurable setting. When opening a setting category, you can deploy settings to groups and track the progress of these deployments.

## Deployment statuses

The following are the statuses you'll see for each deployment.

Status | Explanation
--- | ---
Deploy | Your change is waiting to be deployed to this group.
In progress | The change is being applied to active devices in this group.
Complete | The change completed on all active devices in this group.
Failed | The change failed on 10 percent of active devices in the group. The deployment was stopped.<br><br> A support request will be automatically opened with Microsoft Managed Desktop operations to troubleshoot the deployment.
Reverted | The change was reverted to the last change that was successfully deployed to all deployment groups.

## Deploy changes

As an example, we'll use a desktop background picture in these instructions. After you've staged a deployment, you deploy changes from the Deployment status page.

**To deploy changes:**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu.
2. In the Microsoft Managed Desktop section, select **Settings**.
3. In the **Deployment status** workspace, select the setting you want to deploy. Then, select the staged deployment to deploy.
4. Select **Deploy** to deploy the change to one of the deployment groups.

> [!NOTE]
> The orange caution icon indicates there is a previous group available for deployment as it's recommended to roll out in order.

<!-- Needs picture updated to show MEM ![Deployment status workspace. Trusted sites pane on the right. In the Deployment groups section are three columns: deployment groups, devices, and status. In the status column, "deploy" is highlighted.](../../media/1deployedit.png) -->

We recommend deploying to deployment groups in this order: Test, First, Fast, and then Broad.

When changes complete in each group, the status changes to **Complete**.

<!-- Needs picture updated to show MEM ![Deployment status workspace with columns for date updated, version, test, first, fast, and broad. The Proxy row is expanded, showing a dated setting flagged as "complete" in each of the four deployment groups.](../../media/2completeedit.png) -->

## Revert deployment

After you've deployed a change, you can revert from **Deployment status**. When you revert a change that is **In progress** or **Complete**, the current deployment stops. The setting will revert to the last version that was deployed to all groups.

As an example, we'll revert the desktop background picture.

**To revert a change:**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu.
2. In the Microsoft Managed Desktop section, select **Settings**.
3. In the **Deployment status** workspace, select the setting you want to revert. Then, select the staged deployment to revert.
4. Under **Need to revert this change?**, select **Revert deployment**.

<!-- Needs picture updated to show MEM ![Deployment status workspace. Browser start pages is selected, opening a pane on the right side with data about the submitted change and its status. At the bottom is the "need to revert this change" area where you can select "Revert deployment."](../../media/3revert.png) -->

## Additional resources

- [Configurable settings overview](config-setting-overview.md)
- [Configurable settings reference](config-setting-ref.md)
