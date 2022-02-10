---
title: Address device name dependency
description: Remove dependency on device names or request an exception
ms.service: m365-md
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Address device name dependency

Microsoft Managed Desktop applies a standardized name format when devices are enrolled. Microsoft Managed Desktop will automatically rename devices if the name is changed later. For more information, see [Device names](../service-description/device-names.md).

> [!IMPORTANT]
> If your environment depends on specific device names (for example, to support a particular network configuration), you should investigate options to remove that dependency before enrolling in Microsoft Managed Desktop. If you must keep the name dependency, you can submit a request through the [Admin portal](../working-with-managed-desktop/admin-support.md) to disable the renaming function and use your desired name format.

## Steps to get ready for Microsoft Managed Desktop

1. Review [prerequisites for Microsoft Managed Desktop](prerequisites.md).
1. Run [readiness assessment tools](readiness-assessment-tool.md).
1. Buy [Company Portal](../get-started/company-portal.md).
1. Review [prerequisites for guest accounts](guest-accounts.md).
1. Check [network configuration](network.md).
1. [Prepare certificates and network profiles](certs-wifi-lan.md).
1. [Prepare user access to data](authentication.md).
1. [Prepare apps](apps.md).
1. [Prepare mapped drives](mapped-drives.md).
1. [Prepare printing resources](printing.md).
1. Address device names (this article).
