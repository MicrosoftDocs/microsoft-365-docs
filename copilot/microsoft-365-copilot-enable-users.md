---
title: "Enable users for Microsoft Copilot for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/20/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
description: "Learn about the steps to deploy Microsoft Copilot for Microsoft 365 to your users."
---

# Enable users for Microsoft Copilot for Microsoft 365

There are three main steps to deploy Microsoft Copilot for Microsoft 365 in your organization:

1. Review the [prerequisites](microsoft-365-copilot-requirements.md) and verify that your organization is prepared for Microsoft Copilot for Microsoft 365.

2. Assign the required licenses to your users.

3. Send an email to your users announcing Microsoft Copilot for Microsoft 365 and its features.

You can use the [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) in the Microsoft 365 admin center to perform all three steps, or use the steps described in this article.

## Assign licenses

Before you can assign Copilot licenses, you need to make sure that you've already provisioned users in your tenant. If you haven't done so yet, you can follow the steps in the [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) or [Add users and assign licenses in Microsoft 365](/microsoft-365/admin/add-users/add-users). These resources will guide you through the process of creating users and assigning licenses. To learn more about assigning Microsoft 365 licenses with PowerShell, see [Assign licenses to user accounts](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell).

To assign and manage Copilot licenses, you can use the Microsoft 365 admin center. Here are the steps:

1. Sign in to the Microsoft 365 admin center and go to **Billing** > **Licenses**.
2. Select **Copilot for Microsoft 365**.
3. In the product details page, assign licenses to users and manage their access to Copilot and other apps and services.
4. To check if a user has been added, go to **Users** and then **Active Users**. The user will be displayed along with their active license.

You can also manage licenses from the Copilot page in the Microsoft 365 admin center. To learn more, see [Copilot page in the Microsoft 365 admin center](microsoft-365-copilot-page.md).

Once you've assigned licenses, the Copilot experience will automatically appear for users in Microsoft 365 Apps. In some experiences, like Word, a Copilot dialog will appear when creating a new document. In other experiences, Copilot is quickly accessible on the Ribbon.

## Send welcome email

After licensing your users for Microsoft Copilot for Microsoft 365, we recommend sending them a welcome email to introduce them to Microsoft Copilot for Microsoft 365 and help them understand what it can do for them. The easiest way to do this is to use the [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide), which includes an option for sending a welcome email to your Copilot users. Here’s an example of this email:

:::image type="content" source="media/copilot-ga-welcome-email.png" alt-text="An image of an email introducing Microsoft Copilot for Microsoft 365 and its capabilities that an admin can provide to users.":::

The welcome email also includes a link to [Microsoft Copilot help and learning](https://support.microsoft.com/copilot).

## Enable feedback

We recommend that you enable all feedback settings for the Microsoft 365 Apps. This allows Microsoft Copilot for Microsoft 365 users to provide details with their thumbs up or thumbs down reaction to what Copilot produced from their prompt. You can use either the [cloud policy service](https://config.office.com) or group policies to enable the feedback for your users. Once all the policies are enabled, users will have the option to provide logs, screenshots, an email address for further contact about their feedback submission.

## Microsoft Copilot for Microsoft 365 usage activity report

After your users have had a chance to use Copilot, we recommend running and reviewing the [Microsoft Copilot for Microsoft 365 usage report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage) to get a summary of user adoption, retention, and engagement with Microsoft Copilot for Microsoft 365. The report can be found in the Microsoft 365 admin center under **Reports** > **Usage**.
