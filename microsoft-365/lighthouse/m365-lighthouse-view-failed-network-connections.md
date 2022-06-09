---
title: "View an enterprise Cloud PC failed network connection in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms-reviewer: katmartin
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view an enterprise Cloud PC failed network connection."
---

# View an enterprise Cloud PC failed network connection in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides the connection status between your customer tenants and Azure Active Directory (Azure AD). When a Cloud PC has a failed network connection, you can view detailed information in the Microsoft Endpoint Manager admin center.

## Before you begin

- You must be a Global Administrator in the partner tenant.
- You must have Cloud PC Administrator or Cloud PC Reader access to view connection issues.

## View a failed network connection

1. In the left navigation pane in Lighthouse, select **Windows 365**.

2. Select the **Azure network connections** tab.

3. From the connection summary section, select **Failed connections**.

4. From the filtered list, select **View connection details in Microsoft Endpoint Manager** next to the connection you want to investigate.

5. From the Microsoft Endpoint Manager admin center, select **View details** to learn more about the error.

## Next steps

To troubleshoot connection issues, see [Troubleshoot on-premises network connection](/windows-365/enterprise/troubleshoot-on-premises-network-connection).

## Related content

[Cloud PC role-based access control ](/windows-365/enterprise/role-based-access)(article)\
[Active Directory domain join](/windows-365/enterprise/troubleshoot-on-premises-network-connection#active-directory-domain-join) (article)\
[Azure Active Directory device Sync](/windows-365/enterprise/troubleshoot-on-premises-network-connection#azure-active-directory-device-sync) (article)
