---
title: Device status report
description:  Explains device status
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Device status report

This report aggregates the status of all your registered devices to show your use of the Microsoft Managed Desktop service.

We categorize devices based on their activity over the last 28 days, and on our ability to keep the device updated.

To be updated by Windows Update as soon as possible, a device must:

- Be connected to the internet.
- Not hibernating.
- Not paused for a minimum of six hours, two of which must be continuous.

Although it's possible that a device that doesn't meet these requirements will be updated. Devices that meet them have the highest likelihood of being updated.

:::image type="content" source="../../media/mmd-device-status.png" alt-text="Report showing donut graph of device activity status in upper left, view filters in upper right with a button to generate the report, and table of details along the bottom":::

## Device status labels

We report device status using the following labels:

| Device status label | Description |
| ------ | ------ |
| Ready for user | Devices that have been successfully registered with our service, and ready to be given to a user.|
| Active | Devices that are being used. <ul><li>They've met the activity criteria (six hours, two continuous) for the most recent security update release.</li> <li>They've checked in with Microsoft Intune at least once in the past five days.</li></ul> |
| Synced | Devices that are being used and have checked in with Intune within the last 28 days.
| Out of sync | Devices that are being used but haven't checked in with Intune in the last 28 days. |
| Other | The label aggregates several error states that can occur, typically during device registration. For more information, see [Troubleshooting device registration](../get-started/manual-registration.md#troubleshooting-device-registration). |
