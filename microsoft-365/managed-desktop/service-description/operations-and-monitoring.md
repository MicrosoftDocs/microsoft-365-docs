---
title: Microsoft Managed Desktop operations and monitoring 
description:  Who does what for various change processes
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
---

# Microsoft Managed Desktop operations and monitoring

<!-- Operations and monitoring: -->

## Change management

In the service offering, the balance of responsibility for hardware maintenance and security updates shifts to the service provider (Microsoft) instead of the customer (you). However, you must still ensure that non-Microsoft and custom software continues to function as expected when updates are rolled out.

For on-premises products, your organization assumes all responsibility for managing change.

### Balance of responsibility

| Responsibility | Microsoft Managed Desktop service | Microsoft 365 client software | On-premises clients and servers | Non-Microsoft and custom software
| ----- | ----- | ----- | ----- | ----- |
| Provide new functionality | Microsoft | Microsoft | Both | Customer
| Test new features for quality assurance |  Microsoft | Microsoft | Both | Customer
| Communicate about new features | Both | Both | Both | Customer
| Integrate custom software | Both | Both | Customer | Customer
| Apply security updates | Microsoft | Microsoft | Customer | Customer
| Maintain system software | Microsoft | Microsoft | Customer | Customer
| Package for deployment | Microsoft | Microsoft | Customer | Customer

### Change process overview

Below is a summary of how the change process is shared between Microsoft and customers:

| Scenario | Microsoft's role | Customer's role |
| ----- | ----- | ----- |
| Before a change | <ul><li>Set expectations for service changes.</li><li>Notify customers 5 days in advance for changes that require administrator action.</li><li>For emergency changes, apply a mitigation prior to notifying.</li></ul> | <ul><li>Understand what to expect for changes and communications.</li><li>Read Microsoft Managed Desktop Message Center regularly.</li><li>Review and update internal change management processes.</li><li>Understand, and check compliance with Microsoft Managed Desktop requirements. </li><li>Acknowledge and approve, when required.</li></ul>
| During a change | <ul><li>Release and deploy monthly security and non-security updates for Windows 10 and Office 365 clients.</li><li>Monitor data signals and support queues for impact.</li></ul> | <ul><li>Check the Microsoft Managed Desktop Message Center and review any additional information.</li><li>Take any action required, if applicable, and test applications.</li><li>If a break/fix scenario is experienced, create a support request.</li></ul> |
| After a change | <ul><li>Collect customer feedback to improve rollout of future changes.</li><li>Monitor data signals and support queues for impact.</li></ul> | <ul><li>Work with people in your organization to adopt the change.</li><li>Review change and adoption management processes for opportunities to gain efficiencies.</li><li>Provide general feedback and specific feedback in the admin feedback tool.</li><li>Train users to provide app-specific feedback using the Windows Feedback Hub and the Smile button in Office apps.</li></ul> |

### Change types

There are several types of changes that we make to the service regularly. The communication channel for those changes and the actions you're responsible for vary.

Not all changes have the same effect on your users or require action. Some are planned and some are unplanned. For example, non-security updates and security updates aren't usually planned.

Depending on the type of change, the communication channel may vary. The following table lists the types of changes you can expect for the Microsoft Managed Desktop service.

|  | Functionality | Non-security updates | Security |
| ----- | ----- | ----- | ----- |
| **Type of change** | <ul><li>Feature updates</li><li>New features or applications</li><li>Deprecated features</li></ul> | Client hotfixes for issues | Security updates |
**Advance notice** | Five days notice for changes that require action | No such changes are included in the monthly release | No changes are included in the monthly release |
**Communication channel** | <ul><li>Message Center</li><li>Email alert</li></ul> | <ul><li>Message Center</li><li>Email alert</li></ul> | <ul><li>Message Center</li><li>Email alert</li></ul> |
**Requires global admin action** | Sometimes | Rarely | Rarely |
**Type of action** | Change settings | Communicate changes to users | Change admin settings |
**Requires testing** | Check business applications including remote access services | Sometimes; testing the fix against processes or customizations | Rarely |
**Examples of change** | <ul><li>Feature updates: IT Admin Portal simplified support ticket submission and review</li><li>New features or applications: Semi-Annual release of a Windows 10 feature update</li></ul> | Hotfixes based on customer reported bugs |

## Standard operating procedures

The Microsoft Managed Desktop service is implemented and operated by Microsoft in your Microsoft cloud instance where you might conduct other administrative activities. Microsoft is solely responsible for Microsoft Managed Desktop-specific setup, configuration, and operation.

