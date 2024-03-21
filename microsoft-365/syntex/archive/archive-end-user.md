---
title: End user experience in Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/15/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about end-user features for archived sites in Microsoft 365 Archive.
---

# End user experience in Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change. The feature is currently rolling out and might not yet be fully available to all organizations.

End users aren't able to access or search for any content that has been archived. Whenever users try to access archived content, they see a message stating that the site has been archived.

![Screenshot of the Site is archived message end users receive when they try to access content that has been archived.](../../media/content-understanding/site-is-archived-message.png)

In Microsoft 365 Archive, admins have an option to set a custom URL where the users will be taken if they select **Request to reactivate** when they encounter archived content. As an admin, you can choose to send the end users to a form, ticketing system etc. This can take users to any place you choose, such as a form, a ticketing system, or other location. This custom URL can be set via a flag (``-ArchiveRedirectUrl``) in the Set-SPOTenant PowerShell cmdlet starting in version 16.0.23408.12000.

For a multi-geo tenant, the URL needs to be set for each geo location.

The **Request to reactivate** button won't be visible if a redirect URL hasn't been set.

