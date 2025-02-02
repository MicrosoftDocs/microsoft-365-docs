---
title: Set up and manage taxonomy tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 01/13/2025
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC, setup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and configure taxonomy tagging in SharePoint.
---

# Set up and manage taxonomy tagging in Microsoft Syntex

The taxonomy tagging service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use taxonomy tagging, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Taxonomy tagging is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up taxonomy tagging.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up taxonomy tagging

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), taxonomy tagging is automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, taxonomy tagging is available for libraries on all SharePoint sites. Follow these steps to limit which sites users can apply taxonomy tagging.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Billing and licenses**, select **Activate pay-as-you-go services**.

3. On the **Activate pay-as-you-go services** page, select **Get started**.

4. On the **Pay-as-you-go services** page, select the **Settings** tab, and then select **Syntex services**.

5. On the Syntex page, in the **Document & image services** section, select **Taxonomy tagging**.

6. On the **Taxonomy tagging** panel:

    a. Choose the site or sites on which this service should be enabled.

    > [!NOTE]
    > You can enable taxonomy tagging only at the site level, and it will work for any subsites under the site. Enabling only for a particular subsite is not supported.

    b. To restrict user access to this service, select **Edit**, and then select **No sites** or **Selected sites (up to 100)**. Follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
