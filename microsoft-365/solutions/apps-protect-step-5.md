---
title: "Step 5. Verify and monitor app protection"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 04/21/2025
description: Step 5. Verify and monitor app protection
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 5. Verify and monitor app protection

You can verify and monitor the status of the app protection policies that you've applied to users from Intune. The **App protections status** report provides the name and email of the user, the app protection status, the app protection policy targeted to the related app for the user, and the timestamp of the last sync of the app with Microsoft Intune. Additionally, there are several other details provided in the **App protection status** report that can be used to filter the success of applied app protection policies. 

> [!NOTE]
> App protection data is retained for a minimum of 90 days. Any app instances that have checked in to the Intune service within the past 90 days is included in the app protection status report.

Before checking on successfully deployed app protection policies, check to make sure the user has installed the app. For more information, see the following reports:
- [App Install Status report](/mem/intune/fundamentals/reports#app-install-status-report-operational)
- [User Install Status for apps report](/mem/intune/fundamentals/reports#user-install-status-for-apps-report-operational)
- [Managed Apps report](/mem/intune/fundamentals/reports#user-install-status-for-apps-report-operational)

To verify an app protection policy, start by viewing the **App protection status** report in Intune (**Apps** > **Monitor** > **App protection status**). Next, export your data so you can filter and sort the results. You will need to filter the **App Protection Status** column to determine whether the related app is unprotected by not being targeted with a MAM policy. You will want to sort the list by **App**. Determine whether the end-user is licensed for app protection and Microsoft 365. If they are not licensed, assign an [Intune license](/mem/intune/fundamentals/licenses) and/or a [Microsoft 365 license](/mem/intune/fundamentals/licenses) to the user. If a user's app is listed as **Not checked in**, check if you've correctly configured the app protection policy for that app. In addition, look for issues based on **App version** and **Platform**. If you find a particular set of users that need an app protection policy for a specific app, verify the last sync of the app with Intune. 

> [!NOTE]
> Ensure that the conditions of your app protection policy applies across all end-users that must have the policy.

For more information, see [How to validate your app protection policy setup in Microsoft Intune](/mem/intune/apps/app-protection-policies-validate).

## App protection logs

You can enable and collect app protection logs by enabling Intune Diagnostics on the end-user's device. Each platform has a different process to enable and collect app logs. For more information, see [Review client app protection logs](/mem/intune/apps/app-protection-policy-settings-log).  

## Intune diagnostics

The Intune Company Portal app has multiple options for gathering diagnostic information.
The Company Portal includes UI that:
- Enables end users to gather Company Portal logs.
- Displays device and account metadata.
- Includes per-app information about the current MAM policy.

:::image type="content" source="../media/protect-managed-apps/intunediagnostics01.png" alt-text="Intune diagnostics." border="false" ::: :::image type="content" source="../media/protect-managed-apps/intuneappinfo01.png" alt-text="Intune app information." border="false" :::

End users can also launch the Company Portal's diagnostic console through Microsoft Edge, by entering `about:intunehelp` in the address bar to assist in debugging.

> [!IMPORTANT]
> Diagnostics information for the device is only available when the Company Portal is installed on device.

## Next step

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps-06.png" alt-text="Step 6. Use app protection actions." border="false" :::](apps-protect-step-6.md)

Continue with [Step 6](apps-protect-step-6.md) to use app protection actions in Microsoft Intune.
