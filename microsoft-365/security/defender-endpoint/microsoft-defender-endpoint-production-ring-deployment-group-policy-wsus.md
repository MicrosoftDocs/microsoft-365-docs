---
title: Production ring deployment using Group Policy and Windows Server Update Services
description: Microsoft Defender for Endpoint is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article explains how to deploy Microsoft Defender for Endpoint in measured, staged cycles.
keywords: deploy Microsoft Defender for Endpoint, Ring deployment Microsoft Defender for Endpoint, cybersecurity, cloud security, analytics, threat intelligence, attack surface reduction, next-generation protection, automated investigation and remediation, microsoft threat experts, secure score, advanced hunting, Microsoft 365 Defender, cyber threat hunting
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-britweston
author: v-britweston
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
ms.date: 05/24/2023
---

# Microsoft Defender for Endpoint production ring deployment using Group Policy and Windows Server Update Services

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

:::image type="content" source="images/mde-deploy-ring-group-policy-wsus.png" alt-text="Shows an example deployment schedule for Group Policy with WSUS deployments." lightbox="images/mde-deploy-ring-group-policy-wsus.png":::

## Before you begin

This article assumes that you have experience with Windows Server Update Services (WSUS) and/or already have WSUS installed. If you are not alreadyy familiar with WSUS, see the following articles for important configuration details:

- [Configure WSUS](/windows-server/administration/windows-server-update-services/deploy/2-configure-wsus.md) - Applies to: Windows Server 2022, Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, Windows Server 2012)
- [Configure Windows Server Update Services (WSUS) in Analytics Platform System][/sql/analytics-platform-system/configure-windows-server-update-services-wsus.md] - Analytics Platform System

## Setting up the production environment

1 On the left pane of Server Manager, select **Dashboard** > **Tools** > **Windows Server Update Services**.

   > [!NOTE]
   > If the **Complete WSUS Installation** dialog box appears, select **Run**. In the **Complete WSUS Installation** dialog box, select **Close when the installation successfully finishes**.

1. The **WSUS Configuration Wizard** opens. On the **Before you Begin** page, review the information, and then select **Next**.

1. Read the instructions on the **Join the Microsoft Update Improvement Program** page. Keep the default selection if you want to participate in the program, or clear the checkbox if you don't. Then select **Next**.

1. On the **Choose Upstream Server** page, select one of the two options: 

    - **Synchronize the updates with Microsoft Update** 
    - **Synchronize from another Windows Server Update Services server**.

   If you choose to synchronize from another WSUS server:

   -  Specify the server name and the port on which this server will communicate with the upstream server.
   - To use SSL, select the Use SSL when synchronizing update information checkbox. The servers will use port 443 for synchronization. (Make sure that this server and the upstream server support SSL.)
   - If this is a replica server, select the This is a replica of the upstream server checkbox.

1. After you select the options for your deployment, select **Next**.

On the **Specify Proxy Server** page, select the **Use a proxy server when synchronizing** checkbox. Then enter the proxy server name and port number (port 80 by default) in the corresponding boxes.

   > [!IMPORTANT]
   > You must complete this step if you identified that WSUS needs a proxy server to have internet access.

1. If you want to connect to the proxy server by using specific user credentials, select the **Use user credentials to connect to the proxy server** checkbox. Then enter the user name, domain, and password of the user in the corresponding boxes.

1. If you want to enable basic authentication for the user who is connecting to the proxy server, select the **Allow basic authentication (password is sent in cleartext)** checkbox.

1. Select **Next**. On the **Connect to Upstream Server** page, select **start Connecting**. When WSUS connects to the server, select **Next**.

1. On the **Choose Languages** page, you have the option to select the languages from which WSUS will receive updates: **all languages** or a **subset of languages**. Selecting a subset of languages will save disk space, but it's important to choose all the languages that all the clients of this WSUS server need.

   If you choose to get updates only for specific languages, select **Download updates only in these languages**, and then select the languages for which you want updates. Otherwise, leave the default selection.

   > [!WARNING]
   > If you select the option **Download updates only in these languages**, and this server has a downstream WSUS server connected to it, this option will force the downstream server to also use only the selected languages.

   After you select the language options for your deployment, select **Next**.

1. The **Choose Products** page allows you to specify the products for which you want updates. Select product categories, such as Windows, or specific products, such as Windows Server 2012. Selecting a product category selects all the products in that category.

   After you select the product options for your deployment, select **Next**.

1. On the **Choose Classifications** page, select the update classifications that you want to get. Choose all the classifications or a subset of them, and then select **Next**.

1. The **Set Sync Schedul**e page enables you to select whether to perform synchronization manually or automatically. 

   - If you select **Synchronize manually**, you must start the synchronization process from the WSUS Administration Console.
   - If you select **Synchronize automatically**, the WSUS server will synchronize at set intervals.

1. Set the time for **First synchronization**, and then specify the number of synchronizations per day that you want this server to perform. For example, if you specify four synchronizations per day, starting at 3:00 AM, synchronizations will occur at 3:00 AM, 9:00 AM, 3:00 PM, and 9:00 PM.  After you select the synchronization options for your deployment, select **Next**.

On the **Finished** page, you have the option to start the synchronization now by selecting the **Begin initial synchronization** checkbox.

If you don't select this option, you must use the WSUS Management Console to perform the initial synchronization. Select **Next** if you want to read more about additional settings, or select **Finish** to conclude this wizard and finish the initial WSUS setup.

After you select Finish, the WSUS Administration Console appears. You'll use this console to manage your WSUS network, as described later on.
