---
title: Production ring deployment using Group Policy and Microsoft Update (MU)
description: Microsoft Defender Antivirus is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article provides information about how to use a ring deployment method to update your Microsoft Defender Antivirus clients using Group Policy and Microsoft Update (MU).
keywords: Deploy Microsoft Defender Antivirus updates, ring deployment Microsoft Defender Antivirus, Microsoft Defender Antivirus Group Policy, Microsoft Defender Antivirus Microsoft Update (MU), Microsoft Defender Antivirus Group Policy and Microsoft Update, threat intelligence, cybersecurity, cloud security,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: intro-overview
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/21/2023
---

# Microsoft Defender Antivirus production ring deployment using Group Policy and Microsoft Updates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- Windows Server

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats.

> [!TIP]
> Microsoft Defender for Endpoint is available in two plans, Defender for Endpoint Plan 1 and Plan 2. A new Microsoft Defender Vulnerability Management add-on is now available for Plan 2.
>
> For more information on the features and capabilities included in each plan, including the new Defender Vulnerability Management add-on, see [Compare Microsoft Defender for Endpoint plans](defender-endpoint-plan-1-2.md).

## Prerequisites

Review the _read me_ article at [Readme](https://github.com/microsoft/defender-updatecontrols/blob/main/README.md) 
https://github.com/microsoft/defender-updatecontrols/blob/main/README.md

Download the latest Windows Defender .admx and .adml 

- [WindowsDefender.admx](https://github.com/microsoft/defender-updatecontrols/blob/main/WindowsDefender.admx) 
- [WindowsDefender.adml](https://github.com/microsoft/defender-updatecontrols/blob/main/WindowsDefender.adml)

2)	Copy the latest .admx and .adml to the Domain Controller [Central Store](/troubleshoot/windows-client/group-policy/create-and-manage-central-store#the-central-store).

## Setting up the Pilot (UAT/Test/QA) environment

This section describes the process for setting up the pilot UAT / Test / QA environment.

:::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-gp-mu-schedule.png" alt-text="Screenshot that shows an example schedule for Microsoft Defender Antivirus ring deployments in Group Policy and Microsoft Updates environments." lightbox="images/microsoft-defender-antivirus-deploy-ring-gp-mu-schedule.png":::

> [!NOTE]
> Security intelligence update (SIU) is equivelant to signature updates, which is the same as definition updates.

 On about 10-500 Windows and/or Windows Server systems, depending on how many total systems that you all have, perform the following tasks.
 
 > [!NOTE]
 > If you have a Citrix enviroment, include at least 1 Citrix VM (non-persistent) and/or (persistent)

In [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265969(v=ws.11)) (GPMC, GPMC.msc), create or append to your Microsoft Defender Antivirus  policy.

1. Edit your Microsoft Defender Antivirus policy. For example, edit _MDAV\_Settings\_Pilot_. Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**. There are three related options:

   | Feature | Recommendation for the pilot systems |
   |:---|:---| 
   | Select the channel for Microsoft Defender daily **Security Intelligence updates** | Current Channel (Staged) |
   | Select the channel for Microsoft Defender monthly **Engine updates**  | Beta Channel |
   | Select the channel for Microsoft Defender monthly **Platform updates**  | Beta Channel |

   The three options are shown in the following figure.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channels.png" alt-text="Screenshot that shows a screen capture of the pilot Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus update channels." lightbox="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channels.png"::: 

   For more information, see [Manage the gradual rollout process for Microsoft Defender updates](/manage-gradual-rollout)

1. Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**. 

1. For _intelligence_ updates, double-click **Select the channel for Microsoft Defender monthly intelligence updates**.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channel-staged.png" alt-text="Screenshot that shows a screen capture of the Select the channel for Microsoft Defender monthly intelligence updates page with Enabled and Current Channel (Staged) selected." lightbox="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channel-staged.png":::

1. On the **Select the channel for Microsoft Defender monthly intelligence updates** page, select **Enabled**, and in **Options**, select **Current Channel (Staged)**.

1. Select **Apply**, and then select **OK**.

1. Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**. 

1. For _engine_ updates, double-click **Select the channel for Microsoft Defender monthly engine updates**.

1. On the **Select the channel for Microsoft Defender monthly Platform updates** page, select **Enabled**, and in **Options**, select **Beta Channel**.

1. Select **Apply**, and then select **OK**.

1. For _platform_ updates, double-click **Select the channel for Microsoft Defender monthly Platform updates**.

1. On the **Select the channel for Microsoft Defender monthly Platform updates** page, select **Enabled**, and in **Options**, select **Beta Channel**. These two settings are shown in the following figure:

1. Select **Apply**, and then select **OK**.

### Related articles

- [Antivirus profiles - Devices managed by Microsoft Intune](/mem/intune/protect/endpoint-security-antivirus-policy#antivirus-profiles)
- [Use Endpoint security Antivirus policy to manage Microsoft Defender update behavior (Preview)](/mem/intune/fundamentals/whats-new#use-endpoint-security-antivirus-policy-to-manage-microsoft-defender-update-behavior-preview)
- [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md#manage-the-gradual-rollout-process-for-microsoft-defender-updates)

## Setting up the production environment

1. In [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265969(v=ws.11)) (GPMC, GPMC.msc), go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**.  

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channels.png" alt-text="Screenshot that shows a screen capture of the production Computer Configuration > Policies > Administrative Templates > Windows Components > Microsoft Defender Antivirus update channels." lightbox="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channels.png"::: 

1. Set the three policies as follows: 

   | Feature | Recommendation for the production systems | Remarks |
   |:---|:---| 
   | Select the channel for Microsoft Defender daily **Security Intelligence updates** | Current Channel (Broad) | This setting provides you with 3 hours of time to find an FP and prevent the production systems from getting an incompatible signature update. |
   | Select the channel for Microsoft Defender monthly **Engine updates**  | Critical – Time delay | Updates are delayed by two days. |
   | Select the channel for Microsoft Defender monthly **Platform updates**  | Critical – Time delay | Updates are delayed by two days. |

1. For _intelligence_ updates, double-click **Select the channel for Microsoft Defender monthly intelligence updates**.

1. On the **Select the channel for Microsoft Defender monthly intelligence updates** page, select **Enabled**, and in **Options**, select **Current Channel (Broad)**.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channel-staged.png" alt-text="Screenshot that shows a screen capture of the Select the channel for Microsoft Defender monthly intelligence updates page with Enabled and Current Channel (Staged) selected." lightbox="images/microsoft-defender-antivirus-deploy-ring-gp-microsoft-defender-antivirus-channel-staged.png":::

1. Select **Apply**, and then select **OK**.

1. For _engine_ updates, double-click **Select the channel for Microsoft Defender monthly engine updates**.

1. On the **Select the channel for Microsoft Defender monthly Platform updates** page, select **Enabled**, and in **Options**, select **Critical – Time delay**.

1. Select **Apply**, and then select **OK**.

1. For _platform_ updates, double-click **Select the channel for Microsoft Defender monthly Platform updates**.

1. On the **Select the channel for Microsoft Defender monthly Platform updates** page, select **Enabled**, and in **Options**, select **Critical – Time delay**.

1. Select **Apply**, and then select **OK**.

## If you encounter problems

If you encounter problems with your deployment, create or append your Microsoft Defender Antivirus policy:

1. In [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265969(v=ws.11)) (GPMC, GPMC.msc), create or append to your Microsoft Defender Antivirus policy using the following setting:
 
   Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > (administrator-defined) _PolicySettingName_. For example, _MDAV\_Settings\_Production_, right-click, and then select **Edit**. **Edit** for **MDAV\_Settings\_Production** is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-edit.png" alt-text="Screenshot that shows a screen capture of the administrator-defined Microsoft Defender Antivirus policy Edit option." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-edit.png"::: 

1. Select **Define the order of sources for downloading security intelligence updates**.

1. Select the radio button named **Enabled**. 

1. Under **Options:**, change the entry to _FileShares_, select **Apply**, and then select **OK**. This change is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-define-order.png" alt-text="Screenshot that shows a screen capture of the Define the order of sources for downloading security intelligence updates page." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-define-order.png"::: 

1. Select **Define the order of sources for downloading security intelligence updates**.

1. Select the radio button named **Disabled**, select **Apply**, and then select **OK**. The disabled option is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-disabled.png" alt-text="Screenshot that shows a screen capture of the Define the order of sources for downloading security intelligence updates page with Security Intelligence updates disabled." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-disabled.png"::: 

1. The change is active when Group Policy updates. There are two methods to refresh Group Policy:

   - From the command line, run the Group Policy update command. For example, run `gpupdate / force`. For more information, see [gpupdate](/windows-server/administration/windows-commands/gpupdate.md)
   - Wait for Group Policy to automatically refresh. Group Policy refreshes every 90 minutes +/- 30 minutes.

   If you have multiple forests/domains, force replication or wait 10-15 minutes. Then force a Group Policy Update from the Group Policy Management Console. 

   - Right-click on an organizational unit (OU) that contains the machines (for example, Desktops), select **Group Policy Update**. This UI command is the equivalent of doing a gpupdate.exe /force on every machine in that OU. The feature to force Group Policy to refresh is shown in the following figure:

     :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-management-console.png" alt-text="Screenshot that shows a screen capture of the Group Policy Management console, initiating a forced update." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-management-console.png"::: 

1. After the issue is resolved, set the **Signature Update Fallback Order** back to the original setting. `InternalDefinitionUpdateServder|MicrosoftUpdateServer|MMPC|FileShare`.


## See also

- [Antivirus profiles - Devices managed by Microsoft Intune](/mem/intune/protect/endpoint-security-antivirus-policy#antivirus-profiles)
- [Use Endpoint security Antivirus policy to manage Microsoft Defender update behavior (Preview)](/mem/intune/fundamentals/whats-new#use-endpoint-security-antivirus-policy-to-manage-microsoft-defender-update-behavior-preview)
- [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md#manage-the-gradual-rollout-process-for-microsoft-defender-updates)
- [Microsoft Defender Antivirus ring deployment overview](microsoft-defender-antivirus-ring-deployment.md#ring-deployment-overview)
