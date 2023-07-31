---
title: Production ring deployment using Group Policy and Windows Server Update Services
description: Microsoft Defender Antivirus is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article provides information about how to use a ring deployment method to update your Microsoft Defender Antivirus production clients using Group Policy and Windows Server Update Services (WSUS).
keywords: Deploy Microsoft Defender Antivirus updates, ring deployment Microsoft Defender Antivirus, Microsoft Defender Antivirus Group Policy, Microsoft Defender Antivirus Windows Server Update Services (WSUS), Microsoft Defender Antivirus Group Policy Windows Server Update Services (WSUS), threat intelligence, cybersecurity, cloud security,
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

# Microsoft Defender Antivirus production ring deployment using Group Policy and Windows Server Update Services

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

## Before you begin

This article assumes that you have experience with Windows Server Update Services (WSUS) and/or already have WSUS installed. If you aren't already familiar with WSUS, see the following articles for important configuration details:

- [Configure WSUS](/windows-server/administration/windows-server-update-services/deploy/2-configure-wsus) - Applies to: Windows Server 2022, Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, Windows Server 2012)
- [Configure Windows Server Update Services (WSUS) in Analytics Platform System][/sql/analytics-platform-system/configure-windows-server-update-services-wsus.md] - Analytics Platform System

## Setting up the production environment

This section provides information about setting up the production environment using Group Policy and Windows Server Update Services (WSUS).

:::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus.png" alt-text="Screenshot that shows an example ring deployment schedule for Group Policy with WSUS environments." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus.png":::

> [!NOTE]
> Security intelligence update (SIU) is equivelant to signature updates, which is the same as definition updates.

1. On the left pane of **Server Manager**, select **Dashboard** > **Tools** > **Windows Server Update Services**.

   > [!NOTE]
   > If the **Complete WSUS Installation** dialog box appears, select **Run**. In the **Complete WSUS Installation** dialog box, select **Close when the installation successfully finishes**.

1. The **WSUS Configuration Wizard** opens. On the **Before you Begin** page, review the information, and then select **Next**.

1. Read the instructions on the **Join the Microsoft Update Improvement Program** page. Keep the default selection if you want to participate in the program, or clear the checkbox if you don't. Then select **Next**.

1. On the **Choose Upstream Server** page, select **Synchronize from another Windows Server Update Services server**.

   - In **Server name**, enter the server name. For example, type _YR2K19_.
   - In **Port number** enter the port on which this server communicates with the upstream server. For example, type _8530_.

   This is shown in the following figure.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-production-update-service-upstream.png" alt-text="Screenshot that shows a screen capture of the Update Services snap-in console, Choose Upstream Server page." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-production-update-service-upstream.png":::

1. Select **Next**. 

   An autonomous downstream server, like a replica server, also uses another WSUS server as its master repository, but allows for individual approvals for updates different from approvals of the master. The autonomous server:

      - Allows flexibility in creating computer groups
      - Doesn't have to be in the same Active Directory forest as the master

1. (Optional, depending on configuration) On the **Specify Proxy Server** page, select the **Use a proxy server when synchronizing** checkbox. Then enter the proxy server name and port number (port 80 by default) in the corresponding boxes.

   > [!IMPORTANT]
   > You must complete this step if you identified that WSUS needs a proxy server to have internet access.

   - If you want to connect to the proxy server by using specific user credentials, select the **Use user credentials to connect to the proxy server** checkbox. Then enter the user name, domain, and password of the user in the corresponding boxes.
   - If you want to enable basic authentication for the user who is connecting to the proxy server, select the **Allow basic authentication (password is sent in cleartext)** checkbox.

   Select **Next**. 

1. On the **Connect to Upstream Server** page, select **start Connecting**. When WSUS connects to the server, select **Next**.

1. On the **Choose Languages** page, you can select the languages from which WSUS receives updates: **all languages** or a **subset of languages**. Selecting a subset of languages saves disk space, but it's important to choose all the languages that all the clients need on this WSUS server.

   If you choose to get updates only for specific languages, select **Download updates only in these languages**, and then select the languages for which you want updates. Otherwise, leave the default selection.

   > [!WARNING]
   > If you select the option **Download updates only in these languages**, and the server has a downstream WSUS server connected to it, selecting this option will force the downstream server to also use only the selected languages.

   After you select the language options for your deployment, select **Next**.