For on-premises products, your organization takes on all the responsibility for managing setup, and configuration and operational activities.

| Categories | Microsoft will | Customer will |
| ----- | ----- | ----- |
| Network (proxy, packet inspection, VPN) | Advise and plan with customers to minimize risk to business users. | <ul><li>Create a support request requesting information for a planned configuration change. Include the configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li></ul> |
Service accounts | <ul><li>Implement, securely store, and manage the credentials.</li><li>Communicate unauthorized access or use of these credentials to your Security Operations team.</li></ul> | <ul><li>Create a support request requesting information for a planned configuration change. Include configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li><li>Not assign policy, multi-factor authentication, conditional access, or application deployment to the Microsoft Managed Desktop Service Accounts.</li><li>Not reset the password or use the credentials.</li><li>Open a Sev C support request to Microsoft Managed Desktop Operations if suspicious activity is observed in Intune or Azure audit logs, related to these service accounts.</li></ul>
| Device Groups | <li> Implement and assign the membership of devices within Microsoft Managed Desktop groups.</li><li>Use the Microsoft Managed Desktop groups to manage the assignment and release of configuration and updates to devices.</li></ul> | <ul><li>Create a support request requesting information for a planned configuration change. Include configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li><li>Only assign devices to any Microsoft Managed Desktop group following the steps described in [Assign devices to a deployment group](../working-with-managed-desktop/assign-deployment-group.md).</li><li>Only use the groups to assign corporate certificates for services such as VPN, Windows Hello for Business or email encryption, or corporate wifi profile configuration.</li><li>Where co-management exists, explicitly exclude all Microsoft Managed Desktop groups when deploying the Configuration Manager client.</li></ul>
| Policies | <ul><li>Implement and manage the Microsoft Managed Desktop policies that govern the configuration state of devices within service.</li><li> Deploy updates, to policy or Windows, incrementally using Device Groups.</li><li>Explicitly exclude targeting non-Microsoft Managed Desktop groups.</li></ul> | <ul><li>Create a support request requesting information for a planned configuration change. Include configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li><li>Not edit or assign Microsoft Managed Desktop policies to devices or users not managed by the Microsoft Managed Desktop service.
Microsoft 365 Defender for Endpoint.</li></ul> | Monitor and investigate devices within the scope of the Microsoft Managed Desktop service. | <ul><li>Create a support request requesting information for a planned configuration change. Include configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li></ul>
| Microsoft Store for Business | Configure and maintain the Windows Autopilot profile for the Microsoft Managed Desktop service. | <ul><li>Create a support request requesting information for a planned configuration change. Include configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li><li>Not modify the configuration of the Microsoft Managed Desktop Windows Autopilot profile or add/remove assigned devices.</li></ul>
| Certificates | | <ul><li>Create a support request 60 days prior to a certificate expiring, requesting information for a planned configuration change. Include configuration details, scope, timeline, and other pertinent details for Microsoft to review.</li><li>Only apply a change once Microsoft Managed Desktop Operations has assessed and advised.</li><li>Update all certificates that are required to configure certificate profiles, VPN profiles, and Wi-Fi profiles.</li></ul>|

## Device wipe with factory reset

The Microsoft Managed Desktop Operations team can perform a factory reset of devices enrolled in the service when required. Resetting is helpful if you need to give a device to a different employee, or if an employee leaves your company.

There are a few requirements:

- Your global administrator must submit a support request.
- Include the device's computer name in the request.
- The user account must be in Azure AD before we reset the device.

Managed Desktop Operations team will:

- Look up the device name in Intune.
- Send the factory reset command to the device.

> [!NOTE]
> Do not remove the user account from Azure AD before the device is reset. If the user isn't in Azure AD, Intune can't send the factory reset command to the device.

The device will boot into the "out of box experience," and all preinstalled applications and settings will be applied again. The user of the device needs to provide initial setup information again.

When the device has been reset, you can give it to a different person in your organization. None of the previous user's data or enterprise data will be on the device. The next user will go through the same process that the previous person did with a new Microsoft Managed Desktop device.

BitLocker is a key component of data security in this process. With BitLocker encryption on Microsoft Managed Desktop devices, data on the drive remains secure even after the device has been factory-reset. Any data that was on the drive won't be available to the next user of the device. For more information, see [BitLocker overview](/windows/security/information-protection/bitlocker/bitlocker-overview).

For more information, see [Factory reset a device](/intune/remote-actions/devices-wipe#factory-reset-a-device).
