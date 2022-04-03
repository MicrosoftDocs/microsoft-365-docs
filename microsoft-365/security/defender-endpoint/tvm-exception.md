---
title: Create and view exceptions for security recommendations - threat and vulnerability management
description: Create and monitor exceptions for security recommendations in threat and vulnerability management.
keywords: Microsoft Defender for Endpoint tvm remediation, Microsoft Defender for Endpoint tvm, threat and vulnerability management, threat & vulnerability management, threat & vulnerability management remediation, tvm remediation intune, tvm remediation sccm
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---
# Create and view exceptions for security recommendations - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-portaloverview-abovefoldlink)

As an alternative to a remediation request when a recommendation is not relevant at the moment, you can create exceptions for recommendations. If your organization has device groups, you will be able to scope the exception to specific device groups. Exceptions can either be created for selected device groups, or for all device groups past and present.

When an exception is created for a recommendation, the recommendation will not be active until the end of the exception duration. The recommendation state will change to **Full exception** or **Partial exception** (by device group).

## Permissions

Only users with "exceptions handling" permissions can manage exceptions (including creating or canceling). [Learn more about RBAC roles](user-roles.md).

:::image type="content" source="images/tvm-exception-permissions.png" alt-text="The exception handling permission" lightbox="images/tvm-exception-permissions.png":::

## Create an exception

Select a security recommendation you would like create an exception for, and then select **Exception options** and fill out the form.

:::image type="content" source="images/tvm-exception-options.png" alt-text="The location of the exception options button in a security recommendation flyout" lightbox="images/tvm-exception-options.png":::

### Exception by device group

Apply the exception to all current device groups or choose specific device groups. Future device groups won't be included in the exception. Device groups that already have an exception will not be displayed in the list. If you only select certain device groups, the recommendation state will change from "active" to "partial exception." The state will change to "full exception" if you select all the device groups.

:::image type="content" source="images/tvm-exception-device-group-500.png" alt-text="The Device group dropdown" lightbox="images/tvm-exception-device-group-500.png":::

#### Filtered views

If you have filtered by device group on any of the threat and vulnerability management pages, only your filtered device groups will appear as options.

This is the button to filter by device group on any of the threat and vulnerability management pages:

:::image type="content" source="images/tvm-selected-device-groups.png" alt-text="The selected device groups filter" lightbox="images/tvm-selected-device-groups.png":::

Exception view with filtered device groups:

:::image type="content" source="images/tvm-exception-device-filter500.png" alt-text="The filtered device group dropdown" lightbox="images/tvm-exception-device-filter500.png":::

#### Large number of device groups

If your organization has more than 20 device groups, select **Edit** next to the filtered device group option.

:::image type="content" source="images/tvm-exception-edit-groups.png" alt-text="The procedure to edit large numbers of groups" lightbox="images/tvm-exception-edit-groups.png":::

A flyout will appear where you can search and choose device groups you want included. Select the check mark icon below Search to check/uncheck all.

:::image type="content" source="images/tvm-exception-device-group-flyout-400.png" alt-text="The large device group flyout" lightbox="images/tvm-exception-device-group-flyout-400.png":::

### Global exceptions

If you have global administrator permissions, you will be able to create and cancel a global exception. It affects **all** current and future device groups in your organization, and only a user with similar permission would be able to change it. The recommendation state will change from "active" to "full exception."

:::image type="content" source="images/tvm-exception-global.png" alt-text="The global exception option" lightbox="images/tvm-exception-global.png":::

Some things to keep in mind:

- If a recommendation is under global exception, then newly created exceptions for device groups will be suspended until the global exception has expired or been canceled. After that point, the new device group exceptions will go into effect until they expire.
- If a recommendation already has exceptions for specific device groups and a global exception is created, then the device group exception will be suspended until it expires or the global exception is canceled before it expires.

### Justification

Select your justification for the exception you need to file instead of remediating the security recommendation in question. Fill out the justification context, then set the exception duration.

The following list details the justifications behind the exception options:

- **Third party control** - A third party product or software already addresses this recommendation
        - Choosing this justification type will lower your exposure score and increase your secure score because your risk is reduced
- **Alternate mitigation** - An internal tool already addresses this recommendation
        - Choosing this justification type will lower your exposure score and increase your secure score because your risk is reduced
- **Risk accepted** - Poses low risk and/or implementing the recommendation is too expensive
- **Planned remediation (grace)** - Already planned but is awaiting execution or authorization

## View all exceptions

Navigate to the **Exceptions** tab in the **Remediation** page. You can filter by justification, type, and status.

 Select an exception to open a flyout with more details. Exceptions per devices group will have a list of every device group the exception covers, which you can export. You can also view the related recommendation or cancel the exception.

:::image type="content" source="images/tvm-exception-view.png" alt-text="The Exceptions tab in the Remediation page" lightbox="images/tvm-exception-view.png":::

## How to cancel an exception

To cancel an exception, navigate to the **Exceptions** tab in the **Remediation** page. Select the exception.

To cancel the exception for all device groups or for a global exception, select the **Cancel exception for all device groups** button. You will only be able to cancel exceptions for device groups you have permissions for.

:::image type="content" source="images/tvm-exception-cancel.png" alt-text="The Cancel button" lightbox="images/tvm-exception-cancel.png":::

### Cancel the exception for a specific device group

Select the specific device group to cancel the exception for it. A flyout will appear for the device group, and you can select **Cancel exception**.

:::image type="content" source="images/tvm-exception-device-group-hover.png" alt-text="The procedure to select a specific device group" lightbox="images/tvm-exception-device-group-hover.png":::

## View impact after exceptions are applied

In the Security Recommendations page, select **Customize columns** and check the boxes for **Exposed devices (after exceptions)** and **Impact (after exceptions)**.

:::image type="content" source="images/tvm-after-exceptions.png" alt-text="The customize columns options" lightbox="images/tvm-after-exceptions.png":::

The exposed devices (after exceptions) column shows the remaining devices that are still exposed to vulnerabilities after exceptions are applied. Exception justifications that affect the exposure include 'third party control' and 'alternate mitigation'. Other justifications do not reduce the exposure of a device, and they are still considered exposed.

The impact (after exceptions) shows remaining impact to exposure score or secure score after exceptions are applied. Exception justifications that affect the scores include 'third party control' and 'alternate mitigation.' Other justifications do not reduce the exposure of a device, and so the exposure score and secure score do not change.

:::image type="content" source="images/tvm-after-exceptions-table.png" alt-text="The columns in the table" lightbox="images/tvm-after-exceptions-table.png":::

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Remediate vulnerabilities](tvm-remediation.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
