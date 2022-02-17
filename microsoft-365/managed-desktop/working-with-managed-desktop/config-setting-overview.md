---
title: Configurable settings for Microsoft Managed Desktop
description: Info on configurable settings with Microsoft Managed Desktop 
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation, settings, configurable settings
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Configurable settings - Microsoft Managed Desktop

Microsoft Managed Desktop deploys settings and policies that are applied to all devices managed by Microsoft Managed Desktop. For more information, see [Device configuration](../service-description/device-policies.md).

Configurable settings in Microsoft Managed Desktop give IT admins a way to customize and deploy settings that are unique to their organization and business needs. These settings are in addition to device configuration settings and policies that are managed by Microsoft Managed Desktop.  

Configurable setting changes are made in the cloud. They're applied to your Microsoft Managed Desktop devices in defined deployment groups. This process is similar to how Microsoft Managed Desktop manages changes to device configuration settings and policies that are defined and managed by the service. By using the same process that Microsoft Managed Desktop uses for deploying changes, you continue to move your organization forward, using modern IT management practices.

## When to use configurable settings?

Use configurable settings in the following scenarios:

| Scenario | Description |
| ------ | ------ |
| Onboarding process | Microsoft Managed Desktop recommends that you customize configurable settings when you onboard to the Microsoft Managed Desktop service, or when you onboard a large number of devices (20 or more). <br><br>Setting categories are configured in Microsoft Managed Desktop admin portal. After you onboard and have access to the admin portal, you can decide which setting categories you want to customize for your organization. After, make the changes, stage a deployment, and then deploy your changes. |
| Maintain settings | Review your settings regularly and make needed updates. You might need to make changes to support a change in your business. |

## Setting categories

The following are the configurable settings categories that you can customize:

| Category | Description |
| ------ | ------ |
| [Desktop background picture](config-setting-ref.md#desktop-background-picture) | Customize the desktop background picture for Microsoft Managed Desktop devices. |
| [Browser start pages](config-setting-ref.md#browser-start-pages) | Add start pages to use with Microsoft Edge. |
| [Enterprise mode site list](config-setting-ref.md#enterprise-mode-site-list-location) | Add sites, and their compatibility mode. Sites on the list will start in Internet Explorer. |
| [Trusted sites](config-setting-ref.md#trusted-sites) | Add trusted sites and set security zones for each site. |
| [Proxy site exceptions](config-setting-ref.md#proxy) | Set up your proxy server address number and port number, and add proxy site exceptions. |

Each setting category can be customized and deployed on its own. You can deploy changes to multiple setting categories at the same time. However, you can only deploy one change at a time to a setting category.

For example:

- You can deploy changes to desktop background picture and trusted sites, each as their own deployment, at the same time.
- You can't deploy two deployments to the browser start pages at the same time. The most recent deployment will stop earlier deployments that are still in progress.

## Configurable setting process

Microsoft Managed Desktop recommends following a process like the one below when using configurable settings for your organization:

| Step  | Process |
| ------ | ------ |
| **Step 1: Plan** | <ol type="1"><li>Learn about configurable settings and decide which setting categories you want to configure for your organization.</li> <li>Create a timeline when you expect to deploy changes to each group.</li> <li>Plan communication to your users that meets your internal change management processes. For example, if you're adding browser start pages, inform your users they'll have a new set of start pages in their browser after the deployment.</li></ol> |
| **Step 2: Configure and stage deployment** | <ol type="1"><li>Make changes to configurable settings in Microsoft Managed Desktop admin portal.</li><li>Stage the changes so they’re ready to deploy.</li> <li>Remember to inform your users about the changes, and how the changes will change their device experience.</li><li>Configure and stage changes in the Microsoft Managed Desktop admin portal. For more information, see [Customize configurable settings](config-setting-ref.md).</li></ol>|
| **Step 3: Communicate changes** | <ol type="1"><li>Communicate information about upcoming changes to your users.</li> <li>For each deployment, complete the communication that is part of your change management processes. You should clearly communicate any change that impacts how a user works, or what they'll see on their devices.</li></ol> |
| **Step 4: Deploy changes** | Deploy your changes, starting with the Test group. The Test group allows you to validate and troubleshoot any issues in a group with fewer devices, before deploying changes to larger groups of devices. <br><br>If you run into any issues, you can revert the change, update the setting, and stage a new deployment. Microsoft Managed Desktop recommends that you follow the structured approach and deploy to groups in this order: Test, First, Fast, and then Broad. <br><br>All configurable settings are managed using the Microsoft Managed Desktop admin portal. For more information, see [Deploy changes](config-setting-deploy.md). |
| **Step 5: Track changes** | Track the progress for your changes in the Deployment status section. For each setting, you can: <ul><li>**Track progress:**  Track status after you deploy the change. The status will change to **In progress**, and then either **Complete**, or **Failed**. If a deployment fails, a support request is automatically opened for Microsoft Managed Desktop Operations to investigate the issue.</li> <li>**See version deployed:** Each deployed change has a version number.</li><li>**Revert changes:** Reverting a change stops the current deployment. It reverts all groups to the last changes that were deployed to all groups. You're rolling back to the last-known-good setting value.</li><li>**Validate changes:** After the deployment is complete, validate the changes were applied as you expected.</li></ul> |

If a deployment failed, or you can't revert a change, [open a support request](admin-support.md) with Microsoft Managed Desktop Operations.

For more information, see [Deploy and track configurable settings](config-setting-deploy.md).

## Additional resources

- [Configurable settings reference](config-setting-ref.md)
- [Deploy configurable settings](config-setting-deploy.md)
