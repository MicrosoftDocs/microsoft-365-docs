---
title: Device names
description: How Microsoft Managed Desktop manages device names
ms.service: m365-md
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
audience: Admin
---

# Device names

Microsoft Managed Desktop uses Windows Autopilot, Azure Active Directory, and Microsoft Intune. For these services to work together seamlessly, devices need consistent, standardized names. Microsoft Managed Desktop applies a standardized name format (of the form *MMD-%RAND11*) when devices are enrolled. Windows Autopilot assigns these names. For more information about Autopilot, see [First-run experience with Autopilot and the Enrollment Status Page](../get-started/esp-first-run.md).

## Automated name changes

If a device gets renamed later, Microsoft Managed Desktop will automatically rename it to a new name in the standardized format. This process occurs every four hours. The name change takes place the next time the user restarts the device.

> [!IMPORTANT]
> If your environment depends on specific device names (for example, to support a particular network configuration), you should investigate options to remove that dependency before enrolling in Microsoft Managed Desktop. If you must keep the name dependency, you can submit a request through the [Admin portal](../working-with-managed-desktop/admin-support.md) to disable the renaming function and use your desired name format.