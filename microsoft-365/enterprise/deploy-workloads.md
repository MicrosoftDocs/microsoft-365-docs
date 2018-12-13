---
title: "Microsoft 365 Enterprise workloads and scenarios"
author: JoeDavies-MSFT
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
description: Get links to the productivity workloads for Microsoft 365 Enterprise in your organization.
---

# Microsoft 365 Enterprise workloads and scenarios

To get the creativity and teamwork benefits of Microsoft 365 Enterprise, deploy these workloads and scenarios over your foundation infrastructure:

- [Microsoft Teams](teams-workload.md)
- [Exchange Online](exchangeonline-workload.md)
- [SharePoint Online](sharepoint-online-onedrive-workload.md)
- [Migration to Microsoft 365 Enterprise](migration-microsoft-365-enterprise-workload.md)
- [Microsoft Teams and SharePoint Online sites for highly regulated data](teams-sharepoint-online-sites-highly-regulated-data.md)

Here are the workloads and scenarios in the overall Microsoft 365 Enterprise deployment guide:

![](./media/deploy-workloads/m365-deploy-content-arch-workloads.png)

>[!Note]
>To deploy OneDrive for Business for Microsoft 365 Enterprise, see the [OneDrive guide for enterprises](https://docs.microsoft.com/onedrive/plan-onedrive-enterprise).
>

## Foundation infrastructure prerequisites

Ideally, you should deploy workloads and scenarios after you have configured and rolled out all of the phases of the [foundation infrastructure](deploy-foundation-infrastructure.md). This ensures that all of the underlying layers are in place to provide integration, security, and the best experience for your users:

- Your network is updated for optimum performance to Microsoft 365 cloud services.
- Identity is synchronized and secured with strong authentication.
- Windows-based devices are running Windows 10 Enterprise have Office 365 ProPlus installed.
- Devices are managed and have the appropriate application policies.
- Office 365 and Azure Information Protection labels are available for use to apply to sensitive digital assets.

This is ideal, but can take some time to roll out to your users and isn't necessary for you to more quickly realize business value from Microsoft 365 Enterprise. 

For example: 

- Organizations often deploy [Exchange Online](exchangeonline-workload.md) after the **Identity** layer of the foundation infrastructure is complete so that users can begin . 
- Organizations that aren't immediately using high-security features to protect information can deploy [Microsoft Teams](teams-workload.md) and [SharePoint Online](sharepoint-online-onedrive-workload.md) for their users prior to the **Information protection** phase.

You must decide on how to best order the rollout of the layers of foundation infrastructure to meet your business needs and IT resources.

### Best practice

We highly recommend that you deploy and roll out the **Identity** phase of the foundation infrastructure prior to onboarding your users to any workloads or scenarios.

The **Identity** phase ensures that your cloud-based identity, whether cloud-only or synchronized with your on-premises Windows Server Active Directory (AD), contains the user and computer accounts and groups to manage authentication and access. Strong authentication for all your users along with strong protection of admin accounts is required before placing your organization's digital data and assets in the Microsoft 365 cloud.

Although foundational and very important to overall performance, the rollout of the **Networking** phase on your network can be in progress while onboarding your users to workloads, with the understanding that Microsoft 365 application and service performance will improve over time.