1. The **Set Sync Schedule** page opens. (The **Choose Products** and **Choose Classifications** pages are grayed out and can't be configured). 

   - Select **Synchronize automatically**, the WSUS server synchronizes at set intervals.
   - In **First synchronization** specify a time for the first synchronization. For example, select _5:00:00 PM._
   - In **Synchronizations per day**, specify the number of times you want synchronizations to occur. For example, select _1_, and then select **Next**.

1. On the **Finished** page, select **Next**.

1. On the **What's next** page, select **Next** to finish.

#### Define the order of sources for downloading security intelligence updates

1. On your Group Policy management computer, open the **Group Policy Management Console**, right-click the _Group Policy Object_ you want to configure and select **Edit**.

1. In the **Group Policy Management Editor** go to **Computer configuration**, select **Policies**, then select **Administrative templates**.

1. Expand the tree to **Windows components** > **Windows Defender** > **Signature updates**.

   - Double-click the **Define the order of sources for downloading security intelligence updates** setting and set the option to **Enabled**.

   - In **Options**, type _InternalDefinitionUpdateServer_, and then select **OK**. The configured **Define the order of sources for downloading security intelligence updates** page is shown in the following figure.

     :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-download-order.png" alt-text="Screenshot that shows a screen capture of the results from a Microsoft Update Catalog search for KB4052623." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-download-order.png"::: 

1. In **Define the order of sources for downloading security intelligence updates**, select **Enabled**. In **Options**, enter the order of sources for downloading  security intelligence updates. For example, type _InternalDefinitionUpdateServer_.

 ## If you encounter problems

If you encounter problems with your deployment, create or append your Microsoft Defender Antivirus policy:

1. In [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265969(v=ws.11)) (GPMC, GPMC.msc), create or append to your Microsoft Defender Antivirus policy using the following setting:
 
   Go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > (administrator-defined) _PolicySettingName_. For example, _MDAV\_Settings\_Production_, right-click, and then select **Edit**. **Edit** for **MDAV\_Settings\_Production** is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-edit.png" alt-text="Screenshot that shows a screen capture of the administrator-defined Microsoft Defender Antivirus policy Edit option." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-edit.png"::: 

1. Select **Define the order of sources for downloading security intelligence updates**.

1. Select the radio button named **Enabled**. 

1. Under **Options**, change the entry to _FileShares_, select **Apply**, and then select **OK**. This change is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-define-order.png" alt-text="Screenshot that shows a screen capture of the Define the order of sources for downloading security intelligence updates page." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-define-order.png"::: 

1. Select **Define the order of sources for downloading security intelligence updates**.

1. Select the radio button named **Disabled**, select **Apply**, and then select **OK**. The disabled option is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-disabled.png" alt-text="Screenshot that shows a screen capture of the Define the order of sources for downloading security intelligence updates page with Security Intelligence updates disabled." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-policy-disabled.png"::: 

1. The change is active when Group Policy updates. There are two methods to refresh Group Policy:

   - From the command line, run the Group Policy update command. For example, run `gpupdate / force`. For more information, see [gpupdate](/windows-server/administration/windows-commands/gpupdate)
   - Wait for Group Policy to automatically refresh. Group Policy refreshes every 90 minutes +/- 30 minutes.

   If you have multiple forests/domains, force replication or wait 10-15 minutes. Then force a Group Policy Update from the Group Policy Management Console. 

   - Right-click on an organizational unit (OU) that contains the machines (for example, Desktops), select **Group Policy Update**. This UI command is the equivalent of doing a gpupdate.exe /force on every machine in that OU. The feature to force Group Policy to refresh is shown in the following figure:

     :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-management-console.png" alt-text="Screenshot that shows a screen capture of the Group Policy Management console, initiating a forced update." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-management-console.png"::: 

1. After the issue is resolved, set the **Signature Update Fallback Order** back to the original setting. `InternalDefinitionUpdateServder|MicrosoftUpdateServer|MMPC|FileShare`.

 See also:

 - [Step 3: Configure WSUS | Microsoft Learn](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh852346(v=ws.11)?redirectedfrom=MSDN#31-configure-network-connections)
 - [Step 4: Approve and Deploy WSUS Updates | Microsoft Learn](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh852348(v=ws.11)?redirectedfrom=MSDN)
 - [Step 5: Configure Group Policy Settings for Automatic Updates | Microsoft Learn](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn595129(v=ws.11))
 - [Microsoft Defender Antivirus pilot ring deployment using Group Policy and Windows Server Update Services](microsoft-defender-antivirus-pilot-ring-deployment-group-policy-wsus.md)
