---
title: End user experience in Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/19/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about compliance features for archived sites in Microsoft 365 Archive.
---

# End user experience in Microsoft 365 Archive (Preview)

End users aren't able to access or search for any content that has been archived. Whenever users try to access archived content, they see a message stating that the site has been archived.

![Screenshot of the Site is archived message end users receive when they try to access content that has been archived.](../../media/content-understanding/site-is-archived-message.png)

In Microsoft 365 Archive, admins have an option to set a custom URL where the users will be taken if they select **Request to reactivate** when they encounter archived content. This can take users to any place you choose, such as a form, a ticketing system, and so on. This custom URL can be set via a flag (``-ArchiveRedirectUrl``) in the Set-SPOTenant PowerShell cmdlet starting in version 16.0.23408.12000.

For a multi-geo tenant, the URL needs to be set for each geo location.

The **Request to reactivate** button will not be visible if a redirect URL has not been set.

<br>

> [!div class="nextstepaction"]
> [Back to overview](archive-overview.md)
