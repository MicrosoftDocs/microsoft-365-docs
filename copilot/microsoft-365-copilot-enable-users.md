---
title: "Enable users for Microsoft 365 Copilot"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 01/16/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: "Learn about the steps to deploy Microsoft 365 Copilot to your users."
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Enable users for Microsoft 365 Copilot

There are three main steps to deploy Microsoft 365 Copilot in your organization:

1. Review the [prerequisites](microsoft-365-copilot-requirements.md) and verify that your organization is prepared for Microsoft 365 Copilot.

2. Assign the required licenses to your users.

3. Send an email to your users announcing Microsoft 365 Copilot and its features.

You can use the [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) in the Microsoft 365 admin center to perform all three steps, or use the steps described in this article.

## Assign licenses

Before you can assign Copilot licenses, you need to make sure that you've already provisioned users in your tenant. If you haven't done so yet, you can follow the steps in the [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) or [Add users and assign licenses in Microsoft 365](/microsoft-365/admin/add-users/add-users). These resources will guide you through the process of creating users and assigning licenses. To learn more about assigning Microsoft 365 licenses with PowerShell, see [Assign licenses to user accounts](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell).

To assign and manage Copilot licenses, you can use the Microsoft 365 admin center. Here are the steps:

1. Sign in to the Microsoft 365 admin center and go to **Billing** > **Licenses**.
2. Select **Microsoft 365 Copilot**.
3. In the product details page, assign licenses to users and manage their access to Copilot and other apps and services.
4. To check if a user has been added, go to **Users** and then **Active Users**. The user will be displayed along with their active license.

> [!IMPORTANT]
> Assigning Copilot licenses to cross-tenant users, including guest users, is not currently supported.

You can also manage licenses from the Copilot page in the Microsoft 365 admin center. To learn more, see [Copilot page in the Microsoft 365 admin center](microsoft-365-copilot-page.md).

Once you've assigned licenses, the Copilot experience will automatically appear for users in Microsoft 365 Apps. In some experiences, like Word, a Copilot dialog will appear when creating a new document. In other experiences, Copilot is quickly accessible on the Ribbon.

>[!NOTE]
>For Education customers, the Copilot license is listed under **Microsoft 365 A3 Extra Features for faculty** or **Microsoft 365 A5 Extra Features for faculty**.

## Send welcome email

After licensing your users for Microsoft 365 Copilot, we recommend sending them a welcome email to introduce them to Microsoft 365 Copilot and help them understand what it can do for them. The easiest way to do this is to use the [Microsoft 365 Copilot setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide), which includes an option for sending a welcome email to your Copilot users. Here's an example of this email:

:::image type="content" source="media/copilot-welcome-email-jan.png" alt-text="An image of an email introducing Microsoft 365 Copilot and its capabilities that an admin can provide to users.":::

The welcome email also includes a link to [Microsoft Copilot help and learning](https://support.microsoft.com/copilot-skilling).

## Enable feedback

We recommend that you enable all feedback settings for the Microsoft 365 Apps. This allows Microsoft 365 Copilot users to provide details with their thumbs up or thumbs down reaction to what Copilot produced from their prompt. You can use either the [cloud policy service](https://config.office.com) or group policies to enable the feedback for your users. Once all the policies are enabled, users will have the option to provide logs, screenshots, an email address for further contact about their feedback submission.

## Microsoft 365 Copilot usage activity report

After your users have had a chance to use Copilot, we recommend running and reviewing the [Microsoft 365 Copilot usage report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage) to get a summary of user adoption, retention, and engagement with Microsoft 365 Copilot. The report can be found in the Microsoft 365 admin center under **Reports** > **Usage**.
