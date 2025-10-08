---
title: Welcome users, create organizational messages, and enable feedback for Microsoft 365 Copilot
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 09/08/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- scotvorg
- m365copilot
- magic-ai-copilot
- operations-pod
description: Enterprise and company IT admins can send a Microsoft 365 Copilot welcome email to users and enable feedback. This welcome email is part of the Copilot adoption and onboarding process.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Welcome users, create organizational messages, and enable feedback for Microsoft 365 Copilot

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is an AI-powered productivity tool that helps users with everyday tasks.

As part of your [Microsoft 365 Copilot adoption](microsoft-365-copilot-enablement-resources.md), a welcome email to your Microsoft 365 Copilot users is sent on license assignment that announces Microsoft 365 Copilot and its features. You can also enable feedback for Microsoft 365 Copilot users.

:::image type="content" source="media/microsoft-365-copilot-enablement-resources/adopt-copilot-welcome-email-feedback.svg" alt-text="Diagram that shows the send welcome email and enable feedback step to adopt and enable Microsoft 365 Copilot." lightbox="media/microsoft-365-copilot-enablement-resources/adopt-copilot-welcome-email-feedback.svg":::

Additionally, admins can use Organizational Messaging in the Microsoft Admin Center to deliver tailored in-product messages to your users directly through Teams.

This article provides information about how to send users a welcome email, enable feedback, send organizational messages, and review the Microsoft 365 Copilot usage activity report.

This article applies to:

- Microsoft 365 Copilot

## Send welcome email

After you assign a Microsoft 365 Copilot license to a user, they will automatically be sent a notification email that can look like the following email.

:::image type="content" source="media/copilot-welcome-email-jan.png" alt-text="An image of an email introducing Microsoft 365 Copilot and its capabilities that an admin can provide to users.":::

The welcome email also includes a link to [Microsoft Copilot help and learning](https://support.microsoft.com/copilot-skilling).

We also recommend sending an in-product notification to your users through Organizational Messaging.

## Organizational Messages

Admins can also send a customizable in-product message through Teams with Organizational Messaging in the Microsoft Admin Center. After you [set up Microsoft 365 Copilot and assign licenses](microsoft-365-copilot-setup.md) to your users, they can be notified with your message in-product telling them that they can now use Microsoft 365 Copilot.

Admins can configure their message through the Microsoft 365 admin center.

:::image type="content" source="media/promote-using-copilot.png" alt-text="An image of the Set up Microsoft 365 Copilot page in the Microsoft 365 admin center.":::

1. In your Microsoft 365 admin center, in the navigation pane, select **Setup**.
2. On the Setup page, in the **Featured collections** section, select **Advanced deployment guides & assistance**.
3. Select **Set up Microsoft 365 Copilot**.
4. On the **Set up Microsoft 365 Copilot** page, in the **Promote using Microsoft 365 Copilot** tile, select **Schedule message**.

> [!NOTE]
> The **Promote using Microsoft 365 Copilot** option is also available in Advanced Deployment Guides for [Quickstart](), [Foundations+](), and [Advanced Configuration](). 

4. The Organization messages pane displays and shows the default message and how it will dsiplay to your users. If you choose to use it, select the recipients, schedule when and how regularly you want the message to be delivered to your users, and then select **Schedule message**.  

:::image type="content" source="media/organizational-message-copilot.png" alt-text="An image of the default organization message for Copilot users.":::

### Create a custom message

If you want to create a custom message instead of using the default one provided to you, at the bottom of the Organizational messages pane, select **More customization**. You can then create and deliver messages to targeted groups of users in your organization.

:::image type="content" source="media/create-custom-message.png" alt-text="An image of the Organizational messages page in which you can create a custom message.":::

1. Select **Create a message**.
2. Select an objective (for example, Adoption, Onboarding, Sustainability, or Training). Select **Next**.
3. Select where you would like your message to display (for example, Notifications area, Taskbar, Teaching popover, or Windows spotlight). Select **Next**.
4. Choose to create your own message or start with a premade template. Select **Next**.
5. Write your message, then select **Next**.
6. Select your target audience, then select **Next**.
7. Schedule how long and how often you want your message to appear to your recipients. Select **Next**.
8. Review your selections, and then select **Schedule**.

## Enable feedback

We recommend that you enable all feedback settings for the Microsoft 365 Apps.

This option allows Microsoft 365 Copilot users to provide details with a thumbs up or thumbs down reaction to a Copilot prompt response.

- To enable the feedback for your users, you can use the [cloud policy service](https://config.office.com) or group policies.

When all the policies are enabled, users can provide logs, screenshots, and a contact email address for their feedback submission.

## Review the Copilot usage activity report

After your users start using Copilot, we recommend running and reviewing the [Microsoft 365 Copilot usage report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage). This report summarizes user adoption, retention, and engagement with Microsoft 365 Copilot.

- The report is in the [Microsoft 365 admin center](https://admin.microsoft.com) > **Reports** > **Usage**.

To learn more about the Microsoft 365 Copilot reports, see [Microsoft 365 Copilot reporting options for admins](microsoft-365-copilot-reports-for-admins.md).

## Related articles

- [Microsoft 365 Copilot adoption guide and overview for IT admins](microsoft-365-copilot-reports-for-admins.md)
- [Advanced deployment guides for Microsoft 365 and Office 365 products](/microsoft-365/enterprise/setup-guides-for-microsoft-365)
