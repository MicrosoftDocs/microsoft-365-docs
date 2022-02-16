---
title: User support
description:  Explains the options for customer-led and partner-led support.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.topic: article
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
---

# User support

Your Microsoft Managed Desktop users can get support either from your organization ("customer-led" support) or from a selected partner ("partner-led" support).

We aim to provide a consistent experience for users while keeping devices secure with both support options. No matter which option you choose, these same principles apply:

- Flexible integration of Microsoft Managed Desktop devices with your existing support processes.
- Clear roles and responsibilities between the support provider, IT admins, and Microsoft Managed Desktop.
- [Defined escalation paths](#workflow-for-support-providers).
- Documentation provided by Microsoft Managed Desktop, along with a portal, where you can request elevated device access and escalation to our support staff, if needed.
- Threat monitoring and mitigation provided by Microsoft Managed Desktop all day every day.

## Roles and responsibilities

To ensure the quality of service without compromising security, the support provider, IT admins, and Microsoft Managed Desktop have different roles and responsibilities.

| Role | Responsibilities |
| ------ | ------ |
| Support provider | Whoever provides support (either you for customer-led support or a partner for partner-led) is responsible for these items: <ul><li>Provide all user support and technical assistance from first contact through to resolution for the user.</li><li>Fulfill all service-level agreements for user support established by your organization, or in partnership with your chosen support provider.</li><li>Perform specific troubleshooting actions, such as requesting elevated device privileges as described in [Getting help for users](../working-with-managed-desktop/end-user-support.md).</li><li>Troubleshoot and remediate user problems including: <ul><li>Operating system (Windows)</li><li>Microsoft Apps for enterprise</li><li>Browser features</li><li>Device problems</li><li>Problems with infrastructure, such as printers, drivers, and VPNs</li><li>Line-of-business applications</li></ul></ul> |
| IT admin | Your IT admin is responsible for these items: <ul><li>Work with the support provider to set and manage service level agreements for user support</li><li>Manage elevated access privileges for approved support staff. For more information, see [Enable user support features](../get-started/enable-support.md).</li><li>If there are device issues affecting users, escalate the issues by using the Microsoft Managed Desktop admin support process. For more information, see [Admin support for Microsoft Managed Desktop](../working-with-managed-desktop/admin-support.md).</li><li>Route hardware-related issues to the appropriate vendor or supplier.</li><li>Maintain and protect device security policy settings on Microsoft Managed Desktop devices. Don't change the policies we set. </li></ul> |
| Microsoft Managed Desktop |As the service provider, we're responsible for these items: <ul><li>Provide the means for elevated device access and issue escalation including documentation.</li><li>Keep this information about the roles and responsibilities current.</li><li>Respond to admin support requests in accordance with the severity definitions.</li><li>Provide threat monitoring and mitigation for all enrolled devices all day every day.</li></ul> |

## Workflow for support providers

Whether support is customer-led or partner-led, the flow of activity for a user support request follows this path:

:::image type="content" source="../../media/mmd-support-flow.png" alt-text="When a user contacts support, they'll work through your tiered staff system as you've designed. It's important to designate a group of support staff that will be given the abilities for elevation and escalation, known as the support escalation team. For specific Microsoft Managed Desktop issues, they can escalate to our Operations team. Or for other Microsoft issues, they can route to your existing support channel, Unified or Premier. Hardware issues should always be routed to your established provider or supplier":::

Integrating your existing processes with this workflow for Microsoft Managed Desktop devices is flexible, so the details could be different. Typically, the support provider follows an existing tier-based or handoff approach. The support provider designates specific users, who have the ability to elevate permissions or escalate issues, to Microsoft Managed Desktop Operations. It's best to keep this group smaller than the broader support team.

If an issue must be escalated to Microsoft Managed Desktop, it's helpful to identify which team the issue should be directed to. We can transfer cases appropriately, but it saves time to route them to the right place from the start.

| Problem | Contact this team |
| ------ | ------ |
| Problems specific to Microsoft Managed Desktop | For example, a policy or setting that's deployed by the service itself. Escalate directly to the Operations team by creating a new support request. For more information, see [Getting help for users](../working-with-managed-desktop/end-user-support.md).
| Hardware problems | Direct to your hardware supplier or vendor.
| Other problems| Escalate through existing support channels, whether that's a Unified or Premier subscription.

## Provided support framework

### Elevation portal

Since Microsoft Managed Desktop devices run on standard user by default, some tasks require elevation of privileges. For more information about user account control, see [User account control](/windows/security/identity-protection/user-account-control/user-account-control-overview). In order for support staff to be able to [perform tasks](../working-with-managed-desktop/end-user-support.md#elevation-requests) while troubleshooting issues for users, we provide "just-in-time" access to an admin account. This password is accessed securely by only users you designate, and rotates every couple of hours.  

For steps on how to set up users for access to this portal, see [Enable user support features](../get-started/enable-support.md).

For steps on submitting an elevation request, see [Elevation requests](../working-with-managed-desktop/end-user-support.md#elevation-requests).

### Escalation portal

If an issue requires escalation to the Microsoft Managed Desktop Operations team, designated support staff might direct similar to an IT admin support request.  

> [!NOTE]
> Only Sev C support requests can be filed in this manner. For an issue matching the description of other severities, it's recommended to contact the appropriate IT admin to file. For more info, see [Support request severity definitions](../working-with-managed-desktop/admin-support.md#support-request-severity-definitions).

For steps on how to set up users for access to this portal, see [Enable user support features](../get-started/enable-support.md).

For steps on submitting an escalation request, see [Escalation requests](../working-with-managed-desktop/end-user-support.md#escalation-requests).
