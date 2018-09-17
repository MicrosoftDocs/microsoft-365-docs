---
title: "Step 4: Configure increased security for Office 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/13/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
description: Understand and configure increased security for Office 365, including Office 365 ATP.
---

# Step 4: Configure increased security for Office 365

*This step is required and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![](./media/deploy-foundation-infrastructure/infoprotection_icon-small.png)

To ensure that your Office 365 subscription and its data start off and remain secure from malicious threats, see [Configure your Office 365 tenant for increased security](https://support.office.com/article/Configure-your-Office-365-tenant-for-increased-security-8d274fe3-db51-4107-ba64-865e7155b355) and configure the following additional security:

- Threat management policies in the Office 365 Security & Compliance Center
- Additional Exchange Online tenant-wide settings
- Tenant-wide sharing policies in the SharePoint admin center
- Settings in Azure Active Directory

Once configured, you can obtain information about your security status from:

- Dashboards and reports in the Security & Compliance Center
- [Office 365 Secure Score](https://securescore.office.com/)
 
  To access this page, you must be signed in as an Office 365 tenant admin.

You can also use Cloud App Security or Office 365 Cloud App Security to monitor for security events and act. For more information, see [Overview of Office 365 Cloud App Security](https://support.office.com/article/Overview-of-Office-365-Cloud-App-Security-81f0ee9a-9645-45ab-ba56-de9cbccab475).

An additional security feature is Office 365 Advanced Threat Protection (ATP), which helps your organization collaborate more securely by:

- Protecting links and attachments in email. 
- Providing spoof intelligence and anti-phishing capabilities for email in Exchange Online and files in SharePoint Online, OneDrive for Business, and Microsoft Teams. 

>[!Note]
>Office 365 ATP is included with Microsoft 365 Enterprise E5. If you have Microsoft 365 Enterprise E3, you can purchase individual licenses for ATP.
>

To enable Office 365 ATP, see [Turn it on](https://support.office.com/article/Office-365-ATP-for-SharePoint-OneDrive-and-Microsoft-Teams-26261670-db33-4c53-b125-af0662c34607#turniton).

For more information, see [Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](https://support.office.com/article/Office-365-ATP-for-SharePoint-OneDrive-and-Microsoft-Teams-26261670-db33-4c53-b125-af0662c34607).

## Results

The result of this step is that you've increased the security of Office 365, including enabling Office 365 ATP if you have Microsoft 365 Enterprise E5.

As an interim checkpoint, see the [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step4) corresponding to this step.

## Next step

[Configure privileged access management](infoprotect-configure-privileged-access-management.md)
