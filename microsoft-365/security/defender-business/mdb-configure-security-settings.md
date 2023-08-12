---
title: Set up, review, and edit your security policies and settings in Microsoft Defender for Business
description: View and edit security policies and settings in Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 05/05/2023
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
 - SMB
 - m365-security
 - m365solution-mdb-setup
 - highpri
 - tier1
---

# Set up, review, and edit your security policies and settings in Microsoft Defender for Business

This article walks you through how to review, create, or edit your security policies, and how to navigate advanced settings in Defender for Business.

:::image type="content" source="media/mdb-setup-step6.png" alt-text="Visual depicting step 6 - Review and edit security policies in Defender for Business.":::

## Default policies

When you're setting up (or maintaining) Defender for Business, an important part of the process includes reviewing your default policies, such as:

- [Next-generation protection](mdb-next-generation-protection.md)
- [Firewall protection](mdb-firewall.md)

## Additional policies

In addition to your default security policies, you can add other policies, such as:

- [Web content filtering](mdb-web-content-filtering.md)
- [Controlled folder access](mdb-controlled-folder-access.md) (*requires Microsoft Intune*)
- [Attack surface reduction rules](mdb-asr.md) (*ASR rules are configured in Intune*)

## Advanced features and settings

You can view and edit settings for advanced features, such as:

- [Turning on (or off) advanced features](mdb-portal-advanced-feature-settings.md#view-settings-for-advanced-features);
- [Specifying which time zone to use in the Microsoft 365 Defender portal](mdb-portal-advanced-feature-settings.md#view-and-edit-other-settings-in-the-microsoft-365-defender-portal); and 
- [Whether to receive preview features as they become available](mdb-preview.md#turn-on-preview-features).

## Choose where to manage security policies and devices

Before you begin setting up your security policies, you'll need to choose which portal you want to use. You can choose to use either the Microsoft 365 Defender portal or the Microsoft Intune admin center to onboard devices and create or edit security policies. The following table explains both options.

| Option | Description |
|:---|:---|
| **Microsoft 365 Defender portal** | The Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) is a one-stop shop for managing your company's devices, security policies, and security settings in Defender for Business. With a simplified configuration process, you can use the Microsoft 365 Defender portal to onboard devices, access your security policies and settings, use the [Microsoft Defender Vulnerability Management dashboard](mdb-view-tvm-dashboard.md), and [view and manage incidents](mdb-view-manage-incidents.md) in one place. <br/><br/>Note that currently, controlled folder access and attack surface reduction rules are set up and configured in the Microsoft Intune admin center. |
| **Microsoft Intune admin center** | The Microsoft Intune admin center ([https://intune.microsoft.com/](https://intune.microsoft.com/)) lets you manage your workforce's devices and apps, including how they access your company data. You can onboard devices and access your security policies and settings in Intune. You can also use Intune to set up and configure attack surface reduction rules in Defender for Business. Intune is not included in the standalone version of Defender for Business, but it can be added on. <br/><br/>If your company has been using Intune, you can choose to continue using it to manage your devices and security policies. To learn more, see [Manage device security with endpoint security policies in Microsoft Intune](/mem/intune/protect/endpoint-security-policy)  |

If you're using Intune, and you attempt to view or edit security policies in the Microsoft 365 Defender portal by going to **Configuration management** > **Device configuration**, you'll be prompted to choose whether to continue using Intune, or switch to using the Microsoft 365 Defender portal instead, as shown in the following screenshot: 

:::image type="content" source="media/mdb-usingintune-switchquestion.png" alt-text="Screenshot showing a screen that prompts the user to keep using Intune or switch to the Microsoft 365 Defender portal.":::

In the preceding image, **Use Defender for Business configuration instead** refers to using the Microsoft 365 Defender portal, which provides a simplified configuration experience designed for small and medium-sized businesses. If you opt to use the Microsoft 365 Defender portal, you must delete any existing security policies in Intune to avoid policy conflicts. For more details, see [I need to resolve a policy conflict](/microsoft-365/security/defender-business/mdb-troubleshooting#i-need-to-resolve-a-policy-conflict).

> [!NOTE]
> If you're managing your security policies in the Microsoft 365 Defender portal, you can view those policies in the Intune admin center, where they're listed as **Antivirus** or **Firewall** policies. When you view your firewall policies in the Intune admin center, you'll see two policies listed: one policy for firewall protection and another for custom rules.
>
> You can export your list of policies through the [Microsoft Intune admin center](https://intune.microsoft.com/). 

## Next steps

1. [Review or edit your next-generation protection policies](mdb-next-generation-protection.md) to apply antivirus/antimalware protection, and enable network protection.
2. [Review or edit your firewall policies](mdb-firewall.md).
3. [Set up your web content filtering policy](mdb-web-content-filtering.md) and enable web protection automatically.
4. [Set up your controlled folder access policy](mdb-controlled-folder-access.md) for ransomware protection.
5. [Enable your attack surface reduction rules](mdb-asr.md).
6. [Review settings for advanced features and the Microsoft 365 Defender portal](mdb-portal-advanced-feature-settings.md).

