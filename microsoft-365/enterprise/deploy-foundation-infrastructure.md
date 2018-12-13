---
title: "Microsoft 365 Enterprise foundation infrastructure"
author: JoeDavies-MSFT
ms.author: josephd
manager: laurawi
ms.date: 12/13/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Understand the major phases of deploying the foundation infrastructure for Microsoft 365 Enterprise in your organization.
---

# Microsoft 365 Enterprise foundation infrastructure

If you're doing the end-to-end deployment of Microsoft 365 Enterprise yourself, you must first build a firm foundation upon which applications and services can unlock creativity and teamwork in a secure environment. Use these phases to plan for and deploy the foundation infrastructure of Microsoft 365 Enterprise:

||||
|:-------|:-----|:-----|
|![](./media/deploy-foundation-infrastructure/networking_icon-small.png)|[Phase 1: Networking](networking-infrastructure.md)| Your network is optimized for access to Microsoft 365's cloud-based services. |
|![](./media/deploy-foundation-infrastructure/identity_icon-small.png)|[Phase 2: Identity](identity-infrastructure.md)| Your users and groups are synchronized, your user authentication is strong, and your admin accounts are protected. |
|![](./media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)|[Phase 3: Windows 10 Enterprise](windows10-infrastructure.md)| Your existing Windows-based computers can upgrade to Windows 10 Enterprise and new devices are installed with Windows 10 Enterprise. |
|![](./media/deploy-foundation-infrastructure/O365proplus_icon-small.png)|[Phase 4: Office 365 ProPlus](office365proplus-infrastructure.md)| Your existing users of Microsoft Office can upgrade to Office 365 ProPlus. |
|![](./media/deploy-foundation-infrastructure/mobiledevicemgmt_icon-small.png)|[Phase 5: Mobile device management](mobility-infrastructure.md)| Your devices can be enrolled and managed. |
|![](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)|[Phase 6: Information protection](infoprotect-infrastructure.md)| Your labels are ready to protect documents and Office 365 security features are enabled. |

The order of the phases start with the most foundational (networking and identity), and then create layers of infrastructure settings and groups to:

- Install the most secure version of Windows on your devices
- Install the most current version of Office on your devices
- Manage your organization's devices
- Protect the information on those devices and in the cloud

However, you have the flexibility of configuring and rolling out the phases of the foundation infrastructure to fit your business needs.

Before you can exit each phase, you must examine its exit criteria, which include required conditions that you must meet and optional conditions to consider. Exit criteria for each phase ensures that your on-premises and cloud infrastructure and resulting end-to-end configuration meet the requirements for a Microsoft 365 Enterprise deployment.

To see how the content is structured, watch this short video.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE23VRG]

Here's the foundation infrastructure in the overall Microsoft 365 Enterprise deployment guide:

![](./media/deploy-foundation-infrastructure/m365-deploy-content-arch-foundation.png)

### Infrastructure configuration vs. user rollout

The foundation infrastructure is a set of configured software and services that, when combined together for a user, allow them to take advantage of the entire spectrum of capabilities and protections that Microsoft 365 Enterprise offers. The ultimate destination of your end-to-end deployment journey is to have this be true for all of your users and their Windows-based devices. 

However, it is important to note that the Microsoft 365 Enterprise foundation infrastructure is independent of the rollout of software and services to your users. ***You can configure the layers of the foundation infrastructure without having to roll out those layers to all of your users.***

Therefore, it is possible to configure, test, and pilot elements of the foundation infrastructure well ahead of the rollout of those elements to the multitude of your users in the offices, regions, or divisions of your organization.

For example, you create the settings for:

|||
|:-------|:-----|
| Identity | Account synchronization and groups for identity-based conditional access policies. |
| Windows 10 Enterprise | Groups to automatically upgrade computers with Windows 7 or Windows 8.1 to Windows 10 Enterprise in place. |
| Office 365 ProPlus | Groups to automatically deploy Office 365 ProPlus for users with Office 2010, Office 2013, or Office 2016. |
| Mobile device management | Groups for device enrollment and device-based conditional access policies. |
| Information protection | Office 365 and Azure Information Protection labels and groups. |

When you are ready to rollout elements of this infrastructure to users, you:

|||
|:-------|:-----|
| Identity | Add user accounts to the groups for identity-based conditional access policies. |
| Windows 10 Enterprise | Add accounts to the groups to automatically deploy Windows 10 Enterprise in place for users with Windows 7 or Windows 8.1. |
| Office 365 ProPlus | Add user accounts to the groups to automatically deploy Office 365 ProPlus for users with Office 2010, 2013, and 2016. |
| Mobile device management | Add accounts to the groups for device enrollment and device-based conditional access policies. |
| Information protection | Add user accounts to the groups for Information Protection labels. |

Once the foundation infrastructure is completed, tested, and piloted, you can roll out installed software, such as Windows 10 Enterprise and Office 365 ProPlus, and cloud-based services and protections, such as device enrollment and conditional access policies, to your users in the manner that best fits your business goals and IT resources.

## Next step

- I have existing infrastructure for Office 365, Enterprise Mobility + Security, or Windows 10 Enterprise:
  - See [Deployment with existing infrastructure](deploy-with-existing-infrastructure.md). This article steps you through the exit criteria for each phase.
- I'm starting from scratch: 
   - Begin your end-to-end deployment journey with [Phase 1: Networking](networking-infrastructure.md).

