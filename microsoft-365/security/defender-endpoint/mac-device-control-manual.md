---
title: Deploy and manage device control manually
description: Learn how to use device control policies manually.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 03/31/2023
---

# Deploy and manage Device Control manually

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint Device Control feature enables you to audit, allow, or prevent the read, write, or execute access to removable storage, and allows you to manage iOS and Portable device and Bluetooth media with or without exclusions.

## Licensing requirements

Before you get started with Removable Storage Access Control, you must confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=3). To access and use Removable Storage Access Control, you must have Microsoft 365 E3.

[!INCLUDE [Microsoft Defender for Endpoint third-party tool support](../../includes/support.md)]

## Deploy policy manually

This method is recommended for preproduction environments only. It's available starting with version 101.23082.0018.
You can create a policy JSON and try it on a single machine before deploying it via MDM to all users.
Microsoft recommends using MDM for production environment.

You can set a policy manually, only if it wasn't set via MDM (as a managed configuration).

### Step 1: Create policy JSON

Now, you have `groups`, `rules`, `settings`, combine them into one JSON. Here's the demo file: [mdatp-devicecontrol/deny_removable_media_except_kingston.json at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/blob/main/macOS/policy/samples/deny_removable_media_except_kingston.md). Make sure to validate your policy with the JSON schema so your policy format is correct: [mdatp-devicecontrol/device_control_policy_schema.json at main - microsoft/mdatp-devicecontrol (github.com)](https://github.com/microsoft/mdatp-devicecontrol/blob/main/macOS/policy/device_control_policy_schema.json).

See [Device Control for macOS](mac-device-control-overview.md) for information about settings, rules, and groups.

### Step 2: Apply policy

Use `mdatp config device-control policy set --path <full-path-to-policy.json>` to apply the policy.
You can now try protected operations, or use usual `mdatp device-control` commands to inspect the effective policy.

```sh
> mdatp device-control policy preferences list
.Preferences
|-o UX
| |-o Navigation Target: "https://www.microsoft.com"
|-o Features
| |-o Removable Media
|   |-o Disable: false
|-o Global
  |-o Default Enforcement: "allow"

```

You can edit your policy file, reapply it, and see changes immediately.

### Step 3: Undo your changes

To clear the policy, use `mdatp config device-control policy reset`.

## See also

- [Device Control for macOS](mac-device-control-overview.md)
- [Deploy and manage Device Control using Intune](mac-device-control-intune.md)
- [Deploy and manage Device Control using JAMF](mac-device-control-jamf.md)
- [macOS Device Control frequently asked questions (FAQ)](mac-device-control-faq.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
