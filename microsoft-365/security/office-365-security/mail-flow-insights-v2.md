---
title: "Mail flow insights in the Security & Compliance Center"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: beb6acaa-6016-4d54-ba7e-3d6d035e2b46
description: Admins can learn about the mail flow dashboard in the Security & Compliance Center, including insights, reports, and widgets.
ms.custom: seo-marvel-apr2020
---

# Mail flow insights in the Security & Compliance Center

Admins can use mail flow dashboard in the Security & Compliance Center to discover trends, insights and take actions to fix issues related to mail flow in their organization.

![The mail flow dashboard in the Security & Compliance Center](../../media/mail-flow-dashboard-v2.png)

The available widgets and insights are:

- [Auto-forwarded messages](mfi-auto-forwarded-messages-report.md)

- [Fix slow mail flow rules](mfi-slow-mail-flow-rules-insight.md)<sup>1</sup>

- [Fix possible mail loop](mfi-mail-loop-insight.md)<sup>1</sup>

- [Fix sender domain](mfi-sender-domain-insight.md)<sup>1</sup>

- [Mail flow map](mfi-mail-flow-map-report.md)

- [New users forwarding email](mfi-new-users-forwarding-email.md)<sup>2</sup>

- [New domains being forwarded email](mfi-new-domains-being-forwarded-email.md)<sup>2</sup>

- [Non-accepted domain](mfi-non-accepted-domain-report.md)

- [Non-delivery report](mfi-non-delivery-report.md)

- [Outbound and inbound mail flow](mfi-outbound-and-inbound-mail-flow.md)

- [Queues](mfi-queue-alerts-and-queues.md)

- [SMTP Auth clients](mfi-smtp-auth-clients-report.md)

- [Top domain mail flow status](mfi-domain-mail-flow-status-insight.md)

<sup>1</sup> This insight appears in the **Recommended for you** area of the mail flow dashboard only after the issue is detected. Otherwise, you won't see it.

<sup>2</sup> This widget isn't visible in the mail flow dashboard, but is visible on the [Forwarding report](view-mail-flow-reports.md#forwarding-report) page after the issue is detected. Otherwise, you won't see it.

## Permissions required to view the mail flow dashboard

The mail flow dashboard is available to members of the following route groups:

- **Organization Management** in the Security & Compliance Center (global admins).

- **[Exchange Administrator](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#exchange-administrator)** in Azure AD.

- **MailFlow Administrator** in the Security & Compliance Center: If a member of this role group is also not a member of the global administrator or Exchange administrator roles, then note the following issues and requirements:

  - The user must log in to the Security & Compliance Center directly at <https://protection.office.com>.
  - The user will only have read-only permission to the mail flow dashboard.
  - The user won't have access to the Microsoft 365 admin center.

For more information about permissions in the Security & Compliance Center, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md) and [Give users access to the Security & Compliance Center](grant-access-to-the-security-and-compliance-center.md).

## Where to find the mail flow dashboard

Open the Security & Compliance Center at <https://protection.office.com>, expand **Mail flow**, and then select **Dashboard**.

To go directly to the mail flow dashboard, open <https://protection.office.com/mailflow/dashboard>.
